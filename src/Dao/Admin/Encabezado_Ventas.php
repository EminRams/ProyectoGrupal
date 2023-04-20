<?php

namespace Dao\Admin;
use Dao\Table;

// CREATE TABLE `encabezado_ventas` (
//   `id_venta` int NOT NULL AUTO_INCREMENT,
//   `id_usuario` int DEFAULT NULL,
//   `fecha` datetime DEFAULT NULL,
//   PRIMARY KEY (`id_venta`),
//   KEY `id_usuario` (`id_usuario`),
//   CONSTRAINT `encabezado_ventas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
// )

class Encabezado_Ventas extends Table
{
  public static function insert(string $id_venta, string $id_usuario, string $fecha): int
  {
    $sqlstr = "INSERT INTO encabezado_ventas (id_venta, id_usuario, fecha) values (:id_venta, :id_usuario, :fecha);";

    $rowsInserted = self::executeNonQuery(
      $sqlstr,
      array(
        'id_venta' => $id_venta,
        'id_usuario' => $id_usuario,
        'fecha' => $fecha,
        )
    );
    return $rowsInserted;
  }

  public static function findAll()
  {
    $sqlstr = "SELECT * FROM encabezado_ventas;";
    return self::obtenerRegistros($sqlstr, array());
  }

  public static function findById(int $id_venta)
  {
    $sqlstr = "SELECT * FROM encabezado_ventas WHERE id_venta = :id_venta;";
    $row = self::obtenerUnRegistro(
      $sqlstr,
      array(
        "id_venta" => $id_venta
      )
    );
    return $row;
  }
}
