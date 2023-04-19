<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Registro | El Bulto</title>
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
                <div class="col-xxl-4 col-lg-5">
                    <div class="card">
                        <!-- Logo-->
                        <div class="card-header pt-4 pb-4 text-center bg-primary">
                            <a href="index.html">
                                <span><img src="/{{BASE_DIR}}/public/images/logo.png" alt="" height="100"></span>
                            </a>
                        </div>

                        <div class="card-body p-4">

                            <div class="text-center w-75 m-auto">
                                <h4 class="text-dark-50 text-center mt-0 fw-bold">Crea tu cuenta gratis</h4>
                                <p class="text-muted mb-4">¿No tienes una cuenta? Crea tu cuenta en menos de un minuto
                                </p>
                            </div>

                            <form method="post" action="index.php?page=seguridad_register">

                                <div class="mb-3">
                                    <label for="txtNombre" class="form-label">Nombre Completo</label>
                                    <input class="form-control" type="text" id="txtNombre" name="txtNombre"
                                        value="{{txtNombre}}" placeholder="Ingrese su nombre" required>
                                </div>

                                <div class="mb-3">
                                    <label for="txtEmail" class="form-label">Correo Electrónico</label>
                                    <input class="form-control" type="email" id="txtEmail" name="txtEmail"
                                        value="{{txtEmail}}" required placeholder="Ingrese su correo">
                                </div>
                                {{if errorEmail}}
                                <div class="error col-12 py-2 col-m-8 offset-m-4">{{errorEmail}}</div>
                                {{endif errorEmail}}

                                <div class="mb-3">
                                    <label for="txtPswd" class="form-label">Contraseña</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" id="txtPswd" class="form-control"
                                            placeholder="Ingrese su contraseña" name="txtPswd" value="{{txtPswd}}">
                                        <div class="input-group-text" data-password="false">
                                            <span class="password-eye"></span>
                                        </div>
                                    </div>
                                    {{if errorPswd}}
                                    <div class="error col-12 py-2 col-m-8 offset-m-4">{{errorPswd}}</div>
                                    {{endif errorPswd}}
                                </div>



                                <div class="mb-3 text-center">
                                    <button class="btn btn-primary" type="submit" id="btnSignin"> Crear cuenta </button>
                                </div>

                            </form>
                        </div> <!-- end card-body -->
                    </div>
                    <!-- end card -->

                    <div class="row mt-3">
                        <div class="col-12 text-center">
                            <p class="text-muted">Already have account? <a href="pages-login.html"
                                    class="text-muted ms-1"><b>Log In</b></a></p>
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
        2023 © El Bulto
    </footer>

    <!-- bundle -->
    <script src="/{{BASE_DIR}}/public/js/vendor.min.js"></script>
    <script src="/{{BASE_DIR}}/public/js/app.min.js"></script>

</body>

</html>