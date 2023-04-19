<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PrivateController;

use Views\Renderer;


class Colores extends PrivateController
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
          "edit_enabled"=> $this->isFeatureAutorized('Admin_Color_edit'),
          "delete_enabled"=> $this->isFeatureAutorized('Admin_Color_delete'),
          "new_enabled"=> $this->isFeatureAutorized('Admin_Color_new'),
          "view_enabled"=> $this->isFeatureAutorized('Admin_Color_view')
        );
        $viewData["colores"] = \Dao\Admin\Colores::findAll();

        Renderer::render('administrador/colores', $viewData);
    }
}

?>

