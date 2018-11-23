<?php

session_start();

require_once('db.class.php');


$objDb = new db();
$link = $objDb->conecta_mysql();

$id_usuario = $_SESSION['id_usuario'];
$id_escola = $_SESSION['id_escola'];
$bar = $_SESSION['bar'];
$com = $_SESSION['com'];
$des = $_SESSION['des'];
$id_enredo = $_POST['enredo'];

$ids_escolas = range(1,13);
$enredos[]="";
foreach ($ids_escolas as $id) {
	
	
	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$sql3 = "SELECT * FROM enredos where id_escola = $id order by rand();";

	if($resultado_query = mysqli_query($link, $sql3)){
		$enredos[$id] = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);

		
		$_SESSION['stat'.$id] = $enredos[$id]['id_enredo'];


	};

};

$_SESSION['stat'.$id_escola] = $id_enredo;

$stat1 = $_SESSION['stat1'];
$stat2 = $_SESSION['stat2'];
$stat3 = $_SESSION['stat3'];
$stat4 = $_SESSION['stat4'];
$stat5 = $_SESSION['stat5'];
$stat6 = $_SESSION['stat6'];
$stat7 = $_SESSION['stat7'];
$stat8 = $_SESSION['stat8'];
$stat9 = $_SESSION['stat9'];
$stat10 = $_SESSION['stat10'];
$stat11 = $_SESSION['stat11'];
$stat12 = $_SESSION['stat12'];
$stat13 = $_SESSION['stat13'];



$sql = "INSERT INTO games (user_id, bar, com, imp, cash, id_enredo, id_escola, round, des, stat1, stat2, stat3, stat4, stat5, stat6, stat7, stat8, stat9, stat10, stat11, stat12, stat13) VALUES ($id_usuario, $bar,$com,50,100,$id_enredo,$id_escola,2,$des, $stat1, $stat2, $stat3, $stat4, $stat5, $stat6, $stat7, $stat8, $stat9, $stat10, $stat11, $stat12, $stat13)";

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
	};

	} else{
		echo("Error description: ".mysqli_error($link));
	};


?>