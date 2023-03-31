<?php

namespace Controllers\Seguridad;

// ---------------------------------------------------------------
// Sección de imports
// ---------------------------------------------------------------
use Controllers\PublicController;
use Twig\Error\Error;
use \Utilities\Validators;
use Views\Renderer;


class Register extends PublicController
{
    private $txtEmail = "";
    private $txtPswd = "";
    private $errorEmail = "";
    private $errorPswd = "";
    private $hasErrors = false;
    public function run(): void
    {
        if ($this->isPostBack()) {
            $this->txtEmail = $_POST["txtEmail"];
            $this->txtPswd = $_POST["txtPswd"];
            //validaciones
            if (!(Validators::IsValidEmail($this->txtEmail))) {
                $this->errorEmail = "El correo no tiene el formato adecuado";
                $this->hasErrors = true;
            }
            if (!Validators::IsValidPassword($this->txtPswd)) {
                $this->errorPswd = "La contraseña debe tener al menos 8 caracteres una mayúscula, un número y un caracter especial.";
                $this->hasErrors = true;
            }

            if (!$this->hasErrors) {
                try {
                    if (\Dao\Security\Security::newUsuario($this->txtEmail, $this->txtPswd)) {
                        \Utilities\Site::redirectToWithMsg("index.php?page=seguridad_login", "¡Usuario Registrado Satisfactoriamente!");
                    }
                } catch (Error $ex) {
                    die($ex);
                }
            }
        }
        $viewData = get_object_vars($this);

        Renderer::render('seguridad/register', $viewData, "registerLayout.view.tpl");
    }
}

?>