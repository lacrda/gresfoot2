<?php

	session_start();

	require_once('db.class.php');


	$id = $_SESSION['id_usuario'];
	$usuario = $_SESSION['usuario'];

	$sql = " SELECT * FROM games left join escolas on games.id_escola = escolas.id join users on games.user_id = users.id where games.user_id = $id order by games.id_jogo desc";

	$objDb = new db();
	$link = $objDb->conecta_mysql();

	$resultado = mysqli_query($link, $sql);

	if($resultado = mysqli_query($link, $sql)){

		while ($jogo = mysqli_fetch_array($resultado, MYSQLI_ASSOC)) {
			$todos_jogos[]= $jogo;
			};

		if (!isset($todos_jogos)) {
			echo "<br>Você não possui jogos salvos.";
			die();
		}

		foreach ($todos_jogos as $jogos_salvos) {
					
			echo '</br></br>';
			echo "<form action='load_id_jogo.php' method='POST'>";
			echo "<div class='row prog-row'>";
		    echo "<h4>".$jogos_salvos['name']."</h4>";
		    echo "<div class='progress' style='height:20px'>";
		    echo "<div id='prog_jogo' data='' class='progress-bar' style='width:".($jogos_salvos['round']*5)."%; font-size: 16px'></div>";
		    echo "</div>";
			echo "Último acesso: ".$jogos_salvos['last_edit'];
		    echo "</div>";
			echo "</div>";
			echo "</div>";
			echo "<button class='btn btn-sm btn-primary' type='submit' name='continuar' value='".$jogos_salvos['id_jogo']."'>Continuar Este Jogo</button>";
			echo "<button style='margin-left:10px' class='btn-xs btn btn-danger' type='submit' name='deletar' value='".$jogos_salvos['id_jogo']."'>Deletar Jogo</button>";
			echo "</form>";
		};
		};





?>