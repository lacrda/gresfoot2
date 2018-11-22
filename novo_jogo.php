<?php

	session_start();
	unset($_SESSION['id_jogo']);

	$id_escola = $_POST['id_escola'];
	echo $id_escola."</br>";
	unset($_SESSION['id_escola']);
	$_SESSION['id_escola'] = $id_escola;
	echo $_SESSION['id_escola']."</br>";

	
	$bar = mt_rand(55,65);
	echo $bar."</br>";
	$com = mt_rand(55,65);
	echo $com."</br>";
	$des = 180 - $bar - $com;
	echo $des;

	$_SESSION['round'] = 0;
	$_SESSION['bar'] = $bar;
	$_SESSION['com'] = $com;
	$_SESSION['des'] = $des;

	header("Location: load_new_game.php");






?>