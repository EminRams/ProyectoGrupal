<div class="container-fluid">

    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">

                <h4 class="page-title">Productos</h4>
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
                            <a href="index.php?page=administrador_producto&mode=INS" class="btn btn-info mb-2">
                                <i class="mdi mdi-plus-circle me-2"></i> Add Products</a>
                        </div>
                        <div class="col-sm-8">
                            <div class="text-sm-end">
                                <button type="button" class="btn btn-success mb-2 me-1">
                                    <i class="mdi mdi-printer"></i>&nbsp;Imprimir</button>
                            </div>
                        </div><!-- end col-->
                    </div>

                    <div class="table-responsive">
                        <table class="table table-centered w-100 dt-responsive nowrap" id="products-datatable">
                            <thead class="table-light">
                                <tr>

                                    <th class="all">ID</th>
                                    <th>Marca</th>
                                    <th>Producto</th>
                                    <th>Stock</th>
                                    <th>Talla</th>
                                    <th>Estado</th>
                                    <th style="width: 120px;">Action</th>
                                </tr>
                            </thead>
                            <tbody>

                                {{foreach productos}}
                                <tr>
                                    <td>
                                        {{id_producto}}
                                    </td>
                                    <td>
                                        {{marca}}
                                    </td>
                                    <td>
                                        {{nombre}}
                                    </td>
                                    <td>
                                        {{stock}}
                                    </td>
                                    <td>
                                        {{talla}}
                                    </td>
                                    <td>
                                        {{estado}}
                                    </td>
                                    <td class="table-action">
                                        {{if ~edit_enabled}}
                                        <form action="index.php" method="get">
                                            <input type="hidden" name="page" value="administrador_producto" />
                                            <input type="hidden" name="mode" value="UPD" />
                                            <input type="hidden" name="id_producto" value={{id_producto}} />
                                            <button type="submit" class="action-icon">
                                                <i class="mdi mdi-square-edit-outline"></i>

                                            </button>
                                        </form>
                                        {{endif ~edit_enabled}}

                                        <a href="index.php?page=administrador_producto&mode=DSP&id_producto={{id_producto}}">
                                                <i class="mdi mdi-eye"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="action-icon">
                                        </a>

                                        </form>
                                        {{endif ~edit_enabled}}
                                        {{if ~delete_enabled}}
                                        <form action="index.php" method="get">
                                            <input type="hidden" name="page" value="id_producto" />
                                            <input type="hidden" name="mode" value="DEL" />
                                            <input type="hidden" name="id_producto" value={{id_producto}} />
                                            <button type="submit">
                                                <i class="mdi mdi-delete"></i>
                                            </button>
                                        </form>
                                        {{endif ~delete_enabled}}
                                    </td>
                                </tr>
                                {{endfor productos}}


                            </tbody>
                        </table>
                    </div>
                </div> <!-- end card-body-->
            </div> <!-- end card-->
        </div> <!-- end col -->
    </div>
    <!-- end row -->

</div> <!-- container -->