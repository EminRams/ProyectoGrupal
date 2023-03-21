<?php

namespace Controllers;

class Index extends PublicController
{
    /**
     * Index run method
     *
     * @return void
     */
    public function run(): void
    {
        $viewData = array();
        \Views\Renderer::render("index", $viewData, 'layoutLanding.view.tpl');
    }
}
?>