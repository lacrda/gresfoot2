<?php
session_start();

require_once('db.class.php');

	foreach ($_POST as $key => $value) {
		$_SESSION[$key] = $value;
	}

var_dump($_SESSION);



	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$id_jogo = $_SESSION['id_jogo'];
	$round = $_SESSION['round'];

	$sql = "UPDATE games SET round = $round WHERE id_jogo = $id_jogo"; 

	if(mysqli_query($link, $sql)){
		header("Location: game.php");
	} else {
		echo 'Erro ao conectar com banco de dados';
	};

	


?>
