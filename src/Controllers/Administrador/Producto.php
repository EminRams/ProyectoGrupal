<?php

namespace Controllers\Administrador;

use Controllers\PublicController;
use Exception;
use Views\Renderer;

class Producto extends PublicController
{
    private $redirectTo = "index.php?page=administrador_productos";
    private $viewData = array(
        "mode" => "DSP",
        "modedsc" => "",
        "id_producto" => 0,
        "marca" => "",
        "categoria" => "",
        "prenda" => "",
        "color" => "",
        "nombre" => "",
        "descripcion" => "",
        "precio" => 0.00,
        "stock" => 0,
        "talla" => "",
        "enlace_imagen" => "",
        "estado" => "ACT",
        "estado_ACT" => "selected",
        "estado_INA" => "",
        "nombre_error" => "",
        "marca_error" => "",
        "categoria_error" => "",
        "prenda_error" => "",
        "color_error" => "",
        "descripcion_error" => "",
        "precio_error" => "",
        "stock_error" => "",
        "talla_error" => "",
        "general_errors" => array(),
        "has_errors" => false,
        "show_action" => true,
        "readonly" => false,
        "xssToken" => "",
    );


    private $modes = array(
        "DSP" => "Detalle de %s (%s)",
        "INS" => "Nuevo Producto",
        "UPD" => "Editar %s (%s)",
        "DEL" => "Borrar %s (%s)"
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
            unset($_SESSION["xssToken_Administrador_Producto"]);
            error_log(sprintf("Controller/Administrador/Producto ERROR: %s", $error->getMessage()));
            \Utilities\Site::redirectToWithMsg(
                $this->redirectTo,
                "Algo Inesperado Sucedió. Intente de Nuevo."
            );
        }
    }
    private function page_loaded()
    {
        if (isset($_GET['mode'])) {
            if (isset($this->modes[$_GET['mode']])) {
                $this->viewData["mode"] = $_GET['mode'];
            } else {
                throw new Exception("Mode Not available");
            }
        } else {
            throw new Exception("Mode not defined on Query Params");
        }
        if ($this->viewData["mode"] !== "INS") {
            if (isset($_GET['id_producto'])) {
                $this->viewData["id_producto"] = intval($_GET["id_producto"]);
            } else {
                throw new Exception("ID not found on Query Params");
            }
        }
    }
    private function validatePostData()
    {
        if (isset($_POST["xssToken"])) {
            if (isset($_SESSION["xssToken_Administrador_Producto"])) {
                if ($_POST["xssToken"] !== $_SESSION["xssToken_Administrador_Producto"]) {
                    throw new Exception("Invalid Xss Token no match");
                }
            } else {
                throw new Exception("Invalid Xss Token on Session");
            }
        } else {
            throw new Exception("Invalid Xss Token");
        }

        //VALUES
        //ID PRODUCTO
        if (isset($_POST["id_producto"])) {
            if (($this->viewData["mode"] !== "INS" && intval($_POST["id_producto"]) <= 0)) {
                throw new Exception("id_producto is not Valid");
            }
            if ($this->viewData["id_producto"] !== intval($_POST["id_producto"])) {
                throw new Exception("id_producto value is different from query");
            }
        } else {
            throw new Exception("id_producto not present in form");
        }
        // MARCA
        if (isset($_POST["marca"])) {
            if (\Utilities\Validators::IsEmpty($_POST["marca"])) {
                $this->viewData["has_errors"] = true;
                $this->viewData["marca_error"] = "Seleccione una marca!";
            }
        } else {
            throw new Exception("marca not present in form");
        }
        // CATEGORIA 
        if (isset($_POST["categoria"])) {
            if (\Utilities\Validators::IsEmpty($_POST["categoria"])) {
                $this->viewData["has_errors"] = true;
                $this->viewData["categoria_error"] = "Seleccione una categoria!";
            }
        } else {
            throw new Exception("Categoria not present in form");
        }
        // PRENDA
        if (isset($_POST["prenda"])) {
            if (\Utilities\Validators::IsEmpty($_POST["prenda"])) {
                $this->viewData["has_errors"] = true;
                $this->viewData["prenda_error"] = "Seleccione una prenda!";
            }
        } else {
            throw new Exception("prenda not present in form");
        }
        //COLOR
        if (isset($_POST["color"])) {
            if (\Utilities\Validators::IsEmpty($_POST["color"])) {
                $this->viewData["has_errors"] = true;
                $this->viewData["color_error"] = "Seleccione una color!";
            }
        } else {
            throw new Exception("color not present in form");
        }
        // NOMBRE PRODUCTO
        if (isset($_POST["nombre"])) {
            if (\Utilities\Validators::IsEmpty($_POST["nombre"])) {
                $this->viewData["has_errors"] = true;
                $this->viewData["nombre_error"] = "El nombre no puede ir vacío!";
            }
        } else {
            throw new Exception("nombre not present in form");
        }
        // DESCRIPCION PRODUCTO
        if (isset($_POST["descripcion"])) {
            if (\Utilities\Validators::IsEmpty($_POST["descripcion"])) {
                $this->viewData["has_errors"] = true;
                $this->viewData["descripcion_error"] = "La descripcion no puede ir vacío!";
            }
        } else {
            throw new Exception("descripcion not present in form");
        }
        // PRECIO PRODUCTO
        if (isset($_POST["precio"])) {
            if (($this->viewData["mode"] !== "INS" && floatval($_POST["precio"]) <= 0)) {
                throw new Exception("precio is not Valid");
            }
            if (\Utilities\Validators::IsEmpty($_POST["precio"])) {
                $this->viewData["has_errors"] = true;
                $this->viewData["precio_error"] = "El monto no puede ir vacío!";
            } else if (floatval($_POST["precio"] <= 0)) {
                $this->viewData["has_errors"] = true;
                $this->viewData["precio_error"] = "El monto debe ser mayor a Cero";
            }
        } else {
            throw new Exception("precio not present in form");
        }
        // STOCK PRODUCTO
        if (isset($_POST["stock"])) {
            if (($this->viewData["mode"] !== "INS" && floatval($_POST["stock"]) <= 0)) {
                throw new Exception("stock is not Valid");
            }
            if (\Utilities\Validators::IsEmpty($_POST["stock"])) {
                $this->viewData["has_errors"] = true;
                $this->viewData["stock_error"] = "El stock no puede ir vacío!";
            } else if (floatval($_POST["stock"] <= 0)) {
                $this->viewData["has_errors"] = true;
                $this->viewData["stock_error"] = "El stock debe ser mayor a Cero";
            }
        } else {
            throw new Exception("stock not present in form");
        }
        // TALLA PRODUCTO
        if (isset($_POST["talla"])) {
            if (\Utilities\Validators::IsEmpty($_POST["talla"])) {
                $this->viewData["has_errors"] = true;
                $this->viewData["talla_error"] = "La talla no puede ir vacío!";
            }
        } else {
            throw new Exception("talla not present in form");
        }

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

        $this->viewData["marca"] = $_POST["marca"];
        $this->viewData["categoria"] = $_POST["categoria"];
        $this->viewData["prenda"] = $_POST["prenda"];
        $this->viewData["color"] = $_POST["color"];
        $this->viewData["nombre"] = $_POST["nombre"];
        $this->viewData["descripcion"] = $_POST["descripcion"];
        $this->viewData["precio"] = $_POST["precio"];
        $this->viewData["stock"] = $_POST["stock"];
        $this->viewData["talla"] = $_POST["talla"];
        $this->viewData["enlace_imagen"] = $_POST["enlace_imagen"];

        if ($this->viewData["mode"] !== "DEL") {
            $this->viewData["estado"] = $_POST["estado"];
        }
    }
    private function executeAction()
    {
        switch ($this->viewData["mode"]) {
            case "INS":
                $inserted = \Dao\Admin\Productos::insert(
                    $this->viewData["marca"],
                    $this->viewData["categoria"],
                    $this->viewData["prenda"],
                    $this->viewData["color"],
                    $this->viewData["nombre"],
                    $this->viewData["descripcion"],
                    $this->viewData["precio"],
                    $this->viewData["stock"],
                    $this->viewData["talla"],
                    $this->viewData["enlace_imagen"],
                    $this->viewData["estado"],
                );
                if ($inserted > 0) {
                    \Utilities\Site::redirectToWithMsg(
                        $this->redirectTo,
                        "Producto Ingresado Exitosamente"
                    );
                }
                break;
            case "UPD":
                $updated = \Dao\Admin\Productos::update(
                    $this->viewData["producto"],
                    $this->viewData["marca"],
                    $this->viewData["categoria"],
                    $this->viewData["prenda"],
                    $this->viewData["color"],
                    $this->viewData["nombre"],
                    $this->viewData["descripcion"],
                    $this->viewData["precio"],
                    $this->viewData["stock"],
                    $this->viewData["talla"],
                    $this->viewData["enlace_imagen"],
                    $this->viewData["estado"],
                );
                if ($updated > 0) {
                    \Utilities\Site::redirectToWithMsg(
                        $this->redirectTo,
                        "Producto Actualizada Exitosamente"
                    );
                }
                break;
            case "DEL":
                $deleted = \Dao\Admin\Productos::delete(
                    $this->viewData["id_producto"]
                );
                if ($deleted > 0) {
                    \Utilities\Site::redirectToWithMsg(
                        $this->redirectTo,
                        "Producto Eliminado Exitosamente"
                    );
                }
                break;
        }
    }
    private function render()
    {
        $xssToken = md5("PRODUCTO" . rand(0, 4000) * rand(5000, 9999));
        $this->viewData["xssToken"] = $xssToken;
        $_SESSION["xssToken_Administrador_Producto"] = $xssToken;

        if ($this->viewData["mode"] === "INS") {
            $this->viewData["modedsc"] = $this->modes["INS"];
        } else {
            $tmpProductos = \Dao\Admin\Productos::findById($this->viewData["id_producto"]);
            if (!$tmpProductos) {
                throw new Exception("El Producto no existe en la DB");
            }

            \Utilities\ArrUtils::mergeFullArrayTo($tmpProductos, $this->viewData);
            $this->viewData["estado_ACT"] = $this->viewData["estado"] === "ACT" ? "selected" : "";
            $this->viewData["estado_INA"] = $this->viewData["estado"] === "INA" ? "selected" : "";
            $this->viewData["modedsc"] = sprintf(
                $this->modes[$this->viewData["mode"]],
                $this->viewData["nombre"],
                $this->viewData["id_producto"]
            );
            if (in_array($this->viewData["mode"], array("DSP", "DEL"))) {
                $this->viewData["readonly"] = "readonly";
            }
            if ($this->viewData["mode"] === "DSP") {
                $this->viewData["show_action"] = false;
            }
        }
        $this->viewData["categorias"] = \Dao\Admin\Productos::findCategorias();
        $this->viewData["marcas"] = \Dao\Admin\Productos::findMarcas();
        $this->viewData["prendas"] = \Dao\Admin\Productos::findPrendas();
        $this->viewData["colores"] = \Dao\Admin\Productos::findColors();
        Renderer::render("administrador/producto", $this->viewData);
    }
}
