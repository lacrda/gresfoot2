<?php
session_start();

switch ($_SESSION['round']) {
	case 7:
		$ensaio = 'Primeiro Ensaio';
		$text = 'As Escolas de Samba do RJ fizeram seu primeiro ensaio! Confira abaixo a avaliação dos ensaios segundo os especialistas.';
		break;
	case 10:
		$ensaio = 'Segundo Ensaio';
		$text = 'Todas as agremiações já ensaiaram novamente. Confira abaixo como anda seu desempenho segundo a mídia.';
		break;
	case 13:
		$ensaio = 'Terceiro Ensaio';
		$text = 'Confira as notas dos jornalistas para o desempenho das Escolas no ensaio da última semana.';
		break;
	case 16:
		$ensaio = 'Ensaio Técnico';
		$text = 'Finalizados os ensaios técnicos no Sambódromo, já conseguimos ter uma ideia de como será o desfile de cada escola! Confira a previsão dos especialistas para cada escola.';
		break;
	default:
		$text = "teste";
		break;
}


?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Ensaios</title>
    <link href="estilo.css" rel="stylesheet">
    <link rel="icon" type="image/png" sizes="96x96" href="img/logo/favicon-32x32.png">

    <!-- Bootstrap -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="fensaio" style="overflow-y: auto" >
	<div class="container-fluid">
	<div class="col-md-12" style="height: 20px"></div>
	
	<div class="col-md-12">
			<div class="panel panel-default">
			
			<div class="panel-heading"><?= $ensaio ?></div>
		
			
			<div class="panel-body">
					
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
        <div class="col-md-10">
        	<table  class="table table-condensed table-striped col-md-6 table-bordered" style="font-size: 14px;text-align: center">
        		<thead></thead>
        	<tr style="height: 20px; width: 25px;">
        	<th style="text-align: center">Enredo</th>
        	<th style="text-align: center">Evolução</th>
        	<th style="text-align: center">Bateria</th>
        	<th style="text-align: center">Mestre Sala e Porta Bandeira</th>
        	<th style="text-align: center">Comissão de Frente</th>
        	<th style="text-align: center">Alegorias</th>
        	<th style="text-align: center">Harmonia</th>
        	<th style="text-align: center">Fantasias</th>
        	<th style="text-align: center">Samba-Enredo</th>
    

        	</tr>
        	
            <?php
               require_once('db.class.php');

	            $objDb = new db();
				$link = $objDb->conecta_mysql();
				$id_jogo = $_SESSION['id_jogo'];

				$sql = "SELECT stat1,stat2 ,stat3, stat4 ,stat5, stat6, stat7, stat8, stat9, stat10, stat11, stat12, stat13 from games where id_jogo = $id_jogo;"; 

				if($resultado_query = mysqli_query($link, $sql)){
					$result = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);

				
				
					foreach ($result as $key => $value) {
					$k =  json_decode($value, true);
					$array_stats[$key] = $k;
					

				
					};
					
					foreach ($array_stats as $key => $value) {
					
						echo "<tr>";							
					for ($i=1; $i < 10 ; $i++) { 
						 echo "<td style='font-style: bold;'>".(rand(98,100)/10)."</td>";
					}
						echo "</tr>";

					
					};
					
				};
					
				
             ?>

             </table>

        
		</div>
		</div>
	
</div>


	</div>
</body>
</html>