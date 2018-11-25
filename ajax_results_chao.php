<?php
	session_start();


function isJSON($string){
   return is_string($string) && is_array(json_decode($string, true)) ? true : false;
}
	$id_jogo = $_SESSION['id_jogo'];

	if ($_SESSION['round'] > 7) {

		require_once('db.class.php');

		$sql = "SELECT * FROM games join escolas on games.id_escola = escolas.id WHERE games.id_jogo = $id_jogo";

		$objDb = new db();
		$link = $objDb->conecta_mysql();

		$resultado_query = mysqli_query($link, $sql);

		if($resultado_query){

		$lista_infos = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);

		foreach ($lista_infos as $k=>$v) {
		if (isJSON($v)){
		$_SESSION[$k]=json_decode($v,true);
		continue;
		}
		$_SESSION[$k]=$v;
		};

		$todas_escolas = range(1,13);

		echo "<table style='font-size: 9px' class='table-bordered table table-layout table-striped table-color table-condensed text-center'>";
		echo "<thead></thead>";
        echo "<th>Chão</th>";

	    foreach ($todas_escolas as $k) {
		if ($_SESSION['stat'.$k]['chao'] > 5) {
			$chao = "Excelente";
			$stylec = 'color: green';
			} else if ($_SESSION['stat'.$k]['chao'] > 4) {
			$chao = "Bom";
			$stylec = '';
			} else if ($_SESSION['stat'.$k]['chao'] > 3) {
			$chao = "OK";
			$stylec = '';
			} else {
			$chao = 'Fraco';
			$stylec = 'color: red';
			};							
		echo	"<tr>";    
        echo    "<td>".$chao."</td>";
        echo 	"</tr>";
		}

		};
         
         echo "</table></div>";
} else{
		echo "<div style='padding:5px 10px;'>";
		echo "<h6>Escolas ainda não iniciaram os ensaios</h6>";
		echo "</div>";
	}


?>


