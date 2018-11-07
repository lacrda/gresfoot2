<?php

session_start();

	require_once('db.class.php');

	if (isset($_POST['continuar'])) {
	
	$id_jogo = $_POST['continuar'];

	$sql = " SELECT * FROM games WHERE id_jogo = $id_jogo";

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$resultado_query = mysqli_query($link, $sql);


	if($resultado_query){
		$dados_usuario = mysqli_fetch_array($resultado_query,MYSQLI_ASSOC);
	

		$_SESSION['id_jogo'] = $dados_usuario["id_jogo"];

		header("Location: load_game.php");
	} 
	
	
	} elseif (isset($_POST['deletar'])) {

		$id = $_POST['deletar'];

	$sql2 = " DELETE FROM games where id_jogo = $id";

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	if(mysqli_query($link, $sql2)){
		header("Location: home.php");
	} else {
	 echo("Error description: ".mysqli_error($link));
	};

};


?>