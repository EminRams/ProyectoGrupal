<?php

namespace Controllers\Administrador;

use Controllers\PublicController;
use Views\Renderer;

class Producto extends PublicController
{
    public function run(): void
    {
        $viewData = array(
        );


        Renderer::render('administrador/producto', $viewData);
    }
}

?>