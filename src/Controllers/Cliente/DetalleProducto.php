<?php

namespace Controllers\Cliente;

use Controllers\PublicController;


class DetalleProducto extends PublicController
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
        \Views\Renderer::render("cliente/detalleproducto", $viewData, 'layoutCliente.view.tpl');
    }
}