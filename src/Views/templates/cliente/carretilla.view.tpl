<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box">
            <h1 class="page-title">Shopping Cart</h1>
        </div>
    </div>
</div>
<!-- end page title -->

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="table-responsive">
                            <table class="table table-borderless table-centered mb-0">
                                <thead class="table-light">
                                    <tr>
                                        <th>Product</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th style="width: 50px;"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="/{{BASE_DIR}}/public/images/products/product-1.jpg"
                                                alt="contact-img" title="contact-img" class="rounded me-3" height="64">
                                            <p class="m-0 d-inline-block align-middle font-16">
                                                <a href="apps-ecommerce-products-details.html" class="text-body">Amazing
                                                    Modern Chair</a>
                                                <br>
                                                <small class="me-2"><b>Size:</b> Large </small>
                                                <small><b>Color:</b> Light Green
                                                </small>
                                            </p>
                                        </td>
                                        <td>
                                            $148.66
                                        </td>
                                        <td>
                                            <input type="number" min="1" value="5" class="form-control"
                                                placeholder="Qty" style="width: 90px;">
                                        </td>
                                        <td>
                                            $743.30
                                        </td>
                                        <td>
                                            <a href="javascript:void(0);" class="action-icon"> <i
                                                    class="mdi mdi-delete"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="/{{BASE_DIR}}/public/images/products/product-2.jpg"
                                                alt="contact-img" title="contact-img" class="rounded me-3" height="64">
                                            <p class="m-0 d-inline-block align-middle font-16">
                                                <a href="apps-ecommerce-products-details.html" class="text-body">Biblio
                                                    Plastic Armchair</a>
                                                <br>
                                                <small class="me-2"><b>Size:</b> Small </small>
                                                <small><b>Color:</b> Brown </small>
                                            </p>
                                        </td>
                                        <td>
                                            $99.00
                                        </td>
                                        <td>
                                            <input type="number" min="1" value="2" class="form-control"
                                                placeholder="Qty" style="width: 90px;">
                                        </td>
                                        <td>
                                            $198.00
                                        </td>
                                        <td>
                                            <a href="javascript:void(0);" class="action-icon"> <i
                                                    class="mdi mdi-delete"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="/{{BASE_DIR}}/public/images/products/product-3.jpg"
                                                alt="contact-img" title="contact-img" class="rounded me-3" height="64">
                                            <p class="m-0 d-inline-block align-middle font-16">
                                                <a href="apps-ecommerce-products-details.html"
                                                    class="text-body">Designer Awesome Chair</a>
                                                <br>
                                                <small class="me-2"><b>Size:</b> Medium </small>
                                                <small><b>Color:</b> Green </small>
                                            </p>
                                        </td>
                                        <td>
                                            $49.99
                                        </td>
                                        <td>
                                            <input type="number" min="1" value="10" class="form-control"
                                                placeholder="Qty" style="width: 90px;">
                                        </td>
                                        <td>
                                            $499.90
                                        </td>
                                        <td>
                                            <a href="javascript:void(0);" class="action-icon"> <i
                                                    class="mdi mdi-delete"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="/{{BASE_DIR}}/public/images/products/product-5.jpg"
                                                alt="contact-img" title="contact-img" class="rounded me-3" height="64">
                                            <p class="m-0 d-inline-block align-middle font-16">
                                                <a href="apps-ecommerce-products-details.html"
                                                    class="text-body">Unpowered aircraft</a>
                                                <br>
                                                <small class="me-2"><b>Size:</b> Large </small>
                                                <small><b>Color:</b> Orange </small>
                                            </p>
                                        </td>
                                        <td>
                                            $129.99
                                        </td>
                                        <td>
                                            <input type="number" min="1" value="1" class="form-control"
                                                placeholder="Qty" style="width: 90px;">
                                        </td>
                                        <td>
                                            $129.99
                                        </td>
                                        <td>
                                            <a href="javascript:void(0);" class="action-icon"> <i
                                                    class="mdi mdi-delete"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div> <!-- end table-responsive-->

                        <!-- Add note input-->
                        <div class="mt-3">
                            <label for="example-textarea" class="form-label">Add a Note:</label>
                            <textarea class="form-control" id="example-textarea" rows="3"
                                placeholder="Write some note.."></textarea>
                        </div>

                        <!-- action buttons-->
                        <div class="row mt-4">
                            <div class="col-sm-6">
                                <a href="index.php?page=cliente_index"
                                    class="btn text-muted d-none d-sm-inline-block btn-link fw-semibold">
                                    <i class="mdi mdi-arrow-left"></i> Continue Shopping </a>
                            </div> <!-- end col -->
                            <div class="col-sm-6">
                                <div class="text-sm-end">
                                    <a href="index.php?page=cliente_checkout" class="btn btn-danger">
                                        <i class="mdi mdi-cart-plus me-1"></i> Checkout </a>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row-->
                    </div>
                    <!-- end col -->

                    <div class="col-lg-4">
                        <div class="border p-3 mt-4 mt-lg-0 rounded">
                            <h4 class="header-title mb-3">Order Summary</h4>

                            <div class="table-responsive">
                                <table class="table mb-0">
                                    <tbody>
                                        <tr>
                                            <td>Grand Total :</td>
                                            <td>$1571.19</td>
                                        </tr>
                                        <tr>
                                            <td>Discount : </td>
                                            <td>-$157.11</td>
                                        </tr>
                                        <tr>
                                            <td>Shipping Charge :</td>
                                            <td>$25</td>
                                        </tr>
                                        <tr>
                                            <td>Estimated Tax : </td>
                                            <td>$19.22</td>
                                        </tr>
                                        <tr>
                                            <th>Total :</th>
                                            <th>$1458.3</th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- end table-responsive -->
                        </div>

                        <div class="alert alert-warning mt-3" role="alert">
                            Use coupon code <strong>HYPBM</strong> and get 10% discount !
                        </div>

                        <div class="input-group mt-3">
                            <input type="text" class="form-control form-control-light" placeholder="Coupon code"
                                aria-label="Recipient's username">
                            <button class="input-group-text btn-light" type="button">Apply</button>
                        </div>

                    </div> <!-- end col -->

                </div> <!-- end row -->
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col -->
</div>
<!-- end row -->