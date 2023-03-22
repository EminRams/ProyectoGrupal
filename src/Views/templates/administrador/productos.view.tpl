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
                            <a href="index.php?page=administrador_producto" class="btn btn-info mb-2">
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

                                <tr>
                                    {{foreach productos}}
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
                                    {{endfor productos}}
                                    <td class="table-action">
                                        <a href="javascript:void(0);" class="action-icon">
                                            <i class="mdi mdi-eye"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="action-icon">
                                            <i class="mdi mdi-square-edit-outline"></i>
                                        </a>
                                        <a href="javascript:void(0);" class="action-icon">
                                            <i class="mdi mdi-delete"></i>
                                        </a>
                                    </td>
                                </tr>


                            </tbody>
                        </table>
                    </div>
                </div> <!-- end card-body-->
            </div> <!-- end card-->
        </div> <!-- end col -->
    </div>
    <!-- end row -->

</div> <!-- container -->