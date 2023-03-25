<div class="container-fluid">
    <h2>{{modedsc}}</h2>
    <form action="index.php?page=administrador_producto&mode={{mode}}&id_categoria={{id_categoria}}" method="post"
        class="card">
        <div class="card-body">
            <div class="row g-2">
                <!--ID Categoria-->
                <div class="mb-3 col-md-2">
                    <label for="id_categoria" class="form-label">ID Categoria</label>
                    <input type="hidden" id="id_categoria" name="id_categoria" value="{{id_categoria}}" />
                    <input type="hidden" id="mode" name="mode" value="{{mode}}" />
                    <input type="hidden" name="xssToken" value="{{xssToken}}" />
                    <input type="number" readonly name="id_categoriadummy" class="form-control" value="{{id_categoria}}"
                        placeholder="ID Producto">
                </div>&nbsp;
                <!--Nombre-->
                <div class="mb-3 col-md-6">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" {{readonly}} class="form-control" id="nombre" name="nombre" value="{{nombre}}"
                        placeholder="Nombre del producto">
                </div>
                {{if nombre_error}}
                <span class="error col-12">{{nombre_error}}</span>
                {{endif nombre_error}}



                <!--Estado-->

                <div class="row">
                    <div class="col-6 form-control">
                        <div class="col-2">
                            <label class="mb-2" for="categoria">Estado</label>
                            <div class="form-check mb-2 col-lg-1 col-md-4">
                                <div class="form-check">
                                    <input type="radio" id="estado" name="estado" class="form-check-input" value="ACT"
                                        {{estado_ACT}} style="border:1px solid var(--bs-indigo);" checked />
                                    <label class="form-check-label" for="estado">Activo</label>
                                </div>
                                <div class="form-check">
                                    <input type="radio" id="estado" name="estado" class="form-check-input" value="INA"
                                        {{estado_INA}} style="border:1px solid var(--bs-indigo);" />
                                    <label class="form-check-label" for="estado">Inactivo</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-6">


                    </div>
                </div>


            </div>


        </div>
        <br>
        <div class="row m-2">
            <div class="col-6 mb-2">&nbsp;
                <button type="submit" name="btnGuardar" value="G" class="btn btn-primary">Confirmar</button>&nbsp;
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
            window.location.assign("index.php?page=administrador_categorias");
        });
    });
</script>