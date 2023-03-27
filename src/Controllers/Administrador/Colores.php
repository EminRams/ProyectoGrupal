<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Colores extends PublicController
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
        $viewData["colores"] = \Dao\Admin\Colores::findAll();

        Renderer::render('administrador/colores', $viewData);
    }
}

?>

