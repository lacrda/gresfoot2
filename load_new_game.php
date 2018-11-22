<?php

session_start();

require_once('db.class.php');

var_dump($_SESSION);

$objDb = new db();
$link = $objDb->conecta_mysql();

$id_usuario = $_SESSION['id_usuario'];
$id_escola = $_SESSION['id_escola'];
$bar = $_SESSION['bar'];
$com = $_SESSION['com'];
$des = $_SESSION['des'];


$sql = " INSERT INTO games (user_id, bar, com, imp, cash, id_enredo, id_escola, round, des) VALUES ($id_usuario, $bar,$com,50,100,NULL,$id_escola,1,$des)";

	if(mysqli_query($link, $sql)){
		require_once('db.class.php');

	$sql3 = " SELECT * FROM games join escolas on games.id_escola = escolas.id WHERE games.user_id = $id_usuario order by games.id_jogo DESC";

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	if($resultado_query = mysqli_query($link, $sql3)){

		$lista_infos = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);

		foreach ($lista_infos as $k=>$v) {
		$_SESSION[$k]=$v;
		};
		
		var_dump($_SESSION);

	header("Location: game.php");
		
	} else {
	 echo("Error description: ".mysqli_error($link));
	}

	}


?>