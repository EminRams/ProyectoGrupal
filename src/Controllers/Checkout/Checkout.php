<?php

namespace Controllers\Checkout;

use Controllers\PrivateController;

class Checkout extends PrivateController
{
  public function run(): void
  {
    $viewData = array();
    $url = getenv('BASE_DIR');
    if ($this->isPostBack()) {
      $PayPalOrder = new \Utilities\Paypal\PayPalOrder(
        "test" . (time() - 10000000),
        "http://localhost/" . $url . "/index.php?page=checkout_error",
        "http://localhost/" . $url . "/index.php?page=checkout_accept"
      );
      $productos = array();
      $cart = $_SESSION["cart"];

      foreach ($cart as $key => $value) {
        $producto = \Dao\Admin\Productos::findById($value["id_producto"]);
        $producto["quantity"] = $value["quantity"];
        $productos[] = $producto;
      }

      foreach ($productos as $producto) {
        $PayPalOrder->addItem($producto["nombre"], $producto["nombre"], $producto["id"], $producto["precio"], $producto["precio"] * 0.15, $producto["quantity"], "DIGITAL_GOODS");
      }

      $response = $PayPalOrder->createOrder();
      $_SESSION["orderid"] = $response[1]->result->id;
      \Utilities\Site::redirectTo($response[0]->href);
      die();
    }

    \Views\Renderer::render("paypal/checkout", $viewData);
  }
}
