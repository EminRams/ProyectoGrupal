<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Landing Page | El Bulto</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
  <meta content="Coderthemes" name="author">
  <!-- App favicon -->
  <link rel="shortcut icon" href="/{{BASE_DIR}}/public/images/favicon.ico">

  <!-- App css -->
  <link href="/{{BASE_DIR}}/public/css/icons.min.css" rel="stylesheet" type="text/css">
  <link href="/{{BASE_DIR}}/public/css/app.min.css" rel="stylesheet" type="text/css" id="light-style">
  <link href="/{{BASE_DIR}}/public/css/app-dark.min.css" rel="stylesheet" type="text/css" id="dark-style">

</head>

<body class="loading" data-layout-config='{"darkMode":false}'>

  <!-- NAVBAR START -->
  <nav class="navbar navbar-expand-lg py-lg-3 navbar-dark">
    <div class="container">

      <!-- logo -->
      <a href="index.html" class="navbar-brand me-lg-5">
        <img src="/{{BASE_DIR}}/public/images/logo.png" alt="" class="logo-dark" height="100">
      </a>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <i class="mdi mdi-menu"></i>
      </button>

      <!-- menus -->
      <div class="collapse navbar-collapse" id="navbarNavDropdown">

        <!-- left menu -->
        <ul class="navbar-nav me-auto align-items-center">
          <li class="nav-item mx-lg-1">
            <a class="nav-link active" href="">Inicio</a>
          </li>
          <li class="nav-item mx-lg-1">
            <a class="nav-link" href="#features">Servicios</a>
          </li>
          <li class="nav-item mx-lg-1">
            <a class="nav-link" href="#pricing">Productos</a>
          </li>
          <li class="nav-item mx-lg-1">
            <a class="nav-link" href="#FAQ">Preguntas frecuentes</a>
          </li>
          <li class="nav-item mx-lg-1">
            <a class="nav-link" href="#contacts">Contáctanos</a>
          </li>
        </ul>

        <!-- right menu -->
        <ul class="navbar-nav ms-auto align-items-center">
          <li class="nav-item me-0">
            <a href="index.php?page=administrador_index" target="_blank" class="nav-link d-lg-none">Administrador</a>
            <a href="index.php?page=administrador_index" target="_blank"
              class="btn btn-sm btn-light btn-rounded d-none d-lg-inline-flex">
              <i class="mdi mdi-basket me-2"></i> Administrador
            </a>
          </li>
        </ul>
        <ul class="navbar-nav ms-auto align-items-center">
          <li class="nav-item me-0">
            <a href="index.php?page=cliente_index" target="_blank" class="nav-link d-lg-none">Cliente</a>
            <a href="index.php?page=cliente_index" target="_blank"
              class="btn btn-sm btn-light btn-rounded d-none d-lg-inline-flex">
              <i class="mdi mdi-basket me-2"></i> Cliente
            </a>
          </li>
        </ul>
        <ul class="navbar-nav ms-auto align-items-center">
          <li class="nav-item me-0">
            <a href="index.php?page=seguridad_login" target="_blank" class="nav-link d-lg-none">Iniciar
              Sesión</a>
            <a href="index.php?page=seguridad_login" target="_blank"
              class="btn btn-sm btn-light btn-rounded d-none d-lg-inline-flex">
              <i class="mdi mdi-basket me-2"></i> Iniciar Sesión
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- NAVBAR END -->

  <!-- START HERO -->
  <section class="hero-section">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-5">
          <div class="mt-md-4">
            <div>

              <span class="text-white-50 ms-1">Bienvenido a El Bulto</span>
            </div>
            <h2 class="text-white fw-normal mb-4 mt-3 hero-title">
              Consigue la mejor moda al mejor precio en El Bulto.
            </h2>

            <p class="mb-4 font-16 text-white-50">¿Quieres lucir a la moda sin gastar una fortuna? Entonces estás en el
              lugar correcto. En El Bulto, encontrarás ropa moderna y de alta calidad a precios que te encantarán.</p>

            <a href="" target="_blank" class="btn btn-success">Comprar ahora
              <i class="mdi mdi-cart-arrow-right ms-1"></i></a>
          </div>
        </div>
        <div class="col-md-5 offset-md-2">
          <div class="text-md-end mt-3 mt-md-0">
            <img src="/{{BASE_DIR}}/public/images/models.png" alt="" class="img-fluid">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- END HERO -->

  <!-- START SERVICES -->
  <section class="py-5" id="features">
    <div class="container">
      <div class="row py-4">
        <div class="col-lg-12">
          <div class="text-center">
            <h1 class="mt-0"><i class="mdi mdi-shopping"></i></h1>
            <h3>Por qué elegirnos como tu tienda de ropa <span class="text-primary">en línea</span> <span
                class="text-primary"></span></h3>

          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4">
          <div class="text-center p-3">
            <div class="avatar-sm m-auto">
              <span class="avatar-title bg-primary-lighten rounded-circle">
                <i class="dripicons-box text-primary font-24"></i>
              </span>
            </div>
            <h4 class="mt-3">Amplia variedad de productos de alta calidad a precios accesibles</h4>

          </div>
        </div>

        <div class="col-lg-4">
          <div class="text-center p-3">
            <div class="avatar-sm m-auto">
              <span class="avatar-title bg-primary-lighten rounded-circle">
                <i class="mdi mdi-truck-check text-primary font-24"></i>
              </span>
            </div>
            <h4 class="mt-3">Entrega rápida y confiable en toda la región/ciudad/país</h4>

          </div>
        </div>

        <div class="col-lg-4">
          <div class="text-center p-3">
            <div class="avatar-sm m-auto">
              <span class="avatar-title bg-primary-lighten rounded-circle">
                <i class="uil uil-arrows-h-alt text-primary font-24"></i>
              </span>
            </div>
            <h4 class="mt-3">Política de devolución sencilla y sin complicaciones.</h4>

          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-lg-4">
          <div class="text-center p-3">
            <div class="avatar-sm m-auto">
              <span class="avatar-title bg-primary-lighten rounded-circle">
                <i class="uil uil-calling text-primary font-24"></i>
              </span>
            </div>
            <h4 class="mt-3">Servicio al cliente amigable y eficiente</h4>

          </div>
        </div>

        <div class="col-lg-4">
          <div class="text-center p-3">
            <div class="avatar-sm m-auto">
              <span class="avatar-title bg-primary-lighten rounded-circle">
                <i class="uil uil-package text-primary font-24"></i>
              </span>
            </div>
            <h4 class="mt-3">Empaquetado cuidadoso y presentación atractiva del producto</h4>

          </div>
        </div>

        <div class="col-lg-4">
          <div class="text-center p-3">
            <div class="avatar-sm m-auto">
              <span class="avatar-title bg-primary-lighten rounded-circle">
                <i class="dripicons-view-list text-primary font-24"></i>
              </span>
            </div>
            <h4 class="mt-3">Amplia variedad de marcas y estilos para satisfacer los gustos y necesidades de todos los
              clientes</h4>

          </div>
        </div>
      </div>

    </div>
  </section>
  <!-- END SERVICES -->



  <!-- START PRICING -->
  <section class="py-5 bg-light-lighten border-top border-bottom border-light" id="pricing">
    <div class="container">

      <div class="row py-4">
        <div class="col-lg-12">
          <div class="text-center">
            <h1 class="mt-0"><i class="mdi mdi-shopping"></i></h1>
            <h3>Mira nuestros Productos conocidos <span class="text-primary">Por su gran calidad</span><span
                class="text-primary"></span></h3>
          </div>
        </div>
      </div>

      <div class="row g-1">
        {{foreach productos}}
        <div class="col-4">
          <div class="card">
            <h5 class="card-header">{{nombre}}</h5>
            <div class="card-body">
              <h5 class="card-title">Detalles</h5>
              <ul class="list-group list-group-flush">
                <li class="list-group-item">Marca: {{marca}}</li>
                <li class="list-group-item">Talla: {{marca}}</li>
                <li class="list-group-item">Categoria: {{categoria}}</li>
                <li class="list-group-item">Color: {{color}}</li>
                <li class="list-group-item">Precio: {{precio}}</li>
              </ul>
            </div>
            <div class="card-footer text-muted d-flex justify-content-center">
              <a href="#" class="btn btn-primary">Add to Cart</a>
            </div>
          </div>
        </div>
        {{endfor productos}}
      </div>
    </div>
  </section>
  <!-- END PRICING -->

  <!-- START FAQ -->
  <section class="py-5" id="FAQ">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="text-center">
            <h1 class="mt-0"><i class="mdi mdi-frequently-asked-questions"></i></h1>
            <h3>Preguntas<span class="text-primary"> Frecuentes</span></h3>
            <p class="text-muted mt-2">Respondemos tus dudas y preocupaciones. En El Bulto, queremos asegurarnos de que
              tengas toda la información que necesitas antes de realizar una compra. Hemos recopilado una lista de las
              preguntas más comunes que recibimos de nuestros clientes.
            </p>

            <!-- <button type="button" class="btn btn-success btn-sm mt-2"><i class="mdi mdi-email-outline me-1"></i> Email
              us your question</button>
            <button type="button" class="btn btn-info btn-sm mt-2 ms-1"><i class="mdi mdi-twitter me-1"></i>
              Send us a tweet</button> -->
          </div>
        </div>
      </div>

      <div class="row mt-5">
        <div class="col-lg-5 offset-lg-1">
          <!-- Question/Answer -->
          <div>
            <div class="faq-question-q-box">Q.</div>
            <h4 class="faq-question text-body">¿Puedo recibir asesoramiento sobre el tamaño y la calidad de los
              productos?</h4>
            <p class="faq-answer mb-4 pb-1 text-muted">Sí, nuestro servicio al cliente está disponible para ayudarte a
              encontrar el tamaño adecuado y responder cualquier otra pregunta sobre nuestros productos.</p>
          </div>

          <!-- Question/Answer -->
          <div>
            <div class="faq-question-q-box">Q.</div>
            <h4 class="faq-question text-body">¿Tienen una política de precios bajos garantizados?</h4>
            <p class="faq-answer mb-4 pb-1 text-muted">Sí, ofrecemos una política de precios bajos garantizados. Si
              encuentras un producto similar a un precio más bajo en otra tienda en línea, háganoslo saber y ajustaremos
              nuestro precio para igualar o superar el precio de la competencia.</p>
          </div>

        </div>
        <!--/col-lg-5 -->

        <div class="col-lg-5">
          <!-- Question/Answer -->
          <div>
            <div class="faq-question-q-box">Q.</div>
            <h4 class="faq-question text-body">¿Qué opciones de pago están disponibles?</h4>
            <p class="faq-answer mb-4 pb-1 text-muted">Pagos a través de PayPal.</p>
          </div>

          <!-- Question/Answer -->
          <div>
            <div class="faq-question-q-box">Q.</div>
            <h4 class="faq-question text-body">¿Cuánto tiempo tarda en llegar mi pedido?</h4>
            <p class="faq-answer mb-4 pb-1 text-muted">El tiempo de entrega depende de tu ubicación y del método de
              envío seleccionado. Generalmente, el tiempo de entrega oscila entre 3 y 7 días hábiles.</p>
          </div>

        </div>
        <!--/col-lg-5-->
      </div>
      <!-- end row -->

    </div> <!-- end container-->
  </section>
  <!-- END FAQ -->

  <!-- START CONTACT -->
  <section class="py-5 bg-light-lighten border-top border-bottom border-light" id="contacts">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="text-center">
            <h3>¡Contáctanos!</h3>
            <p class="text-muted mt-2">
              ¿Necesitas ayuda? No dudes en contactarnos. En El Bulto, valoramos tu satisfacción y estamos
              comprometidos a brindarte un servicio excepcional. Si tienes alguna pregunta o inquietud sobre tu pedido o
              nuestros productos, por favor contáctanos
            </p>
          </div>
        </div>
      </div>

      <div class="row align-items-center mt-3">
        <div class="col-md-4">
          <p class="text-muted"><span class="fw-bold">Servicio al cliente:</span><br> <span class="d-block mt-1">+504
              2255-8874</span></p>
          <p class="text-muted mt-4"><span class="fw-bold">Correo electrónico:</span><br> <span
              class="d-block mt-1">elbulto@gmail.com</span></p>
          <p class="text-muted mt-4"><span class="fw-bold">Dirección de la oficina:</span><br> <span
              class="d-block mt-1">4461
              Cedar Avenida Moro, AR 72368</span></p>
          <p class="text-muted mt-4"><span class="fw-bold">Horario de oficina:</span><br> <span
              class="d-block mt-1">9:00AM a
              6:00PM</span></p>
        </div>

        <div class="col-md-8">
          <form>
            <div class="row mt-4">
              <div class="col-lg-6">
                <div class="mb-2">
                  <label for="fullname" class="form-label">Nombre</label>
                  <input class="form-control form-control-light" type="text" id="fullname" placeholder="Nombre...">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="mb-2">
                  <label for="emailaddress" class="form-label">Correo electrónico</label>
                  <input class="form-control form-control-light" type="email" required="" id="emailaddress"
                    placeholder="Ingrese su correo...">
                </div>
              </div>
            </div>

            <div class="row mt-1">
              <div class="col-lg-12">
                <div class="mb-2">
                  <label for="subject" class="form-label">Título</label>
                  <input class="form-control form-control-light" type="text" id="subject"
                    placeholder="Ingrese el título...">
                </div>
              </div>
            </div>

            <div class="row mt-1">
              <div class="col-lg-12">
                <div class="mb-2">
                  <label for="comments" class="form-label">Mensaje</label>
                  <textarea id="comments" rows="4" class="form-control form-control-light"
                    placeholder="Ingrese el mensaje que desea enviar..."></textarea>
                </div>
              </div>
            </div>

            <div class="row mt-2">
              <div class="col-12 text-end">
                <button class="btn btn-primary">Enviar mensaje<i class="mdi mdi-telegram ms-1"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
  <!-- END CONTACT -->

  <!-- START FOOTER -->
  <footer class="bg-dark py-2">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <img src="/{{BASE_DIR}}/public/images/logo.png" alt="" class="logo-dark" height="100">
          <p class="text-muted mt-4">Descubre más sobre El Bulto. En El Bulto, estamos comprometidos en ofrecerte la
            mejor selección de ropa de calidad y precios accesibles. Queremos que te sientas seguro y cómodo comprando
            en nuestra tienda en línea.
          </p>

          <ul class="social-list list-inline mt-3">
            <li class="list-inline-item text-center">
              <a href="javascript: void(0);" class="social-list-item border-primary text-primary"><i
                  class="mdi mdi-facebook"></i></a>
            </li>
            <li class="list-inline-item text-center">
              <a href="javascript: void(0);" class="social-list-item border-danger text-danger"><i
                  class="mdi mdi-google"></i></a>
            </li>
            <li class="list-inline-item text-center">
              <a href="javascript: void(0);" class="social-list-item border-info text-info"><i
                  class="mdi mdi-twitter"></i></a>
            </li>
            <li class="list-inline-item text-center">
              <a href="javascript: void(0);" class="social-list-item border-secondary text-secondary"><i
                  class="mdi mdi-github"></i></a>
            </li>
          </ul>

        </div>



        <div class="row">
          <div class="col-lg-12">
            <div class="mt-5">
              <p class="text-muted mt-4 text-center mb-0">© 2023 - El Bulto</p>
            </div>
          </div>
        </div>
      </div>
  </footer>
  <!-- END FOOTER -->

  <!-- bundle -->
  <script src="/{{BASE_DIR}}/public/js/vendor.min.js"></script>
  <script src="/{{BASE_DIR}}/public/js/app.min.js"></script>

</body>

</html>