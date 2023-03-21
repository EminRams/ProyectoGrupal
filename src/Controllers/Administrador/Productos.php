<?php

namespace Controllers\Administrador;

use Controllers\PublicController;
use Views\Renderer;

class Productos extends PublicController
{
    public function run(): void
    {
        $viewData = array(
        "edit_enabled"=>true,
        "delete_enabled"=>true,
        "new_enabled"=>true
        );
        $viewData["productos"] = \Dao\Admin\Productos::findAll();

        Renderer::render('administrador/productos', $viewData);
    }
}

?>