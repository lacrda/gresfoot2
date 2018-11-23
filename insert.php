<?php


require_once('db.class.php');

		$objDb = new db();
		$link = $objDb->conecta_mysql();


		$sql = "SELECT * from products where id = 2";

		$resultado = mysqli_query($link, $sql);

		$linha = mysqli_fetch_array($resultado,MYSQLI_ASSOC);

		
		$status = json_decode($linha['attr'],true);
		echo $status['enredo'];



// $stat = array("enredo"=>"O Som da Cor","chao"=>5,"samba"=>4,"bar"=>3);
// var $stat;






?>