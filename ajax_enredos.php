<?php
	session_start();

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
        echo "<th>Enredo</th>";

		foreach ($todas_escolas as $k) {
		// echo $k["id"]." - ".$k['name']."</br>";
		
		echo	"<tr>";    
        echo    "<td>".$_SESSION['stat'.$k['id']]['enredo']."</td>";
        echo 	"</tr>";

		};
         
         echo "</table></div>";
}




?>


