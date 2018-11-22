<?php
session_start();


require_once('db.class.php');

$rodada = $_SESSION["round"];
$id_escola = $_SESSION["id_escola"];

if ($rodada == 1){

	$sql2 = "SELECT * from enredos where id_escola = $id_escola order by rand();";

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$resultado_query2 = mysqli_query($link, $sql2);

	if($resultado_query2){

		while ($linha2 = mysqli_fetch_array($resultado_query2, MYSQLI_ASSOC)) {
			$todas_infos[] = $linha2;
		};

		if (!isset($todas_infos)) {
			echo '</br>Nenhum enredo';
			} else {

			for ($i=0; $i < 3 ; $i++) { 
				
			echo "<div class='col-md-4'>";
				  echo                 	"<div class='panel panel-default'>";
			echo						"<div class='panel-heading'>";
			echo						"<h6 class='panel-title'>Opção 1</h6>";
			echo						 "</div>";
			echo						"<div class='panel-body' style='box-sizing: border-box;height: 140px'>";
			echo						"Enredo ".$todas_infos[$i]['id_enredo'];
			echo						"</div>";
			echo	                   "<button type='button' class='btn btn-default btn-block btn-action enredos' data-enredo='".$todas_infos[$i]['id_enredo']."'' style='margin-bottom: 0px'>Selecionar</button>";
			echo						"</div> ";
			echo                	"</div>";

			};

			};

			};

} else {

	$sql = "SELECT *, case when can_show_until = can_show_since then 1 else 0 end as rod_exata from acoes where can_show_since <= $rodada and can_show_until >= $rodada order by rod_exata DESC, rand() DESC limit 3;";

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$resultado_query = mysqli_query($link, $sql);

	
	if($resultado_query){

		while ($linha = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC)) {
			$todas_infos[] = $linha;
		};
	};

	if (!isset($todas_infos)) {
		echo '</br>Nenhuma ação';
	} else {

	for ($i=0; $i < 3 ; $i++) { 
		
	echo "<div class='col-md-4'>";
		  echo                 	"<div class='panel panel-default'>";
	echo						"<div class='panel-heading'>";
	echo						"<h6 class='panel-title'>Opção 1</h6>";
	echo						 "</div>";
	echo						"<div class='panel-body' style='box-sizing: border-box;height: 70px'>";
	echo						"Ação ".$todas_infos[$i]['id_acao'];
	echo						"</div>";
	echo	                   "<button type='button' class='btn btn-default btn-block btn-action teste3' data-com='".$todas_infos[$i]['effect_com']."' data-des='".$todas_infos[$i]['effect_des']."' data-bar='".$todas_infos[$i]['effect_bar']."' style='margin-bottom: 0px'>Selecionar</button>";
	echo						"</div> ";
	echo                	"</div>";

	};

	};

	};


?>