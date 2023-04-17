<?php

namespace Controllers\Administrador;

use Controllers\PrivateController;
use Views\Renderer;

class Productos extends PrivateController
{
  public function run(): void
  {
    $viewData = array(
      "edit_enabled"=> $this->isFeatureAutorized('Admin_Producto_edit'),
      "delete_enabled"=> $this->isFeatureAutorized('Admin_Producto_delete'),
      "new_enabled"=> $this->isFeatureAutorized('Admin_Producto_new'),
      "view_enabled"=> $this->isFeatureAutorized('Admin_Producto_view')
    );
    $viewData["productos"] = \Dao\Admin\Productos::findAll();
    Renderer::render('administrador/productos', $viewData);
  }
}
