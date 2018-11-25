<?php
	session_start();

	if ($_SESSION['round'] > 7) {

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
        echo "<th>Samba</th>";

	    foreach ($todas_escolas as $k) {
		
		if ($_SESSION['stat'.$k['id']]['samba'] > 5) {
								$samba = "Excelente";
								$styles = 'color: green';
							} else if ($_SESSION['stat'.$k['id']]['samba'] > 4) {
								$samba = "Bom";
								$styles = 'color: green';
							} else if ($_SESSION['stat'.$k['id']]['samba'] > 3) {
								$samba = "OK";
								$styles = '';
							} else {
								$samba = 'Fraco';
								$styles = 'color: red';
							};	

		echo	"<tr>";    
        echo    "<td>".$samba."</td>";
        echo 	"</tr>";

		};
         
         echo "</table></div>";
}
} else{
		echo "<div style='padding:5px 10px;'>";
		echo "<h6>Escolas ainda não iniciaram os ensaios</h6>";
		echo "</div>";
	}




?>


