<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PrivateController;

use Views\Renderer;


class Prendas extends PrivateController
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
          "edit_enabled"=> $this->isFeatureAutorized('Admin_Prenda_edit'),
          "delete_enabled"=> $this->isFeatureAutorized('Admin_Prenda_delete'),
          "new_enabled"=> $this->isFeatureAutorized('Admin_Prenda_new'),
          "view_enabled"=> $this->isFeatureAutorized('Admin_Prenda_view')
        );
        $viewData["prendas"] = \Dao\Admin\Prendas::findAll();

        Renderer::render('administrador/prendas', $viewData);
    }
}

?>

