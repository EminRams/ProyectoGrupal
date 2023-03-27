<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Prendas extends PublicController
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
        $viewData["prendas"] = \Dao\Admin\Prendas::findAll();

        Renderer::render('administrador/prendas', $viewData);
    }
}

?>

