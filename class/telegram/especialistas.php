<?php
error_reporting(0);
@session_start();
if (isset($_SESSION["autentica"]) != "SI") {
    echo "<script>location.href='https://parte.cmw.smcsalud.cu/login.php'; </script>";
    exit();
}

/* FECHA ACTUAL EN PARTE */
$queryFechaParte         = $mysqli->query("SELECT fecha_proceso FROM tbl_global_fecha_proceso LIMIT 1");
while ($rowFechaParte = $queryFechaParte->fetch_assoc()) {
    $FechaParte = $rowFechaParte['fecha_proceso'];
}

//mes---------------------------------------------------------------------
/* CONSULTAS PARA GRAFICO DE CUMPLIMIENTO */
$MONTH = date('n', strtotime($FechaParte)); // month sin cero
$NOMBRE_MES_LARGO = array("-", "ENERO", "FEBRERO", "MARZO", "ABRIL", "MAYO", "JUNIO", "JULIO", "AGOSTO", "SEPTIEMBRE", "OCTUBRE", "NOVIEMBRE", "DICIEMBRE");
$NOMBRE_MES_CORTO = array("-", "ENE", "FEB", "MAR", "ABR", "MAY", "JUN", "JUL", "AGO", "SEP", "OCT", "NOV", "DIC");
$MES_PLAN_MENSUAL = "plan_ing_" . $MONTH;
$MONTH_CON_CERO = date('m', strtotime($FechaParte));
$MONTH_SIN_CERO = date('n', strtotime($FechaParte));
$DAY_CON_CERO = date('d', strtotime($FechaParte));
$DAY_SIN_CERO = date('j', strtotime($FechaParte));
$YEAR = date('Y', strtotime($FechaParte));
$CANT_DIAS_MES = cal_days_in_month(CAL_GREGORIAN, $MONTH_SIN_CERO, $YEAR);

include("planes_ingresos.php");

$urlMsg = "https://api.telegram.org/bot{$config['token_bot']}/sendMessage";

$queryEspacialistasActivos = $mysqli->query("SELECT vista_productividad_general.especialista,tbl_global_especialistas.titulo,tbl_global_especialistas.first_name,tbl_global_especialistas.telegram_id,SUM(vista_productividad_general.importe) AS importe,vista_union_planes_activos_full.$MES_PLAN_MENSUAL,ROUND((SUM(vista_productividad_general.importe)/vista_union_planes_activos_full.$MES_PLAN_MENSUAL)*100,2) AS porciento,IF (ROUND((SUM(vista_productividad_general.importe)/vista_union_planes_activos_full.$MES_PLAN_MENSUAL)*100,2)> 999,'+999',ROUND((SUM(vista_productividad_general.importe)/vista_union_planes_activos_full.$MES_PLAN_MENSUAL)*100,2)) AS porcientook FROM vista_union_planes_activos_full INNER JOIN vista_productividad_general ON vista_union_planes_activos_full.nombre=vista_productividad_general.especialista INNER JOIN tbl_global_especialistas ON vista_productividad_general.especialista=tbl_global_especialistas.nombre WHERE MONTH (fecha_captado)='$MONTH_CON_CERO' AND YEAR (fecha_captado)='$YEAR' AND vista_union_planes_activos_full.anno='$YEAR' AND vista_productividad_general.importe> 0 AND tbl_global_especialistas.telegram_id !='-' AND tbl_global_especialistas.estado=1 GROUP BY vista_productividad_general.especialista,vista_union_planes_activos_full.$MES_PLAN_MENSUAL");
if ($queryEspacialistasActivos->num_rows > 0) {
    while ($rowEspacialistasActivos = mysqli_fetch_assoc($queryEspacialistasActivos)) {
        $CONTADOR_FACTURAS_INGRESADAS = 0;
        $IMPORTE_FACTURAS_INGRESADAS = 0;
        $NOMBRE_ESPECIALISTA = $rowEspacialistasActivos['especialista'];

        /* CONSULTA CUMPLIMIENTO INDVIDUAL */
        $cantidadDias = cal_days_in_month(CAL_GREGORIAN, $MONTH_CON_CERO, $YEAR);
        $PLAN_DIARIO_ESPECIALISTA = number_format(($rowEspacialistasActivos[$MES_PLAN_MENSUAL] / $cantidadDias) * $DAY_SIN_CERO, 2, '.', '');

        // PLAN DIARIO ES MENOR A LOS INGRESOS
        if ($PLAN_DIARIO_ESPECIALISTA > number_format($rowEspacialistasActivos['importe'], 2, '.', '')) {
            $COMPARACION_ESPECIALISTA = "Déficit de $" . number_format($PLAN_DIARIO_ESPECIALISTA - $rowEspacialistasActivos['importe'], 2);
            $COLOR_ICONO = "🔴";
        } elseif ($PLAN_DIARIO_ESPECIALISTA == number_format($rowEspacialistasActivos['importe'], 2, '.', '')) {
            // PLAN DIARIO ES IGUAL A LOS INGRESOS
            $COMPARACION_ESPECIALISTA = "Cumplimiento al día";
            $COLOR_ICONO = "🔵";
        } else {
            // PLAN DIARIO ES MENOR A LOS INGRESOS		
            $COMPARACION_ESPECIALISTA = "Reserva de $" . number_format($rowEspacialistasActivos['importe'] - $PLAN_DIARIO_ESPECIALISTA, 2);
            $COLOR_ICONO = "🟢";
        }

        /** ENVIANDO STICKER PRIMERO SI EL PPLAN SE CUMPLE O SOBRECUMPLE */
        $CUMPLIMIENTO_PLAN_MES = number_format((float)($rowEspacialistasActivos['importe'] / $rowEspacialistasActivos[$MES_PLAN_MENSUAL]) * 100);

        if ($CUMPLIMIENTO_PLAN_MES >= 100) {
            $STICKER = $STICKERS[array_rand($STICKERS)];
            // Enviar sticker
            $urlMsgSticker = "https://api.telegram.org/bot{$config['token_bot']}/sendSticker";
            $paramsSticker = [
                'chat_id' => $rowEspacialistasActivos['telegram_id'],
                'sticker' => $STICKER,
            ];

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $urlMsgSticker);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($paramsSticker));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
            curl_setopt($ch, CURLOPT_ENCODING, 'UTF-8');
            curl_setopt($ch, CURLOPT_VERBOSE, true);
            $server_output = curl_exec($ch);
            curl_close($ch);

            /* MENSAJE BASE */
            $fechaAhora = date('Y-m-d H:i:s');
            $msgBase = "<b>" . $SALUDO . ucfirst(strtolower($rowEspacialistasActivos['titulo'])) . " " . ucfirst(strtolower($rowEspacialistasActivos['first_name'])) ."!</b>\nTe enviamos un resumen del Parte Diario correspondiente al día " . $FECHA_DEL_PARTE . ".\nAdemás, te proporcionamos los detalles de tu facturación acumulada en el mes de " . ucfirst(strtolower($NOMBRE_MES_LARGO[$MONTH])) . " con fecha de cierre el " . $FECHA_DEL_CIERRE . "\n
<b>CUMPLIMIENTO SUCURSAL</b>    
    <b>CUMP. " . strtoupper($NOMBRE_MES_LARGO[$MONTH]) . "</b>
        <i>Plan: $" . number_format((float)$SUMA_PLAN_MENSUAL, 2) . "</i>
        <i>Real: $" . number_format((float)$SUMA_INGRESO_MENSUAL, 2) . "</i>
        <i>Cump: " . number_format((float)($SUMA_INGRESO_MENSUAL / $SUMA_PLAN_MENSUAL) * 100, 0) . "%</i>\n  
    <b>CUMP. " . $NAME_TRIM . strtoupper(ltrim($MESES_TRIMESTRE)) . "</b>
        <i>Plan: $" . number_format((float)$SUMA_PLAN_TRIMESTRE, 2) . "</i>
        <i>Real: $" . number_format((float)$SUMA_INGRESO_TRIMESTRE, 2) . "</i>
        <i>Cump: " . number_format((float)($SUMA_INGRESO_TRIMESTRE / $SUMA_PLAN_TRIMESTRE) * 100, 0) . "%</i>\n
    <b>CUMP. ANUAL</b>
        <i>Plan: $" . number_format((float)$SUMA_PLAN_ANUAL, 2) . "</i>
        <i>Real: $" . number_format((float)$SUMA_INGRESO_ANUAL, 2) . "</i>
        <i>Cump: " . number_format((float)($SUMA_INGRESO_ANUAL / $SUMA_PLAN_ANUAL) * 100, 0) . "%</i>
----\n\n";
            $msgBase .= "<b>CUMPLIMIENTO INDIVIDUAL </b>" . $COLOR_ICONO ."
    <i>Plan: $" . number_format($rowEspacialistasActivos[$MES_PLAN_MENSUAL], 2) . "</i> 
    <i>Real: $" . number_format($rowEspacialistasActivos['importe'], 2) . "</i>
    <i>Cump: " . number_format($rowEspacialistasActivos['porcientook'], 2) . "%</i>
----\n\n";
            /* LLENANDO LA SECCION DE FACTURAS O VENTAS DETALLADAS */
            $queryCumplimientoDetalle = $mysqli->query("SELECT vista_productividad_general.especialista, CASE WHEN LEFT(vista_productividad_general.factura, 3) = 'SMC' THEN 'VENTA' ELSE factura END AS factura,vista_productividad_general.importe, vista_union_planes_activos_full.$MES_PLAN_MENSUAL, vista_productividad_general.fecha_captado FROM vista_union_planes_activos_full INNER JOIN vista_productividad_general ON vista_union_planes_activos_full.nombre=vista_productividad_general.especialista WHERE vista_productividad_general.factura <> '0' AND MONTH (fecha_captado)='$MONTH_CON_CERO' AND YEAR (fecha_captado)='$YEAR' AND vista_union_planes_activos_full.anno = '$YEAR' AND especialista = '$NOMBRE_ESPECIALISTA' AND importe > 0 ORDER BY fecha_captado, factura");
            $queryTipoIngreso = $mysqli->query("SELECT CASE WHEN LEFT (vista_productividad_general.factura,3)='SMC' THEN 'VENTAS' ELSE 'FACTURACION' END AS factura FROM vista_productividad_general WHERE vista_productividad_general.factura<> '0' AND MONTH (fecha_captado)='$MONTH_CON_CERO' AND YEAR (fecha_captado)='$YEAR' AND especialista='$NOMBRE_ESPECIALISTA' AND importe> 0 LIMIT 1");
            $rowTipoIngreso = mysqli_fetch_assoc($queryTipoIngreso);
            $TIPO_INGRESO = $rowTipoIngreso['factura'];
            /* LLENANDO EL ENCABEZADO */
            $msgBase .= "<b>DETALLES DE " . $TIPO_INGRESO. " - " . $NOMBRE_MES_CORTO[$MONTH * 1]. "</b>
<b><i>FACTURA | FECHA | IMPORTE</i></b>\n";

            while ($rowCumplimientoDetalle = mysqli_fetch_array($queryCumplimientoDetalle)) {
                $msgBase .= "<i>".$rowCumplimientoDetalle['factura'] . " | " . date("d/m/Y", strtotime($rowCumplimientoDetalle['fecha_captado'])) . " | $" . number_format($rowCumplimientoDetalle['importe'],2) . "</i>".($rowCumplimientoDetalle === end($queryCumplimientoDetalle) ? '' : "\n");
                $CONTADOR_FACTURAS_INGRESADAS++;
                $IMPORTE_FACTURAS_INGRESADAS = $IMPORTE_FACTURAS_INGRESADAS + $rowCumplimientoDetalle['importe'];
                $TIPO_FACTURA = $rowCumplimientoDetalle['factura'];
            }
            if($CONTADOR_FACTURAS_INGRESADAS>1){
                $PIE_INGRESOS = $CONTADOR_FACTURAS_INGRESADAS . " OPERACIONES   ----   $" . number_format($IMPORTE_FACTURAS_INGRESADAS,2);
            } else {
                $PIE_INGRESOS = "1 OPERACION   ----   $" . number_format($IMPORTE_FACTURAS_INGRESADAS,2);
            }  

            $msgBase .= "<b>". $PIE_INGRESOS. "</b>
----\n\n";
            /* LLENANDO LA SECCION DE BLOCK DE FACTURAS ACTIVOS */
            $queryContarFacturasEntregadas = $mysqli->query("SELECT COUNT(factura_ini) as cant FROM tbl_facturas_entregadas WHERE especialista = '$NOMBRE_ESPECIALISTA' AND estado = '1'");
            $rowContarFacturasEntregadas = mysqli_fetch_array($queryContarFacturasEntregadas);
            if ($rowContarFacturasEntregadas['cant'] > 0) {
                $msgBase .= "<b>" . $rowContarFacturasEntregadas['cant'] . " BLOCK DE FACTURA(S) ACTIVO(S)</b>";
                $FACTURAS_CANCELADAS_TOTAL = 0;
                $queryFacturasEntregadas = $mysqli->query("SELECT * FROM tbl_facturas_entregadas WHERE especialista = '$NOMBRE_ESPECIALISTA' AND estado = '1'");
                while ($rowFacturasEntregadas = mysqli_fetch_array($queryFacturasEntregadas)) {
                    $FACTURA_INI = $rowFacturasEntregadas['factura_ini'];
                    $FACTURA_FIN = $rowFacturasEntregadas['factura_fin'];
                    // PROCEDIMIENTO PARA DETERMINAR CANTIDAD DE FACTURAS FALTANTES
                    $CANTIDAD_ENTREGADA = (intval($FACTURA_FIN) - intval($FACTURA_INI)) + 1;

                    /* PROCEDIMIENTO PARA CONTAR FACTURAS CANCELADAS */
                    $queryFacturasCanceladas = $mysqli->query("SELECT COUNT(tbl_facturas_canceladas.factura) AS cantidad,tbl_facturas_canceladas.factura,tbl_facturas_canceladas.motivo,tbl_facturas_canceladas.fecha FROM tbl_facturas_canceladas INNER JOIN tbl_facturas_entregadas ON tbl_facturas_canceladas.factura BETWEEN tbl_facturas_entregadas.factura_ini AND tbl_facturas_entregadas.factura_fin WHERE tbl_facturas_canceladas.especialista='$NOMBRE_ESPECIALISTA' AND tbl_facturas_entregadas.factura_ini='$FACTURA_INI' AND tbl_facturas_entregadas.factura_fin='$FACTURA_FIN'");
                    $totalRows_queryFacturasCanceladas = mysqli_num_rows($queryFacturasCanceladas);

                    if ($totalRows_queryFacturasCanceladas == 0) {
                        $FACTURAS_CANCELADAS = 0;
                    } else {
                        while ($rowCancel = mysqli_fetch_assoc($queryFacturasCanceladas)) {
                            $FACTURAS_CANCELADAS = $rowCancel['cantidad'];
                        }
                    }

                    /* PROCEDIMIENTO PARA CONTAR FACTURAS DISPONIBLES */
                    $queryFacturasUtilizadas = $mysqli->query("SELECT COUNT(factura) as cantidad FROM vista_facturas_economia WHERE factura BETWEEN '$FACTURA_INI' AND '$FACTURA_FIN' AND YEAR(fecha_captado)>='2022'");
                    $totalRows_queryFacturasUtilizadas = mysqli_num_rows($queryFacturasUtilizadas);

                    if ($totalRows_queryFacturasUtilizadas == 0) {
                        $FACTURAS_USADAS = 0;
                        $FACTURAS_DISPONIBLES = $CANTIDAD_ENTREGADA;
                    } else {
                        while ($rowUsed = mysqli_fetch_assoc($queryFacturasUtilizadas)) {
                            $FACTURAS_USADAS = $rowUsed['cantidad'];
                            $FACTURAS_DISPONIBLES = $CANTIDAD_ENTREGADA - ($rowUsed['cantidad'] + $FACTURAS_CANCELADAS);
                        }
                    }

                    $FACTURAS_CANCELADAS_TOTAL = $FACTURAS_CANCELADAS_TOTAL + $FACTURAS_CANCELADAS;

                    $msgBase .= "
    <b>RANGO: <i>" . $rowFacturasEntregadas['factura_ini'] . " -- " . $rowFacturasEntregadas['factura_fin']. "</i></b>
        <i>Cantidad: " . $CANTIDAD_ENTREGADA . "</i>
        <i>Usadas: " . $FACTURAS_USADAS . "</i>
        <i>Disponibles: " . $FACTURAS_DISPONIBLES . "</i>
        <i>Canceladas: " . $FACTURAS_CANCELADAS . "</i>
        <i>Fecha Entrega: " . date("d/m/Y", strtotime($rowFacturasEntregadas['fecha_entrega'])) . "</i>" . ($rowFacturasEntregadas === end($queryFacturasEntregadas) ? '' : "\n");
                }
            if ($FACTURAS_CANCELADAS_TOTAL > 0) {
                    $msgBase .= "----
    \n<b>". $FACTURAS_CANCELADAS_TOTAL . " FACTURA(S) CANCELADA(S)</b>";
                /* PROCEDIMIENTO PARA MOSTRAR LAS FACTURAS CANCELADAS DEL MES */
                $queryFacturasCanceladas = $mysqli->query("SELECT tbl_facturas_canceladas.factura,tbl_facturas_canceladas.motivo,tbl_facturas_canceladas.fecha FROM tbl_facturas_canceladas INNER JOIN tbl_facturas_entregadas ON tbl_facturas_canceladas.factura BETWEEN tbl_facturas_entregadas.factura_ini AND tbl_facturas_entregadas.factura_fin WHERE tbl_facturas_canceladas.especialista='$NOMBRE_ESPECIALISTA' AND tbl_facturas_entregadas.especialista='$NOMBRE_ESPECIALISTA' AND tbl_facturas_entregadas.estado='1'");
                while ($rowFacturasCanceladas = mysqli_fetch_array($queryFacturasCanceladas)) {
                    $msgBase .= "
    <b>Factura: <i>" . $rowFacturasCanceladas['factura']. "</i></b>
        <i>Motivo: " . $rowFacturasCanceladas['motivo'] . "</i>
        <i>Fecha: " . date("d/m/Y", strtotime($rowFacturasCanceladas['fecha'])) . "</i>". ($rowFacturasCanceladas === end($queryFacturasCanceladas) ? '' : "\n");
                    }
                }
                $msgBase .= "----\n\n\nSucursal SMC ". $config['provincia']. "\nDepartamento Comercial\nTeléfono: " . $config['telefono_comercial'] . "\nCorreo: " . $config['correo_comercial'] . "\n";
            } else {
                $msgBase .= "\nSucursal SMC " . $config['provincia'] . "\nDepartamento Comercial\nTeléfono: " . $config['telefono_comercial'] . "\nCorreo: " . $config['correo_comercial'] . "\n";
            }

            $keyboard = [
                'inline_keyboard' => [
                    [
                        ['text' => 'Facebook', 'url' => 'https://www.facebook.com/SMCCamaguey'],
                        ['text' => 'Twitter', 'url' => 'https://twitter.com/SMCCamaguey']
                    ]
                ]
            ];
            $reply_markup = json_encode($keyboard);

            $params = [
                'chat_id' => $rowEspacialistasActivos['telegram_id'],
                'parse_mode' => 'HTML',
                'text' => $msgBase,
                'reply_markup' => $reply_markup
            ];

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $urlMsg);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
            curl_setopt($ch, CURLOPT_ENCODING, 'UTF-8');
            curl_setopt($ch, CURLOPT_VERBOSE, true);

            $server_output = curl_exec($ch);
            curl_close($ch);
        } else {
            /* MENSAJE BASE SIN STICKER */
            $fechaAhora = date('Y-m-d H:i:s');
            $msgBase = "<b>" . $SALUDO . ucfirst(strtolower($rowEspacialistasActivos['titulo'])) . " " . ucfirst(strtolower($rowEspacialistasActivos['first_name'])) . "!</b>\nTe enviamos un resumen del Parte Diario correspondiente al día " . $FECHA_DEL_PARTE . ".\nAdemás, te proporcionamos los detalles de tu facturación acumulada en el mes de " . ucfirst(strtolower($NOMBRE_MES_LARGO[$MONTH])) . " con fecha de cierre el " . $FECHA_DEL_CIERRE . "\n
<b>CUMPLIMIENTO SUCURSAL</b>    
    <b>CUMP. " . strtoupper($NOMBRE_MES_LARGO[$MONTH]) . "</b>
        <i>Plan: $" . number_format((float)$SUMA_PLAN_MENSUAL, 2) . "</i>
        <i>Real: $" . number_format((float)$SUMA_INGRESO_MENSUAL, 2) . "</i>
        <i>Cump: " . number_format((float)($SUMA_INGRESO_MENSUAL / $SUMA_PLAN_MENSUAL) * 100, 0) . "%</i>\n  
    <b>CUMP. " . $NAME_TRIM . strtoupper(ltrim($MESES_TRIMESTRE)) . "</b>
        <i>Plan: $" . number_format((float)$SUMA_PLAN_TRIMESTRE, 2) . "</i>
        <i>Real: $" . number_format((float)$SUMA_INGRESO_TRIMESTRE, 2) . "</i>
        <i>Cump: " . number_format((float)($SUMA_INGRESO_TRIMESTRE / $SUMA_PLAN_TRIMESTRE) * 100, 0) . "%</i>\n
    <b>CUMP. ANUAL</b>
        <i>Plan: $" . number_format((float)$SUMA_PLAN_ANUAL, 2) . "</i>
        <i>Real: $" . number_format((float)$SUMA_INGRESO_ANUAL, 2) . "</i>
        <i>Cump: " . number_format((float)($SUMA_INGRESO_ANUAL / $SUMA_PLAN_ANUAL) * 100, 0) . "%</i>
----\n\n";
            $msgBase .= "<b>CUMPLIMIENTO INDIVIDUAL </b>" . $COLOR_ICONO . "
    <i>Plan: $" . number_format($rowEspacialistasActivos[$MES_PLAN_MENSUAL], 2) . "</i> 
    <i>Real: $" . number_format($rowEspacialistasActivos['importe'], 2) . "</i>
    <i>Cump: " . number_format($rowEspacialistasActivos['porcientook'], 2) . "%</i>
----\n\n";
            /* LLENANDO LA SECCION DE FACTURAS O VENTAS DETALLADAS */
            $queryCumplimientoDetalle = $mysqli->query("SELECT vista_productividad_general.especialista, CASE WHEN LEFT(vista_productividad_general.factura, 3) = 'SMC' THEN 'VENTA' ELSE factura END AS factura,vista_productividad_general.importe, vista_union_planes_activos_full.$MES_PLAN_MENSUAL, vista_productividad_general.fecha_captado FROM vista_union_planes_activos_full INNER JOIN vista_productividad_general ON vista_union_planes_activos_full.nombre=vista_productividad_general.especialista WHERE vista_productividad_general.factura <> '0' AND MONTH (fecha_captado)='$MONTH_CON_CERO' AND YEAR (fecha_captado)='$YEAR' AND vista_union_planes_activos_full.anno = '$YEAR' AND especialista = '$NOMBRE_ESPECIALISTA' AND importe > 0 ORDER BY fecha_captado, factura");
            $queryTipoIngreso = $mysqli->query("SELECT CASE WHEN LEFT (vista_productividad_general.factura,3)='SMC' THEN 'VENTAS' ELSE 'FACTURACION' END AS factura FROM vista_productividad_general WHERE vista_productividad_general.factura<> '0' AND MONTH (fecha_captado)='$MONTH_CON_CERO' AND YEAR (fecha_captado)='$YEAR' AND especialista='$NOMBRE_ESPECIALISTA' AND importe> 0 LIMIT 1");
            $rowTipoIngreso = mysqli_fetch_assoc($queryTipoIngreso);
            $TIPO_INGRESO = $rowTipoIngreso['factura'];
            /* LLENANDO EL ENCABEZADO */
            $msgBase .= "<b>DETALLES DE " . $TIPO_INGRESO . " - " . $NOMBRE_MES_CORTO[$MONTH * 1] . "</b>
<b><i>FACTURA | FECHA | IMPORTE</i></b>\n";

            while ($rowCumplimientoDetalle = mysqli_fetch_array($queryCumplimientoDetalle)) {
                $msgBase .= "<i>" . $rowCumplimientoDetalle['factura'] . " | " . date("d/m/Y", strtotime($rowCumplimientoDetalle['fecha_captado'])) . " | $" . number_format($rowCumplimientoDetalle['importe'], 2) . "</i>" . ($rowCumplimientoDetalle === end($queryCumplimientoDetalle) ? '' : "\n");
                $CONTADOR_FACTURAS_INGRESADAS++;
                $IMPORTE_FACTURAS_INGRESADAS = $IMPORTE_FACTURAS_INGRESADAS + $rowCumplimientoDetalle['importe'];
                $TIPO_FACTURA = $rowCumplimientoDetalle['factura'];
            }
            if ($CONTADOR_FACTURAS_INGRESADAS > 1) {
                $PIE_INGRESOS = $CONTADOR_FACTURAS_INGRESADAS . " OPERACIONES   ----   $" . number_format($IMPORTE_FACTURAS_INGRESADAS, 2);
            } else {
                $PIE_INGRESOS = "1 OPERACION   ----   $" . number_format($IMPORTE_FACTURAS_INGRESADAS, 2);
            }

            $msgBase .= "<b>" . $PIE_INGRESOS . "</b>
----\n\n";
            /* LLENANDO LA SECCION DE BLOCK DE FACTURAS ACTIVOS */
            $queryContarFacturasEntregadas = $mysqli->query("SELECT COUNT(factura_ini) as cant FROM tbl_facturas_entregadas WHERE especialista = '$NOMBRE_ESPECIALISTA' AND estado = '1'");
            $rowContarFacturasEntregadas = mysqli_fetch_array($queryContarFacturasEntregadas);
            if ($rowContarFacturasEntregadas['cant'] > 0) {
                $msgBase .= "<b>" . $rowContarFacturasEntregadas['cant'] . " BLOCK DE FACTURA(S) ACTIVO(S)</b>";
                $FACTURAS_CANCELADAS_TOTAL = 0;
                $queryFacturasEntregadas = $mysqli->query("SELECT * FROM tbl_facturas_entregadas WHERE especialista = '$NOMBRE_ESPECIALISTA' AND estado = '1'");
                while ($rowFacturasEntregadas = mysqli_fetch_array($queryFacturasEntregadas)) {
                    $FACTURA_INI = $rowFacturasEntregadas['factura_ini'];
                    $FACTURA_FIN = $rowFacturasEntregadas['factura_fin'];
                    // PROCEDIMIENTO PARA DETERMINAR CANTIDAD DE FACTURAS FALTANTES
                    $CANTIDAD_ENTREGADA = (intval($FACTURA_FIN) - intval($FACTURA_INI)) + 1;

                    /* PROCEDIMIENTO PARA CONTAR FACTURAS CANCELADAS */
                    $queryFacturasCanceladas = $mysqli->query("SELECT COUNT(tbl_facturas_canceladas.factura) AS cantidad,tbl_facturas_canceladas.factura,tbl_facturas_canceladas.motivo,tbl_facturas_canceladas.fecha FROM tbl_facturas_canceladas INNER JOIN tbl_facturas_entregadas ON tbl_facturas_canceladas.factura BETWEEN tbl_facturas_entregadas.factura_ini AND tbl_facturas_entregadas.factura_fin WHERE tbl_facturas_canceladas.especialista='$NOMBRE_ESPECIALISTA' AND tbl_facturas_entregadas.factura_ini='$FACTURA_INI' AND tbl_facturas_entregadas.factura_fin='$FACTURA_FIN'");
                    $totalRows_queryFacturasCanceladas = mysqli_num_rows($queryFacturasCanceladas);

                    if ($totalRows_queryFacturasCanceladas == 0) {
                        $FACTURAS_CANCELADAS = 0;
                    } else {
                        while ($rowCancel = mysqli_fetch_assoc($queryFacturasCanceladas)) {
                            $FACTURAS_CANCELADAS = $rowCancel['cantidad'];
                        }
                    }

                    /* PROCEDIMIENTO PARA CONTAR FACTURAS DISPONIBLES */
                    $queryFacturasUtilizadas = $mysqli->query("SELECT COUNT(factura) as cantidad FROM vista_facturas_economia WHERE factura BETWEEN '$FACTURA_INI' AND '$FACTURA_FIN' AND YEAR(fecha_captado)>='2022'");
                    $totalRows_queryFacturasUtilizadas = mysqli_num_rows($queryFacturasUtilizadas);

                    if ($totalRows_queryFacturasUtilizadas == 0) {
                        $FACTURAS_USADAS = 0;
                        $FACTURAS_DISPONIBLES = $CANTIDAD_ENTREGADA;
                    } else {
                        while ($rowUsed = mysqli_fetch_assoc($queryFacturasUtilizadas)) {
                            $FACTURAS_USADAS = $rowUsed['cantidad'];
                            $FACTURAS_DISPONIBLES = $CANTIDAD_ENTREGADA - ($rowUsed['cantidad'] + $FACTURAS_CANCELADAS);
                        }
                    }

                    $FACTURAS_CANCELADAS_TOTAL = $FACTURAS_CANCELADAS_TOTAL + $FACTURAS_CANCELADAS;

                    $msgBase .= "
<b>RANGO: <i>" . $rowFacturasEntregadas['factura_ini'] . " -- " . $rowFacturasEntregadas['factura_fin'] . "</i></b>
    <i>Cantidad: " . $CANTIDAD_ENTREGADA . "</i>
    <i>Usadas: " . $FACTURAS_USADAS . "</i>
    <i>Disponibles: " . $FACTURAS_DISPONIBLES . "</i>
    <i>Canceladas: " . $FACTURAS_CANCELADAS . "</i>
    <i>Fecha Entrega: " . date("d/m/Y", strtotime($rowFacturasEntregadas['fecha_entrega'])) . "</i>" . ($rowFacturasEntregadas === end($queryFacturasEntregadas) ? '' : "\n");
                }


                if ($FACTURAS_CANCELADAS_TOTAL > 0) {
                    $msgBase .= "----
\n<b>" . $FACTURAS_CANCELADAS_TOTAL . " FACTURA(S) CANCELADA(S)</b>";
                    /* PROCEDIMIENTO PARA MOSTRAR LAS FACTURAS CANCELADAS DEL MES */
                    $queryFacturasCanceladas = $mysqli->query("SELECT tbl_facturas_canceladas.factura,tbl_facturas_canceladas.motivo,tbl_facturas_canceladas.fecha FROM tbl_facturas_canceladas INNER JOIN tbl_facturas_entregadas ON tbl_facturas_canceladas.factura BETWEEN tbl_facturas_entregadas.factura_ini AND tbl_facturas_entregadas.factura_fin WHERE tbl_facturas_canceladas.especialista='$NOMBRE_ESPECIALISTA' AND tbl_facturas_entregadas.especialista='$NOMBRE_ESPECIALISTA' AND tbl_facturas_entregadas.estado='1'");
                    while ($rowFacturasCanceladas = mysqli_fetch_array($queryFacturasCanceladas)) {
                        $msgBase .= "
<b>Factura: <i>" . $rowFacturasCanceladas['factura'] . "</i></b>
    <i>Motivo: " . $rowFacturasCanceladas['motivo'] . "</i>
    <i>Fecha: " . date("d/m/Y", strtotime($rowFacturasCanceladas['fecha'])) . "</i>" . ($rowFacturasCanceladas === end($queryFacturasCanceladas) ? '' : "\n");
                    }
                }
                $msgBase .= "----\n\n\nSucursal SMC " . $config['provincia'] . "\nDepartamento Comercial\nTeléfono: " . $config['telefono_comercial'] . "\nCorreo: " . $config['correo_comercial'] . "\n";
            } else {
                $msgBase .= "\nSucursal SMC " . $config['provincia'] . "\nDepartamento Comercial\nTeléfono: " . $config['telefono_comercial'] . "\nCorreo: " . $config['correo_comercial'] . "\n";
            }

            $keyboard = [
                'inline_keyboard' => [
                    [
                        ['text' => 'Facebook', 'url' => 'https://www.facebook.com/SMCCamaguey'],
                        ['text' => 'Twitter', 'url' => 'https://twitter.com/SMCCamaguey']
                    ]
                ]
            ];
            $reply_markup = json_encode($keyboard);

            $params = [
                'chat_id' => $rowEspacialistasActivos['telegram_id'],
                'parse_mode' => 'HTML',
                'text' => $msgBase,
                'reply_markup' => $reply_markup
            ];

            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $urlMsg);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params));
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
            curl_setopt($ch, CURLOPT_ENCODING, 'UTF-8');
            curl_setopt($ch, CURLOPT_VERBOSE, true);

            $server_output = curl_exec($ch);
            curl_close($ch);
        }
    }
}

