<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Register | El Bulto</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
    <meta content="Coderthemes" name="author" />
    <!-- App favicon -->
    <link rel="shortcut icon" href="/{{BASE_DIR}}/public/images/favicon.ico">

    <!-- App css -->
    <link href="/{{BASE_DIR}}/public/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="/{{BASE_DIR}}/public/css/app.min.css" rel="stylesheet" type="text/css" id="light-style" />
    <link href="/{{BASE_DIR}}/public/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style" />

</head>

<body class="loading authentication-bg"
    data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>

    <div class="account-pages pt-2 pt-sm-5 pb-4 pb-sm-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xxl-8 col-lg-8">
                    <div class="card">
                        <!-- Logo-->
                        <div class="card-header pt-4 pb-4 text-center bg-primary">
                            <a href="index.html">
                                <span><img src="/{{BASE_DIR}}/public/images/logo.png" alt="" height="18"></span>
                            </a>
                        </div>

                        <div class="card-body p-4">

                            <div class="text-center w-75 m-auto">
                                <h4 class="text-dark-50 text-center mt-0 fw-bold">Crear cuenta</h4>
                                <p class="text-muted mb-4">¿No tienes una cuenta? Crea tu cuenta en menos de un minuto
                                </p>
                            </div>

                            <form class="row" action="#">                            
                                <div class="mb-3 col-6">
                                    <label for="nombre" class="form-label">Nombre</label>
                                    <input class="form-control" type="text" id="nombre" placeholder="Ingrese su nombre"
                                        required>
                                </div>
                                <div class="mb-3 col-6">
                                    <label for="apellido" class="form-label">Apellido</label>
                                    <input class="form-control" type="text" id="apellido"
                                        placeholder="Ingrese su apellido" required>
                                </div>
                                
                                <div class="mb-3 col-6">
                                    <label for="correo_electronico" class="form-label">Correo electrónico</label>
                                    <input class="form-control" type="email" id="correo_electronico" required
                                        placeholder="Ingrese su correo electrónico">
                                </div>

                                <div class="mb-3 col-6">
                                    <label for="telefono" class="form-label">Teléfono</label>
                                    <input class="form-control" type="text" id="telefono" required
                                        placeholder="Ingrese su número de teléfono">
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Dirección</label>
                                    <div class="form-floating">
                                        <textarea class="form-control" placeholder="Agregue una descripción"
                                            id="floatingTextarea" style="height: 100px; resize: none;"></textarea>
                                        <label for="floatingTextarea">Ingrese dirección del domicilio</label>
                                    </div>
                                </div>

                                <div class="mb-3 col-6">
                                    <label for="nombre" class="form-label">Usuario</label>
                                    <input class="form-control" type="text" id="nombre"
                                        placeholder="Ingrese su nombre de usuario" required>
                                </div>

                                <div class="mb-3 col-6">
                                    <label for="contrasenia" class="form-label">Contraseña</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" id="contrasenia" class="form-control"
                                            placeholder="Ingrese su contraseña">
                                        <div class="input-group-text" data-password="false">
                                            <span class="password-eye"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="checkbox-signup">
                                        <label class="form-check-label" for="checkbox-signup">Acepto <a href="#"
                                                class="text-muted">Los Términos y Condiciones</a></label>
                                    </div>
                                </div>

                                <div class="mb-3 text-center">
                                    <button class="btn btn-primary" type="submit"> Registrarse </button>
                                </div>

                            </form>
                        </div> <!-- end card-body -->
                    </div>
                    <!-- end card -->

                    <div class="row mt-3">
                        <div class="col-12 text-center">
                            <p class="text-muted">¿Ya estás registrado? <a href="index.php?page=seguridad_login"
                                    class="text-muted ms-1"><b>Iniciar sesión</b></a></p>
                        </div> <!-- end col-->
                    </div>
                    <!-- end row -->

                </div> <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end page -->

    <footer class="footer footer-alt">
        2018 - 2021 © Hyper - Coderthemes.com
    </footer>

    <!-- bundle -->
    <script src="/{{BASE_DIR}}/public/js/vendor.min.js"></script>
    <script src="/{{BASE_DIR}}/public/js/app.min.js"></script>

</body>

</html>