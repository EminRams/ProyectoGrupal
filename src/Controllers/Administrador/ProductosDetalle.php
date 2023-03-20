<?php

namespace Controllers\Administrador;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;
use Dao\Mnt\Productos as DaoProductos;
use Views\Renderer;


class ProductosDetalle extends PublicController
{
    /**
     * Runs the controller
     *
     * @return void
     */
    public function run(): void
    {
        // code
        $viewData = array();
        // $viewData["Productos"] = DaoProductos::getAll();
        error_log(json_encode($viewData));

        Renderer::render('administrador/productosdetalle', $viewData);
    }
}

?>