<?php
// include("../class/security/index.php");
include("../conn/conn.php");
include("../class/message.php");
setlocale(LC_TIME, "spanish");
header('Content-Type:text/html; charset=UTF-8');
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

	<!-- Enlazando el CSS de Bootstrap -->

	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
	<script src="../assets/js/jquery-3.6.0.js"></script>
	<script src="../assets/js/popper.js"></script>
	<script src="../assets/js/bootstrap.js"></script>
	<script src="../assets/js/main.js"></script>
	<script>
		/* EVITAR REENVIO DE DATOS */
		if (window.history.replaceState) { // verificamos disponibilidad
			window.history.replaceState(null, null, window.location.href);
		}
	</script>
	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
</head>

<body>
	<!-- Start navbar -->
	<?php include("navbar.php"); ?>
	<!-- Finish navbar -->
	<div class="container" align="center">
		<!-- Start Modal User -->
		<?php $modal_config = include("../class/modal_config.php"); ?>
		<!-- Finish Modal User -->
		<!-- Inicio de Encabezado -->
		<div align="center" style="color:#666666; font-size:28px">Agregar Producto</div>
		<!-- Fin de Encabezado -->

		<?php
		if (isset($_POST['cmdAgregar'])) {
			$NOMBRE_PRODUCTO		= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtNombreProducto"]), ENT_QUOTES)));

			$cek = mysqli_query($mysqli, "SELECT * FROM tbl_productos WHERE nombre_producto='$NOMBRE_PRODUCTO'");
			if (mysqli_num_rows($cek) == 0) {
				$insert = mysqli_query($mysqli, "INSERT INTO tbl_productos(nombre_producto, estado_producto) VALUES('$NOMBRE_PRODUCTO', '1')");
				if ($insert) {
					echo $MESSAGE_ADD;
				} else {
					echo $MESSAGE_ERROR;
				}
			} else {
				echo $MESSAGE_EXIST;
			}
		}
		?>

		<form id="frmFormaPago" name="frmFormaPago" method="post" action="">
			<div class="row">
				<div class="col-md"></div>
				<div class="col-md-5">
					<div class="card bg-primary-10 border-primary">
						<div class="card-body">
							<div class="form-floating">
								<input name="txtNombreProducto" maxlength="60" class="form-control text-center" placeholder="Escriba el nombre del Producto" autocomplete="off" required autofocus>
								<label class="text-primary" for="floatingTextarea">Nombre del Producto</label>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md"></div>
			</div>

			<div style="color:#eeeeee; font-size:8px">&nbsp;</div>

			<div class="row">
				<div class="col-md"></div>
				<div class='col-md-3' align='center'>
					<button type='submit' name='cmdAgregar' class='btn btn-primary w-100 mb-1'>Guardar Producto</button>
				</div>
				<div class="col-md"></div>
			</div>
		</form>
	</div>
</body>

</html>