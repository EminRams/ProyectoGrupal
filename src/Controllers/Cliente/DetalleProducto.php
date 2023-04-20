<?php

namespace Controllers\Cliente;

use Controllers\PublicController;


class DetalleProducto extends PublicController
{
  public function run(): void
  {
    $viewData = array(
      "id_producto" => 0,
      "nombre" => "",
      "precio" => 0,
      "descripcion" => "",
      "stock" => False,
      "talla" => "",
      "enlace_imagen" => "",
      "estado" => "",
      "categoria" => "",
      "marca" => "",
      "color" => "",
    );
    if (isset($_GET["id_producto"])) {
      $producto = \Dao\Admin\Productos::findById($_GET["id_producto"]);
      \Utilities\ArrUtils::mergeFullArrayTo($producto, $viewData);
    } else if (isset($_POST["id_producto"])) {

      if (!isset($_SESSION['cart'])) {
        $_SESSION['cart'] = array();
      }

      $producto = array(
        "id_producto" => $_POST['id_producto'],
        "quantity" => $_POST['quantity'],
      );

      foreach ($_SESSION['cart'] as $key => $value) {
        if ($value['id_producto'] == $producto['id_producto']) {
          $producto['quantity'] += $value['quantity'];
          unset($_SESSION['cart'][$key]);
        }
      }

      array_push($_SESSION['cart'], $producto);

      \Utilities\Site::redirectTo("index.php?page=cliente_carretilla");
      // \Utilities\Site::redirectTo("test.php");
    } else {
      \Utilities\Site::redirectToWithMsg(
        "index.php",
        "No se ha especificado un producto"
      );
    }
    \Views\Renderer::render("cliente/detalleproducto", $viewData, 'layoutCliente.view.tpl');
  }
}
