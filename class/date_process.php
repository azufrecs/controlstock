<?php
$FECHAACTUAL = "";
$DATE_PROCESS = $mysqli->query("SELECT * FROM tbl_global_fecha_proceso");
if (mysqli_num_rows($DATE_PROCESS) > 0) {
	while ($row_DATE_PROCESS = mysqli_fetch_assoc($DATE_PROCESS)) {
		$FECHAACTUAL = $row_DATE_PROCESS['fecha_proceso'];
		if (strlen($FECHAACTUAL) <> 10) {
			echo "<script>window.location.href=dirname(__DIR__); </script>";
		}
	}
} else {
	$FECHAACTUAL = date('Y-m-d', time());
	echo "<script>window.location.href=dirname(__DIR__); </script>";
}

/* Anno y Mes actual */
$YEAR				= date('Y', strtotime($FECHAACTUAL));
$MES				= date('m', strtotime($FECHAACTUAL));
$MES_ACTUAL 		= date("n", strtotime($FECHAACTUAL));
$ANNO_ACTUAL 		= date("Y", strtotime($FECHAACTUAL));
$FECHA_INICIO_MES	= $ANNO_ACTUAL . "-" . $MES_ACTUAL . "-01";

/* FECHA MINIMA EN PARTES */
$FECHA_PARTES_MIN 		= $mysqli->query("SELECT MIN(fecha_cierre) AS fecha_cierre_min FROM tbl_global_cierre_acumulado");
while ($rowFECHA_PARTES_MIN = $FECHA_PARTES_MIN->fetch_assoc()) {
	$MOSTRAR_FECHA_PARTES_MIN = $rowFECHA_PARTES_MIN['fecha_cierre_min'];
}

/* FECHA MAXIMA EN PARTES */
$FECHA_PARTES_MAX 		= $mysqli->query("SELECT MAX(fecha_proceso) AS fecha_cierre_max FROM tbl_global_fecha_proceso");
while ($rowFECHA_PARTES_MAX = $FECHA_PARTES_MAX->fetch_assoc()) {
	$MOSTRAR_FECHA_PARTES_MAX = $rowFECHA_PARTES_MAX['fecha_cierre_max'];
}

/* FECHA INICIAL EN tbl_global_cierre_acumulado SINO TOMO AÑO Y MES ACTUAL */
$QUERY_FECHA_INICIAL = $mysqli->query("SELECT MIN(fecha_cierre) as fecha_inicial FROM tbl_global_cierre_acumulado ORDER BY fecha_cierre");
$totalRows_QUERY_FECHA_INICIAL = mysqli_num_rows($QUERY_FECHA_INICIAL);
if ($totalRows_QUERY_FECHA_INICIAL == 0) {
	$FECHA_INICIAL = date("Y-m-d", strtotime(time()));
} else {
	while ($row = $QUERY_FECHA_INICIAL->fetch_assoc()) {
		$FECHA_INICIAL = $row['fecha_inicial'];
	}
}

$query_ComprobarDiaCerrado 			= $mysqli->query("SELECT * FROM tbl_global_cierre WHERE fecha_cierre = '$FECHAACTUAL'");
$query_FechaCierre_firma 			= $mysqli->query("SELECT * FROM tbl_global_cierre_acumulado ORDER BY fecha_cierre DESC LIMIT 1");
$query_FechaCierre_Generar_Parte	= $mysqli->query("SELECT * FROM tbl_global_cierre_acumulado ORDER BY fecha_cierre DESC LIMIT 1");
$rowquery_FechaCierre_firma			= mysqli_fetch_assoc($query_FechaCierre_firma);

if (isset($rowquery_FechaCierre_firma['fecha_cierre'])) {
	/* MENSAJE DE FIRMA */
	
	$rowFechaCierre_Generar_Parte		= mysqli_fetch_assoc($query_FechaCierre_Generar_Parte);

	if (mysqli_num_rows($query_FechaCierre_firma) > 0) {
		if (mysqli_num_rows($query_ComprobarDiaCerrado) > 0) {
			$COLOR_INFORMACION1 = "text-dark bg-warning";
			$INFORMACION1 = "<div aling='center'>&nbsp;Parte del d&iacute;a " . date('d/m/Y', strtotime($rowquery_FechaCierre_firma['fecha_cierre'])) . ": ¡Cerrado!</div>";
			$INFORMACION2 = "<div class='bg-secondary-50' aling='center'>&nbsp;Fecha de cierre: " . date('d/m/Y', $rowquery_FechaCierre_firma['fecha_completa']) . " - " . date('h:i:s A', $rowquery_FechaCierre_firma['fecha_completa']) . "</div>
			<div class='bg-secondary-50' aling='center'>&nbsp;Cierre realizado por: " . ucfirst($rowquery_FechaCierre_firma['autor']) . "</div>";
			$FECHA_ULTIMO_PARTE = $rowquery_FechaCierre_firma['fecha_cierre'];
		} else {
			$COLOR_INFORMACION1 = "text-white bg-success";
			$INFORMACION1 = "<div class='text-center'>&nbsp;Parte del d&iacute;a " . date('d/m/Y', strtotime($FECHAACTUAL)) . ": ¡Activo!</div>";
			$INFORMACION2 = "<div class='bg-secondary-50 text-center'>&nbsp;Fecha del &uacute;ltimo Parte: " . date('d/m/Y', strtotime($rowquery_FechaCierre_firma['fecha_cierre'])) . "</div>
				<div class='bg-secondary-50 text-center'>&nbsp;Fecha de cierre: " . date('d/m/Y', $rowquery_FechaCierre_firma['fecha_completa']) . " - " . date('h:i:s A', $rowquery_FechaCierre_firma['fecha_completa']) . "</div>
				<div class='bg-secondary-50 text-center'>&nbsp;Cierre realizado por: " . ucfirst($rowquery_FechaCierre_firma['autor']) . "</div>";
			$FECHA_ULTIMO_PARTE = $rowquery_FechaCierre_firma['fecha_cierre'];
		}
	} else {
		$INFORMACION1 = "No hay cierre anterior.";
		$INFORMACION2 = "";
	}
} else {
	$INFORMACION1 = "No hay cierre anterior.";
	$INFORMACION2 = "";
}