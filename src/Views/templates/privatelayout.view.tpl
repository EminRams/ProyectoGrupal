<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Dashboard | Hyper - Responsive Bootstrap 5 Admin Dashboard</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description">
  <meta content="Coderthemes" name="author">
  <!-- App favicon -->
  <link rel="shortcut icon" href="/{{BASE_DIR}}/public/images/favicon.ico">

  <!-- third party css -->
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/vendor/jquery-jvectormap-1.2.2.css" type="text/css" />

  <!-- third party css end -->

  <!-- App css -->


  <link href="/{{BASE_DIR}}/public/css/icons.min.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/app.min.css" type="text/css" id="light-style" />
  <link rel="stylesheet" href="/{{BASE_DIR}}/public/css/app-dark.min.css" type="text/css" id="dark-style" />



</head>

<body class="loading"
  data-layout-config='{"leftSideBarTheme":"dark","layoutBoxed":false, "leftSidebarCondensed":false, "leftSidebarScrollable":false,"darkMode":false, "showRightSidebarOnStart": true}'>
  <!-- Begin page -->
  <div class="wrapper">
    <!-- ========== Left Sidebar Start ========== -->
    <div class="leftside-menu">

      <!-- LOGO -->
      <a href="index.html" class="logo text-center logo-light">
        <span class="logo-lg">
          <img src="/{{BASE_DIR}}/public/images/logo.png" alt="" height="80">
        </span>
        <span class="logo-sm">
          <img src="/{{BASE_DIR}}/public/images/logo_sm.png" alt="" height="80">
        </span>
      </a>

      <!-- LOGO -->
      <a href="index.html" class="logo text-center logo-dark">
        <span class="logo-lg">
          <img src="/{{BASE_DIR}}/public/images/logo-dark.png" alt="" height="80">
        </span>
        <span class="logo-sm">
          <img src="/{{BASE_DIR}}/public/images/logo_sm_dark.png" alt="" height="80">
        </span>
      </a>

      <div class="h-100" id="leftside-menu-container" data-simplebar="">

        <!--- Sidemenu -->
        <ul class="side-nav">

          <li class="side-nav-item">
            <a href="index.php" class="side-nav-link">
              <i class="uil-home-alt"></i>
              <span> Inicio </span>
            </a>
          </li>


          <li class="side-nav-title side-nav-item">Administración</li>
          {{foreach NAVIGATION}}
          <li class="side-nav-item">
            <a href="{{nav_url}}" class="side-nav-link">
              <i class="dripicons-box"></i>
              <span> {{nav_label}} </span>
            </a>
          </li>
          {{endfor NAVIGATION}}
        </ul>


        <!-- End Sidebar -->

        <div class="clearfix"></div>

      </div>
      <!-- Sidebar -left -->

    </div>
    <!-- Left Sidebar End -->

    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
      <div class="content">
        <!-- Topbar Start -->
        <div class="navbar-custom">
          <ul class="list-unstyled topbar-menu float-end mb-0">
            <li class="dropdown notification-list d-lg-none">
              <a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button"
                aria-haspopup="false" aria-expanded="false">
                <i class="dripicons-search noti-icon"></i>
              </a>
              <div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
                <form class="p-3">
                  <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                </form>
              </div>
            </li>






            <li class="notification-list">
              <a class="nav-link end-bar-toggle" href="javascript: void(0);">
                <i class="dripicons-gear noti-icon"></i>
              </a>
            </li>

            <li class="dropdown notification-list">
              <a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#"
                role="button" aria-haspopup="false" aria-expanded="false">
                <span class="account-user-avatar">
                  <img src="/{{BASE_DIR}}/public/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
                </span>
                <span>
                  <span class="account-user-name">Soeng Souy</span>
                  <span class="account-position">Founder</span>
                </span>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
                <!-- item-->
                <div class=" dropdown-header noti-title">
                  <h6 class="text-overflow m-0">Welcome !</h6>
                </div>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-account-circle me-1"></i>
                  <span>My Account</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-account-edit me-1"></i>
                  <span>Settings</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-lifebuoy me-1"></i>
                  <span>Support</span>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <i class="mdi mdi-lock-outline me-1"></i>
                  <span>Lock Screen</span>
                </a>

                <!-- item-->
                <a href="index.php?page=seguridad_logout" class="dropdown-item notify-item">
                  <i class="mdi mdi-logout me-1"></i>
                  <span>Logout</span>
                </a>
              </div>
            </li>

          </ul>
          <button class="button-menu-mobile open-left">
            <i class="mdi mdi-menu"></i>
          </button>
          <div class="app-search dropdown d-none d-lg-block">
            <form>
              <div class="input-group">
                <input type="text" class="form-control dropdown-toggle" placeholder="Search..." id="top-search">
                <span class="mdi mdi-magnify search-icon"></span>
                <button class="input-group-text btn-primary" type="submit">Search</button>
              </div>
            </form>

            <div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">
              <!-- item-->
              <div class="dropdown-header noti-title">
                <h5 class="text-overflow mb-2">Found <span class="text-danger">17</span> results</h5>
              </div>

              <!-- item-->
              <a href="javascript:void(0);" class="dropdown-item notify-item">
                <i class="uil-notes font-16 me-1"></i>
                <span>Analytics Report</span>
              </a>

              <!-- item-->
              <a href="javascript:void(0);" class="dropdown-item notify-item">
                <i class="uil-life-ring font-16 me-1"></i>
                <span>How can I help you?</span>
              </a>

              <!-- item-->
              <a href="javascript:void(0);" class="dropdown-item notify-item">
                <i class="uil-cog font-16 me-1"></i>
                <span>User profile settings</span>
              </a>

              <!-- item-->
              <div class="dropdown-header noti-title">
                <h6 class="text-overflow mb-2 text-uppercase">Users</h6>
              </div>

              <div class="notification-list">
                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <div class="d-flex">
                    <img class="d-flex me-2 rounded-circle" src="/{{BASE_DIR}}/public/images/users/avatar-2.jpg"
                      alt="Generic placeholder image" height="32">
                    <div class="w-100">
                      <h5 class="m-0 font-14">Erwin Brown</h5>
                      <span class="font-12 mb-0">UI Designer</span>
                    </div>
                  </div>
                </a>

                <!-- item-->
                <a href="javascript:void(0);" class="dropdown-item notify-item">
                  <div class="d-flex">
                    <img class="d-flex me-2 rounded-circle" src="/{{BASE_DIR}}/public/images/users/avatar-5.jpg"
                      alt="Generic placeholder image" height="32">
                    <div class="w-100">
                      <h5 class="m-0 font-14">Jacob Deo</h5>
                      <span class="font-12 mb-0">Developer</span>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!-- end Topbar -->

        {{{page_content}}}

      </div>
      <!-- content -->

      <!-- Footer Start -->
      <footer class="footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6">
              <script>document.write(new Date().getFullYear())</script> © Hyper - Coderthemes.com
            </div>
            <div class="col-md-6">
              <div class="text-md-end footer-links d-none d-md-block">
                <a href="javascript: void(0);">About</a>
                <a href="javascript: void(0);">Support</a>
                <a href="javascript: void(0);">Contact Us</a>
              </div>
            </div>
          </div>
        </div>
      </footer>
      <!-- end Footer -->

    </div>

    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->


  </div>
  <!-- END wrapper -->

  <!-- Right Sidebar -->
  <div class="end-bar">

    <div class="rightbar-title">
      <a href="javascript:void(0);" class="end-bar-toggle float-end">
        <i class="dripicons-cross noti-icon"></i>
      </a>
      <h5 class="m-0">Settings</h5>
    </div>

    <div class="rightbar-content h-100" data-simplebar="">

      <div class="p-3">
        <div class="alert alert-warning" role="alert">
          <strong>Customize </strong> the overall color scheme, sidebar menu, etc.
        </div>

        <!-- Settings -->
        <h5 class="mt-3">Color Scheme</h5>
        <hr class="mt-1">

        <div class="form-check form-switch mb-1">
          <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="light" id="light-mode-check"
            checked="">
          <label class="form-check-label" for="light-mode-check">Light Mode</label>
        </div>

        <div class="form-check form-switch mb-1">
          <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="dark" id="dark-mode-check">
          <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
        </div>


        <!-- Width -->
        <h5 class="mt-4">Width</h5>
        <hr class="mt-1">
        <div class="form-check form-switch mb-1">
          <input class="form-check-input" type="checkbox" name="width" value="fluid" id="fluid-check" checked="">
          <label class="form-check-label" for="fluid-check">Fluid</label>
        </div>

        <div class="form-check form-switch mb-1">
          <input class="form-check-input" type="checkbox" name="width" value="boxed" id="boxed-check">
          <label class="form-check-label" for="boxed-check">Boxed</label>
        </div>


        <!-- Left Sidebar-->
        <h5 class="mt-4">Left Sidebar</h5>
        <hr class="mt-1">
        <div class="form-check form-switch mb-1">
          <input class="form-check-input" type="checkbox" name="theme" value="default" id="default-check">
          <label class="form-check-label" for="default-check">Default</label>
        </div>

        <div class="form-check form-switch mb-1">
          <input class="form-check-input" type="checkbox" name="theme" value="light" id="light-check" checked="">
          <label class="form-check-label" for="light-check">Light</label>
        </div>

        <div class="form-check form-switch mb-3">
          <input class="form-check-input" type="checkbox" name="theme" value="dark" id="dark-check">
          <label class="form-check-label" for="dark-check">Dark</label>
        </div>

        <div class="form-check form-switch mb-1">
          <input class="form-check-input" type="checkbox" name="compact" value="fixed" id="fixed-check" checked="">
          <label class="form-check-label" for="fixed-check">Fixed</label>
        </div>

        <div class="form-check form-switch mb-1">
          <input class="form-check-input" type="checkbox" name="compact" value="condensed" id="condensed-check">
          <label class="form-check-label" for="condensed-check">Condensed</label>
        </div>

        <div class="form-check form-switch mb-1">
          <input class="form-check-input" type="checkbox" name="compact" value="scrollable" id="scrollable-check">
          <label class="form-check-label" for="scrollable-check">Scrollable</label>
        </div>

        <div class="d-grid mt-4">
          <button class="btn btn-primary" id="resetBtn">Reset to Default</button>

          <a href="../../product/hyper-responsive-admin-dashboard-template/index.htm" class="btn btn-danger mt-3"
            target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
        </div>
      </div> <!-- end padding-->

    </div>
  </div>

  <div class="rightbar-overlay"></div>
  <!-- /End-bar -->

  <!-- bundle -->
  <script src="/{{BASE_DIR}}/public/js/vendor.min.js"></script>


  <script src="/{{BASE_DIR}}/public/js/app.min.js"></script>

  <!-- third party js -->
  <script src="/{{BASE_DIR}}/public/js/vendor/apexcharts.min.js"></script>
  <script src="/{{BASE_DIR}}/public/js/vendor/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="/{{BASE_DIR}}/public/js/vendor/jquery-jvectormap-world-mill-en.js"></script>
  <!-- third party js ends -->

  <!-- demo app -->
  <script src="/{{BASE_DIR}}/public/js/pages/demo.dashboard.js"></script>
  <!-- end demo js-->
</body>

</html>