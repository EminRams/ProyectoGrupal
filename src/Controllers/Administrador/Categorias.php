<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PrivateController;

use Views\Renderer;


class Categorias extends PrivateController
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
          "edit_enabled"=> $this->isFeatureAutorized('Admin_Categoria_edit'),
          "delete_enabled"=> $this->isFeatureAutorized('Admin_Categoria_delete'),
          "new_enabled"=> $this->isFeatureAutorized('Admin_Categoria_new'),
          "view_enabled"=> $this->isFeatureAutorized('Admin_Categoria_view')
        );
        $viewData["categorias"] = \Dao\Admin\Categorias::findAll();

        Renderer::render('administrador/categorias', $viewData);
    }
}

?>