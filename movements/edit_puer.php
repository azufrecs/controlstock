<?php
include("../../../class/security/index.php");
include("../../../conn/conn.php");
include("../../../class/message.php");
include("../../../class/date_process.php");
setlocale(LC_TIME, "spanish");
header('Content-Type:text/html; charset=UTF-8');

if ($_GET["block"] == "no") {
	if ($_GET["status"] == "see") {
		$STATUS_CONTROL = "disabled";

		$BOTON_FINAL = "<a class='btn btn-warning w-100 mb-1' href='edit_puer.php?status=edit&code=" . $_GET["code"] . "&block=no' role='button'>Clic aqu&iacute; para habilitar el modo edici&oacute;n</a>";
	} else {
		$STATUS_CONTROL = "";
		$BOTON_FINAL = "<button type='submit' name='update' class='btn btn-success w-100 mb-1'>Actualizar datos de Unidad o Servicio</button>";
	}
} else {
	$STATUS_CONTROL = "disabled";
	$BOTON_FINAL = "<button class='btn btn-danger w-100' disabled>Edici&oacute;n desactivada, Unidad con ingresos en el mes</button>";
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
	<!-- Etiquetas <meta> obligatorias para Bootstrap -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="../../../assets/img/favicon.svg">
	<title>CoffeeControl</title>

	<!-- Enlazando el CSS de Bootstrap -->
	<link href="../../../assets/css/bootstrap.css" rel="stylesheet" media="screen">
	<link href="../../../assets/css/main.css" rel="stylesheet" media="screen">
	<link href="../../../assets/css/line-awesome.css" rel="stylesheet" media="screen">
	<!-- Enlazando el CSS de Bootstrap -->

	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
	<script src="../../../assets/js/jquery-3.6.0.js"></script>
	<script src="../../../assets/js/popper.js"></script>
	<script src="../../../assets/js/bootstrap.js"></script>
	<script src="../../../assets/js/main.js"></script>
	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
</head>

<body>
	<?php include("navbar.php"); ?>
	<div class="container" align="center">
		<!-- Inicio de Encabezado -->
		<div align="center" style="color:#666666; font-size:28px">Editar Unidad o Servicio</div>
		<!-- Fin de Encabezado -->

		<?php
		$CODE =  mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_GET["code"]), ENT_QUOTES)));
		$UNIDAD_EDITAR = $mysqli->query("SELECT * FROM tbl_global_unidades WHERE codigo = '$CODE'");
		$UNIDAD_CONFIG = $mysqli->query("SELECT * FROM tbl_global_planes WHERE codigo = '$CODE'");
		$totalRows_UNIDAD_EDITAR = mysqli_num_rows($UNIDAD_EDITAR);
		$totalRows_UNIDAD_CONFIG = mysqli_num_rows($UNIDAD_CONFIG);

		if ($totalRows_UNIDAD_EDITAR == 0 or $totalRows_UNIDAD_CONFIG == 0) {
			echo "<script>window.location.href='.'; </script>";
		} else {
			$rowUnidad = mysqli_fetch_assoc($UNIDAD_EDITAR);
			$rowConfig = mysqli_fetch_assoc($UNIDAD_CONFIG);
		}

		if ($rowUnidad['estado'] == '1') {
			$ESTADO_COMBO = "ACTIVA";
		} else {
			$ESTADO_COMBO = "INACTIVA";
		}

		if (isset($_POST['update'])) {
			$NOMBRE						= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtNombre"]), ENT_QUOTES)));
			$INGRESOS_ENE				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngENE"]), ENT_QUOTES)));
			$INGRESOS_FEB				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngFEB"]), ENT_QUOTES)));
			$INGRESOS_MAR				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngMAR"]), ENT_QUOTES)));
			$INGRESOS_ABR				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngABR"]), ENT_QUOTES)));
			$INGRESOS_MAY				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngMAY"]), ENT_QUOTES)));
			$INGRESOS_JUN				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngJUN"]), ENT_QUOTES)));
			$INGRESOS_JUL				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngJUL"]), ENT_QUOTES)));
			$INGRESOS_AGO				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngAGO"]), ENT_QUOTES)));
			$INGRESOS_SEP				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngSEP"]), ENT_QUOTES)));
			$INGRESOS_OCT				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngOCT"]), ENT_QUOTES)));
			$INGRESOS_NOV				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngNOV"]), ENT_QUOTES)));
			$INGRESOS_DIC				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtIngDIC"]), ENT_QUOTES)));
			$CLIENTES_ENE				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliENE"]), ENT_QUOTES)));
			$CLIENTES_FEB				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliFEB"]), ENT_QUOTES)));
			$CLIENTES_MAR				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliMAR"]), ENT_QUOTES)));
			$CLIENTES_ABR				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliABR"]), ENT_QUOTES)));
			$CLIENTES_MAY				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliMAY"]), ENT_QUOTES)));
			$CLIENTES_JUN				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliJUN"]), ENT_QUOTES)));
			$CLIENTES_JUL				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliJUL"]), ENT_QUOTES)));
			$CLIENTES_AGO				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliAGO"]), ENT_QUOTES)));
			$CLIENTES_SEP				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliSEP"]), ENT_QUOTES)));
			$CLIENTES_OCT				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliOCT"]), ENT_QUOTES)));
			$CLIENTES_NOV				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliNOV"]), ENT_QUOTES)));
			$CLIENTES_DIC				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCliDIC"]), ENT_QUOTES)));

			$updateUnidad = $mysqli->query("UPDATE tbl_global_unidades SET nombre = '$NOMBRE' WHERE codigo='$CODE'");
			$updateConfig = $mysqli->query("UPDATE tbl_global_planes SET plan_ing_1 = '$INGRESOS_ENE', plan_ing_2 = '$INGRESOS_FEB', plan_ing_3 = '$INGRESOS_MAR', plan_ing_4 = '$INGRESOS_ABR', plan_ing_5 = '$INGRESOS_MAY', plan_ing_6 = '$INGRESOS_JUN', plan_ing_7 = '$INGRESOS_JUL', plan_ing_8 = '$INGRESOS_AGO', plan_ing_9 = '$INGRESOS_SEP', plan_ing_10 = '$INGRESOS_OCT', plan_ing_11 = '$INGRESOS_NOV', plan_ing_12 = '$INGRESOS_DIC', plan_cli_1 = '$CLIENTES_ENE', plan_cli_2 = '$CLIENTES_FEB', plan_cli_3 = '$CLIENTES_MAR', plan_cli_4 = '$CLIENTES_ABR', plan_cli_5 = '$CLIENTES_MAY', plan_cli_6 = '$CLIENTES_JUN', plan_cli_7 = '$CLIENTES_JUL', plan_cli_8 = '$CLIENTES_AGO', plan_cli_9 = '$CLIENTES_SEP', plan_cli_10 = '$CLIENTES_OCT', plan_cli_11 = '$CLIENTES_NOV', plan_cli_12 = '$CLIENTES_DIC' WHERE codigo='$CODE'");

			if ($updateUnidad or $updateConfig) {
				echo "<script>window.location.href='edit_puer.php?status=see&code=" . $_GET["code"] . "&block=no'; </script>";
			} else {
				echo $MESSAGE_ERROR;
			}
		}
		?>

		<form id="frmUnidad" name="frmUnidad" method="post" action="">
			<div class="row">
				<div class="col-md-2">
					<div class="form-floating">
						<input name="txtCodigo" maxlength="20" class="form-control" value="<?php echo $rowUnidad['codigo']; ?>" required disabled>
						<label class="text-success" for="floatingTextarea">C&oacute;digo</label>
					</div>
				</div>

				<div class="col-md-3">
					<div class="form-floating">
						<input name="txtTipo" maxlength="60" class="form-control" value="<?php echo $rowUnidad['tipo']; ?>" required disabled>
						<label class="text-success" for="floatingTextarea">Tipo de Unidad</label>
					</div>
				</div>

				<div class="col-md"></div>

				<div class="col-md-5">
					<div class="form-floating">
						<input name="txtNombre" maxlength="60" class="form-control" value="<?php echo $rowUnidad['nombre']; ?>" placeholder="Escriba el nombre de la Unidad o Servicio" autocomplete="off" required autofocus <?php echo $STATUS_CONTROL; ?>>
						<label class="text-success" for="floatingTextarea">Nombre de Unidad</label>
					</div>
				</div>
			</div>

			<div style="color:#EEEEEE; font-size:6px" align="center">&nbsp;</div>

			<!-- INICIA LA FILA DE LOS PLANES -->
			<div class="row" align="center">
				<!-- INICIA LA COLUMNA DE PLANES DE INGRESOS -->
				<div class="col-md-6">
					<div class="card border-warning bg-warning-30">
						<div align="center">Defina los planes de <i>Ingresos Mensuales</i></div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngENE" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_1']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Enero</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngFEB" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_2']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Febrero</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngMAR" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_3']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Marzo</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngABR" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_4']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Abril</label>
									</div>
								</div>
							</div>

							<div style="font-size:1px">&nbsp;</div>

							<div class="row">
								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngMAY" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_5']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Mayo</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngJUN" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_6']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Junio</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngJUL" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_7']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Julio</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngAGO" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_8']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Agosto</label>
									</div>
								</div>
							</div>

							<div style="font-size:1px">&nbsp;</div>

							<div class="row">
								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngSEP" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_9']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Septiembre</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngOCT" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_10']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Octubre</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngNOV" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_11']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Noviembre</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="0.01" min="0.01" onchange="MASK(this,this.value,'0.00',1)" name="txtIngDIC" class="form-control" style="text-align:right" placeholder="Ingresos" autocomplete="off" value="<?php echo $rowConfig['plan_ing_12']; ?>" pattern="^(?=.*[0-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Diciembre</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- FINALIZA LA COLUMNA DE PLANES DE INGRESOS -->

				<!-- INICIA LA COLUMNA DE PLANES DE CLIENTES -->
				<div class="col-md-6">
					<div class="card border-warning bg-warning-30">
						<div align="center">Defina los planes de <i>Clientes Mensuales</i></div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliENE" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_1']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Enero</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliFEB" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_2']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Febrero</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliMAR" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_3']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Marzo</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliABR" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_4']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Abril</label>
									</div>
								</div>
							</div>

							<div style="font-size:1px">&nbsp;</div>

							<div class="row">
								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliMAY" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_5']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Mayo</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliJUN" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_6']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Junio</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliJUL" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_7']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Julio</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliAGO" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_8']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Agosto</label>
									</div>
								</div>
							</div>

							<div style="font-size:1px">&nbsp;</div>

							<div class="row">
								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliSEP" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_9']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Septiembre</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliOCT" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_10']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Octubre</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliNOV" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_11']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-secondary" for="floatingTextarea">Noviembre</label>
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-floating">
										<input type="number" step="1" min="1" onchange="MASK(this,this.value,'0',1)" name="txtCliDIC" class="form-control text-center" style="text-align:right" placeholder="Clientes" autocomplete="off" value="<?php echo $rowConfig['plan_cli_12']; ?>" pattern="^(?=.*[1-9])\d*(?:\.\d{1,2})?$" required <?php echo $STATUS_CONTROL; ?>>
										<label class="text-dark" for="floatingTextarea">Diciembre</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- FINALIZA LA COLUMNA DE PLANES DE CLIENTES -->
			</div>
			<!-- FINALIZA LA FILA DE LOS PLANES -->

			<div style="color:#EEEEEE; font-size:6px" align="center">&nbsp;</div>

			<div class="row">
				<div class="col-md"></div>
				<div class='col-md-4' align='center'>
					<?php echo $BOTON_FINAL; ?>
				</div>
				<div class="col-md"></div>
			</div>
		</form>
	</div>
</body>

</html>