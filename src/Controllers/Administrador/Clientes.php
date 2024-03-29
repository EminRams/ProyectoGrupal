<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Clientes extends PublicController
{
    /**
     * Runs the controller
     *
     * @return void
     */
    public function run(): void
    {
        // code
        $viewData = array();
        // $viewData["Productos"] = DaoProductos::getAll();
        error_log(json_encode($viewData));

        Renderer::render('administrador/clientes', $viewData);
    }
}

?>