<div class="row g-3 mt-3">
  {{foreach productos}}
  <div class="col-4">
    <div class="card h-100">
      <h3 class="card-header text-center">{{nombre}}</h3>
      <div class="card-body">

        <img class="card-img-top mx-auto d-block" src="/GRUPONW/PROYECTOGRUPAL/public/images/pic{{id_producto}}.png"
          alt="Card image cap" style="height: 200px; width:auto;">
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Marca: {{marca}}</li>
          <li class="list-group-item">Talla: {{talla}}</li>
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