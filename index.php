<?php
// include("class/security/index.php");
include("conn/conn.php");
include("class/message.php");
?>

<!DOCTYPE html>
<html lang="es">

<head>
	<!-- Etiquetas <meta> obligatorias para Bootstrap -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="assets/img/favicon.svg">
	<title>CoffeeControl</title>

	<!-- Enlazando el CSS de Bootstrap -->
	<link href="assets/css/bootstrap.css" rel="stylesheet" media="screen">
	<link href="assets/css/main.css" rel="stylesheet" media="screen">
	<link href="assets/css/line-awesome.css" rel="stylesheet" media="screen">
	<!-- Enlazando el CSS de Bootstrap -->

	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
	<script src="assets/js/jquery-3.6.0.js"></script>
	<script src="assets/js/popper.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/datepicker.min.js"></script>
	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
</head>

<body>
	<!-- Start navbar -->
	<nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-primary">
		<div class="container-fluid">
			<i class="las la-dolly text-white la-3x"></i>&nbsp;
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse align-self-center" id="navbarNavDropdown">
				<ul class="navbar-nav me-auto ">
					<li class="nav-item">
						<a class="nav-link" href="movements/">Movimientos</a>
					</li>

					<li class="nav-item">
						<a class="nav-link" href="products/">Productos</a>
					</li>

					<li class="nav-item">
						<a class="nav-link" href="reports/">Reportes</a>
					</li>
				</ul>
				<span>
					<a href='#' class='nav-link'><span class='text-white-50' data-bs-toggle='modal' data-bs-target='#ModalMenuUser'>Sistema</span></a>
				</span>
			</div>
		</div>
	</nav>
	<?php $modal_config = include("class/modal_config.php"); ?>
	<!-- Finish navbar -->
	<div class="container" align="center">
		<!-- Inicio de Encabezado -->
		<div align="center" style="color:#666666; font-size:28px">CoffeeControl</div>
		<!-- Fin de Encabezado -->
		<div class="row justify-content-center">
			<!-- <div class='col-12 col-sm-10 col-md-4 col-lg-4 col-xl-3 col-xxl-3'>
				<a class='btn btn-primary btn-lg w-100 mb-1' href='deliver/' role='button'><br><i style='font-size:153px' class='las la-file-invoice'></i>
					<div class="mt-4 mb-4">Control</div>
				</a>
			</div>
			<div class='col-12 col-sm-10 col-md-4 col-lg-4 col-xl-3 col-xxl-3'>
				<a class='btn btn-success btn-lg w-100 mb-1' href='reconcile/' role='button'><br><i style='font-size:153px' class='las la-file-invoice-dollar'></i>
					<div class="mt-4 mb-4">Conciliaci&oacute;n</div>
				</a>
			</div>

			<div class='col-12 col-sm-10 col-md-4 col-lg-4 col-xl-3 col-xxl-3'> -->
			<!-- <form id="frmFacturas" name="frmFacturas" method="post" action="">
					<div class="dropdown">
						<button class="btn btn-danger btn-lg w-100 dropdown-toggle mb-3" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
							<br><i style='font-size:153px' class="las la-edit"></i>
							<div class="mt-3 mb-0">Edici&oacute;n</div>
						</button>
						<div class="dropdown-menu bg-danger-50" aria-labelledby="dropdownMenuButton1">
							<a class="dropdown-item" role='button' href='edition/accum_date.php'>&nbsp;<i class="las text-danger la-file-invoice-dollar"></i>&nbsp;&nbsp;EDITAR FECHA DE FACTURA</a>
							<a class="dropdown-item" role='button' href='edition/accum_value.php'>&nbsp;<i class="las text-danger  la-file-invoice-dollar"></i>&nbsp;&nbsp;EDITAR IMPORTE DE FACTURA</a>
							<a class="dropdown-item" role='button' href='edition/accum_edit.php'>&nbsp;<i class="las text-danger  la-file-invoice-dollar"></i>&nbsp;&nbsp;EDITAR NUMERO DE FACTURA</a>
							<a class="dropdown-item" role='button' href='edition/accum_expedient.php'>&nbsp;<i class="las text-danger  la-file-invoice-dollar"></i>&nbsp;&nbsp;EDITAR EXPEDIENTE DE FACTURA</a>
							<a class="dropdown-item" role='button' href='edition/tipo_pago.php'>&nbsp;<i class="las text-danger  la-file-invoice-dollar"></i>&nbsp;&nbsp;EDITAR TIPO DE PAGO DE FACTURA</a>
							<a class="dropdown-header">
								<hr class="quitar_espacios mt-1">
							</a>
							<a class="dropdown-item" role='button' href='edition/cancel_activate.php'>&nbsp;<i class="las text-danger la-file-invoice-dollar"></i>&nbsp;&nbsp;ACTIVAR FACTURA CANCELADA</a>
							<a class="dropdown-header">
								<hr class="quitar_espacios mt-1">
							</a>
							<a class="dropdown-item" role='button' href='edition/accum_delete.php'>&nbsp;<i class="las text-danger la-file-invoice-dollar"></i>&nbsp;&nbsp;ELIMINAR FACTURA ACUMULADA</a>
							<a class="dropdown-item" role='button' href='edition/range_delete.php'>&nbsp;<i class="las text-danger  la-file-invoice-dollar"></i>&nbsp;&nbsp;ELIMINAR RANGO DE FACTURAS SIN USO</a>
						</div>
					</div>
				</form> -->
			<!-- </div> -->
		</div>
	</div>
</body>

</html>