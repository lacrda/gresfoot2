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
		header("Location: game.php");
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
<body class="fensaio" style="overflow-y: hidden" >
	<div class="container-fluid">
	<div class="col-md-12" style="height: 40px"></div>
	<div class="col-md-3"></div>
	<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading"><?= $ensaio ?></div>
				<div class="panel-body">
					<p><?= $text ?></p>
		<div class="col-md-6">
				<table class="table table-condensed table-striped table-bordered" style="font-size: 12px; text-align: center">
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
        <div class="col-md-6">
        	<table  class="table table-condensed table-striped col-md-6 table-bordered" style="font-size: 12px;text-align: center">
        		<thead></thead>
        	<tr>
        	<th style="text-align: center">Chao</th>
        	<th style="text-align: center">Samba</th>
        	</tr>
        	
            <?php
               require_once('db.class.php');

	            $objDb = new db();
				$link = $objDb->conecta_mysql();
				$id_jogo = $_SESSION['id_jogo'];

				$sql = "SELECT * from games where id_jogo = $id_jogo;"; 

				if($resultado_query = mysqli_query($link, $sql)){
					$result = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);
					foreach ($result as $key => $value) {
						if (substr($key, 0, 4 ) == "stat") {
							$k = json_decode($value, true);

							$num_stat = substr($key,4,2);
							$statz = 'stat'.$num_stat;
							if ($_SESSION['round'] == 7){
								$iconc = '';
							} else {
								if ($k['chao']>$_SESSION[$statz]["chao"] && $k['chao'] > 3 && $_SESSION[$statz]["chao"] < 5 ) {
								$iconc = '<span class="glyphicon glyphicon-arrow-up" aria-hidden="true" style="color:green"></span>';
								} elseif ($k['chao']<$_SESSION[$statz]["chao"] && $k['chao'] < 5 && $_SESSION[$statz]["chao"] > 3) {
								$iconc = '<span class="glyphicon glyphicon-arrow-down" aria-hidden="true"  style="color:red"></span>';
								} else {
								$iconc = "";
								}
							}
							if ($k['chao'] > 5) {
								$chao = "Excelente";
								$stylec = 'color: green';
							} else if ($k['chao'] > 4) {
								$chao = "Bom";
								$stylec = 'color:green';
							}else if ($k['chao'] > 3) {
								$chao = "OK";
								$stylec = '';
							} else {
								$chao = 'Fraco';
								$stylec = 'color: red';
							};							
						
						if ($k['samba'] > 4) {
								$samba = "Excelente";
								$styles = 'color: green';
							} else if ($k['samba'] > 3) {
								$samba = "Bom";
								$styles = 'color: green';
							} else if ($k['samba'] > 2) {
								$samba = "OK";
								$styles = '';
							} else {
								$samba = 'Fraco';
								$styles = 'color: red';
							};	
						echo "<tr>";
							
						echo "<td style='$stylec'>".$chao." ".$iconc."</td>";
						echo "<td style='$styles'>".$samba."</td>";
						echo "</tr>";
						};
					};
				};
             ?>

             </table>
              <form  method="post" id="next-round" action="btwn_rounds.php">
		      <button id='teste2' type="submit" name="round" value="<?= ($_SESSION['round']+1)?>" class="btn-action btn btn-default btn-advance btn-block" style="height: 60px;" >Ir para Próxima Semana</button>
            </form>
        
		</div>
		</div>
	<div class="col-md-3"></div>
	
</div>


	</div>
</body>
</html>