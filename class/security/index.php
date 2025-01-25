<?php
	@session_start();
	if(isset($_SESSION["autentica"]) != "SI"){
		echo "<script>location.href='https://parte.cmw.smcsalud.cu/login.php'; </script>";
		exit();
	}
