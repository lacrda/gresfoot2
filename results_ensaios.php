<?php
session_start();

switch ($_SESSION['round']) {
	case 10:
		$ensaio = 'Primeiro Ensaio';
		$text = 'As Escolas de Samba do RJ fizeram seu primeiro ensaio! Confira abaixo a avaliação dos ensaios segundo os especialistas.';
		break;
	case 13:
		$ensaio = 'Segundo Ensaio';
		$text = 'Todas as agremiações já ensaiaram novamente. Confira abaixo como anda seu desempenho segundo a mídia.';
		break;
	case 15:
		$ensaio = 'Terceiro Ensaio';
		$text = 'Confira as notas dos jornalistas para o desempenho das Escolas no ensaio da última semana.';
		break;
	case 17:
		$ensaio = 'Ensaio Técnico';
		$text = 'Finalizados os ensaios técnicos no Sambódromo, já conseguimos ter uma ideia de como será o desfile de cada escola! Confira a previsão dos especialistas para cada escola.';
		break;
	default:
		echo $_SESSION['round'];
		// header("Location: game.php");
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
		<center>
			<div class="panel panel-default">
				<div class="panel-heading"><?= $ensaio ?></div>
				<div class="panel-body">
					<p><?= $text ?></p>
				</div>
				<table class="table table-condensed table-striped  table-bordered" style="text-align: center">
                <thead>
                	<td>Escola</td>
                	<td>Chão</td>
                	<td>Samba</td>
                </thead>

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
						echo "<tr>";
						echo "<td>Escola</td>";
						echo "<td>".$k['chao']."</td>";
						echo "<td>".$k['samba']."</td>";
						echo "</tr>";
						};
					};
				};
             ?>

             </table>
         	</div>
			
		</center>
	</div>
	<div class="col-md-3"></div>
	
</div></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>


	</div>
</body>
</html>