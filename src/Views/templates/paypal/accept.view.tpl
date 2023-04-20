<h1>Orden Aceptada</h1>
<div class="card">
  <div class="card-body mx-4">
    <div class="container">
      <p class="my-5 mx-5" style="font-size: 30px;">Gracias por su compra</p>
      <div class="row">
        <ul class="list-unstyled">
          <li class="text-black">Nombre: {{name}} {{lastname}}</li>
          <li class="text-black">Correo Electrónico: {{email}}</li>
          <li class="text-muted mt-1"><span class="text-black">Factura:</span> {{id}}</li>
          <li class="text-black mt-1">Fecha: {{date}}</li>
        </ul>
        <hr>
        <div class="col-xl-10">
          <p>Subtotal</p>
        </div>
        <div class="col-xl-2">
          <p class="float-end">{{net_amount}}
          </p>
        </div>
        <hr>
        <div class="col-xl-10">
          <p>Tarifa</p>
        </div>
        <div class="col-xl-2">
          <p class="float-end">{{paypal_fee}}
          </p>
        </div>
        <hr>
      </div>
      <div class="row text-black">
        <div class="col-xl-12">
          <p class="float-end fw-bold">Total: {{gross_amount}}
          </p>
        </div>
        <hr style="border: 2px solid black;">
      </div>
    </div>
  </div>
  <div class="col-sm-6 mb-3">
    <a href="index.php?page=cliente_index" class="btn text-muted d-none d-sm-inline-block btn-link fw-semibold">
      <i class="mdi mdi-arrow-left"></i> Volver al inicio </a>
  </div> <!-- end col -->
</div>