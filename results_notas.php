<?php
session_start();

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Apuração</title>
    <link href="estilo.css" rel="stylesheet">
    <link rel="icon" type="image/png" sizes="96x96" href="img/logo/favicon-32x32.png">

    <!-- Bootstrap -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script type="text/javascript">
		$(document).ready( function(){
			var i = 1;
			$('#panel-body').click(function(){
				$('#notas'+i).show();
				i = i+1;
			});
			
			// 	$('.notas'+i).css().display(block);
			// 	var i = i+1;
		});
	</script>
</head>
<body class="fensaio" style="overflow-y: auto" >
	<div class="container-fluid">
	<div class="col-md-12" style="height: 20px"></div>
	
	<div class="col-md-12">
			<div class="panel panel-default">
			
			<div class="panel-heading"><center><?= 'Apuração de Notas </br> Carnaval RJ' ?></center><button style="float: right; margin-top: -20px;"><a href="home.php">Home</a></button></div>
		
			
			<div class="panel-body" id="panel-body">
					
		<div class="col-md-2">
			<table class="table table-condensed table-striped table-bordered" style="font-size: 14px; text-align: center">
	            <thead></thead>
	            <tr>
	        	<th style="text-align: center">Escolas</th>
	        	</tr>
	        	<tr>
	        	<td>Vila Isabel</td>
	        	</tr>
	        	<tr>
	        	<td>Império Serrano</td>
	        	</tr><tr>
	        	<td>Viradouro</td>
	        	</tr><tr>
	        	<td>Grande Rio</td>
	        	</tr><tr>
	        	<td>Salgueiro</td>
	        	</tr><tr>
	        	<td>Beija-Flor</td>
	        	</tr><tr>
	        	<td>Imperatriz</td>
	        	</tr><tr>
	        	<td>Unidos da Tijuca</td>
	        	</tr><tr>
	        	<td>Portela</td>
	        	</tr><tr>
	        	<td>União da Ilha</td>
	        	</tr><tr>
	        	<td>Paraíso do Tuiuti</td>
	        	</tr><tr>
	        	<td>Mangueira</td>
	       		</tr><tr>
	        	<td>Mocidade</td>
	        	</tr>
        	</table>
        </div>        	
       
            <?php
               require_once('db.class.php');

	            $objDb = new db();
				$link = $objDb->conecta_mysql();
				$id_jogo = $_SESSION['id_jogo'];

				$sql = "SELECT stat1,stat2 ,stat3, stat4 ,stat5, stat6, stat7, stat8, stat9, stat10, stat11, stat12, stat13 from games where id_jogo = $id_jogo;"; 

				if($resultado_query = mysqli_query($link, $sql)){
					$result = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);
					$k[]="";
					foreach ($result as $key1 => $value) {

					$array_stats[$key1] =  json_decode($value, true);


					};
					

					foreach ($array_stats as $stat => $array_quesitos) {
							
						if (is_array($array_quesitos)) {
							
							ksort($array_quesitos);
							$total = array_sum($array_quesitos);
							foreach ($array_quesitos as $quesito => $nota) {
							
							$notaf = $nota;	
							if ($quesito == 'total') {
								$notasf[$quesito][$stat] = $total;
							} else{								
							$notasf[$quesito][$stat] = $notaf;
							} 
							}
						}
						}
					}
					$i=1;
					foreach ($notasf as $quesito => $array_notas) {
							echo "<div class='col-md-1' style='padding:0px 0px;'>";
							echo "<table class='table table-condensed table-striped table-bordered' style='display: none;font-size: 14px;text-align: center; padding:0px 0px;' id='notas".$i."'>";
        					echo "<thead></thead>";
        					echo "<tr><th style='text-align: center'>".$quesito."</th></tr>";
							foreach ($array_notas as $stat => $nota) {
								
        						echo "<tr><td class='n".$stat."'>".$nota."</td></tr>";
							}
							echo "</table>";
							echo "</div>";
							$i++;
					};
			
             ?>

        
        <div class="col-md-1">
        	<table>

        	
        </div>
		</div>
	
</div>


	</div>
</body>
</html>