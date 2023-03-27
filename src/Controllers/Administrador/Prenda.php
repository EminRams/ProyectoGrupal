<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Prenda extends PublicController
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


        Renderer::render('administrador/prenda', $viewData);
    }
}

?>