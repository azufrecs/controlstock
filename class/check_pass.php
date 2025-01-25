<?php
error_reporting(0);
include("security/index.php");
include("conn/conn.php");
include("class/message.php");
include("class/date_process.php");

$MENSAJE = "";
$VALIDATED_USER = "";

/* Inicio del procedimiento de autenticacion */
$ldap_host 		= "172.30.1.2";							/* IP de Servidor del dominio 				*/
$ldap_port 		= "389";								/* Puerto LDAP del Servidor de dominio 		*/
$ldap_domain 	= "@cmw.smcsalud.cu";					/* Dominio de red 							*/
$user	 		= $_SESSION['user'] . $ldap_domain;		/* Nombre de usuario capturado con dominio	*/
$pswd 			= $PASSWORD;							/* Contraseña capturada 					*/

if ($fp = @fsockopen($ldap_host, $ldap_port, $ERROR_NO, $ERROR_STR, (float)0.5)) {
	fclose($fp);
	$ldap = ldap_connect($ldap_host);
	ldap_set_option($ldap, LDAP_OPT_PROTOCOL_VERSION, 3);
	ldap_set_option($ldap, LDAP_OPT_REFERRALS, 0);
	$AUTENTICADO = ldap_bind($ldap, $user, $pswd);

	if (!$AUTENTICADO) {
		$MENSAJE = "<div class='alert alert-warning alert-dismissible fade show' role='alert' id='success-alert'><strong>¡Error!</strong>&nbsp;Usuario/contraseña inv&aacute;lidos o contraseña expirada</div>";
		$RESULTADO = "ERROR - USUARIO/CONTRASEÑA INVALIDOS O CONTRASEÑA EXPIRADA";
	}
} else {
	$MENSAJE = "<div class='alert alert-danger alert-dismissible fade show' role='alert' id='success-alert'><strong>¡Error!</strong>&nbsp;No se ha podido conectar al Controlador de Dominio SMC<br>Contacte al Administrador de la Red</div>";
	$RESULTADO = "ERROR - NO SE HA PODIDO CONECTAR AL CONTROLADOR DE DOMINIO SMC";
}