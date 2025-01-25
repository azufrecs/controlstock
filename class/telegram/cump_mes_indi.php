<?php
/* CONSULTAS PARA GRAFICO DE CUMPLIMIENTO */
$NOMBRE_MES = array("0", "ENE", "FEB", "MAR", "ABR", "MAY", "JUN", "JUL", "AGO", "SEP", "OCT", "NOV", "DIC");
$NOMBRE_MES_LARGO = array("0", "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
$MONTH = date('m', strtotime($FECHAACTUAL)) * 1;
$MES_PLAN_MENSUAL = "plan_ing_" . $MONTH;
$MONTH_CON_CERO = date('m', strtotime($FECHAACTUAL));
$DAY_CON_CERO = date('d', strtotime($FECHAACTUAL));
$DAY_SIN_CERO = date('j', strtotime($FECHAACTUAL));
$YEAR = date('Y', strtotime($FECHAACTUAL));
$TITULO_CUMPLIMIENTO = "Cumplimiento " . $NOMBRE_MES[$MONTH] . "/" . $YEAR . " hasta el d&iacute;a " . $DAY_CON_CERO;
$TITULO_MODAL_CUMPLIMIENTO = "Cumplimiento " . $NOMBRE_MES[$MONTH] . "/" . $YEAR . " hasta el d&iacute;a " . $DAY_CON_CERO;
$TITULO_CUMPLIMIENTO_PARA_IMAGEN = "Cumplimiento Mensual hasta " . $DAY_CON_CERO . "-" . $NOMBRE_MES[$MONTH] . "-" . $YEAR;

/* CONSULTA CUMPLIMIENTO INDVIDUAL */
$CUMPLIMIENTO = $mysqli->query("SELECT vista_productividad_general.especialista,SUM(vista_productividad_general.importe) AS importe,vista_union_planes_activos_full.$MES_PLAN_MENSUAL,ROUND((Sum(vista_productividad_general.importe)/vista_union_planes_activos_full.$MES_PLAN_MENSUAL)*100,2) AS porciento,IF (ROUND((Sum(vista_productividad_general.importe)/vista_union_planes_activos_full.$MES_PLAN_MENSUAL)*100,2)> 999,'+999',ROUND((Sum(vista_productividad_general.importe)/vista_union_planes_activos_full.$MES_PLAN_MENSUAL)*100,2)) AS porcientook FROM vista_union_planes_activos_full INNER JOIN vista_productividad_general ON vista_union_planes_activos_full.nombre=vista_productividad_general.especialista WHERE MONTH (fecha_captado)='$MONTH_CON_CERO' AND YEAR (fecha_captado)='$YEAR' AND vista_union_planes_activos_full.anno = '$YEAR' AND importe > 0 GROUP BY vista_productividad_general.especialista,vista_union_planes_activos_full.$MES_PLAN_MENSUAL ORDER BY porciento DESC");

$array_cump = array();

while ($fila = $CUMPLIMIENTO->fetch_assoc()) {
	$array_cump[] = $fila;
}
