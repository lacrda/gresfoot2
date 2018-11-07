<?php

	require_once('db.class.php');

	$usuario = $_POST['usuario'];
	$senha = md5($_POST['senha']);

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$usuario_existe = false;

	//verificar se o usuário já
	$sql = " select * from users where username = '$usuario' ";
	if($resultado_id = mysqli_query($link, $sql)) {

		$dados_usuario = mysqli_fetch_array($resultado_id);

		if(isset($dados_usuario['usuario'])){
			$usuario_existe = true;
		}
	} else {
		echo 'Erro ao tentar localizar o registro de usuário';
	}

	//$retorno_get = '';

		if($usuario_existe){
			$retorno_get.= "erro_usuario=1&";
			header('Location: inscrevase.php?'.$retorno_get);
		die();
	}

	$sql = " insert into users (username, password) values ('$usuario', '$senha') ";

	//executar a query
	if(mysqli_query($link, $sql)){
		header('Location: home.php');
	} else {
		echo 'Erro ao registrar o usuário!';
	}


?>