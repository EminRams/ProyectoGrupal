<?php

namespace Controllers\Checkout;
use Controllers\PublicController;

class Accept extends PublicController
{
  public function run(): void
  {
    $dataview = array();
    $token = $_GET["token"] ?: "";
    $session_token = $_SESSION["orderid"] ?: "";
    if ($token !== "" && $token == $session_token) {
      $result = \Utilities\Paypal\PayPalCapture::captureOrder($session_token);
      $result = json_encode($result, true);
      $result = json_decode($result, true);
      $dataview['date'] = $result["headers"]["date"];
      $dataview['id'] = $result["result"]["id"];
      $dataview['email'] = $result["result"]["payment_source"]["paypal"]["email_address"];
      $dataview['name'] = $result["result"]["payer"]["name"]["given_name"];
      $dataview['lastname'] = $result["result"]["payer"]["name"]["surname"];
      $dataview['gross_amount'] = $result["result"]["purchase_units"][0]["payments"]["captures"][0]["amount"]["value"];
      $dataview['net_amount'] = $result["result"]["purchase_units"][0]["payments"]["captures"][0]["seller_receivable_breakdown"]["net_amount"]["value"];
      print_r($result);
      if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) {
        $user = \Utilities\Security::getUserId();
        $cart = $_SESSION['cart'];

        \Dao\Admin\EncabezadoVentas::insert($dataview['id'], $user, date("Y-m-d"));

        foreach ($cart as $key => $value) {
          $producto = \Dao\Admin\Productos::findById($value['id_producto']);
          $producto['quantity'] = $value['quantity'];
          \Dao\Admin\Productos::updateStock($producto['id_producto'], $producto['stock'] - $producto['quantity']);
          \Dao\Admin\DetalleVentas::insert($dataview['id'], $producto['id_producto'], $producto['quantity'], $producto['precio']);
        }

        unset($_SESSION['cart']);
      }
    } else {
      $dataview["orderjson"] = "No Order Available!!!";
    }
    \Views\Renderer::render("paypal/accept", $dataview);
  }
}
