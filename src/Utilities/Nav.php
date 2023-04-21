<?php

namespace Utilities;

class Nav
{

  public static function setNavContext()
  {
    $tmpNAVIGATION = array();
    $userID = \Utilities\Security::getUserId();
    if (\Utilities\Security::isAuthorized($userID, "Menu_MntUsuarios")) {
      $tmpNAVIGATION[] = array(
        "nav_url" => "index.php?page=mnt_usuarios",
        "nav_label" => "Usuarios"
      );
    }
    if (\Utilities\Security::isAuthorized($userID, "Menu_MntQuotes")) {
      $tmpNAVIGATION[] = array(
        "nav_url" => "index.php?page=Mnt_Quotes",
        "nav_label" => "Citas"
      );
    }

    if (\Utilities\Security::isAuthorized($userID, "Menu_PaymentCheckout")) {
      $tmpNAVIGATION[] = array(
        "nav_url" => "index.php?page=Checkout_Checkout",
        "nav_label" => "Pagar"
      );
    }

    if (\Utilities\Security::isAuthorized($userID, "Menu_AdmProductos")) {
      $tmpNAVIGATION[] = array(
        "nav_url" => "index.php?page=Administrador_Productos",
        "nav_label" => "Productos"
      );
    }

    if (\Utilities\Security::isAuthorized($userID, "Menu_AdmCategorias")) {
      $tmpNAVIGATION[] = array(
        "nav_url" => "index.php?page=Administrador_Categorias",
        "nav_label" => "Categorías"
      );
    }

    if (\Utilities\Security::isAuthorized($userID, "Menu_AdmColores")) {
      $tmpNAVIGATION[] = array(
        "nav_url" => "index.php?page=Administrador_Colores",
        "nav_label" => "Colores"
      );
    }

    if (\Utilities\Security::isAuthorized($userID, "Menu_AdmMarcas")) {
      $tmpNAVIGATION[] = array(
        "nav_url" => "index.php?page=Administrador_Marcas",
        "nav_label" => "Marcas"
      );
    }

    if (\Utilities\Security::isAuthorized($userID, "Menu_AdmPrendas")) {
      $tmpNAVIGATION[] = array(
        "nav_url" => "index.php?page=Administrador_Prendas",
        "nav_label" => "Prendas"
      );
    }

    $tmpNAVIGATION[] = array(
      "nav_url" => "index.php?page=Cliente_Index",
      "nav_label" => "Catálogo de productos"
    );
    
    \Utilities\Context::setContext("NAVIGATION", $tmpNAVIGATION);
  }


  private function __construct()
  {
  }
  private function __clone()
  {
  }
}
