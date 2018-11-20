<?php
session_start();


	foreach ($_POST as $key => $value) {
		$_SESSION[$key] = $value;
	}

var_dump($_SESSION);



// header("Location: game.php");






?>
<!DOCTYPE html>
<html>
<head>
	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>gresfoot</title>
    <link rel="icon" type="image/png" sizes="96x96" href="img/logo/favicon-32x32.png">

    <!-- Bootstrap -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="estilo.css" rel="stylesheet">
    <!-- <script src="js/jquery-2.2.4.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet"> -->

    <script type="text/javascript">
    	$(document).ready( function(){
  				$.ajax({
							url: 'test.php',
							success: function(data) {
								$('#escolas').html(data);
							}
						});
  				$.ajax({
							url: 'load_actions.php',
							success: function(data) {
								$('#action').html(data);
							}
						}); 				
  						
  		});

    	



    </script>
    <script src="js/exercer_acoes.js"></script>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
</head>
<body>
	<form action='game.php'>
		<button>prosseguir</button>
</form>
</body>
</html>