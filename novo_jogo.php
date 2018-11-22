<?php

	session_start();
	unset($_SESSION['id_jogo']);

	$id_escola = $_POST['id_escola'];
	
	unset($_SESSION['id_escola']);
	$_SESSION['id_escola'] = $id_escola;

	unset($_SESSION['round']);
	$_SESSION['round'] = 1;
	
	
	$bar = mt_rand(55,65);

	$com = mt_rand(55,65);
	
	$des = 180 - $bar - $com;


	$_SESSION['bar'] = $bar;
	$_SESSION['com'] = $com;
	$_SESSION['des'] = $des;

	require_once('db.class.php');

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$sql = "SELECT * FROM escolas where id = $id_escola";

	if($resultado_query = mysqli_query($link, $sql)){
		$lista_infos = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);
		echo $_SESSION['img'] = $lista_infos['img'];
		 echo $_SESSION['name'] = $lista_infos['name'];
		echo $_SESSION['info'] = $lista_infos['info'];
		
	};


	header("Location: inicio.php");






?>