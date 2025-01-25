<?php
include("../../class/security/index.php");
include("../../conn/conn.php");
include("../../class/message.php");
include("../../class/date_process.php");
setlocale(LC_TIME, "spanish");
header('Content-Type:text/html; charset=UTF-8');
$YEAR_DATE_PROCESS = date("Y", strtotime($MOSTRAR_FECHA_PARTES_MAX));
$MONTH_DATE_PROCESS = date("m", strtotime($MOSTRAR_FECHA_PARTES_MAX));


$MostrarUnidades = $mysqli->query("SELECT tbl_global_unidades.*, vista_unid_ventas_mes_actual.boton_activo FROM tbl_global_unidades LEFT JOIN vista_unid_ventas_mes_actual ON tbl_global_unidades.codigo = vista_unid_ventas_mes_actual.codigo ORDER BY tbl_global_unidades.codigo_grupo");
$MostrarUnidades1 = $mysqli->query("SELECT codigo, nombre FROM tbl_global_unidades;");
$totalRows_rstMostrarMostrarUnidades = mysqli_num_rows($MostrarUnidades1);
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

	<!-- Enlazando el CSS de Bootstrap -->
	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
	<script src="../../assets/js/jquery-3.6.0.js"></script>
	<script src="../../assets/js/popper.js"></script>
	<script src="../../assets/js/bootstrap.js"></script>
	<script src="../../assets/js/main.js"></script>
	<script src="../../assets/js/table2excel.js"></script>
	<script src="../../assets/js/bootbox.min.js"></script>
	<script src="../../assets/js/deleteRecords.js"></script>
	<!-- Opcional: enlazando el JavaScript de Bootstrap -->
	<script type="text/javascript">
		function Export() {
			$("#tabla_exportar").table2excel({
				exclude: ".noExport",
				filename: "Unidades o Servicios definidos.xls"
			});
		}
	</script>
</head>

<body>
	<!-- Start navbar -->
	<nav class="navbar navbar-expand-md fixed-top navbar-dark fondo_verde_oscuro">
		<div class="container-fluid">
			<i class="las la-dolly text-white la-3x"></i>&nbsp;
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class='nav-item'>
						<a class="nav-link" href="../">Configuraci&oacute;n</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="add/">Agregar Unidad</a>
					</li>
				</ul>
				<span>
					<a href='#' class='nav-link'><span class='text-white-50' data-bs-toggle='modal' data-bs-target='#ModalMenuUser'>Sistema&nbsp;(<?php echo strtolower($_SESSION['user']); ?>)</span></a>
				</span>
			</div>
		</div>
	</nav>
	<!-- Finish navbar -->
	<div class="container" align="center">
		<!-- Start Modal User -->
		<?php $modal_config = include("../../class/modal_config.php"); ?>
		<!-- Finish Modal User -->
		<div id="tabla_exportar">
			<!-- Inicio de Encabezado -->
			<div class="row">
				<div class="col-md" align="center"></div>
				<div class="col-md-9" align="left">
					<div style="color:#666666; font-size:28px">Unidades o Servicios definidos</div>
				</div>
				<div class="col-md-1 align-self-center" align="right">
					<button type="button" id="btnExport" class="btn btn-success btn-sm" title='Exportar a Excel' onclick="Export()">&nbsp;<i class='las la-file-excel'></i>&nbsp;</button>
				</div>
				<div class="col-md" align="center"></div>
			</div>
			<!-- Fin de Encabezado -->

			<div class="row">
				<div class="col-md"></div>
				<div class="col-md-10" align="center">
					<div class="table-responsive" style="height: calc(100vh - 120px); overflow: auto;">
						<table class='table table-hover table-lg' id='testTable'>
							<thead class="header fondo_verde_oscuro" scope="col">
								<tr>
									<th class="text-start text-white">UNIDAD O SERVICIO</th>
									<th class="text-start text-white">TIPO</th>
									<th class="text-center text-white">ESTADO</th>
									<th class="text-end text-white noExport">ACCION</>
									</th>
								</tr>
							</thead>
							<tbody>
								<?php
								if (isset($_GET['updt']) == 'statusunid') {
									$CODE 				= $_GET['code'];
									$STATUS_UNIDAD	 	= $_GET['val'];

									$UpdateEstado = $mysqli->query("UPDATE tbl_global_unidades SET estado = '$STATUS_UNIDAD' WHERE codigo='$CODE'");

									if ($STATUS_UNIDAD == 1) {
										$STATUS_UNIDAD_OK = "Habilitando";
									} else {
										$STATUS_UNIDAD_OK = "Deshabilitando";
									}
									echo "<script>window.location.href='.'; </script>";
								}

								if ($totalRows_rstMostrarMostrarUnidades == 0) {
									echo '<tr><td colspan="8">&nbsp;No existen Unidades o Servicios captados.</td></tr>';
								} else {
									while ($row = mysqli_fetch_assoc($MostrarUnidades)) {
										/* INICIO OBTENCION LOS VALORES RELACIONADOS A LOS GRUPOS DE UNIDADES */
										$query_GrupoUnidad = $mysqli->query("SELECT * FROM tbl_global_grupos WHERE codigo_grupo = '$row[codigo_grupo]'");
										while ($rowGrupoUnidad = mysqli_fetch_assoc($query_GrupoUnidad)) {
											/* $TABLA_CONFIG 	= $rowGrupoUnidad['tabla_config']; */
											$FILE_EDIT	 	= $rowGrupoUnidad['file_edit'];
										}

										if ($row['boton_activo'] == "SI") {
											if ($row['estado'] == "1") {
												$ESTADO_UNIDAD = "<button type='submit' name='desactivar' class='btn btn-success btn-xs font-monospace' disabled data-toggle='tooltip' data-placement='left' title='Desactivar Unidad font-monospace'><i class='las la-check-circle'></i>&nbsp;&nbsp;&nbsp;Activa</button>";
											} else {
												$ESTADO_UNIDAD = "<button type='submit' name='activar' class='btn btn-danger btn-xs font-monospace' disabled data-toggle='tooltip' data-placement='left' title='Activar Unidad font-monospace'><i class='las la-times-circle'></i>&nbsp;Inactiva</button>";
											}
											$block = 'si';
										} else {
											if ($row['estado'] == "1") {
												$ESTADO_UNIDAD = "<a href='index.php?updt=statusunid&val=0&code=$row[codigo]'><button type='submit' name='desactivar' class='btn btn-success btn-xs font-monospace' data-toggle='tooltip' data-placement='left' title='Desactivar Unidad'><i class='las la-check-circle'></i>&nbsp;&nbsp;&nbsp;Activa</button></a>";
											} else {
												$ESTADO_UNIDAD = "<a href='index.php?updt=statusunid&val=1&code=$row[codigo]'><button type='submit' name='activar' class='btn btn-danger btn-xs font-monospace' data-toggle='tooltip' data-placement='left' title='Activar Unidad'><i class='las la-times-circle'></i>&nbsp;Inactiva</button></a>";
											}
											$block = 'no';
										}

										echo "<tr>";
										echo "<td class='text-start' valign='middle'>" . $row['nombre'] .	"</td>";
										echo "<td class='text-start ajustar'  valign='middle'><span class='badge bg-secondary bg-pill'>" . $row['tipo'] .	"</span></td>";
										echo "<td class='text-center ajustar'  valign='middle'>" . $ESTADO_UNIDAD . "</td>";
										echo '<td class="text-end ajustar noExport" valign="middle"><a href=edit/' . $FILE_EDIT . '?status=see&code=' . $row['codigo'] . '&block=' . $block . ' data-toggle="tooltip" data-placement="top" title="Revisar los datos de ' . $row['nombre'] . '" class="btn btn-primary btn-xs">Revisar <i class="las la-edit"></i></a></td>';
										echo "</tr>";
									}
								}
								?>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-md"></div>
			</div>
		</div>
	</div>
</body>

</html>