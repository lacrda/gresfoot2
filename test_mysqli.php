<?php

	require_once('db.class.php');

	$sql = "SELECT * FROM usuarios";

	$objBD = new db();
	$link = $objBD->Conecta_mysql();

	$resultado_id = mysqli_query($link,$sql);

	if($resultado_id){
		$dados_usuario = array();

		while($linha = mysqli_fetch_array($resultado_id, MYSQLI_ASSOC)){
			$dados_usuario[] = $linha;
		}
		
		foreach ($dados_usuario as $usuario){
			echo $usuario['usuario'];
			echo '<br>';
		}

	} else {
		'Erro na consulta.';
	}
		

	

?>