<?php

namespace Dao\Admin;

use Dao\Table;

class Productos extends Table
{
    public static function findAll()
    {
        $sqlstr = "SELECT * FROM productos_v;";
        return self::obtenerRegistros($sqlstr, array());
    }

}

?>