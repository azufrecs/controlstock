<?php
error_reporting(0);
@session_start();
if (isset($_SESSION["autentica"]) != "SI") {
    echo "<script>location.href='https://parte.cmw.smcsalud.cu/login.php'; </script>";
    exit();
}

/* CONSULTA PLAN MENSUAL */
$QUERY_PLAN_MENSUAL    = $mysqli->query("SELECT SUM($MES_PLAN_MENSUAL) AS plan_mensual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
while ($rowPlanMensual = $QUERY_PLAN_MENSUAL->fetch_assoc()) {
    $SUMA_PLAN_MENSUAL = $rowPlanMensual['plan_mensual'];
}

/* CONSULTA REAL MENSUAL */
$QUERY_INGRESO_MENSUAL    = $mysqli->query("SELECT SUM(importe) AS importe FROM vista_union_ingresos WHERE MONTH(fecha_captado)='$MONTH_CON_CERO' and YEAR(fecha_captado)='$YEAR'");
if (mysqli_num_rows($QUERY_INGRESO_MENSUAL) > 0) {
    while ($rowIngresoMensual = $QUERY_INGRESO_MENSUAL->fetch_assoc()) {
        $SUMA_INGRESO_MENSUAL = number_format((float)$rowIngresoMensual['importe'], 2, '.', '');
    }
} else {
    $SUMA_INGRESO_MENSUAL = "0.00";
}
//mes---------------------------------------------------------------------

//trimestre---------------------------------------------------------------
/* CONSULTAS PARA GRAFICO DE CUMPLIMIENTO */
$fecha = new DateTime($rowquery_FechaCierre_firma['fecha_cierre']);
$mes = $fecha->format('n'); // Obtiene el mes como un número (1-12)
if ($mes <= 3) {
    $Numtrimestre = 1;
    $primerDiaTrimestre = new DateTime($fecha->format('Y') . '-01-01');
    $PLAN_TRIMESTRE = "plan_ing_1 + plan_ing_2 + plan_ing_3";
    $NAME_TRIMESTRE = "1ER TRIMESTRE";
    $NAME_TRIM = "1ER TRIM";
    $MES_INICIAL = "01";
    $MES_FINAL = "03";
    $TRIMESTRE = 'trimestre_1';
    if ($MONTH == 1) {
        $MESES_TRIMESTRE = " - 1ER MES";
    } elseif ($MONTH == 2) {
        $MESES_TRIMESTRE = " - 2DO MES";
    } else {
        $MESES_TRIMESTRE = " - 3ER MES";
    }
    if (date('L', mktime(0, 0, 0, 1, 1, $YEAR)) == 1) {
        /** EL A;O ES BISIESTO */
        $CANT_DIAS_TRIMESTRE = 91;
        $DIAS_FEBRERO = 29;
    } else {
        $CANT_DIAS_TRIMESTRE = 90;
        $DIAS_FEBRERO = 28;
    }
} elseif ($mes <= 6) {
    $Numtrimestre = 2;
    $primerDiaTrimestre = new DateTime($fecha->format('Y') . '-04-01');
    $PLAN_TRIMESTRE = "plan_ing_4 + plan_ing_5 + plan_ing_6";
    $NAME_TRIMESTRE = "2DO TRIMESTRE";
    $NAME_TRIM = "2DO TRIM";
    $MES_INICIAL = "04";
    $MES_FINAL = "06";
    $TRIMESTRE = 'trimestre_2';
    if ($MONTH == 4) {
        $MESES_TRIMESTRE = " - 1ER MES";
    } elseif ($MONTH == 5) {
        $MESES_TRIMESTRE = " - 2DO MES";
    } else {
        $MESES_TRIMESTRE = " - 3ER MES";
    }
    $CANT_DIAS_TRIMESTRE = 91;
} elseif ($mes <= 9) {
    $Numtrimestre = 3;
    $primerDiaTrimestre = new DateTime($fecha->format('Y') . '-07-01');
    $PLAN_TRIMESTRE = "plan_ing_7 + plan_ing_8 + plan_ing_9";
    $NAME_TRIMESTRE = "3ER TRIMESTRE";
    $NAME_TRIM = "3ER TRIM.";
    $MES_INICIAL = "07";
    $MES_FINAL = "09";
    $TRIMESTRE = 'trimestre_3';
    if ($MONTH == 7) {
        $MESES_TRIMESTRE = " - 1ER MES";
    } elseif ($MONTH == 8) {
        $MESES_TRIMESTRE = " - 2DO MES";
    } else {
        $MESES_TRIMESTRE = " - 3ER MES";
    }
    $CANT_DIAS_TRIMESTRE = 92;
} else {
    $Numtrimestre = 4;
    $primerDiaTrimestre = new DateTime($fecha->format('Y') . '-10-01');
    $PLAN_TRIMESTRE = "plan_ing_10 + plan_ing_11 + plan_ing_12";
    $NAME_TRIMESTRE = "4TO TRIMESTRE";
    $NAME_TRIM = "4TO TRIM.";
    $MES_INICIAL = "10";
    $MES_FINAL = "12";
    $TRIMESTRE = 'trimestre_4';
    if ($MONTH == 10) {
        $MESES_TRIMESTRE = " - 1ER MES";
    } elseif ($MONTH == 11) {
        $MESES_TRIMESTRE = " - 2DO MES";
    } else {
        $MESES_TRIMESTRE = " - 3ER MES";
    }
    $CANT_DIAS_TRIMESTRE = 92;
}

$mesInicioTrimestre = ($Numtrimestre - 1) * 3 + 1; // calcula el mes de inicio del trimestre
$inicioTrimestre = strtotime("$mesInicioTrimestre-01-" . $fecha->format('Y')); // obtiene la fecha Unix del primer día del trimestre
$diaTrimestre = $fecha->format('z'); // obtiene el día del año
$numeroDiaTrimestre = $fecha->diff($primerDiaTrimestre)->days + 1; // resta el día del año del inicio del trimestre al día del año de la fecha

/* CONSULTA PLAN TRIMESTRE */
$QUERY_PLAN_TRIMESTRE    = $mysqli->query("SELECT SUM($TRIMESTRE) AS plan_trimestre FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
while ($rowPlanTrimestre = $QUERY_PLAN_TRIMESTRE->fetch_assoc()) {
    $SUMA_PLAN_TRIMESTRE = $rowPlanTrimestre['plan_trimestre'];
}

/* CONSULTA REAL TRIMESTRAL */
$QUERY_INGRESO_TRIMESTRE = $mysqli->query("SELECT ROUND(SUM(importe),2) AS importe FROM vista_union_ingresos  WHERE YEAR(fecha_captado) = '$YEAR' AND MONTH(fecha_captado) BETWEEN '$MES_INICIAL' AND '$MES_FINAL'");
if (mysqli_num_rows($QUERY_INGRESO_TRIMESTRE) > 0) {
    while ($rowIngresoTrimestre = mysqli_fetch_array($QUERY_INGRESO_TRIMESTRE)) {
        $SUMA_INGRESO_TRIMESTRE = $rowIngresoTrimestre['importe'];
    }
} else {
    $SUMA_INGRESO_TRIMESTRE = "0.00";
}
//trimestre---------------------------------------------------------------

//anual-------------------------------------------------------------------
/** CANTIDAD DE DIAS DEL ANNO */
if (date('L', mktime(0, 0, 0, 1, 1, $YEAR)) == 1) {
    /** es un año bisiesto */
    $CANT_DIAS = 366;
} else {
    /** no es un año bisiesto */
    $CANT_DIAS = 365;
}

/** DETERMINAR EL NUMERO DE DIA DEL ANNO */
$date_parte = new DateTime($rowquery_FechaCierre_firma['fecha_cierre']); // Obtiene la fecha actual
$dayOfYear = $date_parte->format('z') + 1; // Suma 1 porque el formato 'z' comienza desde 0

/* Obteniendo valores de los planes anuales para calcular los ingresos diarios */
switch ($MONTH) {
    case '1':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM( plan_ing_1 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '2':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM( plan_ing_1 + plan_ing_2 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '3':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '4':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 + plan_ing_4 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '5':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 + plan_ing_4 + plan_ing_5 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '6':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 + plan_ing_4 + plan_ing_5 + plan_ing_6 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '7':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 + plan_ing_4 + plan_ing_5 + plan_ing_6 + plan_ing_7 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '8':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 + plan_ing_4 + plan_ing_5 + plan_ing_6 + plan_ing_7 + plan_ing_8 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '9':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 + plan_ing_4 + plan_ing_5 + plan_ing_6 + plan_ing_7 + plan_ing_8 + plan_ing_9 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '10':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 + plan_ing_4 + plan_ing_5 + plan_ing_6 + plan_ing_7 + plan_ing_8 + plan_ing_9 + plan_ing_10 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '11':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 + plan_ing_4 + plan_ing_5 + plan_ing_6 + plan_ing_7 + plan_ing_8 + plan_ing_9 + plan_ing_10 + plan_ing_11 ) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
    case '12':
        $QUERY_PLAN_ANUAL_MES_ACTUAL = $mysqli->query("SELECT SUM(plan_ing_1 + plan_ing_2 + plan_ing_3 + plan_ing_4 + plan_ing_5 + plan_ing_6 + plan_ing_7 + plan_ing_8 + plan_ing_9 + plan_ing_10 + plan_ing_11 + plan_ing_12) AS plan_annual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
        break;
}

/* CONSULTA PLAN ANUAL */
$QUERY_PLAN_ANUAL    = $mysqli->query("SELECT SUM(plan_anual) AS plan_anual FROM vista_planes_anuales_acumulados WHERE anno = '$YEAR'");
while ($rowPlanAnual = $QUERY_PLAN_ANUAL->fetch_assoc()) {
    $SUMA_PLAN_ANUAL = $rowPlanAnual['plan_anual'];
}

/* CONSULTA REAL ANUAL */
$QUERY_INGRESO_ANUAL = $mysqli->query("SELECT ROUND(SUM(importe),2) AS importe FROM vista_union_ingresos WHERE YEAR(fecha_captado) = $YEAR");
if (mysqli_num_rows($QUERY_INGRESO_ANUAL) > 0) {
    while ($rowIngresoAnual = mysqli_fetch_array($QUERY_INGRESO_ANUAL)) {
        $SUMA_INGRESO_ANUAL = $rowIngresoAnual['importe'];
    }
} else {
    $SUMA_INGRESO_ANUAL = "0.00";
}
//anual-------------------------------------------------------------------

/** OBTIENE LA HORA ACTUAL EN FORMATO 24 HORAS */
$HORA_MILITAR = date('H');

/** CONFIGURANDO EL SALUDO DEL MENSAJE */
if ($HORA_MILITAR >= 6 && $HORA_MILITAR < 12) {
    $SALUDO = 'Buenos días ';
} elseif ($HORA_MILITAR >= 12 && $HORA_MILITAR < 20) {
    $SALUDO = 'Buenas tardes ';
} else {
    $SALUDO = 'Buenas noches ';
}

$MesFechaCierre         = date('m', strtotime($rowquery_FechaCierre_firma['fecha_cierre']));
$AnnoFechaCierre        = date('Y', strtotime($rowquery_FechaCierre_firma['fecha_cierre']));

/** OBTENIENDO FECHA DE CIERRE Y FECHA DE PARTE CERRADO */
$query_FechaCierre_firma             = $mysqli->query("SELECT * FROM tbl_global_cierre_acumulado ORDER BY fecha_cierre DESC LIMIT 1");
$rowquery_FechaCierre_firma          = mysqli_fetch_assoc($query_FechaCierre_firma);

$FECHA_DEL_PARTE = date('d/m/Y', strtotime($rowquery_FechaCierre_firma['fecha_cierre']));
$FECHA_DEL_CIERRE = date('d/m/Y', $rowquery_FechaCierre_firma['fecha_completa']) . " a las " . date('h:i:s A', $rowquery_FechaCierre_firma['fecha_completa']);

?>