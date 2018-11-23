<?php


// require_once('db.class.php');


// $anos = range(1980,2018);

// $id_escolas = range(1,13);

// foreach ($id_escolas as $id) {
// 	foreach ($anos as $ano) {
// 		$objDb = new db();
// 		$link = $objDb->conecta_mysql();

// 		$sql = "INSERT into enredos (id_escola, ano) values ($id, $ano);";

// 		mysqli_query($link, $sql);
		
// 	};
// };


$stat1 = array('enredo' => "O Som da Cor" , 'chao' => 5, 'samba' => 4, 'bar' => 3 );

$_SESSION['stat1'] = $stat1;

echo $_SESSION['stat1']['enredo'];






?>