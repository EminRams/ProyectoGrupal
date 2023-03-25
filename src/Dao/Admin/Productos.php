<?php

namespace Dao\Admin;

use Dao\Table;

class Productos extends Table
{
  public static function insert(
    string $id_marca,
    string $id_categoria,
    string $id_prenda,
    string $id_color,
    string $nombre,
    string $descripcion,
    float $precio,
    int $stock,
    string $talla,
    string $enlace_imagen,
    string $estado
  ): int {
    

    $sqlstr = "INSERT INTO productos 
                    (id_marca, id_categoria, id_prenda, id_color, nombre, descripcion, precio, stock, talla, enlace_imagen, estado) 
                    values (:id_marca, :id_categoria, :id_prenda, :id_color, :nombre, :descripcion, :precio, :stock, :talla, :enlace_imagen, :estado);";

    $rowsInserted = self::executeNonQuery(
      $sqlstr,
      array(
        "id_marca" => $id_marca,
        "id_categoria" => $id_categoria,
        "id_prenda" => $id_prenda,
        "id_color" => $id_color,
        "nombre" => $nombre,
        "descripcion" => $descripcion,
        "precio" => $precio,
        "stock" => $stock,
        "talla" => $talla,
        "enlace_imagen" => $enlace_imagen,
        "estado" => $estado
      )
    );
    return $rowsInserted;
  }

  public static function update(
    int $id_producto,
    int $id_marca,
    int $id_categoria,
    int $id_prenda,
    int $id_color,
    string $nombre,
    string $descripcion,
    float $precio,
    int $stock,
    string $talla,
    string $enlace_imagen,
    string $estado
  ) {
    $sqlstr = "UPDATE productos SET id_marca = :id_marca, id_categoria = :id_categoria, id_prenda = :id_prenda, 
                    id_color = :id_color, nombre = :nombre, descripcion = :descripcion, precio = :precio, stock = :stock, talla = :talla, 
                    enlace_imagen = :enlace_imagen, estado = :estado WHERE id_producto = :id_producto;";
    $rowsUpdated = self::executeNonQuery(
      $sqlstr,
      array(
        "id_producto" => $id_producto,
        "id_marca" => $id_marca,
        "id_categoria" => $id_categoria,
        "id_prenda" => $id_prenda,
        "id_color" => $id_color,
        "nombre" => $nombre,
        "descripcion" => $descripcion,
        "precio" => $precio,
        "stock" => $stock,
        "talla" => $talla,
        "enlace_imagen" => $enlace_imagen,
        "estado" => $estado
      )
    );
    return $rowsUpdated;
  }

  public static function delete(int $id_producto)
  {
    $sqlstr = "DELETE from productos WHERE id_producto = :id_producto;";
    $rowsDeleted = self::executeNonQuery(
      $sqlstr,
      array(
        "id_producto" => $id_producto
      )
    );
    return $rowsDeleted;
  }

  public static function findAll()
  {
    $sqlstr = "SELECT * FROM productos_v;";
    return self::obtenerRegistros($sqlstr, array());
  }

  public static function findById(int $id_producto)
  {
    $sqlstr = "SELECT * FROM productos WHERE id_producto = :id_producto;";
    $row = self::obtenerUnRegistro(
      $sqlstr,
      array(
        "id_producto" => $id_producto
      )
    );
    return $row;
  }

  public static function findId(string $tabla, string $idNombre, string $nombre): int
  {
    $sqlstr = "Select" . $idNombre . " from " . $tabla . " WHERE nombre = :nombre ;";
    $row = self::obtenerUnRegistro(
      $sqlstr,
      array(
        $idNombre => $nombre
      )
    );
    return $row;
  }

  // public static function findCategorias()
  // {
  //   $sqlstr = "SELECT nombre FROM categorias";
  //   return self::obtenerRegistros($sqlstr, array());
  // }

  // public static function findMarcas()
  // {
  //   $sqlstr = "SELECT nombre FROM marcas";
  //   return self::obtenerRegistros($sqlstr, array());
  // }

  // public static function findPrendas()
  // {
  //   $sqlstr = "SELECT nombre FROM prendas";
  //   return self::obtenerRegistros($sqlstr, array());
  // }

  // public static function findColors()
  // {
  //   $sqlstr = "SELECT nombre FROM colores";
  //   return self::obtenerRegistros($sqlstr, array());
  // }
}
