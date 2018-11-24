<?php
	session_start();

	if ($_SESSION['round'] > 9) {



	
	require_once('db.class.php');

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$sql4 = "SELECT * from escolas order by id ASC;";

	$result_sql4 = mysqli_query($link, $sql4);

	if($result_sql4){

		$escolas[] = "";
		while ($infos = mysqli_fetch_array($result_sql4, MYSQLI_ASSOC)) {
		$todas_escolas[] = $infos;
		};

		echo "<table style='font-size: 9px' class='table-bordered table table-layout table-striped table-color table-condensed text-center'>";
		echo "<thead></thead>";
        echo "<th>Chão</th>";

	    foreach ($todas_escolas as $k) {
		switch ($_SESSION['stat'.$k['id']]['chao']) {
			case 1:
				$chao = 'Fraco';
				break;
			case 5:
				$chao = "Forte";
				break;			
			default:
				$chao = "OK";
				break;
		}

		echo	"<tr>";    
        echo    "<td>".$chao."</td>";
        echo 	"</tr>";

		};
         
         echo "</table></div>";
}


} else{
		echo "<h6>Escolas ainda não iniciaram os ensaios</h6>";
	}


?>


