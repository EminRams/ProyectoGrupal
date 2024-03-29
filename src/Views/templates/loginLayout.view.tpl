<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title>Log In | El Bulto</title>
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

            <!-- Logo -->
            <div class="card-header pt-4 pb-4 text-center bg-primary">
              <a href="index.html">
                <span><img src="/{{BASE_DIR}}/public/images/logo.png" alt="" height="100"></span>
              </a>
            </div>

            <div class="card-body p-4">

              <div class="text-center w-75 m-auto">
                <h4 class="text-dark-50 text-center pb-0 fw-bold">Iniciar Sesión</h4>
                <p class="text-muted mb-4">Ingrese su correo electrónico y contraseña para acceder.
                </p>
              </div>

              <form method="post"
                action="index.php?page=seguridad_login{{if redirto}}&redirto={{redirto}}{{endif redirto}}">

                <div class="mb-3">
                  <label for="emailaddress" class="form-label">Correo electrónico</label>
                  <input class="form-control" type="email" id="txtEmail" required="" name="txtEmail"
                    placeholder="Ingrese su correo" value="{{txtEmail}}">
                </div>
                {{if errorEmail}}
                <div class="error col-12 py-2 col-m-8 offset-m-4">{{errorEmail}}</div>
                {{endif errorEmail}}
                <div class="mb-3">
                  <a href="pages-recoverpw.html" class="text-muted float-end"><small>¿Olvidaste tu
                      contraseña?</small></a>
                  <label for="password" class="form-label">Contraseña</label>
                  <div class="input-group input-group-merge">
                    <input type="password" id="txtPswd" class="form-control" placeholder="Ingrese su contraseña"
                      name="txtPswd" value="{{txtPswd}}">
                    <div class="input-group-text" data-password="false">
                      <span class="password-eye"></span>
                    </div>
                  </div>
                </div>
                {{if errorPswd}}
                <div class="error col-12 py-2 col-m-8 offset-m-4">{{errorPswd}}</div>
                {{endif errorPswd}}

                {{if generalError}}
                <div class="row">
                  {{generalError}}
                </div>
                {{endif generalError}}
                <div class="mb-3 mb-0 text-center">
                  <button class="btn btn-primary" type="submit" id="btnLogin"> Iniciar sesión
                  </button>
                </div>

              </form>
            </div> <!-- end card-body -->
          </div>
          <!-- end card -->

          <div class="row mt-3">
            <div class="col-12 text-center">
              <p class="text-muted">¿No tienes una cuenta?<a href="index.php?page=seguridad_register"
                  class="text-muted ms-1"><b>Crear una cuenta</b></a></p>
            </div> <!-- end col -->
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