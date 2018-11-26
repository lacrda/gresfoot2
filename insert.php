<?php
session_start();

require_once('db.class.php');

		$objDb = new db();
		$link = $objDb->conecta_mysql();


		$sql = "SELECT * from products ";

// 		$resultado = mysqli_query($link, $sql);

// 		$linha = mysqli_fetch_array($resultado,MYSQLI_ASSOC);

		
// 		$status = json_decode($linha['attr'],true);
// 		echo $status['enredo'];




?>