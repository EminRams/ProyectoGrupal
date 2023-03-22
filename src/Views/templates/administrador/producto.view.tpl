<div class="container-fluid">
  <h2>Formulario de productos</h2>
  <form class="card">
    <div class="card-body">
      <div class="row g-2">
        <!--ID Producto-->
        <div class="mb-3 col-md-2">
          <label for="id_producto" class="form-label">ID Producto</label>
          <input type="number" readonly class="form-control" id="id_producto" placeholder="ID Producto">
        </div>
        <!--Nombre-->
        <div class="mb-3 col-md-4">
          <label for="nombre" class="form-label">Nombre</label>
          <input type="text" class="form-control" id="nombre" placeholder="Nombre del producto">
        </div>
        <!--Precio-->
        <div class="mb-3 col-md-3">
          <label for="precio" class="form-label">Precio</label>
          <input type="number" step="0.01" class="form-control" id="precio" placeholder="Precio">
        </div>
        <!--Existencias-->
        <div class="mb-3 col-md-3">
          <label for="stock" class="form-label">Existencias</label>
          <input type="number" class="form-control" id="stock" placeholder="Existencias">
        </div>
      </div>
      <div class="row">
        <!--Categoria-->
        <div class="col-md-3 col-lg-6">
          <div class="input-group mb-3 col-sm-3">
            <label class="input-group-text" for="categoria">Categoría</label>
            <select class="form-select" id="categoria">
              <option selected=""></option>
              <option value="1">Opcion 1</option>
              <option value="2">Opcion 2</option>
              <option value="3">Opcion 3</option>
            </select>
          </div>
        </div>
        <!--Marca-->
        <div class="col-md-3 col-lg-6">
          <div class="input-group mb-3 col-sm-3">
            <label class="input-group-text" for="categoria">Marca</label>
            <select class="form-select" id="categoria">
              <option selected=""></option>
              <option value="1">Opcion 1</option>
              <option value="2">Opcion 2</option>
              <option value="3">Opcion 2</option>
            </select>
          </div>
        </div>
        <!--Prenda-->
        <div class="col-md-3 col-lg-6">
          <div class="input-group mb-3 col-md-4 col-lg-3">
            <label class="input-group-text" for="categoria">Prenda</label>
            <select class="form-select" id="categoria">
              <option selected=""></option>
              <option value="1">Opcion 1</option>
              <option value="2">Opcion 2</option>
              <option value="3">Opcion 2</option>
            </select>
          </div>
        </div>
        <!--Color-->
        <div class="col-md-3 col-lg-6">
          <div class="input-group mb-3 col-md-4 col-lg-3">
            <label class="input-group-text" for="categoria">Color</label>
            <select class="form-select" id="categoria">
              <option selected=""></option>
              <option value="1">Opcion 1</option>
              <option value="2">Opcion 2</option>
              <option value="3">Opcion 2</option>
            </select>
          </div>
        </div>

        <div class="row">
          <!--Talla-->
          <div class="col-6">
            <div class="row">
              <label class="input-group-text mb-2" for="categoria">Talla</label>
              <div class="form-check mb-2 col-lg-3 col-md-4">
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="S"
                    style="border:1px solid var(--bs-indigo);" />
                  <label class="form-check-label" for="talla">S</label>
                </div>
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="M"
                    style="border:1px solid var(--bs-indigo);" />
                  <label class="form-check-label" for="talla">M</label>
                </div>
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="L"
                    style="border:1px solid var(--bs-indigo);" />
                  <label class="form-check-label" for="talla">L</label>
                </div>
              </div>
              <div class="form-check mb-2 col-lg-3 col-md-4">
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="XL"
                    style="border:1px solid var(--bs-indigo);" />
                  <label class="form-check-label" for="talla">XL</label>
                </div>
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="XXL"
                    style="border:1px solid var(--bs-indigo);" />
                  <label class="form-check-label" for="talla">XXL</label>
                </div>
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="XXXL"
                    style="border:1px solid var(--bs-indigo);" />
                  <label class="form-check-label" for="talla">XXXL</label>
                </div>
              </div>
            </div>
          </div>


          <!--Estado-->
          <div class="col-6">
            <label class="input-group-text mb-2" for="categoria">Estado</label>
            <div class="form-check mb-2 col-lg-1 col-md-4">
              <div class="form-check">
                <input type="radio" id="estado" name="estado" class="form-check-input" value="ACT"
                  style="border:1px solid var(--bs-indigo);" checked/>
                <label class="form-check-label" for="estado">Activo</label>
              </div>
              <div class="form-check">
                <input type="radio" id="estado" name="estado" class="form-check-input" value="INA"
                  style="border:1px solid var(--bs-indigo);" />
                <label class="form-check-label" for="estado">Inactivo</label>
              </div>
            </div>
          </div>
        </div>

        <div class="row g-2">
          <!--File-->
          <div class="col-sm-6">
            <label class="form-label">File input</label>
            <input class="form-control" type="file" id="inputGroupFile04" />
          </div>
          <!--Descripcion-->
          <div class="col-sm-6">
            <label class="form-label">Descripción del producto</label>
            <div class="form-floating">
              <textarea class="form-control" placeholder="Agregue una descripción" id="floatingTextarea"
                style="height: 100px; resize: none;"></textarea>
              <label for="floatingTextarea">Descripción</label>
            </div>
          </div>
        </div>
      </div>
      <br>
      <button type="submit" class="btn btn-primary">Confirmar</button>
    </div>
  </form>
</div>