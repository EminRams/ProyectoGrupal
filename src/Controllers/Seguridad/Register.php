<?php

namespace Controllers\Seguridad;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Register extends PublicController
{

    public function run(): void
    {
        // code
        $viewData = array();

        error_log(json_encode($viewData));

        Renderer::render('seguridad/register', $viewData, "registerLayout.view.tpl");
    }
}

?>