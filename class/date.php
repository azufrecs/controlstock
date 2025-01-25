<?php
include("security/index.php");
include("../conn/conn.php");
include("message.php");
include("date_process.php");
setlocale(LC_TIME, "spanish");
header('Content-Type:text/html; charset=UTF-8');

$DATE_PROCESS = $mysqli->query("SELECT * FROM tbl_global_fecha_proceso");
if (mysqli_num_rows($DATE_PROCESS) > 0) {
	while ($row_DATE_PROCESS = mysqli_fetch_assoc($DATE_PROCESS)) {
		$FECHAACTUAL = $row_DATE_PROCESS['fecha_proceso'];
		if (strlen($FECHAACTUAL) == 10) {
			echo "<script>window.location.href='.'; </script>";
		}
	}
}

/* DEFINIENDO FECHA DE TRABAJO */
if (isset($_POST['FECHATRABAJO'])) {
	/* LIMPIO LA TABLA tbl_global_fecha_proceso */
	$query_truncate_tbl_global_date_process 	= $mysqli->query("TRUNCATE TABLE tbl_global_fecha_proceso");

	/* ESCRIBO LA NUEVA FECHA DE TRABAJO */
	$FECHA_DE_TRABAJO  = mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtFechaTrabajo"], ENT_QUOTES)));
	$insert = mysqli_query($mysqli, "INSERT INTO tbl_global_fecha_proceso(fecha_proceso) VALUES('$FECHA_DE_TRABAJO')");
	if ($insert) {
		echo "<script>window.location.href='../.'; </script>";
	} else {
		echo $MESSAGE_EXIST;
	}
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
	<!-- Etiquetas <meta> obligatorias para Bootstrap -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="../assets/img/favicon.svg">
	<title>CoffeeControl</title>

	<!-- Enlazando el CSS de Bootstrap -->
	<link href="../assets/css/bootstrap.css" rel="stylesheet" media="screen">
	<link href="../assets/css/main.css" rel="stylesheet" media="screen">
	<link href="../assets/css/line-awesome.css" rel="stylesheet" media="screen">
	<style>
		canvas {
			width: 350px;
			height: 350px;
		}
	</style>
	<!-- Enlazando el CSS de Bootstrap -->

	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
	<script src="../assets/js/jquery-3.6.0.js"></script>
	<script src="../assets/js/popper.js"></script>
	<script src="../assets/js/bootstrap.js"></script>
	<script src="../assets/js/main.js"></script>
	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
</head>

<body>
	<!-- Start navbar -->
	<nav class="navbar navbar-expand-lg fixed-top navbar-dark fondo_verde_oscuro">
		<div class="container-fluid">
			<i class="las la-dolly text-white la-3x"></i>&nbsp;
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				</ul>
				<span>
					<a href='#' class='nav-link'><span class='text-white-50' data-bs-toggle='modal' data-bs-target='#ModalMenuUser'>Sistema&nbsp;(<?php echo strtolower($_SESSION['user']); ?>)</span></a>
				</span>
			</div>
		</div>
	</nav>
	<!-- Finish navbar -->
	<?php $modal_config = include("modal_config.php"); ?>
	<!-- Start Modal User -->

	<!-- Finish Modal User -->

	<div class="container" align="center">
		<!-- Inicio de Encabezado -->
		<div align="center" style="color:#666666; font-size:28px">Defina la fecha de trabajo</div>
		<div align="center" style="color:#eeeeee; font-size:4px">&nbsp;</div>
		<div align="center" style="color:#666666; font-size:20px">Esta fecha se utilizar&aacute; para captar el Parte Diario</div>
		<div align="center" style="color:#eeeeee; font-size:8px">&nbsp;</div>
		<!-- Fin de Encabezado -->

		<div align="center">
			<form id="frmMenu" name="frmMenu" method="post" action="">
				<div class="row justify-content-center">
					<div class="col-9 col-sm-8 col-md-6 col-lg-4 col-xl-3 col-xxl-3">
						<div class="form-floating mb-2">
							<input type="date" name="txtFechaTrabajo" class="form-control input-lg text-center border-success-50" required autofocus>
							<label class="text-success" for="floatingTextarea">Selecciona la fecha de trabajo</label>
						</div>
						<button type='submit' name='FECHATRABAJO' class='btn w-100 btn-lg btn-success mb-1'>Definir fecha de trabajo</button>
					</div>
				</div>

				<div class="row justify-content-center">
					<div class="col-9 col-sm-8 col-md-6 col-lg-4 col-xl-4 col-xxl-4">
						<canvas id="clock" class="clock"></canvas>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="../assets/js/clock.js"></script>
</body>

</html>