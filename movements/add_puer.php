<?php
include("../../class/security/index.php");
include("../../conn/conn.php");
include("../../class/message.php");
include("../../class/date_process.php");
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
	<link rel="icon" href="../../assets/img/favicon.svg">
	<title>CoffeeControl</title>

	<!-- Enlazando el CSS de Bootstrap -->
	<link href="../../assets/css/bootstrap.css" rel="stylesheet" media="screen">
	<link href="../../assets/css/main.css" rel="stylesheet" media="screen">
	<link href="../../assets/css/line-awesome.css" rel="stylesheet" media="screen">
	<style>
		.clickable-icon {
			pointer-events: auto !important;
		}
	</style>
	<!-- Enlazando el CSS de Bootstrap -->

	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
	<script src="../../assets/js/jquery-3.6.0.js"></script>
	<script src="../../assets/js/popper.js"></script>
	<script src="../../assets/js/bootstrap.js"></script>
	<script src="../../assets/js/main.js"></script>
	<!-- Opcional: enlazando el JavaScript de Bootstrap -->

	<!-- Completando los ceros de la factura -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('#factura').focusout(function() {
				if (factura.value.length >= 1) {
					while (factura.value.length < 8)
						factura.value = '0' + factura.value;
				}
			});
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			var consulta;
			var code = new URLSearchParams(window.location.search).get('code');

			/* hacemos focus */
			$("#factura").focus();

			/* comprobamos si se pulsa una tecla */
			$("#factura").on('blur', function(e) {
				/* obtenemos el texto introducido en el campo */
				consulta = $("#factura").val();

				/* hace la búsqueda */
				$("#resultado").delay(1).queue(function(n) {
					$.ajax({
						type: "POST",
						url: "check.php",
						data: {
							id_factura: consulta,
							code: code
						},
						dataType: "html",

						success: function(data) {
							$("#resultado").html(data);
							n();
						}
					});
				});
			});
		});
	</script>
</head>

<body>
	<?php include("navbar.php"); ?>
	<div class="container" align="center">
		<?php
		$CODE 					=  mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_GET["code"]), ENT_QUOTES)));
		$LISTA_PAISES 			= $mysqli->query("SELECT * FROM tbl_global_paises ORDER BY nombre");
		$LISTA_EMBARCACIONES	= $mysqli->query("SELECT * FROM tbl_global_embarcaciones ORDER BY embarcacion");
		$LISTA_TIPO_ESTUDIO 	= $mysqli->query("SELECT * FROM tbl_global_estudios_aeropuerto ORDER BY nombre");
		$LIST_PAYMENT 			= $mysqli->query("SELECT * FROM tbl_global_metodos_pago ORDER BY tipo");
		$UNIDAD_EDITAR 			= $mysqli->query("SELECT * FROM tbl_global_unidades WHERE codigo = '$CODE'");
		$rowUnidad 				= mysqli_fetch_assoc($UNIDAD_EDITAR);
		$LISTA_ESPECIALISTAS	= $mysqli->query("SELECT*FROM tbl_global_especialistas WHERE (unidad1='$rowUnidad[nombre]' OR unidad2='$rowUnidad[nombre]' OR unidad3='$rowUnidad[nombre]' OR unidad4='$rowUnidad[nombre]') AND estado='1' AND anno='$ANNO_ACTUAL' ORDER BY name;");
		if ($LISTA_ESPECIALISTAS->num_rows == 1) {
			$SELECCIONADO = "selected";
			$DISABLED = "readonly";
			$TAB_INDEX = "-1";
		} else {
			$SELECCIONADO = "";
			$DISABLED = "";
			$TAB_INDEX = "";
		}
		$CONTAR_FACTURAS 		= $mysqli->query("SELECT COUNT(codigo) AS CantFacturas, SUM(importe) AS ImporteTotal, SUM(cantclientes) AS ClientesTotal  FROM tbl_acum_puer WHERE codigo = '$CODE' AND dia_acum = 'D'");
		$rowContarFacturas 		= mysqli_fetch_assoc($CONTAR_FACTURAS);

		if ($rowContarFacturas['CantFacturas'] > 0) {
			$FACTURAS_TOTAL	= $rowContarFacturas['CantFacturas'];
			$IMPORTE_TOTAL	= $rowContarFacturas['ImporteTotal'];
			$CLIENTES_TOTAL	= $rowContarFacturas['ClientesTotal'];
		} else {
			$FACTURAS_TOTAL	= "0";
			$IMPORTE_TOTAL	= "0";
			$CLIENTES_TOTAL	= "0";
		}

		if ($rowUnidad['estado'] == '1') {
			$ESTADO_COMBO = "ACTIVA";
		} else {
			$ESTADO_COMBO = "INACTIVA";
		}

		if (isset($_POST['guardar']) or isset($_POST['guardarmas'])) {
			$CODIGO				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($rowUnidad['codigo']), ENT_QUOTES)));
			$FACTURA			= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtFactura"]), ENT_QUOTES)));
			$CONCILIACION		= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtConciliacion"]), ENT_QUOTES)));
			$FECHAFACTURA		= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper(date("Y-m-d", strtotime($_POST["txtFechaFactura"]))), ENT_QUOTES)));
			$EMBARCACION		= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["cboEmbarcacion"]), ENT_QUOTES)));
			if ($EMBARCACION == "---") {
				$IMO_EMBARCACION 	= "---";
				$FLAG_EMBARCACION 	= "---";
				$REG_EMBARCACION 	= "---";
			} else {
				$QUERY_DETALLES_EMBARCACION	= $mysqli->query("SELECT * FROM tbl_global_embarcaciones WHERE embarcacion = '$EMBARCACION'");
				while ($rowDETALLES_EMBARCACION = $QUERY_DETALLES_EMBARCACION->fetch_assoc()) {
					$IMO_EMBARCACION			= $rowDETALLES_EMBARCACION['imo'];
					$FLAG_EMBARCACION			= $rowDETALLES_EMBARCACION['bandera'];
					$REG_EMBARCACION			= $rowDETALLES_EMBARCACION['registro'];
				}
			}
			$IMPORTE			= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtImporte"]), ENT_QUOTES)));
			$TIPOPAGO			= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["cboTipoPago"]), ENT_QUOTES)));
			$PAIS				= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["cboPais"]), ENT_QUOTES)));
			$TIPOESTUDIO		= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["cboTipoEstudio"]), ENT_QUOTES)));
			$ESPECIALISTA  		= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["cboEspecialista"]), ENT_QUOTES)));
			$CANTCLIENTES		= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtCantClientes"]), ENT_QUOTES)));
			$OBSERVACION		= mysqli_real_escape_string($mysqli, (strip_tags(strtoupper($_POST["txtObservacion"]), ENT_QUOTES)));

			$PLANES_UNIDAD 		= $mysqli->query("SELECT plan_ing_1,plan_ing_2,plan_ing_3,plan_ing_4,plan_ing_5,plan_ing_6,plan_ing_7,plan_ing_8,plan_ing_9,plan_ing_10,plan_ing_11,plan_ing_12,plan_cli_1,plan_cli_2,plan_cli_3,plan_cli_4,plan_cli_5,plan_cli_6,plan_cli_7,plan_cli_8,plan_cli_9,plan_cli_10,plan_cli_11,plan_cli_12 FROM vista_planes_activos WHERE codigo='$CODE'");
			$rowPlanesUnidad 	= mysqli_fetch_assoc($PLANES_UNIDAD);

			$cek = mysqli_query($mysqli, "SELECT factura FROM vista_facturas_comercial_economia WHERE factura = '$FACTURA'");
			if (mysqli_num_rows($cek) == 0) {
				$insert = mysqli_query($mysqli, "INSERT INTO tbl_acum_puer(codigo, factura, conciliacion, fecha_factura, embarcacion, imo, bandera, registro, cantclientes, importe, tipopago, pais, tipoestudio, especialista, observacion, dia_acum, validated_invoice, fecha_captado, plan_ing_1,plan_ing_2,plan_ing_3,plan_ing_4,plan_ing_5,plan_ing_6,plan_ing_7,plan_ing_8,plan_ing_9,plan_ing_10,plan_ing_11,plan_ing_12,plan_cli_1,plan_cli_2,plan_cli_3,plan_cli_4,plan_cli_5,plan_cli_6,plan_cli_7,plan_cli_8,plan_cli_9,plan_cli_10,plan_cli_11,plan_cli_12) VALUES('$CODIGO', '$FACTURA', '$CONCILIACION', '$FECHAFACTURA', '$EMBARCACION', '$IMO_EMBARCACION', '$FLAG_EMBARCACION', '$REG_EMBARCACION', '$CANTCLIENTES', '$IMPORTE', '$TIPOPAGO', '$PAIS', '$TIPOESTUDIO', '$ESPECIALISTA', '$OBSERVACION', 'D', '0', '$FECHAACTUAL', '$rowPlanesUnidad[plan_ing_1]', '$rowPlanesUnidad[plan_ing_2]', '$rowPlanesUnidad[plan_ing_3]', '$rowPlanesUnidad[plan_ing_4]', '$rowPlanesUnidad[plan_ing_5]', '$rowPlanesUnidad[plan_ing_6]', '$rowPlanesUnidad[plan_ing_7]', '$rowPlanesUnidad[plan_ing_8]', '$rowPlanesUnidad[plan_ing_9]', '$rowPlanesUnidad[plan_ing_10]', '$rowPlanesUnidad[plan_ing_11]', '$rowPlanesUnidad[plan_ing_12]', '$rowPlanesUnidad[plan_cli_1]', '$rowPlanesUnidad[plan_cli_2]', '$rowPlanesUnidad[plan_cli_3]', '$rowPlanesUnidad[plan_cli_4]', '$rowPlanesUnidad[plan_cli_5]', '$rowPlanesUnidad[plan_cli_6]', '$rowPlanesUnidad[plan_cli_7]', '$rowPlanesUnidad[plan_cli_8]', '$rowPlanesUnidad[plan_cli_9]', '$rowPlanesUnidad[plan_cli_10]', '$rowPlanesUnidad[plan_cli_11]', '$rowPlanesUnidad[plan_cli_12]')");
				if ($insert) {
					$updateUnidad = $mysqli->query("UPDATE tbl_global_unidades SET captado = '1', fecha_captado = '$FECHAACTUAL' WHERE codigo='$CODIGO'");
					if (isset($_POST['guardar'])) {
						echo "<script>window.location.href='..'; </script>";
					} else {
						echo "<script>window.location.href='add_puer.php?code=" . $rowUnidad['codigo'] . "'</script>";
					}
				} else {
					echo $MESSAGE_ERROR;
				}
			} else {
				echo $MESSAGE_EXIST;
			}
		}
		?>

		<!-- Inicio de Encabezado -->
		<div align="center" style="color:#666666; font-size:28px">Captar datos -> <?php echo $rowUnidad['tipo']; ?></div>
		<!-- Fin de Encabezado -->

		<div class="modal fade" id="ModalAddEmbarcacion" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="ModalAddEmbarcacion" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-body">
						<iframe src="../../config/ship/add.php?iframe=1" style="width: 100%; height: 435px;"></iframe>
					</div>
					<div class="modal-footer"><button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar ventana</button></div>
				</div>
			</div>
		</div>

		<form id="frmAgregar" name="frmAgregar" method="post" action="">
			<div class="row justify-content-center">
				<div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6 col-xxl-6">
					<div class="form-floating mb-1">
						<input name="txtNombre" maxlength="60" class="form-control form-control-sm bg-success-10 text-success border-success-50 fw-bold text-start" value="<?php echo $rowUnidad['nombre']; ?>" placeholder="Escriba el nombre de la Unidad o Servicio" autocomplete="off" required disabled>
						<label class="text-success" for="floatingTextarea">Nombre de Unidad</label>
					</div>
				</div>

				<div class="col-12 col-sm-12 col-md-4 col-lg-2 col-xl-2 col-xxl-2">
					<div class="form-floating mb-1">
						<input name="txtTotalFacturas" class="form-control text-center bg-primary-10 text-primary border-primary-50 fw-bold" value="<?php echo number_format($FACTURAS_TOTAL, 0); ?>" required disabled>
						<label class="text-primary" for="floatingTextarea">Cantidad de Facturas</label>
					</div>
				</div>

				<div class="col-12 col-sm-12 col-md-4 col-lg-2 col-xl-2 col-xxl-2">
					<div class="form-floating mb-1">
						<input name="txtImporteTotal" class="form-control text-center bg-primary-10 text-primary border-primary-50 fw-bold" value="<?php echo "$&nbsp;" . number_format($IMPORTE_TOTAL, 2); ?>" required disabled>
						<label class="text-primary" for="floatingTextarea">Importe Total</label>
					</div>
				</div>

				<div class="col-12 col-sm-12 col-md-4 col-lg-2 col-xl-2 col-xxl-2">
					<div class="form-floating">
						<input name="txtTotalClientes" class="form-control text-center bg-primary-10 text-primary border-primary-50 fw-bold" value="<?php echo number_format($CLIENTES_TOTAL, 0); ?>" autocomplete="off" required disabled>
						<label class="text-primary" for="floatingTextarea">Cantidad Clientes</label>
					</div>
				</div>
			</div>

			<!-- COMIENZA LA CAPTACION DE LA INFORMACION -->
			<div class="row justify-content-center">
				<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 col-xxl-12">
					<hr class='quitar_espacios mb-2 mt-2'>
					<div class="card border-success bg-success-10 mb-2">
						<div class="card-body">
							<div class="row justify-content-center">
								<div class="col-12 col-sm-12 col-md-4 col-lg-3 col-xl-3 col-xxl-3">
									<div class="form-floating mb-1">
										<input name="txtFactura" id="factura" class="form-control input border-success-50" placeholder="No. Factura" autocomplete="off" style="text-align:right" onKeypress="if (event.keyCode < 48 || event.keyCode > 57) event.returnValue = false;" maxlength="8" required autofocus>
										<label id="resultado" class="text-success" for="floatingTextarea">Factura</label>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-4 col-lg-3 col-xl-3 col-xxl-3">
									<div class="form-floating mb-1">
										<input name="txtConciliacion" id="Conciliacion" class="form-control input border-success-50" placeholder="# Conciliaci&oacute;n" autocomplete="off" style="text-align:right" onKeypress="if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;" maxlength="8" required>
										<label class="text-success" for="floatingTextarea">Conciliaci&oacute;n</label>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-4 col-lg-3 col-xl-3 col-xxl-3">
									<div class="form-floating mb-1">
										<input type="date" name="txtFechaFactura" class="form-control text-center border-success-50" min="<?php echo $MOSTRAR_FECHA_PARTES_MIN; ?>" max="<?php echo $MOSTRAR_FECHA_PARTES_MAX; ?>" required>
										<label class="text-success" for="floatingTextarea">Fecha Factura</label>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3 col-xxl-3">
									<div class="input-group mb-1">
										<div class="form-floating">
											<select name="cboEmbarcacion" class="form-select border-success-50 text-truncate" aria-label="Floating label select example" required>
												<option disabled value="" selected hidden>Embarcaci&oacute;n</option>
												<option value="---">---</option>
												<?php
												while ($row_Ship = $LISTA_EMBARCACIONES->fetch_assoc()) {
													echo "<option value='" . $row_Ship['embarcacion'] . "'>" . strtoupper($row_Ship['embarcacion']) . "</option>";
												}
												?>
											</select>
											<label class="text-success" for="floatingSelect">Embarcaci&oacute;n</label>
										</div>
										<button class="btn btn-outline-success p-0" type="button" data-bs-toggle="modal" data-bs-target="#ModalAddEmbarcacion" title="Agregar Embarcaci&oacute;n" tabindex="-1"><i class="las la-plus"></i></button>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3 col-xxl-3">
									<div class="form-floating mb-1">
										<input name="txtCantClientes" id="CantClientes" onchange="MASK(this,this.value,'0',1)" maxlength="3" onKeypress="if (event.keyCode < 48 || event.keyCode > 57) event.returnValue = false;" class="form-control input border-success-50" style="text-align:right" placeholder="Tripulantes" autocomplete="off" required>
										<label class="text-success" for="floatingTextarea">Tripulantes</label>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-6 col-lg-3 col-xl-3 col-xxl-3">
									<div class="form-floating mb-1">
										<input name="txtImporte" onchange="MASK(this,this.value,'#######0.00',1)" maxlength="10" onkeypress="if ((event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode == 8 || event.keyCode == 46 || event.keyCode == 110) { return true; } else { return false; }" style="text-align:right" class="form-control input border-success-50" placeholder="Importe" autocomplete="off" required>
										<label class="text-success" for="floatingTextarea">Importe</label>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-5 col-lg-3 col-xl-3 col-xxl-3">
									<div class="form-floating mb-1">
										<select name="cboTipoPago" id="cboTipoPago" class="form-select border-success-50" aria-label="Floating label select example" required>
											<option disabled value="" selected hidden>Tipo Pago</option>
											<?php
											while ($rowPayment = $LIST_PAYMENT->fetch_assoc()) {
												echo "<option value='" . $rowPayment['tipo'] . "'>" . strtoupper($rowPayment['tipo']) . "</option>";
											}
											?>
										</select>
										<label class="text-success" for="floatingSelect">M&eacute;todo de Pago</label>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-7 col-lg-3 col-xl-3 col-xxl-3">
									<div class="form-floating mb-1">
										<select name="cboPais" class="form-select border-success-50 text-truncate" aria-label="Floating label select example" required>
											<option disabled value="" selected hidden>Selecciona un Pa&iacute;s de la lista</option>
											<?php
											while ($rowPais = $LISTA_PAISES->fetch_assoc()) {
												echo "<option value='" . $rowPais['nombre'] . "'>" . strtoupper($rowPais['nombre']) . "&nbsp;&nbsp;" . $rowPais['bandera'] . "</option>";
											}
											?>
										</select>
										<label class="text-success" for="floatingSelect">Pa&iacute;s</label>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 col-xxl-6">
									<div class="form-floating mb-1">
										<select name="cboTipoEstudio" class="form-select border-success-50 text-truncate" aria-label="Floating label select example" required>
											<option disabled value="" selected hidden>Selecciona un Tipo de Estudio de la lista</option>
											<?php
											while ($rowTipoPuerto = $LISTA_TIPO_ESTUDIO->fetch_assoc()) {
												echo "<option style='white-space:nowrap; text-overflow:elipsis; overflow:hidden;' value='" . $rowTipoPuerto['nombre'] . "'>" . strtoupper($rowTipoPuerto['nombre']) . "</option>";
											}
											?>
										</select>
										<label class="text-success" for="floatingSelect">Tipo de Estudio</label>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 col-xxl-6">
									<div class="form-floating mb-1">
										<select name="cboEspecialista" id="cboEspecialista" class="form-select border-success-50" data-selected-text-format="static" aria-label="Floating label select example" required <?php echo $DISABLED . " tabindex='" . $TAB_INDEX . "'" ?>>
											<option disabled value="" selected hidden>Selecciona un Especialista de la lista</option>
											<?php
											while ($rowEspecialista = $LISTA_ESPECIALISTAS->fetch_assoc()) {
												echo "<option value='" . $rowEspecialista['nombre'] . "'" . $SELECCIONADO . " >" . strtoupper($rowEspecialista['name']) . "</option>";
											}
											?>
										</select>
										<label class="text-success" for="floatingSelect">Especialista</label>
									</div>
								</div>

								<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 col-xxl-12">
									<div class="form-floating">
										<input name="txtObservacion" id="inputTexto" class="form-control input border-success-50" placeholder="Observaciones" onkeyup="javascript:this.value=this.value.toUpperCase();" autocomplete="off" maxlength="100" oninput="actualizarContador()" autofocus>
										<label class="text-success" for="floatingTextarea">Observaciones (<span id="contador">100</span> caracteres)</label>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row justify-content-center">
						<div class='col-12 col-sm-12 col-md-5 col-lg-5 col-xl-4 col-xxl-4'>
							<button type='submit' name='guardar' class='btn btn-success w-100 mb-1'>Guardar Factura captada</button>
						</div>
						<div class='col-12 col-sm-12 col-md-5 col-lg-5 col-xl-4 col-xxl-4'>
							<button type='submit' name='guardarmas' class='btn btn-warning w-100 mb-1'>Guardar y agregar otra Factura</button>
						</div>
					</div>
				</div>
			</div>
			<!-- FINALIZA LA CAPTACION DE LA INFORMACION -->
		</form>
	</div>

	<script>
		/* EVITAR REENVIO DE DATOS */
		if (window.history.replaceState) { // verificamos disponibilidad
			window.history.replaceState(null, null, window.location.href);
		}

		// Contador de caracteres restantes
		function actualizarContador() {
			var input = document.getElementById("inputTexto");
			var contador = document.getElementById("contador");
			var caracteresRestantes = 100 - input.value.length;

			contador.textContent = caracteresRestantes;

			if (caracteresRestantes < 0) {
				input.value = input.value.slice(0, 100);
				contador.textContent = 0;
			}
		}

		/** RECARGANDO CBOWMBARCACION AL CERRAR EL MODAL SIN RECARGAR LA PAGINA */
		$('#ModalAddEmbarcacion').on('hidden.bs.modal', function(e) {
			$.ajax({
				url: '../../class/funciones_puer/actualizar_embarcaciones.php',
				type: 'GET',
				dataType: 'json', // Especificamos que esperamos una respuesta en formato JSON
				success: function(data) {
					var select = $('select[name="cboEmbarcacion"]');
					select.empty();
					select.append('<option disabled value="" selected hidden>Embarcaci&oacute;n</option>');
					$.each(data, function(index, embarcacion) {
						select.append('<option value="' + embarcacion.embarcacion + '">' + embarcacion.embarcacion + '</option>');
					});
				}
			});
		});
	</script>
</body>

</html>