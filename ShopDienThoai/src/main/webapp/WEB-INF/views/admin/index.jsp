<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Creative admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="../assets/images/favicon.png" type="image/x-icon">
    <title>Creative - Premium Admin Template</title>
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Font Awesome-->
    <link rel="stylesheet" type="text/css" href="../assets/css/fontawesome.css">
    <!-- ico-font-->
    <link rel="stylesheet" type="text/css" href="../assets/css/icofont.css">
    <!-- Themify icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/themify.css">
    <!-- Flag icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/flag-icon.css">
    <!-- Feather icon-->
    <link rel="stylesheet" type="text/css" href="../assets/css/feather-icon.css">
    <!-- Plugins css start-->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/chartist.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/prism.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/vector-map.css">
    <!-- Plugins css Ends-->
    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
    <!-- App css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <link id="color" rel="stylesheet" href="../assets/css/light-1.css" media="screen">
    <!-- Responsive css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">
  </head>
  <body>
    <!-- Loader starts-->
    <div class="loader-wrapper">
      <div class="loader loader-7">
        <div class="line line1"></div>
        <div class="line line2"></div>
        <div class="line line3"></div>
      </div>
    </div>
    <!-- Loader ends-->
    <!-- page-wrapper Start-->
    <div class="page-wrapper">
      <!-- Page Header Start-->
      <div class="page-main-header">
        <div class="main-header-right row">
          <div class="main-header-left d-lg-none">
            <div class="logo-wrapper"><a href="index.html"><img src="../assets/images/creative-logo1.png" alt=""></a></div>
          </div>
          <div class="mobile-sidebar d-block">
            <div class="media-body text-right switch-sm">
              <label class="switch">
                <input id="sidebar-toggle" type="checkbox" checked="checked"><span class="switch-state"></span>
              </label>
            </div>
          </div>
          <div class="vertical-mobile-sidebar"><i class="fa fa-bars sidebar-bar"></i></div>
          <div class="nav-right col left-menu-header">
            <ul class="nav-menus-left">
              <li><a class="text-dark" href="#!" onclick="javascript:toggleFullScreen()"><i data-feather="maximize"></i></a></li>
              <li>
                <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Category <span class="mx-2 badge badge-pill badge-primary">2</span></button>
                  <div class="dropdown-menu"><a class="dropdown-item" href="#">Admin</a><a class="dropdown-item" href="#">Shopify</a><a class="dropdown-item" href="#">Ecommerce</a><a class="dropdown-item" href="#">Prestashop</a></div>
                </div>
              </li>
              <li>
                <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Status<span class="mx-2 badge badge-pill badge-primary">7</span></button>
                  <div class="dropdown-menu p-0">
                    <ul class="status-dropdown">
                      <li>
                        <h6 class="mb-0">Ongoing Projects</h6>
                      </li>
                      <li>
                        <p class="mb-0">HTML5 Validation Report</p>
                        <div class="progress sm-progress-bar">
                          <div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </li>
                      <li>
                        <p class="mb-0">Bootstrap Admin Templates</p>
                        <div class="progress sm-progress-bar">
                          <div class="progress-bar bg-secondary" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </li>
                      <li>
                        <p class="mb-0">Goggle Crome Extension</p>
                        <div class="progress sm-progress-bar">
                          <div class="progress-bar bg-success" role="progressbar" style="width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </li>
                      <li>
                        <p class="mb-0">Clients Projects</p>
                        <div class="progress sm-progress-bar">
                          <div class="progress-bar bg-info" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
              <li>
                <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">Order<span class="mx-2 badge badge-pill badge-primary">1</span></button>
                  <div class="dropdown-menu"><a class="dropdown-item" href="#">Paypal</a><a class="dropdown-item" href="#">Credit Card</a><a class="dropdown-item" href="#">Visa</a><a class="dropdown-item" href="#">Paytm</a></div>
                </div>
              </li>
            </ul>
            <div class="d-xl-none mobile-toggle-left pull-right"><i data-feather="more-horizontal"></i></div>
          </div>
          <div class="nav-right col pull-right right-menu">
            <ul class="nav-menus">
              <li>
                <form class="form-inline search-form"><span class="mobile-search search-icon"><i class="fa fa-search"></i></span></form>
              </li>
              <li> 
                <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" data-toggle="dropdown"><span class="media user-header"><img class="mr-2 rounded-circle img-35" src="../assets/images/dashboard/user.png" alt=""><span class="media-body"><span class="f-12 f-w-600">Elana Saint</span><span class="d-block">Admin</span></span></span></button>
                  <div class="dropdown-menu p-0">
                    <ul class="profile-dropdown">
                      <li class="gradient-primary-1">
                        <h6 class="mb-0">Elana Saint</h6><span>Web Designer</span>
                      </li>
                      <li><i data-feather="user"> </i>Profile</li>
                      <li><i data-feather="message-square"> </i>Inbox</li>
                      <li><i data-feather="file-text"> </i>Taskboard</li>
                      <li><i data-feather="settings"> </i>Settings</li>
                    </ul>
                  </div>
                </div>
              </li>
              <li>
                <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" data-toggle="dropdown"><i data-feather="bell"></i><span class="notification badge badge-pill badge-danger f-10">2</span></button>
                  <div class="dropdown-menu p-0">
                    <ul class="notification-dropdown">
                      <li class="gradient-primary-1">
                        <h6>Notifications</h6><span>You have 6 unread messages</span>
                      </li>
                      <li>
                        <div class="media">
                          <div class="notification-icons bg-success mr-3"><i class="mt-0" data-feather="thumbs-up"></i></div>
                          <div class="media-body">
                            <h6>Someone Likes Your Posts</h6>
                            <p class="mb-0"> 2 Hours Ago</p>
                          </div>
                        </div>
                      </li>
                      <li class="pt-0">
                        <div class="media">
                          <div class="notification-icons bg-info mr-3"><i class="mt-0" data-feather="message-circle"></i></div>
                          <div class="media-body">
                            <h6>3 New Comments</h6>
                            <p class="mb-0"> 1 Hours Ago</p>
                          </div>
                        </div>
                      </li>
                      <li class="bg-light txt-dark"><a href="#">All </a> notification</li>
                    </ul>
                  </div>
                </div>
              </li>
              <li><a class="right_side_toggle" href="#"><i data-feather="message-square"></i></a></li>
              <li>
                <div class="dropdown">
                  <button class="btn dropdown-toggle" type="button" data-toggle="dropdown"><i data-feather="droplet"></i></button>
                  <div class="dropdown-menu p-0">       
                    <ul class="droplet-dropdown">
                      <li class="gradient-primary-1 text-center">
                        <h6>Grid Dashboard</h6><span>Easy Grid inside dropdown</span>
                      </li>
                      <li>
                        <div class="row">
                          <div class="col-sm-4 col-6 droplet-main"><i data-feather="file-text"></i><span class="d-block">Content</span></div>
                          <div class="col-sm-4 col-6 droplet-main"><i data-feather="activity"></i><span class="d-block">Activity</span></div>
                          <div class="col-sm-4 col-6 droplet-main"><i data-feather="users"></i><span class="d-block">Contacts</span></div>
                          <div class="col-sm-4 col-6 droplet-main"><i data-feather="clipboard"></i><span class="d-block">Reports</span></div>
                          <div class="col-sm-4 col-6 droplet-main"><i data-feather="anchor"></i><span class="d-block">Automation</span></div>
                          <div class="col-sm-4 col-6 droplet-main"><i data-feather="settings"></i><span class="d-block">Settings</span></div>
                        </div>
                      </li>
                      <li class="text-center">
                        <button class="btn btn-primary btn-air-primary">Follows Up</button>
                      </li>
                    </ul>
                  </div>
                </div>
              </li>
            </ul>
          </div>
          <form class="form-inline search-full">
            <div class="form-group form-control-plaintext">
              <input type="search" placeholder="Search.."><i class="icon-close close-search"></i>
            </div>
          </form>
          <div class="d-lg-none mobile-toggle pull-right"><i data-feather="more-horizontal"></i></div>
        </div>
      </div>
      <!-- Page Header Ends                              -->
      <!-- Page Body Start-->
      <div class="page-body-wrapper">
        <!-- Page Sidebar Start-->
        <div class="page-sidebar iconcolor-sidebar">
          <div class="main-header-left d-none d-lg-block">
            <div class="logo-wrapper"><a href="index.html"><img src="../assets/images/creative-logo.png" alt=""></a></div>
          </div>
          <div class="sidebar custom-scrollbar">
            <ul class="sidebar-menu">
              <li><a class="sidebar-header" href="#"><i data-feather="home"></i><span>Dashboard</span><span class="badge badge-pill gradient-primary-1">4</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="index.html"><i class="fa fa-circle"></i>Default</a></li>
                  <li><a href="dashboard-hospital.html"><i class="fa fa-circle"></i>Hospital</a></li>
                  <li><a href="dashboard-sass.html"><i class="fa fa-circle"></i>Sass</a></li>
                  <li><a href="dashboard-crm.html"><i class="fa fa-circle"></i>Crm</a></li>
                  <li><a href="dashboard-crypto.html"><i class="fa fa-circle"></i>Crypto</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="airplay"></i><span>Widgets</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="general-widget.html"><i class="fa fa-circle"></i>General</a></li>
                  <li><a href="chart-widget.html"><i class="fa fa-circle"></i>Chart</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="../starter-kit/layout-light.html"><i data-feather="anchor"></i><span> Starter kit</span></a></li>
              <li><a class="sidebar-header" href="#"><i data-feather="disc"></i><span>Color Version</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="layout-light.html"><i class="fa fa-circle"></i>Layout Light</a></li>
                  <li><a href="layout-dark.html"><i class="fa fa-circle"></i>Layout Dark</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="sidebar"></i><span>Sidebar</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="compact.html"><i class="fa fa-circle"></i>Compact Sidebar</a></li>
                  <li><a href="sidebar-fixed.html"><i class="fa fa-circle"></i>Sidebar Fixed</a></li>
                  <li><a class="disabled" href="" onclick="return false;"><i class="fa fa-circle"></i>Disable</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="layout"></i><span>Page layout</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="box-layout.html"><i class="fa fa-circle"></i>Boxed</a></li>
                  <li><a href="layout-rtl.html"><i class="fa fa-circle"></i>RTL</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="align-justify"></i><span>Menu Options</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="hide-on-scroll.html"><i class="fa fa-circle"></i>Hide menu on Scroll</a></li>
                  <li><a href="vertical.html"><i class="fa fa-circle"></i>Vertical Menu</a></li>
                  <li><a href="mega-menu.html"><i class="fa fa-circle"></i>Mega Menu</a></li>
                  <li><a href="fix-header.html"><i class="fa fa-circle"></i>Fix header</a></li>
                  <li><a href="fix-header&amp;sidebar.html"><i class="fa fa-circle"></i>Fix Header & sidebar</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="cloud-lightning"></i><span>Footers</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="footer-light.html"><i class="fa fa-circle"></i>Footer Light</a></li>
                  <li><a href="footer-dark.html"><i class="fa fa-circle"></i>Footer Dark</a></li>
                  <li><a href="footer-fixed.html"><i class="fa fa-circle"></i>Footer Fixed</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="pagebuild.html"><i data-feather="clipboard"></i><span>Page Builder</span></a></li>
              <li><a class="sidebar-header" href="#"><i data-feather="edit-3"></i><span>Form Builders</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="form-builder-1.html"><i class="fa fa-circle"></i>Form Builder 1</a></li>
                  <li><a href="form-builder-2.html"><i class="fa fa-circle"></i>Form Builder 2</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="button-builder.html"><i data-feather="bookmark"></i><span>Button Builder</span></a></li>
              <li><a class="sidebar-header" href="#"><i data-feather="box"></i><span> Base</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="state-color.html"><i class="fa fa-circle"></i>State color</a></li>
                  <li><a href="typography.html"><i class="fa fa-circle"></i>Typography</a></li>
                  <li><a href="avatars.html"><i class="fa fa-circle"></i>Avatars</a></li>
                  <li><a href="helper-classes.html"><i class="fa fa-circle"></i>helper classes</a></li>
                  <li><a href="grid.html"><i class="fa fa-circle"></i>Grid</a></li>
                  <li><a href="tag-pills.html"><i class="fa fa-circle"></i>Tag & pills</a></li>
                  <li><a href="progress-bar.html"><i class="fa fa-circle"></i>Progress</a></li>
                  <li><a href="modal.html"><i class="fa fa-circle"></i>Modal</a></li>
                  <li><a href="alert.html"><i class="fa fa-circle"></i>Alert</a></li>
                  <li><a href="popover.html"><i class="fa fa-circle"></i>Popover</a></li>
                  <li><a href="tooltip.html"><i class="fa fa-circle"></i>Tooltip</a></li>
                  <li><a href="loader.html"><i class="fa fa-circle"></i>Spinners</a></li>
                  <li><a href="dropdown.html"><i class="fa fa-circle"></i>Dropdown</a></li>
                  <li><a href="#"><i class="fa fa-circle"></i>Tabs<i class="fa fa-angle-down pull-right"></i></a>
                    <ul class="sidebar-submenu">
                      <li><a href="tab-bootstrap.html"><i class="fa fa-circle"></i>Bootstrap Tabs</a></li>
                      <li><a href="tab-material.html"><i class="fa fa-circle"></i>Line Tabs</a></li>
                    </ul>
                  </li>
                  <li><a href="according.html"><i class="fa fa-circle"></i>Accordion</a></li>
                  <li><a href="navs.html"><i class="fa fa-circle"></i>Navs</a></li>
                  <li><a href="box-shadow.html"><i class="fa fa-circle"></i>Shadow</a></li>
                  <li><a href="list.html"><i class="fa fa-circle"></i>Lists</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="folder-plus"></i><span> Advance</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="scrollable.html"><i class="fa fa-circle"></i>Scrollable</a></li>
                  <li><a href="tree.html"><i class="fa fa-circle"></i>Tree view</a></li>
                  <li><a href="bootstrap-notify.html"><i class="fa fa-circle"></i>Bootstrap Notify</a></li>
                  <li><a href="rating.html"><i class="fa fa-circle"></i>Rating</a></li>
                  <li><a href="dropzone.html"><i class="fa fa-circle"></i>dropzone</a></li>
                  <li><a href="tour.html"><i class="fa fa-circle"></i>Tour</a></li>
                  <li><a href="sweet-alert2.html"><i class="fa fa-circle"></i>SweetAlert2</a></li>
                  <li><a href="modal-animated.html"><i class="fa fa-circle"></i>Animated Modal</a></li>
                  <li><a href="owl-carousel.html"><i class="fa fa-circle"></i>Owl Carousel</a></li>
                  <li><a href="ribbons.html"><i class="fa fa-circle"></i>Ribbons</a></li>
                  <li><a href="pagination.html"><i class="fa fa-circle"></i>Pagination</a></li>
                  <li><a href="steps.html"><i class="fa fa-circle"></i>Steps</a></li>
                  <li><a href="breadcrumb.html"><i class="fa fa-circle"></i>Breadcrumb</a></li>
                  <li><a href="range-slider.html"><i class="fa fa-circle"></i>Range Slider</a></li>
                  <li><a href="image-cropper.html"><i class="fa fa-circle"></i>Image cropper</a></li>
                  <li><a href="sticky.html"><i class="fa fa-circle"></i>Sticky</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="cloud-drizzle"></i><span>Animation<span class="badge gradient-danger ml-4">Hot</span></span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="animate.html"><i class="fa fa-circle"></i>Animate</a></li>
                  <li><a href="scroll-reval.html"><i class="fa fa-circle"></i>Scroll Reveal</a></li>
                  <li><a href="AOS.html"><i class="fa fa-circle"></i>AOS animation</a></li>
                  <li><a href="tilt.html"><i class="fa fa-circle"></i>Tilt Animation</a></li>
                  <li><a href="wow.html"><i class="fa fa-circle"></i>Wow Animation</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="command"></i><span>Icons</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="flag-icon.html"><i class="fa fa-circle"></i>Flag icon</a></li>
                  <li><a href="font-awesome.html"><i class="fa fa-circle"></i>Fontawesome Icon</a></li>
                  <li><a href="ico-icon.html"><i class="fa fa-circle"></i>Ico Icon</a></li>
                  <li><a href="themify-icon.html"><i class="fa fa-circle"></i>Thimify Icon</a></li>
                  <li><a href="feather-icon.html"><i class="fa fa-circle"></i>Feather icon</a></li>
                  <li><a href="whether-icon.html"><i class="fa fa-circle"></i>Whether Icon</a></li>
                  <li><a href="simple-line-icon.html"><i class="fa fa-circle"></i>Simple line Icon</a></li>
                  <li><a href="material-design-icon.html"><i class="fa fa-circle"></i>Material Design Icon</a></li>
                  <li><a href="pe7-icon.html"><i class="fa fa-circle"></i>pe7 icon </a></li>
                  <li><a href="typicons-icon.html"><i class="fa fa-circle"></i>Typicons icon </a></li>
                  <li><a href="ionic-icon.html"><i class="fa fa-circle"></i>Ionic icon</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="cloud"></i><span>Buttons</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="buttons.html"><i class="fa fa-circle"></i>Default Style</a></li>
                  <li><a href="buttons-flat.html"><i class="fa fa-circle"></i>Flat Style</a></li>
                  <li><a href="buttons-edge.html"><i class="fa fa-circle"></i>Edge Style</a></li>
                  <li><a href="raised-button.html"><i class="fa fa-circle"></i>Raised Style</a></li>
                  <li><a href="button-group.html"><i class="fa fa-circle"></i>Button Group</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="file-text"></i><span>Forms</span><span class="badge badge-pill gradient-success">+15</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="#"><i class="fa fa-circle"></i>Form Controls<i class="fa fa-angle-down pull-right"></i></a>
                    <ul class="sidebar-submenu">
                      <li><a href="form-validation.html"><i class="fa fa-circle"></i>Form Validation</a></li>
                      <li><a href="base-input.html"><i class="fa fa-circle"></i>Base Inputs</a></li>
                      <li><a href="radio-checkbox-control.html"><i class="fa fa-circle"></i>Checkbox & Radio</a></li>
                      <li><a href="input-group.html"><i class="fa fa-circle"></i>Input Groups</a></li>
                      <li><a href="megaoptions.html"><i class="fa fa-circle"></i>Mega Options</a></li>
                    </ul>
                  </li>
                  <li><a href="#"><i class="fa fa-circle"></i>Form Widgets<i class="fa fa-angle-down pull-right"></i></a>
                    <ul class="sidebar-submenu">
                      <li><a href="datepicker.html"><i class="fa fa-circle"></i>Datepicker</a></li>
                      <li><a href="time-picker.html"><i class="fa fa-circle"></i>Timepicker</a></li>
                      <li><a href="datetimepicker.html"><i class="fa fa-circle"></i>Datetimepicker</a></li>
                      <li><a href="daterangepicker.html"><i class="fa fa-circle"></i>Daterangepicker</a></li>
                      <li><a href="touchspin.html"><i class="fa fa-circle"></i>Touchspin</a></li>
                      <li><a href="select2.html"><i class="fa fa-circle"></i>Select2</a></li>
                      <li><a href="switch.html"><i class="fa fa-circle"></i>Switch</a></li>
                      <li><a href="typeahead.html"><i class="fa fa-circle"></i>Typeahead</a></li>
                      <li><a href="clipboard.html"><i class="fa fa-circle"></i>Clipboard</a></li>
                    </ul>
                  </li>
                  <li><a href="#"><i class="fa fa-circle"></i>Form Layout<i class="fa fa-angle-down pull-right"></i></a>
                    <ul class="sidebar-submenu">
                      <li><a href="default-form.html"><i class="fa fa-circle"></i>Default Forms</a></li>
                      <li><a href="form-wizard.html"><i class="fa fa-circle"></i>Form Wizard 1</a></li>
                      <li><a href="form-wizard-two.html"><i class="fa fa-circle"></i>Form Wizard 2</a></li>
                      <li><a href="form-wizard-three.html"><i class="fa fa-circle"></i>Form Wizard 3</a></li>
                      <li><a href="form-wizard-four.html"><i class="fa fa-circle"></i>Form Wizard 4</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="server"></i><span>Tables</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="#"><i class="fa fa-circle"></i>Bootstrap Tables<i class="fa fa-angle-down pull-right"></i></a>
                    <ul class="sidebar-submenu">
                      <li><a href="bootstrap-basic-table.html"><i class="fa fa-circle"></i>Basic Tables</a></li>
                      <li><a href="bootstrap-sizing-table.html"><i class="fa fa-circle"></i>Sizing Tables</a></li>
                      <li><a href="bootstrap-border-table.html"><i class="fa fa-circle"></i>Border Tables</a></li>
                      <li><a href="bootstrap-styling-table.html"><i class="fa fa-circle"></i>Styling Tables</a></li>
                      <li><a href="table-components.html"><i class="fa fa-circle"></i>Table components</a></li>
                    </ul>
                  </li>
                  <li><a href="#"><i class="fa fa-circle"></i>Data Tables<i class="fa fa-angle-down pull-right"></i></a>
                    <ul class="sidebar-submenu">
                      <li><a href="datatable-basic-init.html"><i class="fa fa-circle"></i>Basic Init</a></li>
                      <li><a href="datatable-advance.html"><i class="fa fa-circle"></i>Advance Init</a></li>
                      <li><a href="datatable-styling.html"><i class="fa fa-circle"></i>Styling</a></li>
                      <li><a href="datatable-AJAX.html"><i class="fa fa-circle"></i>AJAX</a></li>
                      <li><a href="datatable-server-side.html"><i class="fa fa-circle"></i>Server Side</a></li>
                      <li><a href="datatable-plugin.html"><i class="fa fa-circle"></i>Plug-in</a></li>
                      <li><a href="datatable-API.html"><i class="fa fa-circle"></i>API</a></li>
                      <li><a href="datatable-data-source.html"><i class="fa fa-circle"></i>Data Sources</a></li>
                    </ul>
                  </li>
                  <li><a href="#"><i class="fa fa-circle"></i>Extension Data Tables<i class="fa fa-angle-down pull-right"></i></a>
                    <ul class="sidebar-submenu">
                      <li><a href="datatable-ext-autofill.html"><i class="fa fa-circle"></i>Auto Fill</a></li>
                      <li><a href="datatable-ext-basic-button.html"><i class="fa fa-circle"></i>Basic Button</a></li>
                      <li><a href="datatable-ext-col-reorder.html"><i class="fa fa-circle"></i>Column Reorder</a></li>
                      <li><a href="datatable-ext-fixed-header.html"><i class="fa fa-circle"></i>Fixed Header</a></li>
                      <li><a href="datatable-ext-html-5-data-export.html"><i class="fa fa-circle"></i>HTML 5 Export</a></li>
                      <li><a href="datatable-ext-key-table.html"><i class="fa fa-circle"></i>Key Table</a></li>
                      <li><a href="datatable-ext-responsive.html"><i class="fa fa-circle"></i>Responsive</a></li>
                      <li><a href="datatable-ext-row-reorder.html"><i class="fa fa-circle"></i>Row Reorder</a></li>
                      <li><a href="datatable-ext-scroller.html"><i class="fa fa-circle"></i>Scroller</a></li>
                    </ul>
                  </li>
                  <li><a href="jsgrid-table.html"><i class="fa fa-circle"></i>Js Grid Table</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="book"></i><span>Cards</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="basic-card.html"><i class="fa fa-circle"></i>Basic Card</a></li>
                  <li><a href="creative-card.html"><i class="fa fa-circle"></i>Creative Card</a></li>
                  <li><a href="tabbed-card.html"><i class="fa fa-circle"></i>Tabbed Card</a></li>
                  <li><a href="dragable-card.html"><i class="fa fa-circle"></i>Draggable Card</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="sliders"></i><span>Timeline</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="timeline-v-1.html"><i class="fa fa-circle"></i>Timeline 1</a></li>
                  <li><a href="timeline-v-2.html"><i class="fa fa-circle"></i>Timeline 2</a></li>
                  <li><a href="timeline-small.html"><i class="fa fa-circle"></i>Timeline 3</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="bar-chart"></i><span>Charts</span><span class="badge badge-pill gradient-warning">+10</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="chart-apex.html"><i class="fa fa-circle"></i>Apex Chart</a></li>
                  <li><a href="chart-google.html"><i class="fa fa-circle"></i>Google Chart</a></li>
                  <li><a href="chart-sparkline.html"><i class="fa fa-circle"></i>sparkline chart</a></li>
                  <li><a href="chart-flot.html"><i class="fa fa-circle"></i>Flot Chart</a></li>
                  <li><a href="chart-knob.html"><i class="fa fa-circle"></i>Knob Chart</a></li>
                  <li><a href="chart-morris.html"><i class="fa fa-circle"></i>Morris Chart</a></li>
                  <li><a href="chartjs.html"><i class="fa fa-circle"></i>chatjs Chart</a></li>
                  <li><a href="chartist.html"><i class="fa fa-circle"></i>chartist Chart</a></li>
                  <li><a href="chart-peity.html"><i class="fa fa-circle"></i>Peity Chart</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="map"></i><span>Maps</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="map-js.html"><i class="fa fa-circle"></i>Maps JS</a></li>
                  <li><a href="vector-map.html"><i class="fa fa-circle"></i>Vector Maps</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="printer"></i><span>Email Templates</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="#"><i class="fa fa-circle"></i>Basic<i class="fa fa-angle-down pull-right"></i></a>
                    <ul class="sidebar-submenu">
                      <li><a href="basic-template.html" target="_blank"><i class="fa fa-circle"></i>Basic Email</a></li>
                      <li><a href="email-header.html" target="_blank"><i class="fa fa-circle"></i>Basic With Header</a></li>
                    </ul>
                  </li>
                  <li><a href="#"><i class="fa fa-circle"></i>Ecommerce<i class="fa fa-angle-down pull-right"></i></a>
                    <ul class="sidebar-submenu">
                      <li><a href="template-email.html" target="_blank"><i class="fa fa-circle"></i>Email Template</a></li>
                      <li><a href="template-email-2.html" target="_blank"><i class="fa fa-circle"></i>Email Template 2</a></li>
                      <li><a href="ecommerce-templates.html" target="_blank"><i class="fa fa-circle"></i>Ecommerce Email</a></li>
                      <li><a href="email-order-success.html" target="_blank"><i class="fa fa-circle"></i>Order Success </a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="git-pull-request"></i><span>Editors</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="summernote.html"><i class="fa fa-circle"></i>Summer Note</a></li>
                  <li><a href="ckeditor.html"><i class="fa fa-circle"></i>CK editor</a></li>
                  <li><a href="simple-MDE.html"><i class="fa fa-circle"></i>MDE editor</a></li>
                  <li><a href="ace-code-editor.html"><i class="fa fa-circle"></i>ACE code editor</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="users"></i><span>Users</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="user-profile.html"><i class="fa fa-circle"></i>Users Profile</a></li>
                  <li><a href="edit-profile.html"><i class="fa fa-circle"></i>Users Edit</a></li>
                  <li><a href="user-cards.html"><i class="fa fa-circle"></i>Users Cards</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="calendar"></i><span>Calender</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="calendar.html"><i class="fa fa-circle"></i>Full Calender Basic</a></li>
                  <li><a href="calendar-event.html"><i class="fa fa-circle"></i>Full Calender Events</a></li>
                  <li><a href="calendar-advanced.html"><i class="fa fa-circle"></i>Full Calender Advance</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="internationalization.html"><i data-feather="aperture"></i><span>Internationalization</span></a></li>
              <li><a class="sidebar-header" href="#"><i data-feather="image"></i><span>Gallery</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="gallery.html"><i class="fa fa-circle"></i>Gallery Grid</a></li>
                  <li><a href="gallery-with-description.html"><i class="fa fa-circle"></i>Gallery Grid with Desc</a></li>
                  <li><a href="gallery-masonry.html"><i class="fa fa-circle"></i>Masonry Gallery</a></li>
                  <li><a href="masonry-gallery-with-disc.html"><i class="fa fa-circle"></i>Masonry Gallery Desc</a></li>
                  <li><a href="gallery-hover.html"><i class="fa fa-circle"></i>Hover Effects</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="mail"></i><span>Email</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="email-application.html"><i class="fa fa-circle"></i>Email App</a></li>
                  <li><a href="email-compose.html"><i class="fa fa-circle"></i>Email Compose</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="edit"></i><span> Blog</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="blog.html"><i class="fa fa-circle"></i>Blog Details</a></li>
                  <li><a href="blog-single.html"><i class="fa fa-circle"></i>Blog Single</a></li>
                  <li><a href="add-post.html"><i class="fa fa-circle"></i>Add Post</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="message-square"></i><span>Chat</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="chat.html"><i class="fa fa-circle"></i>Chat App</a></li>
                  <li><a href="chat-video.html"><i class="fa fa-circle"></i>Video chat</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="social-app.html"><i data-feather="chrome"></i><span>Social App</span></a></li>
              <li><a class="sidebar-header" href="#"><i data-feather="user-check"></i><span>Job Search</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="job-cards-view.html"><i class="fa fa-circle"></i>Cards view</a></li>
                  <li><a href="job-list-view.html"><i class="fa fa-circle"></i>List View</a></li>
                  <li><a href="job-details.html"><i class="fa fa-circle"></i>Job Details</a></li>
                  <li><a href="job-apply.html"><i class="fa fa-circle"></i>Apply</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="layers"></i><span>Learning</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="learning-list-view.html"><i class="fa fa-circle"></i>Learning List</a></li>
                  <li><a href="learning-detailed.html"><i class="fa fa-circle"></i>Detailed Course </a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="faq.html"><i data-feather="help-circle"></i><span>FAQ</span></a></li>
              <li><a class="sidebar-header" href="knowledgebase.html"><i data-feather="database"></i><span>Knowledgebase</span></a></li>
              <li><a class="sidebar-header" href="support-ticket.html"><i data-feather="headphones"></i><span>Support Ticket</span></a></li>
              <li><a class="sidebar-header" href="to-do.html"><i data-feather="mic"></i><span>To-Do</span></a></li>
              <li><a class="sidebar-header" href="landing-page.html"><i data-feather="navigation-2"></i><span>Landing page</span></a></li>
              <li><a class="sidebar-header" href="#"><i data-feather="shopping-bag"></i><span>Ecommerce</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="product.html"><i class="fa fa-circle"></i>Product</a></li>
                  <li><a href="product-page.html"><i class="fa fa-circle"></i>Product page</a></li>
                  <li><a href="list-products.html"><i class="fa fa-circle"></i>Product list</a></li>
                  <li><a href="payment-details.html"><i class="fa fa-circle"></i>Payment Details</a></li>
                  <li><a href="order-history.html"><i class="fa fa-circle"></i>Order History</a></li>
                  <li><a href="invoice-template.html"><i class="fa fa-circle"></i>Invoice</a></li>
                  <li><a href="cart.html"><i class="fa fa-circle"></i>Cart</a></li>
                  <li><a href="list-wish.html"><i class="fa fa-circle"></i>Wishlist</a></li>
                  <li><a href="checkout.html"><i class="fa fa-circle"></i>Checkout</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="pricing.html"><i data-feather="dollar-sign"></i><span> Pricing</span></a></li>
              <li><a class="sidebar-header" href="sample-page.html"><i data-feather="file"></i><span> Sample page</span></a></li>
              <li><a class="sidebar-header" href="#"><i data-feather="search"></i><span>Search Pages</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="search.html"><i class="fa fa-circle"></i>Search Website</a></li>
                  <li><a href="search-images.html"><i class="fa fa-circle"></i>Search Images</a></li>
                  <li><a href="search-video.html"><i class="fa fa-circle"></i>Search Video</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="alert-octagon"></i><span> Error Page</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="error-400.html" target="_blank"><i class="fa fa-circle"></i>Error 400</a></li>
                  <li><a href="error-401.html" target="_blank"><i class="fa fa-circle"></i>Error 401</a></li>
                  <li><a href="error-403.html" target="_blank"><i class="fa fa-circle"></i>Error 403</a></li>
                  <li><a href="error-404.html" target="_blank"><i class="fa fa-circle"></i>Error 404</a></li>
                  <li><a href="error-500.html" target="_blank"><i class="fa fa-circle"></i>Error 500</a></li>
                  <li><a href="error-503.html" target="_blank"><i class="fa fa-circle"></i>Error 503</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="unlock"></i><span> Authentication</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="login.html" target="_blank"><i class="fa fa-circle"></i>Login Simple</a></li>
                  <li><a href="login-image.html" target="_blank"><i class="fa fa-circle"></i>Login with Bg Image</a></li>
                  <li><a href="login-video.html" target="_blank"><i class="fa fa-circle"></i>Login with Bg video</a></li>
                  <li><a href="signup.html" target="_blank"><i class="fa fa-circle"></i>Register Simple</a></li>
                  <li><a href="signup-image.html" target="_blank"><i class="fa fa-circle"></i>Register with Bg Image</a></li>
                  <li><a href="signup-video.html" target="_blank"><i class="fa fa-circle"></i>Register with Bg video</a></li>
                  <li><a href="unlock.html" target="_blank"><i class="fa fa-circle"></i>Unlock User</a></li>
                  <li><a href="forget-password.html" target="_blank"><i class="fa fa-circle"></i>Forget Password</a></li>
                  <li><a href="reset-password.html" target="_blank"><i class="fa fa-circle"></i>Reset Password</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="#"><i data-feather="briefcase"></i><span>Coming Soon</span><i class="fa fa-angle-right pull-right"></i></a>
                <ul class="sidebar-submenu">
                  <li><a href="comingsoon.html" target="_blank"><i class="fa fa-circle"></i>Coming Simple</a></li>
                  <li><a href="comingsoon-bg-video.html" target="_blank"><i class="fa fa-circle"></i>Coming with Bg video</a></li>
                  <li><a href="comingsoon-bg-img.html" target="_blank"><i class="fa fa-circle"></i>Coming with Bg Image</a></li>
                </ul>
              </li>
              <li><a class="sidebar-header" href="maintenance.html" target="_blank"><i data-feather="settings"></i><span> Maintenance</span></a></li>
            </ul>
          </div>
        </div>
        <!-- Page Sidebar Ends-->
        <!-- Right sidebar Start-->
        <div class="right-sidebar" id="right_side_bar">
          <div>
            <div class="container p-0">
              <div class="modal-header p-l-20 p-r-20">
                <div class="col-sm-8 p-0">
                  <h6 class="modal-title font-weight-bold">Contacts Status</h6>
                </div>
                <div class="col-sm-4 text-right p-0"><i class="mr-2" data-feather="settings"></i></div>
              </div>
            </div>
            <div class="friend-list-search mt-0">
              <input type="text" placeholder="search friend"><i class="fa fa-search"></i>
            </div>
            <div class="p-l-30 p-r-30">
              <div class="chat-box">
                <div class="people-list friend-list custom-scrollbar">
                  <ul class="list">
                    <li class="clearfix"><img class="rounded-small user-image" src="./../assets/images/user/2.jpg" alt="">
                      <div class="status-circle online"></div>
                      <div class="about">
                        <div class="name">Vincent Porter</div>
                        <div class="status"> Online</div>
                      </div>
                    </li>
                    <li class="clearfix"><img class="rounded-small user-image" src="./../assets/images/user/3.jpg" alt="">
                      <div class="status-circle away"></div>
                      <div class="about">
                        <div class="name">Ain Chavez</div>
                        <div class="status"> 28 minutes ago</div>
                      </div>
                    </li>
                    <li class="clearfix"><img class="rounded-small user-image" src="./../assets/images/user/10.jpg" alt="">
                      <div class="status-circle online"></div>
                      <div class="about">
                        <div class="name">Kori Thomas</div>
                        <div class="status"> Online</div>
                      </div>
                    </li>
                    <li class="clearfix"><img class="rounded-small user-image" src="./../assets/images/user/11.jpg" alt="">
                      <div class="status-circle online"></div>
                      <div class="about">
                        <div class="name">Erica Hughes</div>
                        <div class="status"> Online</div>
                      </div>
                    </li>
                    <li class="clearfix"><img class="rounded-small user-image" src="./../assets/images/user/11.png" alt="">
                      <div class="status-circle offline"></div>
                      <div class="about">
                        <div class="name">Ginger Johnston</div>
                        <div class="status"> 2 minutes ago</div>
                      </div>
                    </li>
                    <li class="clearfix"><img class="rounded-small user-image" src="./../assets/images/user/6.jpg" alt="">
                      <div class="status-circle away"></div>
                      <div class="about">
                        <div class="name">Prasanth Anand</div>
                        <div class="status"> 2 hour ago</div>
                      </div>
                    </li>
                    <li class="clearfix"><img class="rounded-small user-image" src="./../assets/images/user/7.jpg" alt="">
                      <div class="status-circle online"></div>
                      <div class="about">
                        <div class="name">Hileri Jecno</div>
                        <div class="status"> Online</div>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Right sidebar Ends-->
        <div class="page-body">
          <div class="container-fluid">
            <div class="page-header">
              <div class="row">
                <div class="col-lg-6">
                  <h3>
                     Default</h3>
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item">Dashboard</li>
                    <li class="breadcrumb-item active">default</li>
                  </ol>
                </div>
                <div class="col-lg-6">
                  <!-- Bookmark Start-->
                  <div class="bookmark pull-right">
                    <ul>
                      <li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Tables"><i data-feather="inbox"></i></a></li>
                      <li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Chat"><i data-feather="message-square"></i></a></li>
                      <li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Icons"><i data-feather="command"></i></a></li>
                      <li><a href="#" data-container="body" data-toggle="popover" data-placement="top" title="" data-original-title="Learning"><i data-feather="layers"></i></a></li>
                      <li><a href="#"><i class="bookmark-search" data-feather="star"></i></a>
                        <form class="form-inline search-form">
                          <div class="form-group form-control-search">
                            <input type="text" placeholder="Search..">
                          </div>
                        </form>
                      </li>
                    </ul>
                  </div>
                  <!-- Bookmark Ends-->
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid starts-->
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12 xl-100">
                <div class="row">
                  <div class="col-xl-3 xl-50 col-md-6 box-col-6">
                    <div class="card">
                      <div class="card-body tag-card">
                        <div class="progressbar-widgets">
                          <div class="media media-widgets">
                            <div class="media-body">
                              <p class="mb-0">Total Sale</p>
                              <h3 class="mt-0 mb-0 f-w-600"><i data-feather="dollar-sign"></i><span class="counter">841,162</span></h3>
                            </div><span class="badge flat-badge-secondary">3.56%<i class="fa fa-caret-up"></i></span>
                          </div>
                          <div class="progress sm-progress-bar progress-animate">
                            <div class="progress-gradient-secondary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"><span class="font-secondary">75%</span><span class="animate-circle"></span></div>
                          </div><span class="tag-content-secondary tag-hover-effect"><i data-feather="trending-up"></i></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 xl-50 col-md-6 box-col-6">
                    <div class="card">
                      <div class="card-body tag-card">
                        <div class="progressbar-widgets">
                          <div class="media media-widgets">
                            <div class="media-body">
                              <p class="mb-0">Total Purchase</p>
                              <h3 class="mt-0 mb-0 f-w-600"><i data-feather="dollar-sign"></i><span class="counter">123,461</span><span><i class="font-success" data-feather="trending-up"></i></span></h3>
                            </div><span class="badge flat-badge-success">3.56%<i class="fa fa-caret-up"></i></span>
                          </div>
                          <div class="progress sm-progress-bar progress-animate">
                            <div class="progress-gradient-success" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"><span class="font-success">80%</span><span class="animate-circle"></span></div>
                          </div><span class="tag-content-success tag-hover-effect"><i data-feather="trending-up">     </i></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 xl-50 col-md-6 box-col-6">
                    <div class="card bg-primary">
                      <div class="card-body tag-card">
                        <div class="progressbar-widgets">
                          <div class="media media-widgets">
                            <div class="media-body">
                              <p class="mb-0 font-light">Active Customers</p>
                              <h3 class="mt-0 mb-0 f-w-600"><span class="counter">10,14,125</span><span><i class="font-light" data-feather="trending-up"></i></span></h3>
                            </div><span class="badge flat-badge-light font-primary">01.36<i class="fa fa-caret-up"></i></span>
                          </div>
                          <div class="progress sm-progress-bar progress-animate">
                            <div class="progress-gradient-light" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                          </div><span class="tag-content-light tag-light tag-hover-effect"><i data-feather="trending-up">    </i></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-xl-3 xl-50 col-md-6 box-col-6">
                    <div class="card">
                      <div class="card-body tag-card">
                        <div class="progressbar-widgets">
                          <div class="media media-widgets">
                            <div class="media-body">
                              <p class="mb-0">New Customers</p>
                              <h3 class="mt-0 mb-0 f-w-600"><span class="counter">9,00,563</span><span><i class="font-primary" data-feather="trending-up"></i></span></h3>
                            </div><span class="badge flat-badge-primary">6.23%<i class="fa fa-caret-up"></i></span>
                          </div>
                          <div class="progress sm-progress-bar progress-animate">
                            <div class="progress-gradient-primary" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"><span class="animate-circle"></span></div>
                          </div><span class="tag-content-primary tag-hover-effect"><i data-feather="trending-up">     </i></span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-8 xl-100 box-col-12">
                <div class="card sales-overview">
                  <div class="card-header">
                    <h5>Sales Overview</h5>
                    <div class="card-header-right">
                      <ul class="list-unstyled card-option">
                        <li><i class="icofont icofont-double-left"></i></li>
                        <li><i class="view-html fa fa-code"></i></li>
                        <li><i class="icofont icofont-maximize full-card"></i></li>
                        <li><i class="icofont icofont-minus minimize-card"></i></li>
                        <li><i class="icofont icofont-refresh reload-card"></i></li>
                        <li><i class="icofont icofont-error close-card"></i></li>
                      </ul>
                    </div>
                  </div>
                  <div class="card-body p-0">
                    <div class="row m-0 dashboard-btn-groups">
                      <div class="col-lg-6">
                        <div class="btn-group" role="group" aria-label="Basic example">
                          <button class="btn btn-outline-light btn-js" type="button">Hours</button>
                          <button class="btn btn-outline-light btn-js" type="button">Day</button>
                          <button class="btn btn-outline-light btn-js" type="button">Week</button>
                          <button class="btn btn-outline-light btn-js active" type="button">Month</button>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="btn-group pull-right" role="group" aria-label="Basic example">
                          <button class="btn btn-outline-light btn-js1" type="button">From Date</button>
                          <button class="btn btn-outline-light btn-js1" type="button">To Date</button>
                          <button class="btn btn-outline-light btn-js1 active" type="button"><i data-feather="calendar"></i></button>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="chart-value-box pull-right">
                        <div class="value-square-box-primary"></div><span>Profit</span>
                      </div>
                      <div class="dashboard-rounded-chart flot-chart-container"></div>
                    </div>
                    <div class="code-box-copy">
                      <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                      <pre><code class="language-html" id="example-head">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="row m-0 dashboard-btn-groups"&gt;
 &lt;div class="col-lg-6"&gt;
 &lt;div class="btn-group" role="group" aria-label="Basic example"&gt;
 &lt;button class="btn btn-outline-light" type="button"&gt;Hours&lt;/button&gt;
 &lt;button class="btn btn-outline-light" type="button"&gt;Day&lt;/button&gt;
 &lt;button class="btn btn-outline-light" type="button"&gt;Week&lt;/button&gt;
 &lt;button class="btn btn-primary" type="button"&gt;Month&lt;/button&gt;
 &lt;/div&gt;
 &lt;/div&gt;
 &lt;div class="col-lg-6"&gt;
 &lt;div class="btn-group pull-right" role="group" aria-label="Basic example"&gt;
 &lt;button class="btn btn-outline-light" type="button"&gt;From Date&gt;/button&gt;
 &lt;button class="btn btn-outline-light" type="button"&gt;To Date&lt;/button&gt;
 &lt;button class="btn btn-primary" type="button"&gt;&lt;i data-feather="calendar"&lt;&gt;/i&lt;/button&gt;
 &lt;/div&gt;
 &lt;/div&gt;
 &lt;/div&gt;
 &lt;div class="card-body dashboard-rounded-chart flot-chart-container"&gt;&lt;/div&gt;
 &lt;!-- Cod Box Copy end --&gt;</code></pre>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-4 xl-100 box-col-12">
                <div class="card">
                  <div class="card-header">
                    <h5>Sales By Category</h5>
                    <div class="card-header-right">
                      <ul class="list-unstyled card-option">
                        <li><i class="icofont icofont-double-left"></i></li>
                        <li><i class="view-html fa fa-code"></i></li>
                        <li><i class="icofont icofont-maximize full-card"></i></li>
                        <li><i class="icofont icofont-minus minimize-card"></i></li>
                        <li><i class="icofont icofont-refresh reload-card"></i></li>
                        <li><i class="icofont icofont-error close-card"></i></li>
                      </ul>
                    </div>
                  </div>
                  <div class="card-body p-0">
                    <div class="sales-product-table table-responsive">
                      <table class="table table-bordernone">
                        <tbody>
                          <tr>
                            <td><img class="img-fluid" src="../assets/images/dashboard/sale-product-1.png" alt=""></td>
                            <td><span>Latest </span><span class="d-block">Niky Black shoes</span></td>
                            <td><span class="badge badge-pill pill-badge-secondary">21,562</span></td>
                            <td><span>28.21%</span></td>
                          </tr>
                          <tr>
                            <td><img class="img-fluid" src="../assets/images/dashboard/sale-product-2.png" alt=""></td>
                            <td><span>Latest Men </span><span class="d-block">Shirt</span></td>
                            <td><span>15,102</span></td>
                            <td><span>18.00%</span></td>
                          </tr>
                          <tr>
                            <td><img class="img-fluid" src="../assets/images/dashboard/sale-product-3.png" alt=""></td>
                            <td><span>Latest Women </span><span class="d-block">Purse</span></td>
                            <td><span>9562</span></td>
                            <td><span>08.54%</span></td>
                          </tr>
                          <tr>
                            <td><img class="img-fluid" src="../assets/images/dashboard/sale-product-4.png" alt=""></td>
                            <td><span>Latest </span><span class="d-block">Women Sandals</span></td>
                            <td><span>1002</span></td>
                            <td><span>01.33%</span></td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="code-box-copy">
                      <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head2" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                      <pre><code class="language-html" id="example-head2">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="sales-product-table table-responsive"&gt;
&lt;table class="table table-bordernone"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td&gt;&lt;img class="img-fluid" src="../assets/images/dashboard/sale-product-1.png" alt=""&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;Latest &lt;/span&gt;&lt;span class="d-block"&gt;Niky Black shoes&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span class="badge badge-pill badge-secondary"&gt;21,562&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;28.21%&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;&lt;img class="img-fluid" src="../assets/images/dashboard/sale-product-2.png" alt=""&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;Latest Men &lt;/span&gt;&lt;span class="d-block"&gt;Shirt&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;15,102&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;18.00%&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;&lt;img class="img-fluid" src="../assets/images/dashboard/sale-product-3.png" alt=""&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;Latest Women &lt;/span&gt;&lt;span class="d-block"&gt;Purse&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;9562&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;08.54%&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;&lt;img class="img-fluid" src="../assets/images/dashboard/sale-product-4.png" alt=""&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;Latest &lt;/span&gt;&lt;span class="d-block"&gt;Women Sandals&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;1002&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;01.33%&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;/div&gt;
&lt;div class="card-footer sales-product-table-footer"&gt;
&lt;div class="media"&gt;
&lt;button class="btn btn-outline-light"&gt;Last Week&lt;i class="fa fa-angle-double-right ml-2"&gt;&lt;/i&gt;&lt;/button&gt;
&lt;div class="media-body"&gt;&lt;a class="pull-right"&gt;View More Reports&lt;/a&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;!-- Cod Box Copy end --&gt;</code></pre>
                    </div>
                  </div>
                  <div class="card-footer sales-product-table-footer">
                    <div class="media"><a class="btn btn-outline-light">Last Week<i class="fa fa-angle-double-right ml-2"></i></a>
                      <div class="media-body"><a class="pull-right" href="#">View More Reports               </a></div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-5 xl-100 box-col-12">
                <div class="knob-widgets card">
                  <div class="row card-body">
                    <div class="col-md-6">
                      <div class="knob-block text-center">
                        <input class="knob" data-width="230" data-height="230" data-thickness=".060" data-angleoffset="90" data-displayinput="false" data-fgcolor="#fb2e63" data-bgcolor="#f2f4ff" data-linecap="round" value="75">
                        <div class="knob-content-center">
                          <h6 class="f-w-600">March. 2019</h6><span class="f-w-600">Total Invest</span>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="knob-live-content text-center">
                        <div class="setting-dot">
                          <div class="setting-bg pull-right"><i class="fa fa-spin fa-cog"></i></div>
                        </div>
                        <div class="small-bar">
                          <div class="ct-small-left flot-chart-container"></div>
                        </div>
                        <div class="span badge badge-pill pill-badge-secondary"> <i class="fa fa-circle"></i>Live</div>
                      </div>
                      <div class="knob-bottom-widgets text-center">
                        <h6 class="f-w-600">This Invest Cycle</h6>
                        <h5 class="f-w-600"><i data-feather="dollar-sign"></i>785,000</h5>
                        <h6 class="f-w-600 mb-0">Current Balance This Invest Cycle</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-7 xl-100 box-col-12">
                <div class="card sales-overview">
                  <div class="card-header">
                    <h5>Our Growth</h5>
                    <div class="card-header-right">
                      <ul class="list-unstyled card-option">
                        <li><i class="icofont icofont-double-left"></i></li>
                        <li><i class="view-html fa fa-code"></i></li>
                        <li><i class="icofont icofont-maximize full-card"></i></li>
                        <li><i class="icofont icofont-minus minimize-card"></i></li>
                        <li><i class="icofont icofont-refresh reload-card"></i></li>
                        <li><i class="icofont icofont-error close-card"></i></li>
                      </ul>
                    </div>
                  </div>
                  <div class="card-body chart-block">
                    <canvas id="our-growth"></canvas>
                    <div class="chart-value-box pull-right">
                      <div class="value-square-box-warning"></div><span>Profit</span>
                    </div>
                    <div class="code-box-copy">
                      <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head3" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                      <pre><code class="language-html" id="example-head3">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="chart-block"&gt;
&lt;canvas id="our-growth"&gt;&lt;/canvas&gt;
&lt;/div&gt;
&lt;!-- Cod Box Copy end --&gt;</code></pre>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-8 xl-50 box-col-12">
                <div class="card">
                  <div class="card-header">
                    <h5>Our Best Seller</h5>
                    <div class="card-header-right">
                      <ul class="list-unstyled card-option">
                        <li><i class="icofont icofont-double-left"></i></li>
                        <li><i class="view-html fa fa-code"></i></li>
                        <li><i class="icofont icofont-maximize full-card"></i></li>
                        <li><i class="icofont icofont-minus minimize-card"></i></li>
                        <li><i class="icofont icofont-refresh reload-card"></i></li>
                        <li><i class="icofont icofont-error close-card"></i></li>
                      </ul>
                    </div>
                  </div>
                  <div class="card-body p-0">
                    <div class="sales-product-table table-responsive">
                      <table class="table table-bordernone">
                        <thead>
                          <tr>
                            <th scope="col">Number</th>
                            <th scope="col">Name</th>
                            <th scope="col">Account</th>
                            <th scope="col">Sealing</th>
                            <th scope="col">Percentage</th>
                            <th scope="col">Custmoize</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>01</td>
                            <td>
                              <div class="d-inline-block align-middle"><img class="img-radius img-30 align-top m-r-15 rounded-circle" src="../assets/images/user/2.png" alt="">
                                <div class="d-inline-block">
                                  <h6 class="f-w-600">Nick Stone</h6>
                                </div>
                              </div>
                            </td>
                            <td><span>NikyBlack87@gmail.com</span></td>
                            <td><span>21,562</span></td>
                            <td><span>28.21%</span></td>
                            <td><span class="badge badge-pill pill-badge-secondary">Edit</span></td>
                          </tr>
                          <tr>
                            <td>02</td>
                            <td>
                              <div class="d-inline-block align-middle"><img class="img-radius img-30 align-top m-r-15 rounded-circle" src="../assets/images/user/5.jpg" alt="">
                                <div class="d-inline-block">
                                  <h6 class="f-w-600">Milano Esco</h6>
                                </div>
                              </div>
                            </td>
                            <td><span>Milanoesco56@gmal.com</span></td>
                            <td><span>15,102</span></td>
                            <td><span>18.00%</span></td>
                            <td><span class="badge badge-pill pill-badge-success">Edit</span></td>
                          </tr>
                          <tr>
                            <td>03</td>
                            <td>
                              <div class="d-inline-block align-middle"><img class="img-radius img-30 align-top m-r-15 rounded-circle" src="../assets/images/user/3.jpg" alt="">
                                <div class="d-inline-block">
                                  <h6 class="f-w-600">Wiltor Noice</h6>
                                </div>
                              </div>
                            </td>
                            <td><span>Wiltornoice34@gmail.com</span></td>
                            <td><span>9562</span></td>
                            <td><span>08.54%</span></td>
                            <td><span class="badge badge-pill pill-badge-warning">Edit</span></td>
                          </tr>
                          <tr>
                            <td>04</td>
                            <td>
                              <div class="d-inline-block align-middle"><img class="img-radius img-30 align-top m-r-15 rounded-circle" src="../assets/images/user/4.jpg" alt="">
                                <div class="d-inline-block">
                                  <h6 class="f-w-600">Anna Strong</h6>
                                </div>
                              </div>
                            </td>
                            <td><span>Annastrong67@gmail.com</span></td>
                            <td><span>1002</span></td>
                            <td><span>01.33%</span></td>
                            <td><span class="badge badge-pill pill-badge-primary">Edit</span></td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="code-box-copy">
                      <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head4" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                      <pre><code class="language-html" id="example-head4">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="sales-product-table table-responsive"&gt;
&lt;table class="table table-bordernone"&gt;
&lt;thead&gt;
&lt;tr&gt;
&lt;th scope="col"&gt;Number&lt;/th&gt;
&lt;th scope="col"&gt;Name&lt;/th&gt;
&lt;th scope="col"&gt;Account&lt;/th&gt;
&lt;th scope="col"&gt;Sealing&lt;/th&gt;
&lt;th scope="col"&gt;Percentage&lt;/th&gt;
&lt;th scope="col"&gt;Custmoize&lt;/th&gt;
&lt;/tr&gt;
&lt;/thead&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td&gt;01&lt;/td&gt;
&lt;td&gt;
&lt;div class="d-inline-block align-middle"&gt;&lt;img class="img-radius img-30 align-top m-r-15 rounded-circle" src="../assets/images/user/2.png" alt=""&gt;
&lt;div class="d-inline-block"&gt;
&lt;h6 class="f-w-600"&gt;Nick Stone&lt;/h6&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/td&gt;
&lt;td&gt;&lt;span&gt;NikyBlack87@gmail.com&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;21,562&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;28.21%&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span class="badge badge-pill pill-badge-secondary"&gt;Edit&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;02&lt;/td&gt;
&lt;td&gt;
&lt;div class="d-inline-block align-middle"&gt;&lt;img class="img-radius img-30 align-top m-r-15 rounded-circle" src="../assets/images/user/5.jpg" alt=""&gt;
&lt;div class="d-inline-block"&gt;
&lt;h6 class="f-w-600"&gt;Milano Esco&lt;/h6&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/td&gt;
&lt;td&gt;&lt;span&gt;Milanoesco56@gmal.com&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;15,102&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;18.00%&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span class="badge badge-pill pill-badge-success"&gt;Edit&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;03&lt;/td&gt;
&lt;td&gt;
&lt;div class="d-inline-block align-middle"&gt;&lt;img class="img-radius img-30 align-top m-r-15 rounded-circle" src="../assets/images/user/3.jpg" alt=""&gt;
&lt;div class="d-inline-block"&gt;
&lt;h6 class="f-w-600"&gt;Wiltor Noice&lt;/h6&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/td&gt;
&lt;td&gt;&lt;span&gt;Wiltornoice34@gmail.com&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;9562&lt;/span&gt;&lt;/td&gt;| &lt;td&gt;&lt;span&gt;08.54%&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span class="badge badge-pill pill-badge-warning"&gt;Edit&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td&gt;04&lt;/td&gt;
&lt;td&gt;
&lt;div class="d-inline-block align-middle"&gt;&lt;img class="img-radius img-30 align-top m-r-15 rounded-circle" src="../assets/images/user/4.jpg" alt=""&gt;
&lt;div class="d-inline-block"&gt;
&lt;h6 class="f-w-600"&gt;Anna Strong&lt;/h6&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/td&gt;
&lt;td&gt;&lt;span&gt;Annastrong67@gmail.com&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span&gt;1002&lt;/span&gt;&lt;/td&gt;| &lt;td&gt;&lt;span&gt;01.33%&lt;/span&gt;&lt;/td&gt;
&lt;td&gt;&lt;span class="badge badge-pill pill-badge-primary"&gt;Edit&lt;/span&gt;&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;
&lt;/div&gt;
&lt;!-- Cod Box Copy end --&gt;</code></pre>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-4 xl-50 box-col-12">
                <div class="card">
                  <div class="card-body">
                    <div class="call-chat-card text-center">
                      <div class="setting-dot">
                        <div class="setting-bg pull-right"><i class="fa fa-spin fa-cog"></i></div>
                      </div>
                      <div class="call-images"><img class="img-fluid" src="../assets/images/dashboard/call-chat-1.png" alt=""><img class="img-fluid" src="../assets/images/dashboard/call-chat-2.png" alt=""></div>
                      <h5 class="f-w-600">11:36</h5>
                      <div class="call-chart-height">
                        <div class="call-chart"></div>
                      </div>
                      <div class="call-chat-bottom">
                        <div class="text-center">
                          <div class="d-inline-block"><i data-feather="pause"></i></div>
                          <div class="d-inline-block"><a class="bg-secondary call-receive"><i data-feather="phone"></i></a></div>
                          <div class="d-inline-block"><i data-feather="volume-2"></i></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-xl-5 xl-100 box-col-12">
                <div class="card">
                  <div class="card-header">
                    <h5>Work Plan</h5>
                    <div class="card-header-right">
                      <ul class="list-unstyled card-option">
                        <li><i class="icofont icofont-double-left"></i></li>
                        <li><i class="view-html fa fa-code"></i></li>
                        <li><i class="icofont icofont-maximize full-card"></i></li>
                        <li><i class="icofont icofont-minus minimize-card"></i></li>
                        <li><i class="icofont icofont-refresh reload-card"></i></li>
                        <li><i class="icofont icofont-error close-card"></i></li>
                      </ul>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="work-plan text-center"><img class="img-fluid" src="../assets/images/dashboard/work-plan.png" alt="">
                      <h6>10:00 AM</h6>
                      <h5 class="f-w-600">5 Year Celebration</h5>
                      <p>Discussion About our new project and etc....</p>
                    </div>
                    <div class="code-box-copy">
                      <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head5" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                      <pre><code class="language-html" id="example-head5">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="work-plan text-center"&gt;
&lt;img class="img-fluid" src="../assets/images/dashboard/work-plan.png" alt=""&gt;
&lt;h6&gt;10:00 AM&lt;/h6&gt;
&lt;h5 class="f-w-600"&gt;5 Year Celebration&lt;/h5&gt;
&lt;p&gt;Discussion About our new project and etc....&lt;/p&gt;
&lt;/div&gt;
&lt;div class="card-footer"&gt;
&lt;nav aria-label="Page navigation example"&gt;
&lt;ul class="pagination pagination-lg theme-pagination"&gt;
&lt;li class="page-item"&gt;&lt;a class="page-link" href="#"&gt;21&lt;/a&gt;&lt;/li&gt;
&lt;li class="page-item"&gt;&lt;a class="page-link" href="#"&gt;22&lt;/a&gt;&lt;/li&gt;
&lt;li class="page-item"&gt;&lt;a class="page-link" href="#"&gt;23&lt;/a&gt;&lt;/li&gt;
&lt;li class="page-item active"&gt;&lt;a class="page-link" href="#"&gt;24&lt;/a&gt;&lt;/li&gt;
&lt;li class="page-item"&gt;&lt;a class="page-link" href="#"&gt;25&lt;/a&gt;&lt;/li&gt;
&lt;li class="page-item"&gt;&lt;a class="page-link" href="#"&gt;26&lt;/a&gt;&lt;/li&gt;
&lt;li class="page-item"&gt;&lt;a class="page-link" href="#"&gt;27&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/nav&gt;
&lt;/div&gt;
&lt;!-- Cod Box Copy end --&gt;</code></pre>
                    </div>
                  </div>
                  <div class="card-footer">
                    <nav aria-label="Page navigation example">
                      <ul class="pagination pagination-lg theme-pagination">
                        <li class="page-item"><a class="page-link" href="#">21</a></li>
                        <li class="page-item"><a class="page-link" href="#">22</a></li>
                        <li class="page-item"><a class="page-link" href="#">23</a></li>
                        <li class="page-item active"><a class="page-link" href="#">24</a></li>
                        <li class="page-item"><a class="page-link" href="#">25</a></li>
                        <li class="page-item"><a class="page-link" href="#">26</a></li>
                        <li class="page-item"><a class="page-link" href="#">27</a></li>
                      </ul>
                    </nav>
                  </div>
                </div>
              </div>
              <div class="col-xl-7 xl-100 box-col-12">
                <div class="card">
                  <div class="card-header">
                    <h5>Location </h5>
                    <div class="card-header-right">
                      <ul class="list-unstyled card-option">
                        <li><i class="icofont icofont-double-left"></i></li>
                        <li><i class="view-html fa fa-code"></i></li>
                        <li><i class="icofont icofont-maximize full-card"></i></li>
                        <li><i class="icofont icofont-minus minimize-card"></i></li>
                        <li><i class="icofont icofont-refresh reload-card"></i></li>
                        <li><i class="icofont icofont-error close-card"></i></li>
                      </ul>
                    </div>
                  </div>
                  <div class="card-body">
                    <div class="row dashboard-map">
                      <div class="col-md-8">
                        <div class="jvector-map-height" id="world"></div>
                      </div>
                      <div class="col-md-4">
                        <div class="map-right-box">
                          <div class="media">
                            <div class="map-box bg-warning box-color-warning"><i data-feather="users"></i></div>
                            <div class="media-body"><span>Total New User</span>
                              <h5>53,952,718</h5>
                            </div>
                          </div>
                          <div class="media">
                            <div class="map-box bg-primary box-color-primary"><i data-feather="droplet"></i></div>
                            <div class="media-body"><span>Bounce Date</span>
                              <h5>96%</h5>
                            </div>
                          </div>
                          <div class="media">
                            <div class="map-box bg-secondary box-color-secondary"><i data-feather="clock"></i></div>
                            <div class="media-body"><span>Session duartion</span>
                              <h5>06:12:56</h5>
                            </div>
                          </div>
                          <div class="media">
                            <div class="map-box bg-success box-color-success"><i data-feather="coffee"></i></div>
                            <div class="media-body"><span>Session</span>
                              <h5>06:12:56      </h5>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="code-box-copy">
                      <button class="code-box-copy__btn btn-clipboard" data-clipboard-target="#example-head6" title="Copy"><i class="icofont icofont-copy-alt"></i></button>
                      <pre><code class="language-html" id="example-head6">&lt;!-- Cod Box Copy begin --&gt;
&lt;div class="row dashboard-map"&gt;
&lt;div class="col-sm-8"&gt;
&lt;div class="jvector-map-height" id="world-map"&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;div class="col-sm-4"&gt;
&lt;div class="map-right-box"&gt;
&lt;div class="media"&gt;
&lt;div class="map-box bg-warning box-color-warning"&gt;&lt;i data-feather="users"&gt;&lt;/i&gt;&lt;/div&gt;
&lt;div class="media-body"&gt;&lt;span&gt;Total New User&lt;/span&gt;
&lt;h5&gt;53,952,718&lt;/h5&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div class="media"&gt;
&lt;div class="map-box bg-primary box-color-primary"&gt;&lt;i data-feather="droplet"&gt;&lt;/i&gt;&lt;/div&gt;
&lt;div class="media-body"&gt;&lt;span&gt;Bounce Date&lt;/span&gt;
&lt;h5&gt;96%&lt;/h5&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div class="media"&gt;
&lt;div class="map-box bg-secondary box-color-secondary"&gt;&lt;i data-feather="clock"&gt;&lt;/i&gt;&lt;/div&gt;
&lt;div class="media-body"&gt;&lt;span&gt;Session duartion&lt;/span&gt;
&lt;h5&gt;06:12:56&lt;/h5&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;div class="media"&gt;
&lt;div class="map-box bg-success box-color-success"&gt;&lt;i data-feather="coffee"&gt;&lt;/i&gt;&lt;/div&gt;
&lt;div class="media-body"&gt;&lt;span&gt;Session&lt;/span&gt;
&lt;h5&gt;06:12:56&lt;/h5&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;/div&gt;
&lt;!-- Cod Box Copy end --&gt;</code></pre>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- Container-fluid Ends-->
        </div>
        <!-- footer start-->
        <footer class="footer">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6 footer-copyright">
                <p class="mb-0">Copyright 2019 © Creative All rights reserved.</p>
              </div>
              <div class="col-md-6">
                <p class="pull-right mb-0">Hand crafted & made with<i class="fa fa-heart"></i></p>
              </div>
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap/popper.min.js"></script>
    <script src="../assets/js/bootstrap/bootstrap.js"></script>
    <!-- feather icon js-->
    <script src="../assets/js/icons/feather-icon/feather.min.js"></script>
    <script src="../assets/js/icons/feather-icon/feather-icon.js"></script>
    <!-- Sidebar jquery-->
    <script src="../assets/js/sidebar-menu.js"></script>
    <script src="../assets/js/config.js"></script>
    <!-- Plugins JS start-->
    <script src="../assets/js/chart/chartjs/chart.min.js"></script>
    <script src="../assets/js/chart/chartist/chartist.js"></script>
    <script src="../assets/js/chart/chartist/chartist-plugin-tooltip.js"></script>
    <script src="../assets/js/chart/knob/knob.min.js"></script>
    <script src="../assets/js/chart/knob/knob-chart.js"></script>
    <script src="../assets/js/prism/prism.min.js"></script>
    <script src="../assets/js/clipboard/clipboard.min.js"></script>
    <script src="../assets/js/counter/jquery.waypoints.min.js"></script>
    <script src="../assets/js/counter/jquery.counterup.min.js"></script>
    <script src="../assets/js/counter/counter-custom.js"></script>
    <script src="../assets/js/custom-card/custom-card.js"></script>
    <script src="../assets/js/notify/bootstrap-notify.min.js"></script>
    <script src="../assets/js/vector-map/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="../assets/js/vector-map/map/jquery-jvectormap-world-mill-en.js"></script>
    <script src="../assets/js/vector-map/map/jquery-jvectormap-us-aea-en.js"></script>
    <script src="../assets/js/vector-map/map/jquery-jvectormap-uk-mill-en.js"></script>
    <script src="../assets/js/vector-map/map/jquery-jvectormap-au-mill.js"></script>
    <script src="../assets/js/vector-map/map/jquery-jvectormap-chicago-mill-en.js"></script>
    <script src="../assets/js/vector-map/map/jquery-jvectormap-in-mill.js"></script>
    <script src="../assets/js/vector-map/map/jquery-jvectormap-asia-mill.js"></script>
    <script src="../assets/js/dashboard/default.js"></script>
    <script src="../assets/js/notify/index.js"></script>
    <script src="../assets/js/chat-menu.js"></script>
    <script src="../assets/js/tooltip-init.js"></script>
    <script src="../assets/js/animation/wow/wow.min.js"></script>
    <!-- Plugins JS Ends-->
    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>
    <script src="../assets/js/theme-customizer/customizer.js"></script>
    <!-- login js-->
    <!-- Plugin used-->
  </body>
</html>
<div class="welcome-popup modal fade" id="loadModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <div class="modal-body">
        <div class="modal-header"></div>
        <div class="contain p-50">
          <div class="text-center">
            <h3>Welcome to creative admin</h3>
            <p>start your project with developer friendly admin </p>
            <button class="btn btn-primary btn-lg txt-white" type="button" data-dismiss="modal" aria-label="Close">Get Started</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>