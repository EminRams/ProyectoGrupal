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
                  {{foreach productos}}
                  <tr>
                    <td>
                      <img src="/{{~BASE_DIR}}/public/images/pic{{id_producto}}.png" alt="contact-img"
                        title="contact-img" class="rounded me-3" height="64">
                      <p class="m-0 d-inline-block align-middle font-16">
                        <a href="apps-ecommerce-products-details.html" class="text-body">{{nombre}}</a>
                        <br>
                        <small class="me-2"><b>Size:</b> {{categoria}} </small>
                        <small><b>Color:</b> {{color}}
                        </small>
                      </p>
                    </td>
                    <td>
                      $. {{precio}}
                    </td>
                    <td>
                      <input type="number" min="1" value="{{quantity}}" class="form-control" placeholder="Qty"
                        style="width: 90px;">
                    </td>
                    <td>
                      $. {{total}}
                    </td>
                    <td>
                      <a href="index.php?page=cliente_carretilla&id_producto={{id_producto}}" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                    </td>
                  </tr>
                  {{endfor productos}}
                </tbody>
              </table>
            </div> <!-- end table-responsive-->

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
                      <td>${{total}}</td>
                    </tr>
                    <tr>
                      <td>Discount : </td>
                      <td>-$10.11</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <!-- end table-responsive -->
            </div>

          </div> <!-- end col -->

        </div> <!-- end row -->
      </div> <!-- end card-body-->
    </div> <!-- end card-->
  </div> <!-- end col -->
</div>
<!-- end row -->