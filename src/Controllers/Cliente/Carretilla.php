<?php

namespace Controllers\Cliente;

use Controllers\PublicController;


class Carretilla extends PublicController
{
  /**
   * Index run method
   *
   * @return void
   */
  public function run(): void
  {

    $viewData = array();
    if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) {
      $cart = $_SESSION['cart'];
      $viewData['total'] = 0;
      foreach ($cart as $key => $value) {
        $producto = \Dao\Admin\Productos::findById($value['id_producto']);
        $producto['quantity'] = $value['quantity'];
        $producto['total'] = $value['quantity'] * $producto['precio'];
        $viewData['productos'][] = $producto;
      }


      foreach ($viewData['productos'] as $key => $value) {
        $viewData['total'] += $value['total'];
      }
    }

    if (isset($_GET['id_producto'])) {
      $id_producto = $_GET['id_producto'];
      foreach ($_SESSION['cart'] as $key => $value) {
        if ($value['id_producto'] == $id_producto) {
          unset($_SESSION['cart'][$key]);
        }
      }
      \Utilities\Site::redirectTo("index.php?page=cliente_carretilla");
    }

    \Views\Renderer::render("cliente/carretilla", $viewData, 'layoutCliente.view.tpl');
  }
}
