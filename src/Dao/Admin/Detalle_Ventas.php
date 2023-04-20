<?php

namespace Dao\Admin;

use Dao\Table;

// CREATE TABLE `detalle_ventas` (
//   `id_venta` int NOT NULL,
//   `id_producto` int NOT NULL,
//   `cantidad` int DEFAULT NULL,
//   `precio` decimal(10,0) DEFAULT NULL,
//   PRIMARY KEY (`id_venta`,`id_producto`),
//   KEY `id_producto` (`id_producto`),
//   CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
//   CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `encabezado_ventas` (`id_venta`)
// )

class Detalle_Ventas extends Table
{
  public static function insert(string $id_venta, string $id_producto, string $cantidad, string $precio): int
  {
    $sqlstr = "INSERT INTO detalle_ventas (id_venta, id_producto, cantidad, precio) values (:id_venta, :id_producto, :cantidad, :precio);";

    $rowsInserted = self::executeNonQuery(
      $sqlstr,
      array(
        'id_venta' => $id_venta,
        'id_usuario' => $id_producto,
        'cantidad' => $cantidad,
        'precio' => $precio,
      )
    );
    return $rowsInserted;
  }

  public static function findAll()
  {
    $sqlstr = "SELECT * FROM detalle_ventas;";
    return self::obtenerRegistros($sqlstr, array());
  }

  public static function findById(int $id_venta)
  {
    $sqlstr = "SELECT * FROM detalle_ventas WHERE id_venta = :id_venta;";
    $row = self::obtenerUnRegistro(
      $sqlstr,
      array(
        "id_categoria" => $id_venta
      )
    );
    return $row;
  }
}
