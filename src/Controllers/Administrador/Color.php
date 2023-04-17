<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PrivateController;
use Exception;
use Views\Renderer;


class Color extends PrivateController
{
  private $redirectTo = "index.php?page=administrador_colores";

  private $viewData = array(
    "mode" => "DSP",
    "modedsc" => "",
    "id_color" => 0,
    "nombre" => "",
    "estado" => "ACT",
    "estado_ACT" => "selected",
    "estado_INA" => "",
    "nombre_error" => "",
    "general_errors" => array(),
    "has_errors" => false,
    "show_action" => true,
    "readonly" => false,
    "disabled" => false,
    "xssToken" => "",
  );

  private $modes = array(
    "DSP" => "Detalle de %s (%s)",
    "INS" => "Nueva color",
    "UPD" => "Editar %s (%s)",
    "DEL" => "Borrar %s (%s)"
  );

  private $modeAuth = array(
    "DSP" => "Admin_Categoria_view",
    "INS" => "Admin_Categoria_new",
    "UPD" => "Admin_Categoria_edit",
    "DEL" => "Admin_Categoria_delete"
  );

  public function run(): void
  {
    try {
      $this->page_loaded();
      if ($this->isPostBack()) {
        $this->validatePostData();
        if (!$this->viewData["has_errors"]) {
          $this->executeAction();
        }
      }
      $this->render();
    } catch (Exception $error) {
      unset($_SESSION["xssToken_Administrador_Colores"]);
      error_log(sprintf("Controller/Administrador/Colores ERROR: %s", $error->getMessage()));
      \Utilities\Site::redirectToWithMsg(
        $this->redirectTo,
        "Algo Inesperado Sucedió. Intente de Nuevo"
      );
    }
  }
  private function page_loaded()
  {
    if (isset($_GET['mode'])) {
      if (isset($this->modes[$_GET['mode']])) {
        if (!$this->isFeatureAutorized($this->modeAuth[$_GET['mode']])) {
          throw new Exception('Acceso ' . $_GET['mode'] . ' no permitido');
        }
        $this->viewData["mode"] = $_GET['mode'];
      } else {
        throw new Exception("Mode Not available");
      }
    } else {
      throw new Exception("Mode not defined on Query Params");
    }
    if ($this->viewData["mode"] !== "INS") {
      if (isset($_GET['id_color'])) {
        $this->viewData["id_color"] = intval($_GET["id_color"]);
      } else {
        throw new Exception("ID not found on Query Params");
      }
    }
  }

  private function validatePostData()
  {
    if (isset($_POST["xssToken"])) {
      if (isset($_SESSION["xssToken_Administrador_Color"])) {
        if ($_POST["xssToken"] !== $_SESSION["xssToken_Administrador_Color"]) {
          throw new Exception("Invalid Xss Token no match");
        }
      } else {
        throw new Exception("Invalid Xss Token on Session");
      }
    } else {
      throw new Exception("Invalid Xss Token");
    }

    //VALUES
    //ID Colores
    if (isset($_POST["id_color"])) {
      if (($this->viewData["mode"] !== "INS" && intval($_POST["id_color"]) <= 0)) {
        throw new Exception("id_color is not Valid");
      }
      if ($this->viewData["id_color"] !== intval($_POST["id_color"])) {
        throw new Exception("id_color value is different from query");
      }
    } else {
      throw new Exception("id_color not present in form");
    }

    // NOMBRE Colores
    if (isset($_POST["nombre"])) {
      if (\Utilities\Validators::IsEmpty($_POST["nombre"])) {
        $this->viewData["has_errors"] = true;
        $this->viewData["nombre_error"] = "El nombre no puede ir vacío!";
      }
    } else {
      throw new Exception("nombre not present in form");
    }
    //VALUES

    if (isset($_POST["mode"])) {
      if (!key_exists($_POST["mode"], $this->modes)) {
        throw new Exception("mode has a bad value");
      }
      if ($this->viewData["mode"] !== $_POST["mode"]) {
        throw new Exception("mode value is different from query");
      }
    } else {
      throw new Exception("mode not present in form");
    }

    $this->viewData["id_color"] = $_POST["id_color"];
    $this->viewData["nombre"] = $_POST["nombre"];

    if ($this->viewData["mode"] !== "DEL") {
      $this->viewData["estado"] = $_POST["estado"];
    }
  }
  private function executeAction()
  {
    switch ($this->viewData["mode"]) {
      case "INS":
        $inserted = \Dao\Admin\Colores::insert(
          $this->viewData["nombre"],
          $this->viewData["estado"],
        );
        if ($inserted > 0) {
          \Utilities\Site::redirectToWithMsg(
            $this->redirectTo,
            "color Ingresado Exitosamente"
          );
        }
        break;
      case "UPD":
        $updated = \Dao\Admin\Colores::update(
          $this->viewData["nombre"],
          $this->viewData["estado"],
          $this->viewData["id_color"],
        );
        if ($updated > 0) {
          \Utilities\Site::redirectToWithMsg(
            $this->redirectTo,
            "color Actualizada Exitosamente"
          );
        }
        break;
      case "DEL":
        $deleted = \Dao\Admin\Colores::delete(
          $this->viewData["id_color"]
        );
        if ($deleted > 0) {
          \Utilities\Site::redirectToWithMsg(
            $this->redirectTo,
            "color Eliminado Exitosamente"
          );
        }
        break;
    }
  }

  private function render()
  {
    $xssToken = md5("COLOR" . rand(0, 4000) * rand(5000, 9999));
    $this->viewData["xssToken"] = $xssToken;
    $_SESSION["xssToken_Administrador_Color"] = $xssToken;

    if ($this->viewData["mode"] === "INS") {
      $this->viewData["modedsc"] = $this->modes["INS"];
    } else {
      $tmpColores = \Dao\Admin\Colores::findById($this->viewData["id_color"]);
      if (!$tmpColores) {
        throw new Exception("La color no existe en la DB");
      }

      \Utilities\ArrUtils::mergeFullArrayTo($tmpColores, $this->viewData);
      $this->viewData["estado_ACT"] = $this->viewData["estado"] === "ACT" ? "checked" : "";
      $this->viewData["estado_INA"] = $this->viewData["estado"] === "INA" ? "checked" : "";

      $this->viewData["modedsc"] = sprintf(
        $this->modes[$this->viewData["mode"]],
        $this->viewData["nombre"],
        $this->viewData["id_color"]
      );
      if (in_array($this->viewData["mode"], array("DSP", "DEL"))) {
        $this->viewData["readonly"] = "readonly";
        $this->viewData["disabled"] = "disabled";
      }

      if ($this->viewData["mode"] === "DSP") {
        $this->viewData["show_action"] = false;
      }
    }

    Renderer::render("administrador/color", $this->viewData);
  }
}
