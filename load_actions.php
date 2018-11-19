<?php
session_start();

require_once('db.class.php');

$rodada = $_SESSION["round"];

$sql = "SELECT *, case when can_show_since = can_show_until then 0 else rand(10) end AS fd from acoes where can_show_since <= $rodada and can_show_until >= $rodada order by fd ASC";

$objDb = new db();
$link = $objDb->conecta_mysql();

$resultado_query = mysqli_query($link, $sql);

if($resultado_query){

$acoes[]="";
while ($linha = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC)) {
	$todas_infos[] = $linha;
	};


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

}


// foreach ($todas_infos as $k=>$v) {
// 	$acoes[$k]=$todas_infos[$k]["id_acao"];
// };

// foreach ($acoes as $key => $value) {
// 	echo "Ação ".$value."</br>";
// }


};



?>