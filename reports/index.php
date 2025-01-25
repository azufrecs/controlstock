<?php
error_reporting(0);				/* No mostrar los errores de PHP */
// include("../class/security/index.php");
include("../conn/conn.php");
include("../class/message.php");
// include("../class/date_process.php");
header('Content-Type:text/html; charset=UTF-8');
setlocale(LC_TIME, "es_CU");

// /* Consultando los partes realizados y devolviendo los que tienen planes asignados en las tablas de tbl_acum_xxxx para mostrar solo esas fechas en el date de seleccionar Parte */
// $queryBaseFechasParte = $mysqli->query("SELECT * FROM vista_planes_ing_cli_acumulados");

// /* Haciendo subconsulta a queryBaseFechasParte para obtener fecha minima y maxima que se mostrara en el input date*/
// if (mysqli_num_rows($queryBaseFechasParte) > 0) {
// 	$query_Fechas_INI_FIN = $mysqli->query("SELECT MIN(fecha_captado) AS fecha_min, MAX(fecha_captado) AS fecha_max FROM vista_planes_ing_cli_acumulados AS subFechaMin");
// 	while ($row_Fechas_INI_MAX = mysqli_fetch_assoc($query_Fechas_INI_FIN)) {
// 		$MOSTRAR_FECHA_PARTES_MIN = $row_Fechas_INI_MAX['fecha_min'];
// 		$MOSTRAR_FECHA_PARTES_MAX = $row_Fechas_INI_MAX['fecha_max'];
// 	}
// } else {
// 	/* Si no hay nada captado en parte redirijo al home */
// 	echo "<script>location.href='../.';</script>";
// }

// /* CAPTURA DE LOS SUBMIT'S DE REPORTES */
// if (isset($_POST['ventas_semanales']) or isset($_POST['ventas_mensuales']) or isset($_POST['tasa_puerto']) or isset($_POST['tasa_aero']) or isset($_POST['ing_paises']) or isset($_POST['productividad']) or isset($_POST['cump_plan_dia']) or isset($_POST['cump_plan_sem']) or isset($_POST['cump_plan_mes']) or isset($_POST['cump_plan_hosp']) or isset($_POST['ing_sucursal']) or isset($_POST['ing_lineas']) or isset($_POST['patologias']) or isset($_POST['graficos']) or isset($_POST['graficos']) or isset($_POST['cierre_mes_ami']) or isset($_POST['cierre_mes_ami_bd']) or isset($_POST['cierre_mes_cons']) or isset($_POST['cierre_mes_cons_bd']) or isset($_POST['cierre_mes_calidad'])) {
// 	/* Si alguno de los submit's que necesitan fechas fue ejecutado capturo las fechas */
// 	$TIPO_REPORT	= mysqli_real_escape_string($mysqli, (strip_tags($_POST["cboTipo"], ENT_QUOTES)));
// 	$FECHA_INI		= mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtFechaIni"], ENT_QUOTES)));
// 	$FECHA_FIN		= mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtFechaFin"], ENT_QUOTES)));

// 	$FECHA_RANGO_MIN  		= mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtFechaIni"], ENT_QUOTES)));
// 	$FECHA_RANGO_MAX  		= mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtFechaFin"], ENT_QUOTES)));
// 	$FECHA_MIN_DIA			= date('d', strtotime($FECHA_RANGO_MIN));
// 	$FECHA_MAX_DIA			= date('d', strtotime($FECHA_RANGO_MAX));
// 	$FECHA_INICIO_MES		= date('Y-m-01', strtotime($FECHA_RANGO_MIN));
// 	$FECHA_INICIO_ANO 		= date('Y', strtotime($FECHA_RANGO_MIN))  . "-01-01";
// }

// /** REPORTES DE LOS JUEVES -- VENTAS SEMANALES */
// if (isset($_POST['ventas_semanales'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("ventas_semanales.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES DE LOS JUEVES -- INGRESOS VENTAS MENSUALES */
// if (isset($_POST['ventas_mensuales'])) {
// 	$FECHA_INICIO_ANO 		= date('Y', strtotime($FECHA_RANGO_MIN))  . "-01-01";
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				/* RESTAR LOS DIAS DEL RANGO PARA DEFINIR POR CUANTOS DIAS MULTIPLICAR EL PLAN DIARIO */
// 				$DIAS_DEL_RANGO = ($FECHA_MAX_DIA - $FECHA_MIN_DIA) + 1;
// 				include("ventas.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES DE LOS JUEVES -- COBRO TASA SANITARIA PUERTO */
// if (isset($_POST['tasa_puerto'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("tasa_puerto.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES DE LOS JUEVES -- COBRO TASA SANITARIA AEROPUERTO */
// if (isset($_POST['tasa_aero'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("tasa_aero.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES MENSUALES - CIERRE AMI BD */
// if (isset($_POST['cierre_mes_ami_bd'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("cierre_mes_ami_bd.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES MENSUALES - CIERRE AMI COMERCIAL */
// if (isset($_POST['cierre_mes_ami'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("cierre_mes_ami.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES MENSUALES - CIERRE CONSULTORIOS BD */
// if (isset($_POST['cierre_mes_cons_bd'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("cierre_mes_cons_bd.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES MENSUALES - CIERRE CONSULTORIOS COMERCIAL */
// if (isset($_POST['cierre_mes_cons'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("cierre_mes_cons.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES MENSUALES - CIERRE CALIDAD DE VIDA */
// if (isset($_POST['cierre_mes_calidad'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("cierre_mes_calidad.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES SIN FECHA - INGRESOS POR PAISES */
// if (isset($_POST['ing_paises'])) {
// 	if (strtotime($FECHA_INI) <= strtotime($FECHA_FIN)) {
// 		include("ing_country.php");
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_DIA;
// 	}
// }

// /** REPORTES SIN FECHA - PRODUCTIVIDAD INDIVIDUAL */
// if (isset($_POST['productividad'])) {
// 	if (strtotime($FECHA_INI) <= strtotime($FECHA_FIN)) {
// 		echo "<script>window.location.href='productividad.php?ini=" . $FECHA_INI . "&fin=" . $FECHA_FIN . "'; </script>";
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_DIA;
// 	}
// }

// /** REPORTES SIN FECHA - CUMPLIMIENTO POR ESPECIALISTAS */
// if (isset($_POST['cump_plan_dia'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			$FECHA_INI_OK = date("Y", strtotime($FECHA_INI)) . "-01-01";
// 			if (
// 				strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)
// 			) {
// 				/* RESTAR LOS DIAS DEL RANGO PARA DEFINIR POR CUANTOS DIAS MULTIPLICAR EL PLAN DIARIO */
// 				$DIAS_DEL_RANGO = ($FECHA_MAX_DIA - $FECHA_MIN_DIA) + 1;
// 				echo "<script>window.location.href='cump_plan_dia.php?type=indi&ini=" . $FECHA_INI_OK . "&fin=" . $FECHA_FIN . "'; </script>";
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES SIN FECHA - CUMPLIMIENTO DEL PLAN SEMANAL */
// if (isset($_POST['cump_plan_sem'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			$FECHA_INI_OK = date("Y", strtotime($FECHA_INI)) . "-01-01";
// 			if (
// 				strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)
// 			) {
// 				include("cump_plan_sem.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES SIN FECHA - CUMPLIMIENTO POR ESPECIALISTAS */
// if (isset($_POST['cump_plan_mes'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (
// 				strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)
// 			) {
// 				echo "<script>window.location.href='cump_plan_mes.php?type=indi&ini=" . $FECHA_INI . "&fin=" . $FECHA_FIN . "'; </script>";
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES SIN FECHA - CUMPLIMIENTO POR HOSPITALES */
// if (isset($_POST['cump_plan_hosp'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("cump_plan_hosp.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES SIN FECHA - INGRESOS SUCURSAL - CUMPLIMIENTO */
// if (isset($_POST['ing_sucursal'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				include("ing_sucursal.php");
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES SIN FECHA - INGRESOS POR LINEA DE NEGOCIO */
// if (isset($_POST['ing_lineas'])) {
// 	if (
// 		date('Y', strtotime($FECHA_INI)) == date('Y', strtotime($FECHA_FIN))
// 	) {
// 		if (date('m', strtotime($FECHA_INI)) == date('m', strtotime($FECHA_FIN))) {
// 			if (strtotime($FECHA_INI) <= strtotime($FECHA_FIN)) {
// 				echo "<script>window.location.href='ingresos.php?fi=" . strtotime($FECHA_INI) . "&ff=" . strtotime($FECHA_FIN) . "'; </script>";
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES SIN FECHA - COMPORTAMIENTO DE LAS PATOLOGIAS */
// if (isset($_POST['patologias'])) {
// 	if (
// 		date('Y', strtotime($FECHA_INI)) == date('Y', strtotime($FECHA_FIN))
// 	) {
// 		if (date('m', strtotime($FECHA_INI)) == date('m', strtotime($FECHA_FIN))) {
// 			if (strtotime($FECHA_INI) <= strtotime($FECHA_FIN)) {
// 				echo "<script>window.location.href='patologias.php?fi=" . strtotime($FECHA_INI) . "&ff=" . strtotime($FECHA_FIN) . "&view=top&num=10'; </script>";
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /** REPORTES SIN FECHA - GRAFICOS DE CUMPLIMIENTO */
// if (isset($_POST['graficos'])) {
// 	if (date('Y', strtotime($FECHA_RANGO_MIN)) == date('Y', strtotime($FECHA_RANGO_MAX))) {
// 		if (date('m', strtotime($FECHA_RANGO_MIN)) == date('m', strtotime($FECHA_RANGO_MAX))) {
// 			if (strtotime($FECHA_RANGO_MIN) <= strtotime($FECHA_RANGO_MAX)) {
// 				echo "<script>window.location.href='graphics.php?ini=" . $FECHA_INI . "&fin=" . $FECHA_FIN . "'; </script>";
// 			} else {
// 				echo $MESSAGE_ERROR_RANGO_DIA;
// 			}
// 		} else {
// 			echo $MESSAGE_ERROR_RANGO_MES;
// 		}
// 	} else {
// 		echo $MESSAGE_ERROR_RANGO_ANO;
// 	}
// }

// /* CAPTURA DE LOS SUBMIT'S DE BUSQUEDA */
// if (isset($_POST['factura'])) { /* Busqueda por Factura */
// 	$CRITERIO_BUSQUEDA	= mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtCriterio"], ENT_QUOTES)));
// 	echo "<script>window.location.href='result.php?b=factura&c=" . $CRITERIO_BUSQUEDA . "'; </script>";
// }

// if (isset($_POST['importe'])) { /* Busqueda por Inporte */
// 	$CRITERIO_BUSQUEDA	= mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtCriterio"], ENT_QUOTES)));
// 	echo "<script>window.location.href='result.php?b=importe&c=" . $CRITERIO_BUSQUEDA . "'; </script>";
// }

// if (isset($_POST['expediente'])) { /* Busqueda por Expediente */
// 	$CRITERIO_BUSQUEDA	= mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtCriterio"], ENT_QUOTES)));
// 	echo "<script>window.location.href='result.php?b=expediente&c=" . $CRITERIO_BUSQUEDA . "'; </script>";
// }

// if (isset($_POST['tipopago'])) { /* Busqueda por Tipo de Pago */
// 	$CRITERIO_BUSQUEDA	= mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtCriterio"], ENT_QUOTES)));
// 	echo "<script>window.location.href='result.php?b=tipopago&c=" . $CRITERIO_BUSQUEDA . "'; </script>";
// }

// if (isset($_POST['nombre'])) { /* Busqueda por Nombre */
// 	$CRITERIO_BUSQUEDA	= mysqli_real_escape_string($mysqli, (strip_tags($_POST["txtCriterio"], ENT_QUOTES)));
// 	echo "<script>window.location.href='result.php?b=nombre&c=" . $CRITERIO_BUSQUEDA . "'; </script>";
// }
?>

<!DOCTYPE html>
<html lang="es">

<head>
	<!-- Etiquetas <meta> obligatorias para Bootstrap -->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

	<script>
		/* EVITAR REENVIO DE DATOS */
		if (window.history.replaceState) { // verificamos disponibilidad
			window.history.replaceState(null, null, window.location.href);
		}
	</script>
</head>

<body>
	<?php include("navbar.php"); ?>
	<?php $modal_config = include("../class/modal_config.php"); ?>
	<div class="container" align="center">
		<!-- Inicio del Modal CERRAR_DIA -->
		<div class="modal fade" id="ModalSeleccionMoneda" data-bs-backdrop="static" data-bs-keyboard="false">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header bg-danger">
						<div align="left"><span class="text-white display-4"><i class="las la-bell"></i>&nbsp;Cerrar d&iacute;a</span></div>
					</div>
					<div class="modal-body" align="left">
						<span class="text-danger">
							<h4>Esta acci&oacute;n pasara los valores captados de las Unidades &oacute; Servicios al acumulado y ya no podr&aacute;n ser modificados.<br><strong>¡Esta operaci&oacute;n es irreversible!</strong></h4>
						</span>
						<br>
						<figcaption class="blockquote-footer" style="font-size:18px">
							Unidades &oacute; Servicios sin captar: <strong class="text-danger"><?php echo $UNIDADES_SIN_CAPTAR; ?></strong>
						</figcaption>
					</div>
					<div class="modal-footer"><button type="button" class="btn btn-warning" data-bs-dismiss="modal">Cancelar</button><button type="submit" name="CLOSE_DAY" class="btn btn-danger">Cerrar d&iacute;a</button></div>
				</div>
			</div>
		</div>
		<!-- Fin del Modal CERRAR_DIA -->

		<!-- Inicio de Encabezado -->
		<div align="center" style="color:#666666; font-size:28px">Reportes generales</div>
		<!-- Fin de Encabezado -->

		<div class="row">
			<div class="col-lg col-xl col-xxl"></div>
			<div class="col-md-7 col-lg-6 col-xl-5 col-xxl-4 mb-1">
				<form id="frmRange" name="frmRange" method="post" action="">
					<div class="card bg-primary-10 border-primary">
						<div class="card-body">
							<div class="col-md-12">
								<div class="text-primary" style="font-size:16px"><i class="las la-print"></i>&nbsp;Reportes</div>

								<div style="font-size:6px">&nbsp;</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-floating mb-1">
											<input type="date" name="txtFechaIni" class="form-control text-center border-primary-50" min="<?php echo $MOSTRAR_FECHA_PARTES_MIN; ?>" max="<?php echo $MOSTRAR_FECHA_PARTES_MAX; ?>" required>
											<label class="text-primary" for="floatingTextarea">Fecha Inicial</label>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-floating">
											<input type="date" name="txtFechaFin" class="form-control text-center border-primary-50" min="<?php echo $MOSTRAR_FECHA_PARTES_MIN; ?>" max="<?php echo $MOSTRAR_FECHA_PARTES_MAX; ?>" required>
											<label class="text-primary" for="floatingTextarea">Fecha Final</label>
										</div>
									</div>
								</div>

								<div style="font-size:8px">&nbsp;</div>

								<div class="btn-group w-100" role="group" aria-label="Button group with nested dropdown">
									<div class="btn-group w-100" role="group">
										<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
											<i class="las la-print"></i>&nbsp;&nbsp;Jueves
										</button>
										<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
											<button class="dropdown-item" type="submit" name='ventas_semanales'><i class="las la-save"></i>&nbsp;INGRESOS POR VENTAS SEMANALES</button>
											<button class="dropdown-item" type="submit" name='ventas_mensuales'><i class="las la-save"></i>&nbsp;INGRESOS POR VENTAS MENSUALES</button>
											<button class="dropdown-item" type="submit" name='tasa_puerto'><i class="las la-save"></i>&nbsp;COBRO DE TASA SANITARIA - PUERTO</button>
											<button class="dropdown-item" type="submit" name='tasa_aero'><i class="las la-save"></i>&nbsp;COBRO DE TASA SANITARIA - AEROPUERTO</button>
										</div>
									</div>

									<div class="btn-group w-100" role="group">
										<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
											<i class="las la-print"></i>&nbsp;&nbsp;Mensual
										</button>
										<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
											<h6 class="dropdown-header">Salas AMI - Picanes</h6>
											<button class="dropdown-item" type="submit" name='cierre_mes_ami'>&nbsp;&nbsp;<i class="las la-save"></i>&nbsp;CIERRE COMERCIAL SALAS AMI</button>
											<button class="dropdown-item" type="submit" name='cierre_mes_ami_bd'>&nbsp;&nbsp;<i class="las la-save"></i>&nbsp;CIERRE COMERCIAL SALAS AMI - BD</button>
											<h6 class="dropdown-header">Consultorios - Patricia</h6>
											<button class="dropdown-item" type="submit" name='cierre_mes_cons'>&nbsp;&nbsp;<i class="las la-save"></i>&nbsp;CIERRE COMERCIAL CONSULTORIOS</button>
											<button class="dropdown-item" type="submit" name='cierre_mes_cons_bd'>&nbsp;&nbsp;<i class="las la-save"></i>&nbsp;CIERRE COMERCIAL CONSULTORIOS - BD</button>
											<h6 class="dropdown-header">Calidad de Vida - Yaimi</h6>
											<button class="dropdown-item" type="submit" name='cierre_mes_calidad'>&nbsp;&nbsp;<i class="las la-save"></i>&nbsp;CIERRE COMERCIAL CALIDAD DE VIDA</button>
										</div>
									</div>

									<div class="btn-group w-100" role="group">
										<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
											<i class="las la-print"></i>&nbsp;&nbsp;Siempre
										</button>
										<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
											<button class="dropdown-item" type="submit" name='ing_paises'><i class="las la-save"></i>&nbsp;INGRESOS POR PAISES</button>
											<button class="dropdown-item" type="submit" name='productividad'><i class="las la-desktop"></i>&nbsp;PRODUCTIVIDAD INDIVIDUAL</button>
											<button class="dropdown-item" type="submit" name='cump_plan_dia'><i class="las la-desktop"></i>&nbsp;CUMPLIMIENTO DEL PLAN DIARIO</button>
											<button class="dropdown-item" type="submit" name='cump_plan_sem'><i class="las la-save"></i>&nbsp;CUMPLIMIENTO DEL PLAN SEMANAL</button>
											<button class="dropdown-item" type="submit" name='cump_plan_mes'><i class="las la-desktop"></i>&nbsp;CUMPLIMIENTO DEL PLAN MENSUAL</button>
											<button class="dropdown-item" type="submit" name='cump_plan_hosp'><i class="las la-save"></i>&nbsp;CUMPLIMIENTO DEL PLAN HOSPITALES</button>
											<button class="dropdown-item" type="submit" name='ing_sucursal'><i class="las la-save"></i>&nbsp;CUMPLIMIENTO DE INGRESOS SUCURSAL</button>
											<button class="dropdown-item" type="submit" name='ing_lineas'><i class="las la-desktop"></i>&nbsp;CUMPLIMIENTO DE INGRESOS POR LINEAS</button>
											<h6 class="dropdown-divider"></h6>
											<button class="dropdown-item" type="submit" name='patologias'><i class="las la-desktop"></i>&nbsp;COMPORTAMIENTO DE LAS PATOLOGIAS</button>
											<h6 class="dropdown-divider"></h6>
											<button class="dropdown-item" type="graficos" name='graficos'><i class="las la-chart-line"></i>&nbsp;GRAFICOS DE INGRESOS</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>

			<div class="col-md-5 col-lg-5 col-xl-4 col-xxl-3">
				<!-- INICIO DEL FORMULARIO DE BUSQUEDA -->
				<form id="frmBuscar" name="frmBuscar" method="post" action="">
					<div class="card bg-primary-10 border-primary">
						<div class="card-body">
							<div class="col-md-12">
								<div class="text-primary" style="font-size:16px"><i class="las la-search"></i>&nbsp;Buscador</div>

								<div style="font-size:6px">&nbsp;</div>

								<div class="form-floating mb-1">
									<input name="txtCriterio" id="txtCriterio" class="form-control input border-primary-50" placeholder="Criterio de b&uacute;squeda..." autocomplete="off" required>
									<label class="text-primary" for="floatingTextarea">Criterio de b&uacute;squeda </label>
								</div>

								<div style="font-size:8px">&nbsp;</div>

								<div class="dropdown">
									<button class="btn btn-primary w-100 dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
										<i class="las la-search"></i>&nbsp;&nbsp;&nbsp;Buscar en
									</button>
									<div class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
										<button class="dropdown-item" type="submit" name='factura'><i class="las la-file-invoice-dollar"></i>&nbsp;FACTURA</button>
										<button class="dropdown-item" type="submit" name='importe'><i class="las la-hand-holding-usd"></i>&nbsp;IMPORTE</button>
										<button class="dropdown-item" type="submit" name='expediente'><i class="las la-file-alt"></i>&nbsp;EXPEDIENTE</button>
										<button class="dropdown-item" type="submit" name='tipopago'><i class="lab la-cc-visa"></i>&nbsp;METODO DE PAGO</button>
										<button class="dropdown-item" type="submit" name='nombre'><i class="las la-clinic-medical"></i>&nbsp;NOMBRE DE UNIDAD</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form>
				<!-- FINALIZA EL FORMULARIO DE BUSQUEDA -->
			</div>
			<div class="col-lg col-xl col-xxl"></div>
		</div>
	</div>
</body>

</html>