<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Categoria extends PublicController
{
    /**
     * Runs the controller
     *
     * @return void
     */
    public function run(): void
    {

        $viewData = array(

        );


        Renderer::render('administrador/categoria', $viewData);
    }
}

?>