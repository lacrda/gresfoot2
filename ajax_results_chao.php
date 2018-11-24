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
		switch ($_SESSION['stat'.$k]['chao']) {
			case 1:
				$chao = 'Fraco';
				break;
			case 5:
				$chao = "Excelente";
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
};

}


 else{
		echo "<h6>Escolas ainda não iniciaram os ensaios</h6>";
	}


?>


