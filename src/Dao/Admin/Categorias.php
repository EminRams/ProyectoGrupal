<?php

namespace Dao\Admin;

use Dao\Table;

// CREATE TABLE `categorias` (
//   `id_categoria` int NOT NULL AUTO_INCREMENT,
//   `nombre` varchar(30) DEFAULT NULL,
//   PRIMARY KEY (`id_categoria`)
// )

class Categorias extends Table
{
  public static function insert(string $nombre,): int
  {
    $sqlstr = "INSERT INTO categorias (
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

  public static function update(string $nombre, int $id_categoria): int
  {
    $sqlstr = "UPDATE categorias SET `nombre` = :nombre WHERE `id_categoria` = :id_categoria;";

    $rowsUpdated = self::executeNonQuery(
      $sqlstr,
      array(
        'nombre' => $nombre,
        'id_categoria' => $id_categoria,
      )
    );
    return $rowsUpdated;
  }

  public static function delete(int $id_categoria): int
  {
    $sqlstr = "DELETE FROM categorias WHERE `id_categoria` = :id_categoria;";

    $rowsDeleted = self::executeNonQuery(
      $sqlstr,
      array(
        'id_categoria' => $id_categoria,
      )
    );
    return $rowsDeleted;
  }

  public static function findAll()
  {
    $sqlstr = "SELECT * FROM categorias;";
    return self::obtenerRegistros($sqlstr, array());
  }

  public static function findById(int $id_categoria)
  {
    $sqlstr = "SELECT * FROM categorias WHERE id_categoria = :id_categoria;";
    $row = self::obtenerUnRegistro(
      $sqlstr,
      array(
        "id_categoria" => $id_categoria
      )
    );
    return $row;
  }
}
