<!-- start page title -->
<div class="row">
  <div class="col-12">
    <div class="page-title-box">

      <h1 class="page-title">Catálogo</h1>
    </div>
  </div>
</div>
<!-- end page title -->
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