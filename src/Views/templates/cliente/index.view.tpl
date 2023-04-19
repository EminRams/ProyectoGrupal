<div class="row g-3 mt-3">
  {{foreach productos}}
  <div class="col-4">
    <div class="card h-100">
      <h3 class="card-header text-center">{{nombre}}</h3>
      <div class="card-body">

        <img class="card-img-top mx-auto d-block" src="/GRUPONW/PROYECTOGRUPAL/public/images/pic{{id_producto}}.png"
          alt="Card image cap" style="height: 200px; width:auto;">
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><b>Marca:</b> {{marca}}</li>
          <li class="list-group-item"><b>Talla:</b> {{talla}}</li>
          <li class="list-group-item"><b>Precio:</b> L. {{precio}}</li>
        </ul>
      </div>
      <div class="card-footer text-muted d-flex justify-content-center">
        <a href="#" class="btn btn-primary">Agregar al carrito <i class="mdi mdi-cart-plus"></i></a>
      </div>
    </div>
  </div>
  {{endfor productos}}
</div>