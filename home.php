<?php

	session_start();

	if (!isset($_SESSION['usuario'])) {
		header('Location: index.php?erro=1');
	}

	
?>

<!DOCTYPE HTML>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">

		<title>Gresfoot - Home</title>

		
		<!-- jquery - link cdn -->
		<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

		<script type="text/javascript">

			$(document).ready( function(){
			$('#novo_jogo').hide();
			$('#btn_novo_jogo').click( function(){
				$.ajax({
							url: 'consulta_escolas.php',
							success: function(data) {
								$('#lista_escolas').html(data);
							}
						});
				$('#novo_jogo').show();
				$('#jogos_s').hide();
				});
			$('#continuar').hide();
				//associar o evento de click ao botão
			$('#btn_carregar_jogo').click( function(){
					$.ajax({
							url: 'carregar_jogo.php',
							success: function(data) {
								$('#jogos_s').html(data);
							}
						});
				$('#jogos_s').show();
				$('#novo_jogo').hide();
				});



				

		});

		</script>
		<!-- bootstrap - link cdn -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link href="css/bootstrap.min.css" rel="stylesheet">
    	<link href="estilo.css" rel="stylesheet">
	
	</head>

	<body>

		<!-- Static navbar -->
	    <nav class="navbar navbar-default navbar-static-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <img src="img/logo/android-icon-48x48.png" />
	        </div>
	        
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav navbar-right">
	            <li><a href="sair.php">Sair</a></li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </nav>


	    <div class="container">
	    <row style= "margin-bottom: 0px, padding:0px">
	    	<p>
	    		Bem vindo, <?= $_SESSION['usuario'] ?> id: <?= $_SESSION['id_usuario'] ?> </p>
	    	</row>
    	<div class="col-md-6">
    	   	<div>
    	   		<button class="btn btn-default" id="btn_carregar_jogo">Continuar um Jogo
	    		</button>
	    	</div>
	    	<div>
	    	<div id="jogos_s" class="list-group">
	    	</div>
	    	<!--onde entra return carregar_jogo.php-->
	    	</div>
	    	</div>
	    	<div class="col-md-6">
	    	<div>
	    	<button type="btn" class="btn btn-default" id="btn_novo_jogo">Novo Jogo</button>
	    	<div class="form-group" id="novo_jogo">
	    	<br>
    		<label for="exampleFormControlSelect2">Escolha a Escola de Samba</label>
    		<form action='novo_jogo.php' method='POST'>
    		<select class="custom-select custom-select-lg mb-3" id="lista_escolas" name="id_escola">
			   	
			</select>
			</br>
			<div>
				</br>
    	   	<button type="submit" class="btn btn-primary" id="btn_iniciar_jogo">Iniciar Novo Jogo
	    	</button>
	    	</form>
	    	</div>
			</div>

	    	</div>
			</div>
			<br />


		</div>


	    </div>
	
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	</body>
</html>