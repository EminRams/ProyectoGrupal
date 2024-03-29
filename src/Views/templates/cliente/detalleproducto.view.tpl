<div class="row">
  <div class="col-12">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-5">
            <!-- Product image -->
            <a href="javascript: void(0);" class="text-center d-block mb-4">
              <img src="/{{~BASE_DIR}}/public/images/pic{{id_producto}}.png" class="img-fluid" style="max-width: 280px;"
                alt="Product-img">
            </a>
          </div> <!-- end col -->
          <div class="col-lg-7">
            <form action="index.php?page=cliente_detalleproducto" method="post" class="ps-lg-4">
              <!-- Product title -->
              <h3 class="mt-0"> {{nombre}} <a href="javascript: void(0);" class="text-muted"><i
                    class="mdi mdi-square-edit-outline ms-2"></i></a> </h3>
              <p class="font-16">
                <span class="text-warning mdi mdi-star"></span>
                <span class="text-warning mdi mdi-star"></span>
                <span class="text-warning mdi mdi-star"></span>
                <span class="text-warning mdi mdi-star"></span>
                <span class="text-warning mdi mdi-star"></span>
              </p>

              <!-- Product stock -->
              <div class="mt-3">
                <h4><span class="badge badge-success-lighten">En stock</span></h4>
              </div>

              <!-- Product description -->
              <div class="mt-4">
                <h6 class="font-14">Precio:</h6>
                <h3>$. {{precio}}</h3>
              </div>

              <!-- Quantity -->
              <div class="mt-4">
                <h6 class="font-14">Cantidad</h6>
                <div class="d-flex">
                  <input type="hidden" name="id_producto" value="{{id_producto}}">
                  <input type="number" min="1" max="{{stock}}" value="1" class="form-control" name="quantity" placeholder="Qty"
                    style="width: 90px;">
                  <button type="submit" class="btn btn-danger ms-2"><i class="mdi mdi-cart me-1"></i>
                    Añadir al carrito</button>
                </div>
              </div>

              <!-- Product description -->
              <div class="mt-4">
                <h6 class="font-14">Descripción:</h6>
                <p>{{descripcion}}</p>
              </div>

              <!-- Product information -->
              <div class="mt-4">
                <div class="row">
                  <div class="col-md-4">
                    <h6 class="font-14">Disponibles en stock:</h6>
                    <p class="text-sm lh-150">{{stock}}</p>
                  </div>
                </div>
              </div>
            </form>
          </div> <!-- end col -->
        </div> <!-- end row-->


      </div> <!-- end card-body-->
    </div> <!-- end card-->
  </div> <!-- end col-->
</div>