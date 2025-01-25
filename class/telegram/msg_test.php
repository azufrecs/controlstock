<?php
include("../../class/security/index.php");
include("../../conn/conn.php");
include("../../class/message.php");
include("../../class/date_process.php");
include("../../class/get_config.php");
setlocale(LC_TIME, "spanish");
header('Content-Type:text/html; charset=UTF-8');

$CHAT_ID    = $_GET['id'];
$FIRST_NAME = $_GET['fn'];

/** ENVIANDO MENSAJE DE PRUEBA */
$url = 'https://api.telegram.org/bot' . $config['token_bot'] . '/sendMessage';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query(array('chat_id' => $CHAT_ID, 'text' => 'Hola ' . $FIRST_NAME . '! Este es un mensaje de prueba desde el Sistema CoffeeControl')));
$response = curl_exec($ch);
curl_close($ch);
echo "<script>window.location.href='.'; </script>";
