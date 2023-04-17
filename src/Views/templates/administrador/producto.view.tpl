<div class="container-fluid">
  <h2>{{modedsc}}</h2>
  <form action="index.php?page=administrador_producto&mode={{mode}}&id_producto={{id_producto}}" method="post"
    class="card">
    <div class="card-body">
      <div class="row g-2">
        <!--ID Producto-->
        <div class="mb-3 col-md-2">
          <label for="id_producto" class="form-label">ID Producto</label>
          <input type="hidden" id="id_producto" name="id_producto" value="{{id_producto}}" />
          <input type="hidden" id="mode" name="mode" value="{{mode}}" />
          <input type="hidden" name="xssToken" value="{{xssToken}}" />
          <input type="number" readonly name="id_productodummy" class="form-control" value="{{id_producto}}"
            placeholder="ID Producto">
        </div>
        <!--Nombre-->
        <div class="mb-3 col-md-4">
          <label for="nombre" class="form-label">Nombre</label>
          <input type="text" class="form-control" id="nombre" name="nombre" value="{{nombre}}"
            placeholder="Nombre del producto" {{readonly}} >
        </div>
        {{if nombre_error}}
        <span class="error col-12">{{nombre_error}}</span>
        {{endif nombre_error}}
        <!--Precio-->
        <div class="mb-3 col-md-3">
          <label for="precio" class="form-label">Precio</label>
          <input type="number" step="0.01" class="form-control" id="precio" name="precio"
            value="{{precio}}" placeholder="Precio" {{readonly}}>
        </div>
        <!--Existencias-->
        <div class="mb-3 col-md-3">
          <label for="stock" class="form-label">Existencias</label>
          <input type="number" class="form-control" id="stock" name="stock" value="{{stock}}"
            placeholder="Existencias"{{readonly}} >
        </div>
      </div>
      <div class="row">
        <!--Categoria-->
        <div class="col-md-3 col-lg-6">
          <div class="input-group mb-3 col-sm-3">
            <label class="input-group-text" for="categoria">Categoría</label>
            <select class="form-select" id="id_categoria" name="id_categoria" {{disabled}}>
              <option selected=""></option>
              {{foreach categorias}}
              <option value="{{value}}" {{selected}}>{{text}}</option>
              {{endfor categorias}}
            </select>
          </div>
        </div>
        <!--Marca-->
        <div class="col-md-3 col-lg-6">
          <div class="input-group mb-3 col-sm-3">
            <label class="input-group-text" for="marca">Marca</label>
            <select class="form-select" id="id_marca" name="id_marca" {{disabled}}>
              <option selected=""></option>
              {{foreach marcas}}
              <option value="{{value}}" {{selected}}>{{text}}</option>
              {{endfor marcas}}
            </select>
          </div>
        </div>
        <!--Prenda-->
        <div class="col-md-3 col-lg-6">
          <div class="input-group mb-3 col-md-4 col-lg-3">
            <label class="input-group-text" for="prenda">Prenda</label>
            <select class="form-select" id="id_prenda" name="id_prenda" {{disabled}}>
              <option selected=""></option>
              {{foreach prendas}}
              <option value="{{value}}" {{selected}}>{{text}}</option>
              {{endfor prendas}}
            </select>
          </div>
        </div>
        <!--Color-->
        <div class="col-md-3 col-lg-6">
          <div class="input-group mb-3 col-md-4 col-lg-3">
            <label class="input-group-text" for="color">Color</label>
            <select class="form-select" id="id_color" name="id_color" {{disabled}}>
              <option selected=""></option>
              {{foreach colores}}
              <option value="{{value}}" {{selected}}>{{text}}</option>
              {{endfor colores}}
            </select>
          </div>
        </div>

        <div class="row">
          <!--Talla-->
          <div class="col-6">
            <div class="row border border-top-0 border-indigo">
              <label class="input-group-text mb-2" for="talla">Talla</label>
              <div class="form-check mb-2 col-lg-3 col-md-4">
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="S" style="border:1px solid var(--bs-indigo);" {{talla_s}} {{disabled}}/>
                  <label class="form-check-label" for="talla">S</label>
                </div>
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="M"  
                    style="border:1px solid var(--bs-indigo);"  {{talla_m}} {{disabled}}/>
                  <label class="form-check-label" for="talla">M</label>
                </div>
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="L"  
                    style="border:1px solid var(--bs-indigo);"  {{talla_l}} {{disabled}}/>
                  <label class="form-check-label" for="talla">L</label>
                </div>
              </div>
              <div class="form-check mb-2 col-lg-3 col-md-4">
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="XL"  
                    style="border:1px solid var(--bs-indigo);"  {{talla_xl}} {{disabled}}/>
                  <label class="form-check-label" for="talla">XL</label>
                </div>
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="XXL"  
                    style="border:1px solid var(--bs-indigo);"  {{talla_xxl}} {{disabled}}/>
                  <label class="form-check-label" for="talla">XXL</label>
                </div>
                <div class="form-check">
                  <input type="radio" id="talla" name="talla" class="form-check-input" value="XXXL"  
                    style="border:1px solid var(--bs-indigo);"  {{talla_xxxl}} {{disabled}}/>
                  <label class="form-check-label" for="talla">XXXL</label>
                </div>
              </div>
            </div>
          </div>

          <!-- espacio -->
          
          
          <!--Estado-->
          <div class="col-6">
            <div class="border border-top-0 border-indigo">
              <label class="input-group-text mb-2" for="categoria">Estado</label>
              <div class="form-check mb-2 col-lg-1 col-md-4">
                <div class="form-check">
                  <input type="radio" id="estado" name="estado" class="form-check-input" value="ACT"
                    style="border:1px solid var(--bs-indigo);" {{estado_ACT}} {{disabled}}/>
                  <label class="form-check-label" for="estado">Activo</label>
                </div>
                <div class="form-check">
                  <input type="radio" id="estado" name="estado" class="form-check-input" value="INA"
                    style="border:1px solid var(--bs-indigo);" {{estado_INA}} {{disabled}}/>
                  <label class="form-check-label" for="estado">Inactivo</label>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="row g-2">
          <!--File-->
          <div class="col-sm-6">
            <label class="form-label">File input</label>
            <input class="form-control" type="file" id="enlace_imagen" name="enlace_imagen" {{disabled}}/>
          </div>
          <!--Descripcion-->
          <div class="col-sm-6">
            <label class="form-label">Descripción del producto</label>
            <div class="form-floating">
              <input class="form-control" placeholder="Agregue una descripción" id="descripcion" name="descripcion"
                {{nombre}} value="{{descripcion}}" style="height: 100px; resize: none;" {{readonly}}></input>
              <label for="floatingTextarea">Descripción</label>
            </div>
          </div>
        </div>
      </div>
      <br>
      <button type="submit" name="btnGuardar" value="G" class="btn btn-primary me-2">Confirmar</button>
      <button type="button" id="btnCancelar" class="btn btn-danger">Cancelar</button>
    </div>
  </form>
</div>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("btnCancelar").addEventListener("click", function (e) {
      e.preventDefault();
      e.stopPropagation();
      window.location.assign("index.php?page=administrador_productos");
    });
  });
</script>