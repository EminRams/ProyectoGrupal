<?php

namespace Controllers\Checkout;

use Controllers\PrivateController;

class Checkout extends PrivateController{
    public function run():void
    {
        $viewData = array();
        $datos = array();
        if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) {
            $cart = $_SESSION['cart'];
            $viewData['total'] = 0;
            foreach ($cart as $key => $value) {
                $producto = \Dao\Admin\Productos::findById($value['id_producto']);
                $producto['quantity'] = $value['quantity'];
                $producto['total'] = $value['quantity'] * $producto['precio'];
                $datos[] = $producto;
            }
        }
        // print_r($datos);

        if ($this->isPostBack()) {
            $PayPalOrder = new \Utilities\Paypal\PayPalOrder(
                "test".(time() - 10000000),
                "http://localhost/ProyectoGrupal/index.php?page=checkout_error",
                "http://localhost/ProyectoGrupal/index.php?page=checkout_accept"
            );
            foreach($datos as $value){
                $PayPalOrder->addItem($value["nombre"],$value["descripcion"] , $value["id_producto"], $value["precio"], 0, $value["quantity"], $value["categoria"]);
            }
            print_r($PayPalOrder);
            $PayPalOrder->addItem("Test 2", "TestItem2", "PRD2", 50, 7.5, 2, "DIGITAL_GOODS");
            $response = $PayPalOrder->createOrder();
            $_SESSION["orderid"] = $response[1]->result->id;
            \Utilities\Site::redirectTo($response[0]->href);
            die();
        }

        \Views\Renderer::render("paypal/checkout", $viewData);
    }
}
?>
