<?php

	session_start();
	unset($_SESSION['id_jogo']);

	$id_escola = $_POST['id_escola'];
	echo $id_escola."</br>";
	unset($_SESSION['id_escola']);
	$_SESSION['id_escola'] = $id_escola;
	echo $_SESSION['id_escola'];

	header("Location: load_game.php");











?>