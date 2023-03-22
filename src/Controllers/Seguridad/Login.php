<?php

namespace Controllers\Seguridad;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;

use Views\Renderer;


class Login extends PublicController
{

    public function run(): void
    {
        // code
        $viewData = array();

        error_log(json_encode($viewData));

        Renderer::render('seguridad/login', $viewData, "loginLayout.view.tpl");
    }
}

?>