<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Categorias extends PublicController
{
    /**
     * Runs the controller
     *
     * @return void
     */
    public function run(): void
    {
        // code
        $viewData = array(
            "edit_enabled" => true,
            "delete_enabled" => true,
            "new_enabled" => true
        );
        $viewData["categorias"] = \Dao\Admin\Categorias::findAll();

        Renderer::render('administrador/categorias', $viewData);
    }
}

?>