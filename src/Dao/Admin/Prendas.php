<?php

namespace Dao\Admin;

use Dao\Table;

// CREATE TABLE `prendas` (
//   `id_prenda` int NOT NULL AUTO_INCREMENT,
//   `nombre` varchar(30) DEFAULT NULL,
//   PRIMARY KEY (`id_prenda`)
// )

class Prendas extends Table
{
  public static function insert(string $nombre,): int
  {
    $sqlstr = "INSERT INTO prendas (
          `nombre`
        ) values (
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

  public static function update(string $nombre, int $id_prenda): int
  {
    $sqlstr = "UPDATE prendas SET `nombre` = :nombre WHERE `id_prenda` = :id_prenda;";

    $rowsUpdated = self::executeNonQuery(
      $sqlstr,
      array(
        'nombre' => $nombre,
        'id_prenda' => $id_prenda,
      )
    );
    return $rowsUpdated;
  }

  public static function delete(int $id_prenda): int
  {
    $sqlstr = "DELETE FROM prendas WHERE `id_prenda` = :id_prenda;";

    $rowsDeleted = self::executeNonQuery(
      $sqlstr,
      array(
        'id_prenda' => $id_prenda,
      )
    );
    return $rowsDeleted;
  }

  public static function findAll()
  {
    $sqlstr = "SELECT * FROM prendas;";
    return self::obtenerRegistros($sqlstr, array());
  }

  public static function findById(int $id_prenda)
  {
    $sqlstr = "SELECT * FROM prendas WHERE id_prenda = :id_prenda;";
    $row = self::obtenerUnRegistro(
      $sqlstr,
      array(
        "id_prenda" => $id_prenda
      )
    );
    return $row;
  }
}
