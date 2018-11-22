<?php
session_start();

	require_once('db.class.php');
	$objDb = new db();
	$link = $objDb->conecta_mysql();

$ids_escolas = range(1,13);
$enredos[]="";
foreach ($ids_escolas as $id) {



	$sql3 = "SELECT * FROM enredos where id_escola = $id order by rand();";

	if($resultado_query = mysqli_query($link, $sql3)){
		$enredos[$id] = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);
		
		$_SESSION['stat'.$id] = $enredos[$id]['id_enredo'];
		
};

};














?>