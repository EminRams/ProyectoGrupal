<div class="container-fluid">
    <h2>Formulario de productos</h2>
    <form class="card">
        <div class="card-body">
            <div class="row g-2">
                <div class="mb-3 col-md-2">
                    <label for="id_producto" class="form-label">ID Producto</label>
                    <input type="number" readonly class="form-control" id="id_producto" placeholder="ID Producto">
                </div>
                <div class="mb-3 col-md-4">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" placeholder="Nombre del producto">
                </div>
                <div class="mb-3 col-md-3">
                    <label for="precio" class="form-label">Precio</label>
                    <input type="number" step="0.01" class="form-control" id="precio" placeholder="Precio">
                </div>
                <div class="mb-3 col-md-3">
                    <label for="stock" class="form-label">Existencias</label>
                    <input type="number" class="form-control" id="stock" placeholder="Existencias">
                </div>
            </div>

            <div class="row">
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


                <label for="id_producto" class="form-label col-sm-12">Talla</label>
                <div class="row">

                    <div class="form-check mb-2 col-lg-2 col-md-4">
                        <input type="radio" id="talla" name="talla" class="form-check-input" value="S" checked="" />
                        <label class="form-check-label" for="talla">S</label>
                        <br>
                        <input type="radio" id="talla" name="talla" class="form-check-input" value="M" checked="" />
                        <label class="form-check-label" for="talla">M</label>
                        <br>
                        <input type="radio" id="talla" name="talla" class="form-check-input" value="L" checked="" />
                        <label class="form-check-label" for="talla">L</label>
                        <br>
                        <input type="radio" id="talla" name="talla" class="form-check-input" value="XL" checked="" />
                        <label class="form-check-label" for="talla">XL</label>
                        <br>
                        <input type="radio" id="talla" name="talla" class="form-check-input" value="XXL" checked="" />
                        <label class="form-check-label" for="talla">XXL</label>
                        <br>
                        <input type="radio" id="talla" name="talla" class="form-check-input" value="XXXL" checked="" />
                        <label class="form-check-label" for="talla">XXXL</label>
                        <br>
                    </div>


                </div>
                <div class="row g-2">
                    <div class="col-sm-6">
                        <label class="form-label">File input</label>
                        <input class="form-control" type="file" id="inputGroupFile04" />
                    </div>
                    <div class="col-sm-6">
                        <label class="form-label">Descripción del producto</label>
                        <div class="form-floating">
                            <textarea class="form-control" placeholder="Agregue una descripción" id="floatingTextarea"
                                style="height: 100px"></textarea>
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