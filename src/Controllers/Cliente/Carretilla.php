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
        $viewData["products"] = array();
        $products = $_SESSION['cart'];
        
        if(isset($_SESSION['cart'])){
          foreach($products as $key => $value){
            array_push($viewData['products'], \Dao\Admin\Productos::findById($value['id_producto']));
          }
        }
        
        $viewData["cart"] = $_SESSION['cart'];
        \Views\Renderer::render("cliente/carretilla", $viewData, 'layoutCliente.view.tpl');
    }
}