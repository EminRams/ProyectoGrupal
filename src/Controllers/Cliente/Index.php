<?php

namespace Controllers\Cliente;

use Controllers\PublicController;

class Index extends PublicController
{
    /**
     * Index run method
     *
     * @return void
     */
    public function run(): void
    {
        $viewData = array();
        \Views\Renderer::render("index", $viewData, 'layoutCliente.view.tpl');
    }
}
?>