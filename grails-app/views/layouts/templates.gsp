<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <asset:stylesheet rel="stylesheet" src="all.min.css"/>
    <!-- DataTables -->
    <asset:stylesheet rel="stylesheet" src="dataTables.bootstrap4.min.css"/>
    <asset:stylesheet rel="stylesheet" src="responsive.bootstrap4.min.css"/>
    <asset:stylesheet rel="stylesheet" src="buttons.bootstrap4.min.css"/>
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bootstrap 4 -->
    <asset:stylesheet rel="stylesheet" src="tempusdominus-bootstrap-4.min.css"/>
    <!-- iCheck -->
    <asset:stylesheet rel="stylesheet" src="icheck-bootstrap.min.css"/>
    <!-- JQVMap -->
    <asset:stylesheet rel="stylesheet" src="jqvmap.min.css"/>
    <!-- Theme style -->
    <asset:stylesheet rel="stylesheet" src="adminlte.min.css"/>
    <!-- overlayScrollbars -->
    <asset:stylesheet rel="stylesheet" src="OverlayScrollbars.min.css"/>
    <!-- Daterange picker -->
    <asset:stylesheet rel="stylesheet" src="daterangepicker.css"/>
    <!-- summernote -->
    <asset:stylesheet rel="stylesheet" src="summernote-bs4.min.css"/>



    <g:layoutHead/>
</head>
<body>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
        </ul>

    </nav>
    <!-- /.navbar -->
    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="index3.html" class="brand-link">
            <asset:image src="AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"/>
            <span class="brand-text font-weight-light">Admin ETSENA</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <asset:image src="user3-128x128.jpg" class="img-circle elevation-2" alt="User Image"/>
                </div>
            <sec:ifLoggedIn>
                <div class="info">
                    <a href="#" class="d-block"><sec:loggedInUserInfo field='fullname'/></a>
                </div>
            </sec:ifLoggedIn>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                  <li class="nav-item menu-open">
                        <a href="#" class="nav-link active">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Dashboard
                            </p>
                        </a>
                  </li>
                </ul>
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                  <li class="nav-item menu-open">
                        <a href="#" class="nav-link ">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                Aller au site
                            </p>
                        </a>
                  </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>
    <div class="content-wrapper">
        <g:layoutBody/>
    </div>

</div>
</body>

<footer class="main-footer">
    <div class="float-right d-none d-sm-block">
        <b>Version</b> 3.1.0-rc
    </div>
    <strong>Copyright &copy; 2020 <a href="https://adminlte.io">Admin ETSENA ITU MBDS </a>.</strong> All rights reserved.
</footer>


<!-- jQuery -->
<asset:javascript src="jquery.min.js"/>
<!-- jQuery UI 1.11.4 -->
<asset:javascript src="jquery-ui.min.js"/>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<asset:javascript src="bootstrap.bundle.min.js"/>
<!-- ChartJS -->
<asset:javascript src="Chart.min.js"/>
<!-- Sparkline -->
<asset:javascript src="sparkline.js"/>

<!-- daterangepicker -->
<asset:javascript src="moment.min.js"/>
<asset:javascript src="daterangepicker.js"/>
<!-- Tempusdominus Bootstrap 4 -->
<asset:javascript src="tempusdominus-bootstrap-4.min.js"/>
<!-- Summernote -->
<asset:javascript src="summernote-bs4.min.js"/>
<!-- overlayScrollbars -->
<asset:javascript src="jquery.overlayScrollbars.min.js"/>
<!-- DataTables  & Plugins -->
<asset:javascript src="jquery.dataTables.min.js"/>
<asset:javascript src="dataTables.bootstrap4.min.js"/>
<asset:javascript src="dataTables.responsive.min.js"/>
<asset:javascript src="responsive.bootstrap4.min.js"/>
<asset:javascript src="dataTables.buttons.min.js"/>
<asset:javascript src="buttons.bootstrap4.min.js"/>
<asset:javascript src="jszip.min.js"/>
<asset:javascript src="pdfmake.min.js"/>
<asset:javascript src="vfs_fonts.js"/>
<asset:javascript src="buttons.html5.min.js"/>
<asset:javascript src="buttons.print.min.js"/>
<asset:javascript src="buttons.colVis.min.js"/>
<!-- AdminLTE App -->
<asset:javascript src="adminlte.js"/>
<!-- AdminLTE for demo purposes -->
<asset:javascript src="demo.js"/>


<g:javascript>
    $(function () {
        $("#example1").DataTable({
            "scrollY": 500,
            "deferRender": true,
            "scroller": true,
            "dom": "Brtip",
            "sFilter": "dataTables_filter",
            "buttons": [ 'copy', 'csv', 'excel', 'pdf', 'print' ],
            "processing": true,
            "serverSide": true,
            "ajax": {
					"url": "${createLink(controller: 'product', action: 'browserLister')}",
					"type": "GET",
				},
				"columns": [
					{ "data": "prodName" },
					{ "data": "prodCode" },
					{ "data": "categoryName" },
					{ "data": "prodDesc" },
					{ "data": "prodImageUrl" },
					{ "data": "prodStatus" },
					{ "data": "prodQuantity" },
					{ "data": "prodPrice" }

				]


        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

    });
</g:javascript>

</body>
</html>