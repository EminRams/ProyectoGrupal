<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PrivateController;

use Views\Renderer;


class Marcas extends PrivateController
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
          "edit_enabled"=> $this->isFeatureAutorized('Admin_Marca_edit'),
          "delete_enabled"=> $this->isFeatureAutorized('Admin_Marca_delete'),
          "new_enabled"=> $this->isFeatureAutorized('Admin_Marca_new'),
          "view_enabled"=> $this->isFeatureAutorized('Admin_Marca_view')
        );
        $viewData["marcas"] = \Dao\Admin\Marcas::findAll();

        Renderer::render('administrador/marcas', $viewData);
    }
}

?>

