<?php

namespace Controllers\Cliente;

use Controllers\PublicController;


class Checkout extends PublicController
{
    /**
     * Index run method
     *
     * @return void
     */
    public function run(): void
    {

        $viewData = array();
        $viewData["productos"] = \Dao\Admin\Productos::findAll();
        \Views\Renderer::render("cliente/checkout", $viewData, 'layoutCliente.view.tpl');
    }
}