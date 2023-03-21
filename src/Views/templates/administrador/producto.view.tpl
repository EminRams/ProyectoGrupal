<div class="container-fluid">
    <h2>Formulario de productos</h2>
    <form class="card">
        <div class="card-body">
            <div class="row g-2">
                <div class="mb-3 col-md-4">
                    <label for="id_producto" class="form-label">ID Producto</label>
                    <input type="number" class="form-control" id="id_producto" placeholder="ID Producto">
                </div>
                <div class="mb-3 col-md-4">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" placeholder="Nombre del producto">
                </div>
                <div class="mb-3 col-md-4">
                    <label for="precio" class="form-label">Precio</label>
                    <input type="number" step="0.01" class="form-control" id="precio" placeholder="Precio">
                </div>
            </div>

            <div class="row">
                <div class="input-group mb-3 col-sm-3">
                    <label class="input-group-text" for="categoria">Categoría</label>
                    <select class="form-select" id="categoria">
                        <option selected=""></option>
                        <option value="1">Opcion 1</option>
                        <option value="2">Opcion 2</option>
                        <option value="3">Opcion 3</option>
                    </select>
                </div>
                <div class="input-group mb-3 col-sm-3">
                    <label class="input-group-text" for="categoria">Marca</label>
                    <select class="form-select" id="categoria">
                        <option selected=""></option>
                        <option value="1">Opcion 1</option>
                        <option value="2">Opcion 2</option>
                        <option value="3">Opcion 2</option>
                    </select>
                </div>

                <div class="input-group mb-3 col-md-4 col-lg-3">
                    <label class="input-group-text" for="categoria">Prenda</label>
                    <select class="form-select" id="categoria">
                        <option selected=""></option>
                        <option value="1">Opcion 1</option>
                        <option value="2">Opcion 2</option>
                        <option value="3">Opcion 2</option>
                    </select>
                </div>
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


            <div class="row g-2">
                <div class="mb-3 col-md-6">
                    <label for="inputCity" class="form-label">City</label>
                    <input type="text" class="form-control" id="inputCity">
                </div>
                <div class="mb-3 col-md-4">
                    <label for="inputState" class="form-label">State</label>
                    <select id="inputState" class="form-select">
                        <option>Choose</option>
                        <option>Option 1</option>
                        <option>Option 2</option>
                        <option>Option 3</option>
                    </select>
                </div>
                <div class="mb-3 col-md-2">
                    <label for="inputZip" class="form-label">Zip</label>
                    <input type="text" class="form-control" id="inputZip">
                </div>
            </div>

            <div class="mb-2">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="customCheck11">
                    <label class="form-check-label" for="customCheck11">Check this custom checkbox</label>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Sign in</button>
        </div>
    </form>
</div>