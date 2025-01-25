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
$MES_PLAN_MENSUAL = "plan_ing_" . $MONTH;
$MONTH_CON_CERO = date('m', strtotime($FechaParte));
$MONTH_SIN_CERO = date('n', strtotime($FechaParte));
$DAY_CON_CERO = date('d', strtotime($FechaParte));
$DAY_SIN_CERO = date('j', strtotime($FechaParte));
$YEAR = date('Y', strtotime($FechaParte));
$CANT_DIAS_MES = cal_days_in_month(CAL_GREGORIAN, $MONTH_SIN_CERO, $YEAR);

include("planes_ingresos.php");

/** CONTANDO ADMINISTRATIVOS CON TELEGRAM */
$queryContarAdministrativos = $mysqli->query("SELECT COUNT(telegram_id) AS contador FROM tbl_global_administrativos WHERE telegram_id != '-'");
$rowContarAdministrativos = mysqli_fetch_assoc($queryContarAdministrativos);
$CONTAR_ADMINISTRATIVOS = $rowContarAdministrativos['contador'];

if ($CONTAR_ADMINISTRATIVOS > 0) {
    $MesFechaCierre         = date('m', strtotime($rowquery_FechaCierre_firma['fecha_cierre']));
    $AnnoFechaCierre         = date('Y', strtotime($rowquery_FechaCierre_firma['fecha_cierre']));
    /* FACTURAS DEL MES */
    $query_FacturasMes = $mysqli->query("SELECT COUNT(factura) AS facturas_mes FROM vista_facturas_comercial_economia WHERE YEAR(fecha_captado) = '$AnnoFechaCierre' AND MONTH(fecha_captado) = '$MesFechaCierre' AND validated_invoice <> '9'");
    if (mysqli_num_rows($query_FacturasMes) > 0) {
        while ($row = mysqli_fetch_assoc($query_FacturasMes)) {
            $FACTURAS_MES = $row['facturas_mes'];
        }
    } else {
        $FACTURAS_MES = "0";
    }

    /* FACTURAS DEL YEAR */
    $query_FacturasYear = $mysqli->query("SELECT COUNT(factura) AS facturas_year FROM vista_facturas_comercial_economia WHERE YEAR(fecha_captado) = '$AnnoFechaCierre' AND validated_invoice <> '9'");
    if (mysqli_num_rows($query_FacturasYear) > 0) {
        while ($row = mysqli_fetch_assoc($query_FacturasYear)) {
            $FACTURAS_YEAR = $row['facturas_year'];
        }
    } else {
        $FACTURAS_YEAR = "0";
    }

    /* FACTURAS CANCELADAS DEL MES */
    $query_FacturasCanceladasMes = $mysqli->query("SELECT COUNT(factura) AS facturas_canceladas_mes FROM tbl_facturas_canceladas WHERE YEAR(fecha) = '$AnnoFechaCierre' AND MONTH(fecha) = '$MesFechaCierre'");
    if (mysqli_num_rows($query_FacturasCanceladasMes) > 0) {
        while ($row = mysqli_fetch_assoc($query_FacturasCanceladasMes)) {
            if (is_null($row['facturas_canceladas_mes'])) {
                $FACTURAS_CANCELADAS_MES = "0";
            } else {
                $FACTURAS_CANCELADAS_MES = $row['facturas_canceladas_mes'];
            }
        }
    } else {
        $FACTURAS_CANCELADAS_MES = "0";
    }

    /* FACTURAS CANCELADAS DEL YEAR */
    $query_FacturasCanceladasYear = $mysqli->query("SELECT COUNT(factura) AS facturas_canceladas_year FROM tbl_facturas_canceladas WHERE YEAR(fecha) = '$AnnoFechaCierre'");
    if (mysqli_num_rows($query_FacturasCanceladasYear) > 0) {
        while ($row = mysqli_fetch_assoc($query_FacturasCanceladasYear)) {
            if (is_null($row['facturas_canceladas_year'])) {
                $FACTURAS_CANCELADAS_YEAR = "0";
            } else {
                $FACTURAS_CANCELADAS_YEAR = $row['facturas_canceladas_year'];
            }
        }
    } else {
        $FACTURAS_CANCELADAS_YEAR = "0";
    }

    /* PACIENTES ATENDIDOS MES */
    $query_PacientesMes = $mysqli->query("SELECT SUM(cantclientes) AS cantclientes_mes FROM vista_pacientes_asist_frontera WHERE YEAR(fecha_captado) = '$AnnoFechaCierre' AND MONTH(fecha_captado) = '$MesFechaCierre'");
    if (mysqli_num_rows($query_PacientesMes) > 0) {
        while ($row = mysqli_fetch_assoc($query_PacientesMes)) {
            if (is_null($row['cantclientes_mes'])) {
                $PACIENTES_MES = "0";
            } else {
                $PACIENTES_MES = $row['cantclientes_mes'];
            }
        }
    } else {
        $PACIENTES_MES = "0";
    }

    /* PACIENTES ATENDIDOS YEAR */
    $query_PacientesYear = $mysqli->query("SELECT SUM(cantclientes) AS cantclientes_year FROM vista_pacientes_asist_frontera WHERE YEAR(fecha_captado) = '$AnnoFechaCierre'");
    if (mysqli_num_rows($query_PacientesYear) > 0) {
        while ($row = mysqli_fetch_assoc($query_PacientesYear)) {
            if (is_null($row['cantclientes_year'])) {
                $PACIENTES_YEAR = "0";
            } else {
                $PACIENTES_YEAR = $row['cantclientes_year'];
            }
        }
    } else {
        $PACIENTES_YEAR = "0";
    }

    /* CLIENTES ATENDIDOS EN EL MES */
    $query_ClientesMes = $mysqli->query("SELECT SUM(cantclientes) AS cantclientes_mes FROM tbl_acum_farm WHERE YEAR(fecha_captado) = '$AnnoFechaCierre' AND MONTH(fecha_captado) = '$MesFechaCierre'");
    if (mysqli_num_rows($query_ClientesMes) > 0) {
        while ($row = mysqli_fetch_assoc($query_ClientesMes)) {
            if (is_null($row['cantclientes_mes'])) {
                $CLIENTES_MES = "0";
            } else {
                $CLIENTES_MES = $row['cantclientes_mes'];
            }
        }
    } else {
        $CLIENTES_MES = "0";
    }

    /* CLIENTES ATENDIDOS EN EL ANNO */
    $query_ClientesYear = $mysqli->query("SELECT SUM(cantclientes) AS cantclientes_year FROM tbl_acum_farm WHERE YEAR(fecha_captado) = '$AnnoFechaCierre'");
    if (mysqli_num_rows($query_ClientesYear) > 0) {
        while ($row = mysqli_fetch_assoc($query_ClientesYear)) {
            $CLIENTES_YEAR = $row['cantclientes_year'];
        }
    } else {
        $CLIENTES_YEAR = "0";
    }

    /** OBTENIENDO FECHA DE CIERRE Y FECHA DE PARTE CERRADO */
    $query_FechaCierre_firma             = $mysqli->query("SELECT * FROM tbl_global_cierre_acumulado ORDER BY fecha_cierre DESC LIMIT 1");
    $rowquery_FechaCierre_firma          = mysqli_fetch_assoc($query_FechaCierre_firma);

    $FECHA_DEL_PARTE = date('d/m/Y', strtotime($rowquery_FechaCierre_firma['fecha_cierre']));
    $FECHA_DEL_CIERRE = date('d/m/Y', $rowquery_FechaCierre_firma['fecha_completa']) . " a las " . date('h:i:s A', $rowquery_FechaCierre_firma['fecha_completa']);

    include("cump_mes_indi.php");

    /* ENVIANDO ALERTAS POR TELEGRAM */
    // $token = "6303406542:AAGHk6slbmURm2QR1cJTwlFCb_gwyhF6AXg";
    $urlMsg = "https://api.telegram.org/bot{$config['token_bot']}/sendMessage";

    /* OBTENER LOS RECEPTORES DE LA TABLA ADMINISTRATIVOS */
    $queryAdministrativos = $mysqli->query("SELECT first_name, telegram_id FROM tbl_global_administrativos WHERE telegram_id != '-' AND estado = '1'");

    /* MENSAJE BASE */
    $fechaAhora = date('Y-m-d H:i:s');
    $msgBase = "<b>" . $SALUDO . " %nombre%!</b>\nTe enviamos un resumen del Parte Diario del día " . $FECHA_DEL_PARTE . " cerrado el " . $FECHA_DEL_CIERRE . "\n
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
----\n\n  
<b>ESPECIALISTAS Y UNIDADES\nPROCESADOS EN EL MES:</b>\n";
    foreach ($array_cump as $index => $fila) {
        $msgBase .= "<b>" . ucwords(strtolower($fila['especialista'])) . "</b>\n";
        $msgBase .= "    <i>Plan: $" . number_format($fila[$MES_PLAN_MENSUAL], 2) . "</i>\n";
        $msgBase .= "    <i>Ing: $" . number_format($fila['importe'], 2) . "</i>\n";
        $msgBase .= "    <i>Cump: " . number_format($fila['porcientook'], 2) . "%</i>";
        if ($index < count($array_cump) - 1) {
            $msgBase .= "\n\n";
        }
    };
    $msgBase .= "\n----\n\n\n<b>FACTURAS PROCESADAS:</b>
    <i>" . $NOMBRE_MES_LARGO[$MONTH] . ": " . $FACTURAS_MES . "</i>
    <i>Año " . $YEAR . ": " . $FACTURAS_YEAR . "</i>\n
<b>FACTURAS CANCELADAS:</b>
    <i>" . $NOMBRE_MES_LARGO[$MONTH] . ": " . $FACTURAS_CANCELADAS_MES . "</i>
    <i>Año " . $YEAR . ": " . $FACTURAS_CANCELADAS_YEAR . "</i>\n
<b>PACIENTES ATENDIDOS:</b>
    <i>" . $NOMBRE_MES_LARGO[$MONTH] . ": " . $PACIENTES_MES . "</i>
    <i>Año " . $YEAR . ": " . $PACIENTES_YEAR . "</i>\n
<b>CLIENTES ATENDIDOS:</b>
    <i>" . $NOMBRE_MES_LARGO[$MONTH] . ": " . $CLIENTES_MES . "</i>
    <i>Año " . $YEAR . ": " . $CLIENTES_YEAR . "</i>
----\n\n\n\nSucursal SMC " . $config['provincia'] . "\nDepartamento Comercial\nTeléfono: " . $config['telefono_comercial'] . "\nCorreo: " . $config['correo_comercial'] . "\n";

    /** ENVIANDO EL MENSAJE A LOS ADMINISTRATIVOS */
    while ($rowAdministrativos = mysqli_fetch_assoc($queryAdministrativos)) {
        /** ENVIANDO STICKER PRIMERO SI EL PPLAN SE CUMPLE O SOBRECUMPLE */
        $CUMPLIMIENTO_PLAN_MES = number_format((float)($SUMA_INGRESO_MENSUAL / $SUMA_PLAN_MENSUAL) * 100);

        if ($CUMPLIMIENTO_PLAN_MES >= 100) {
            $STICKER = $STICKERS[array_rand($STICKERS)];
            // Enviar sticker
            $urlMsgSticker = "https://api.telegram.org/bot{$config['token_bot']}/sendSticker";
            $paramsSticker = [
                'chat_id' => $rowAdministrativos['telegram_id'],
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

            // Enviar mensaje resumen
            $msg = str_replace('%nombre%', $rowAdministrativos['first_name'], $msgBase);
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
                'chat_id' => $rowAdministrativos['telegram_id'],
                'parse_mode' => 'HTML',
                'text' => $msg,
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
            // echo "Mensaje enviado a {$rowAdministrativos['first_name']} ({$rowAdministrativos['telegram_id']}): $server_output\n";
        } else {
            // Enviar mensaje resumen
            $msg = str_replace('%nombre%', $rowAdministrativos['first_name'], $msgBase);
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
                'chat_id' => $rowAdministrativos['telegram_id'],
                'parse_mode' => 'HTML',
                'text' => $msg,
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
            // echo "Mensaje enviado a {$rowAdministrativos['first_name']} ({$rowAdministrativos['telegram_id']}): $server_output\n";
        }
    }
}
