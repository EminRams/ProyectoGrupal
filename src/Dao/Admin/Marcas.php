<?php

namespace Dao\Admin;
use Dao\Table;

// CREATE TABLE `marcas` (
//   `id_marca` int NOT NULL AUTO_INCREMENT,
//   `nombre` varchar(30) DEFAULT NULL,
// `estado` varchar(30) DEFAULT NULL,
//   PRIMARY KEY (`id_marca`)
// )

class Marcas extends Table
{
  public static function insert(string $nombre, string $estado): int
  {
    $sqlstr = "INSERT INTO marcas (
          `nombre`,`estado`
        ) VALUES (
          :nombre,
          :estado
        );";

    $rowsInserted = self::executeNonQuery(
      $sqlstr,
      array(
        'nombre' => $nombre,
        'estado' => $estado,
      )
    );
    return $rowsInserted;
  }

  public static function update(string $nombre, string $estado, int $id_marca): int
  {
    $sqlstr = "UPDATE marcas SET `nombre` = :nombre, `estado` = :estado WHERE `id_marca` = :id_marca;";

    $rowsUpdated = self::executeNonQuery(
      $sqlstr,
      array(
        'nombre' => $nombre,
        'id_marca' => $id_marca,
        'estado' => $estado
      )
    );
    return $rowsUpdated;
  }

  public static function delete(int $id_marca): int
  {
    $sqlstr = "DELETE FROM marcas WHERE `id_marca` = :id_marca;";

    $rowsDeleted = self::executeNonQuery(
      $sqlstr,
      array(
        'id_marca' => $id_marca,
      )
    );
    return $rowsDeleted;
  }

  public static function findAll()
  {
    $sqlstr = "SELECT * FROM marcas;";
    return self::obtenerRegistros($sqlstr, array());
  }

  public static function findById(int $id_marca)
  {
    $sqlstr = "SELECT * FROM marcas WHERE id_marca = :id_marca;";
    $row = self::obtenerUnRegistro(
      $sqlstr,
      array(
        "id_marca" => $id_marca
      )
    );
    return $row;
  }
}
