<?php

namespace Dao\Admin;
use Dao\Table;

// CREATE TABLE `colores` (
//   `id_color` int NOT NULL AUTO_INCREMENT,
//   `nombre` varchar(30) DEFAULT NULL,
//   PRIMARY KEY (`id_color`)
// )

class Colores extends Table
{
  public static function insert(string $nombre): int
  {
    $sqlstr = "INSERT INTO colores (
          `nombre`
        ) VALUES (
          :nombre
        );";

    $rowsInserted = self::executeNonQuery(
      $sqlstr,
      array(
        'nombre' => $nombre,
      )
    );
    return $rowsInserted;
  }

  public static function update(string $nombre, int $id_color): int
  {
    $sqlstr = "UPDATE colores SET `nombre` = :nombre WHERE `id_color` = :id_color;";

    $rowsUpdated = self::executeNonQuery(
      $sqlstr,
      array(
        'nombre' => $nombre,
        'id_color' => $id_color,
      )
    );
    return $rowsUpdated;
  }

  public static function delete(int $id_color): int
  {
    $sqlstr = "DELETE FROM colores WHERE `id_color` = :id_color;";

    $rowsDeleted = self::executeNonQuery(
      $sqlstr,
      array(
        'id_color' => $id_color,
      )
    );
    return $rowsDeleted;
  }

  public static function findAll()
  {
    $sqlstr = "SELECT * FROM colores;";
    return self::obtenerRegistros($sqlstr, array());
  }

  public static function findById(int $id_color)
  {
    $sqlstr = "SELECT * FROM colores WHERE id_color = :id_color;";
    $row = self::obtenerUnRegistro(
      $sqlstr,
      array(
        "id_color" => $id_color
      )
    );
    return $row;
  }
}
