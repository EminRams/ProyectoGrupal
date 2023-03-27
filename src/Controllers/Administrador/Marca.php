<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Marca extends PublicController
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


        Renderer::render('administrador/Marca', $viewData);
    }
}

?>