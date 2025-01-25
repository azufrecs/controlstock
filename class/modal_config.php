<?php
function get_current_url()
{
    $protocol = isset($_SERVER['HTTPS']) && 'on' == $_SERVER['HTTPS'] ? 'https' : 'http';
    $host = $_SERVER['HTTP_HOST'];
    $port = $_SERVER['SERVER_PORT'];
    $path = $_SERVER['REQUEST_URI'];

    $url = $protocol . '://' . $host . ($port != 80 && $port != 443 ? ':' . $port : '') . $path;
    return $url;
}

$current_url = get_current_url();

if ($current_url == 'http://localhost/parte/index.php' || $current_url == 'http://localhost/parte/' || $current_url == 'https://parte.cmw.smcsalud.cu/index.php' || $current_url == 'https://parte.cmw.smcsalud.cu/') {
    // Mostrar contenido para inicio, mostrar fecha
    $mostrar_fecha = 'SI';
} else {
    // Mostrar contenido por defecto o un mensaje de error
    $mostrar_fecha = 'NO';
}

$current_url = $_SERVER['REQUEST_URI'];

// Analiza la URL actual
$parsed_url = parse_url($current_url);

// Verifica si la ruta es /config/
if (strpos($parsed_url['path'], '/config/') !== false) {
    // No guardar la ruta en la sesión
} else {
    // GUARDANDO AL RUTA PARA EL RETORNO AL PARTE, FACTURA O LIQUIDEZ
    $_SESSION['retorno'] = $current_url;
}

?>

<div class='modal' id='ModalMenuUser' tabindex='-1' aria-labelledby='ModalMenuUser' aria-hidden='true'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header'>
                <h5 class='modal-title' id='ModalMenuUser'>Sistema</h5>
            </div>
            <div class='modal-body'>
                <div class='row justify-content-center'>
                    <?php
                    if ($mostrar_fecha == 'SI') {
                        $ANCHO_COLUMNAS = "col-6 col-sm-3 col-md-3 col-lg-3 col-xl-3 col-xxl-3";
                        echo "<div class='col-6 col-sm-3 col-md-3 col-lg-3 col-xl-3 col-xxl-3' align='center'>";
                        echo "<a href='#' class='text-primary'  data-bs-toggle='modal' data-bs-target='#ModalAnotherDay' onclick='$(#ModalMenuUser').modal('hide');'><span class='text-primary'><i class='las la-5x la-calendar-alt text-primary'></i><br>Fecha</span></a>";
                        echo "</div>";
                    } else {
                        $ANCHO_COLUMNAS = "col-4 col-sm-4 col-md-4 col-lg-4 col-xl-4 col-xxl-4";
                    }
                    ?>

                    <div class='<?= $ANCHO_COLUMNAS ?>' align='center'>
                        <a href='<?= $_SESSION['baseUrl'] . 'config/' ?>'><span class='text-success'><i class='las la-5x la-sliders-h text-success'></i><br>Configuraci&oacute;n</span></a>
                    </div>

                    <div class='<?= $ANCHO_COLUMNAS ?>' align='center'>
                        <a href='class/security/logout.php'><span class='text-warning'><i class='las la-5x la-sign-out-alt text-warning'></i><br>Cerrar sesi&oacute;n</span></a>
                    </div>

                    <div class='<?= $ANCHO_COLUMNAS ?>' align='center'>
                        <a href='class/security/exit.php'><span class='text-danger'><i class='las la-5x la-power-off'></i><br>Salir</span></a>
                    </div>
                </div>
                <!-- <hr>
                <div class='<?php echo $COLOR_INFORMACION1; ?>'><?php echo $INFORMACION1; ?></div>
                <hr class='dropdown-divider quitar_espacios'>
                <?= $INFORMACION2 ?> -->
            </div>
            <div class='modal-footer'>
                <button type='button' class='btn btn-secondary' data-bs-dismiss='modal'>Cerrar</button>
            </div>
        </div>
    </div>
</div>