<?php

session_start();

	require_once('db.class.php');


if(isset($_SESSION['id_jogo'])){


	$id_jogo = $_SESSION['id_jogo'];

	$sql = " SELECT * FROM games join escolas on games.id_escola = escolas.id WHERE games.id_jogo = $id_jogo";

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$resultado_query = mysqli_query($link, $sql);

	if($resultado_query){

		while ($linha = $lista_infos = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC)) {
		$todas_infos[] = $linha;
		};

		foreach ($todas_infos[0] as $k=>$v) {
		$_SESSION[$k]=$v;
		};


	header("Location: game.php");

		// var_dump($_SESSION);

	} else {
		echo 'Erro na consulta ao bd';
	}

} else{
	
	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$id_usuario = $_SESSION['id_usuario'];
	$id_escola = $_SESSION['id_escola'];

	$sql2 = " INSERT INTO games (user_id, bar, com, imp, cash, id_enredo, id_escola, round, des) VALUES ($id_usuario, 0,0,0,100,NULL,$id_escola,0,0)";

	if(mysqli_query($link, $sql2)){
		require_once('db.class.php');

	$id_usuario = $_SESSION['id_usuario'];

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

}




?>