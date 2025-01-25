<?php
// include("../class/security/index.php");
include("../conn/conn.php");
include("../class/message.php");
setlocale(LC_TIME, "spanish");
header('Content-Type:text/html; charset=UTF-8');
// $YEAR_DATE_PROCESS = date("Y", strtotime($MOSTRAR_FECHA_PARTES_MAX));
// $MONTH_DATE_PROCESS = date("m", strtotime($MOSTRAR_FECHA_PARTES_MAX));


$queryProductos = $mysqli->query("SELECT * FROM tbl_productos ORDER BY nombre_producto");
// $MostrarUnidades1 = $mysqli->query("SELECT codigo, nombre FROM tbl_global_unidades;");
// $totalRows_rstMostrarMostrarUnidades = mysqli_num_rows($MostrarUnidades1);
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
	<script src="../assets/js/table2excel.js"></script>
	<script src="../assets/js/bootbox.min.js"></script>
	<script src="../assets/js/deleteRecords.js"></script>
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
	<?php include("navbar.php"); ?>
	<!-- Finish navbar -->
	<div class="container" align="center">
		<!-- Start Modal User -->
		<?php $modal_config = include("../class/modal_config.php"); ?>
		<!-- Finish Modal User -->
		<div id="tabla_exportar">
			<!-- Inicio de Encabezado -->
			<div class="row">
				<div class="col-md" align="center"></div>
				<div class="col-md-7" align="left">
					<div style="color:#666666; font-size:28px">Productos definidos</div>
				</div>
				<div class="col-md-1 align-self-center" align="right">
					<button type="button" id="btnExport" class="btn btn-success btn-sm" title='Exportar a Excel' onclick="Export()">&nbsp;<i class='las la-file-excel'></i>&nbsp;</button>
				</div>
				<div class="col-md" align="center"></div>
			</div>
			<!-- Fin de Encabezado -->

			<div class="row">
				<div class="col-md"></div>
				<div class="col-md-8" align="center">
					<div class="table-responsive" style="height: calc(100vh - 120px); overflow: auto;">
						<table class='table table-hover table-lg' id='testTable'>
							<thead class="header bg-primary" scope="col">
								<tr>
									<th class="text-start text-white">CODIGO</th>
									<th class="text-start text-white">PRODUCTO</th>
									<th class="text-center text-white">ESTADO</th>
									<th class="text-end text-white noExport">ACCION</>
									</th>
								</tr>
							</thead>
							<tbody>
								<?php
								if (isset($_GET['updt']) == 'statusunid') {
									$CODE 				= $_GET['code'];
									$STATUS_PRODUCTO	 	= $_GET['val'];

									$UpdateEstado = $mysqli->query("UPDATE tbl_productos SET estado_producto = '$STATUS_PRODUCTO' WHERE id_producto='$CODE'");

									if ($STATUS_PRODUCTO == 1) {
										$STATUS_PRODUCTO = "Habilitando";
									} else {
										$STATUS_PRODUCTO = "Deshabilitando";
									}
									echo "<script>window.location.href='.'; </script>";
								}

								if ($queryProductos->num_rows == 0) {
									echo '<tr><td colspan="8">&nbsp;No existen Productos definidos.</td></tr>';
								} else {
									while ($row = mysqli_fetch_assoc($queryProductos)) {
										/* INICIO OBTENCION LOS VALORES RELACIONADOS A LOS GRUPOS DE UNIDADES */
										// $query_GrupoUnidad = $mysqli->query("SELECT * FROM tbl_global_grupos WHERE codigo_grupo = '$row[codigo_grupo]'");
										// while ($rowGrupoUnidad = mysqli_fetch_assoc($query_GrupoUnidad)) {
										// 	/* $TABLA_CONFIG 	= $rowGrupoUnidad['tabla_config']; */
										// 	$FILE_EDIT	 	= $rowGrupoUnidad['file_edit'];
										// }

										// if ($row['boton_activo'] == "SI") {
										// 	if ($row['estado_producto'] == "1") {
										// 		$ESTADO_PRODUCTO = "<button type='submit' name='desactivar' class='btn btn-success btn-xs font-monospace' disabled data-toggle='tooltip' data-placement='left' title='Desactivar Unidad font-monospace'><i class='las la-check-circle'></i>&nbsp;&nbsp;&nbsp;Activa</button>";
										// 	} else {
										// 		$ESTADO_PRODUCTO = "<button type='submit' name='activar' class='btn btn-danger btn-xs font-monospace' disabled data-toggle='tooltip' data-placement='left' title='Activar Unidad font-monospace'><i class='las la-times-circle'></i>&nbsp;Inactiva</button>";
										// 	}
										// 	$block = 'si';
										// } else {
										if ($row['estado_producto'] == "1") {
											$ESTADO_PRODUCTO = "<a href='index.php?updt=statusunid&val=0&code=$row[id_producto]'><button type='submit' name='desactivar' class='btn btn-success btn-xs font-monospace' data-toggle='tooltip' data-placement='left' title='Desactivar Unidad'><i class='las la-check-circle'></i>&nbsp;&nbsp;&nbsp;Activa</button></a>";
										} else {
											$ESTADO_PRODUCTO = "<a href='index.php?updt=statusunid&val=1&code=$row[id_producto]'><button type='submit' name='activar' class='btn btn-danger btn-xs font-monospace' data-toggle='tooltip' data-placement='left' title='Activar Unidad'><i class='las la-times-circle'></i>&nbsp;Inactiva</button></a>";
										}
										$block = 'no';
										// }

										echo "<tr>";
										echo "<td class='text-start ajustar' valign='middle'>" . str_pad($row['id_producto'], 17, '0', STR_PAD_LEFT) .	"</td>";
										echo "<td class='text-start' valign='middle'>" . $row['nombre_producto'] .	"</td>";
										echo "<td class='text-center ajustar'  valign='middle'>" . $ESTADO_PRODUCTO . "</td>";
										echo '<td class="text-end ajustar noExport" valign="middle"><a href=edit.php?status=see&code=' . $row['id_producto'] . ' data-toggle="tooltip" data-placement="top" title="Revisar los datos de ' . $row['nombre_producto'] . '" class="btn btn-primary btn-xs">Revisar <i class="las la-edit"></i></a></td>';
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