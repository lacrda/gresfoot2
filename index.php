<?php

	$erro = isset($_GET['erro']) ? $_GET['erro'] : '';

?>


<!DOCTYPE HTML>
<html lang="pt-br">
	<head>
		<meta charset="UTF-8">

		<title>Gresfoot - Login</title>

		<!-- jquery - link cdn -->
		<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

		<!-- bootstrap - link cdn -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

		<link href="estilo.css" rel="stylesheet">
	
		<script>
			$(document).ready(function(){
				$('#btn_login').click(function(){

					var campo_vazio = false;


					if($('#campo_usuario').val() == ''){
						$('#campo_usuario').css({'border-color': 'red'});
						var campo_vazio = true;
				} else {
					$('#campo_usuario').css({'border-color': 'grey'});
				}

					if($('#campo_senha').val() == ''){
						$('#campo_senha').css({'border-color': 'red'});
						var campo_vazio = true;
				} else {
					$('#campo_senha').css({'border-color': 'grey'});
				}

				if(campo_vazio) return false;

				})




			})						
		</script>
	</head>

	<body>

		<!-- Static navbar -->
		<div class="container-fluid">
	    	<nav class="navbar navbar-default navbar-static-top">
	      	  <div class="navbar-header">
		          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		          </button>
		          <img src="img/logo/apple-icon-60x60.png" class="img-responsive" align="middle">
			</div>
	        
	        <div id="barra-navegação" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav navbar-right">
	            <li class="barrinha"><a href="inscrevase.php">Inscrever-se</a></li>
	            <li class="<?= $erro ==1 ? 'open' : ''?> barrinha">
	            	<a id="entrar" data-target="#" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Entrar</a>
					<ul class="dropdown-menu" aria-labelledby="entrar">
						<div class="col-md-12">
				    		<p>Você possui uma conta?</h3>
				    		<br />
							<form method="post" action="validar_acesso.php" id="formLogin">
								<div class="form-group">
								<input type="text" class="form-control" id="campo_usuario" name="usuario" placeholder="Usuário" />
								</div>
								<div class="form-group">
								<input type="password" class="form-control red" id="campo_senha" name="senha" placeholder="Senha" />
								</div>
								<button type="submit" class="btn btn-primary" id="btn_login">Entrar</button>
								<br /><br />
								</form>
								<?php if ($erro == 1){
									 echo " Usuário e/ou senha inválido(s)";
									}
								?>
				  	</ul>
	            </li>
	          </ul>
	      				</div> <!--col-md-12-->
	        </div><!--/.nav-collapse -->
	    </nav>


	    <div class="container">

	      <!-- Main component for a primary marketing message or call to action -->
	      <div class="jumbotron">
	        <h1>Bem vindo ao gresfoot</h1>
	      </div>

	      <div class="clearfix"></div>
		</div>


	    </div>
	
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	</body>
</html>