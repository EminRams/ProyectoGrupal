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
    } else {
      \Utilities\Site::redirectToWithMsg(
        "index.php",
        "No se ha especificado un producto"
      );
    }
    \Views\Renderer::render("cliente/detalleproducto", $viewData, 'layoutCliente.view.tpl');
  }
}
