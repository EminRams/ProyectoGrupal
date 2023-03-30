<div class="container-fluid">
  <h2>{{modedsc}}</h2>
  <form action="index.php?page=administrador_marca&mode={{mode}}&id_marca={{id_marca}}" method="post" class="card">
    <div class="card-body">
      <div class="row g-2">
        <!--ID Marca-->
        <div class="mb-3 col-2">
          <label for="id_marca" class="form-label">ID Marca</label>
          <input type="hidden" id="id_marca" name="id_marca" value="{{id_marca}}" />
          <input type="hidden" id="mode" name="mode" value="{{mode}}" />
          <input type="hidden" name="xssToken" value="{{xssToken}}" />
          <input type="number" readonly name="id_marcadummy" class="form-control" value="{{id_marca}}"
            placeholder="ID Marca">
        </div>

        <!--Nombre-->
        <div class="mb-3 col-10">
          <label for="nombre" class="form-label">Nombre</label>
          <input type="text" {{readonly}} class="form-control" id="nombre" name="nombre" value="{{nombre}}"
            placeholder="Nombre de la marca" {{readonly}}>
        </div>
        {{if nombre_error}}
        <span class="error col-12">{{nombre_error}}</span>
        {{endif nombre_error}}

        <!--Estado-->
        <div class="col-3">
          <div class="border border-top-0 border-indigo">
            <label class="input-group-text" for="marca">Estado</label>
            <div class="mt-2 form-check mb-2 col-lg-1 col-md-4">
              <div class="form-check">
                <input type="radio" id="estado" name="estado" class="form-check-input" value="ACT" {{estado_ACT}}
                  style="border:1px solid var(--bs-indigo);" checked {{disabled}} />
                <label class="form-check-label" for="estado">Activo</label>
              </div>
              <div class="form-check">
                <input type="radio" id="estado" name="estado" class="form-check-input" value="INA" {{estado_INA}}
                  style="border:1px solid var(--bs-indigo);" {{disabled}} />
                <label class="form-check-label" for="estado">Inactivo</label>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br><br>
      <div class="row m-2">
        <div class="col-6 mb-2">
          <button type="submit" name="btnGuardar" value="G" class="btn btn-primary">Confirmar</button>&nbsp;
          &nbsp;
          <button type="button" id="btnCancelar" class="btn btn-danger">Cancelar</button>
        </div>

      </div>

    </div>
  </form>
</div>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("btnCancelar").addEventListener("click", function (e) {
      e.preventDefault();
      e.stopPropagation();
      window.location.assign("index.php?page=administrador_marcas");
    });
  });
</script>