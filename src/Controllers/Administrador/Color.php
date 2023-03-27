<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Color extends PublicController
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


        Renderer::render('administrador/color', $viewData);
    }
}

?>