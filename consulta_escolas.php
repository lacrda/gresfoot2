<?php

	session_start();

	require_once('db.class.php');

	$sql = " SELECT * FROM escolas";

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$resultado_query = mysqli_query($link, $sql);

	if($resultado_query = mysqli_query($link, $sql)){

		while ($linha = $lista_escolas = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC)) {
		$todas_escolas[] = $linha;
		};
	
		foreach ($todas_escolas as  $v) {
		echo "<option value=".$v["id"].">".$v["name"]."</option>";
		};
	};
?>