<div class="container-fluid">

  <!-- start page title -->
  <div class="row">
    <div class="col-12">
      <div class="page-title-box">

        <h4 class="page-title">Categorías</h4>
      </div>
    </div>
  </div>
  <!-- end page title -->

  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-body">
          <div class="row mb-2">
            <div class="col-sm-4">
              {{if ~new_enabled}}
              <a id="btnAdd" class="btn btn-info mb-2">
                <i class="mdi mdi-plus-circle me-2"></i> Agregar</a>
              {{endif ~new_enabled}}
            </div>
            <!--
            <div class="col-sm-8">
              <div class="text-sm-end">
                <button type="button" class="btn btn-success mb-2 me-1">
                  <i class="mdi mdi-printer"></i>&nbsp;Imprimir</button>
              </div>
            </div> --> 
          </div>

          <div class="table-responsive">
            <table class="table table-centered w-100 dt-responsive nowrap" id="products-datatable">
              <thead class="table-light">
                <tr>
                  <th class="all">ID</th>
                  <th>Nombre</th>
                  <th>Estado</th>
                  <th style="width: 120px;">Action</th>
                </tr>
              </thead>
              <tbody>

                {{foreach categorias}}
                <tr>
                  <td>
                    {{id_categoria}}
                  </td>
                  <td>
                    {{nombre}}
                  </td>
                  <td>
                    {{estado}}
                  </td>
                  <td class="table-action">
                    <a type="submit" class="action-icon"
                      href="index.php?page=administrador_categoria&mode=DSP&id_categoria={{id_categoria}}">
                      <i class="mdi mdi-eye"></i>
                    </a>

                    {{if ~edit_enabled}}
                    <a type="submit" class="action-icon"
                      href="index.php?page=administrador_categoria&mode=UPD&id_categoria={{id_categoria}}">
                      <i class="mdi mdi-square-edit-outline"></i>
                    </a>
                    {{endif ~edit_enabled}}

                    {{if ~delete_enabled}}
                    <a type="submit" class="action-icon"
                      href="index.php?page=administrador_categoria&mode=DEL&id_categoria={{id_categoria}}">
                      <i class="mdi mdi-delete"></i>
                    </a>
                    {{endif ~delete_enabled}}

                  </td>
                </tr>
                {{endfor categorias}}


              </tbody>
            </table>
          </div>
        </div> <!-- end card-body-->
      </div> <!-- end card-->
    </div> <!-- end col -->
  </div>
  <!-- end row -->

</div> <!-- container -->

<script>
  document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("btnAdd").addEventListener("click", function (e) {
      e.preventDefault();
      e.stopPropagation();
      window.location.assign("index.php?page=administrador_categoria&mode=INS&id_categoria=0");
    });
  });
</script>