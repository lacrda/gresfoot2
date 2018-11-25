<?php
              
  require_once('calcula_notas_salva_db.php');

  require_once('db.class.php');
  			foreach ($notasf as $key => $value) {
				$notas_json[$key] = json_encode($value);
			}

		$objDb = new db();
		$link = $objDb->conecta_mysql();

		$sql2 = "UPDATE games SET stat1='".$notas_json['stat1']."',stat2='".$notas_json['stat2']."', stat3='".$notas_json['stat3']."', stat4='".$notas_json['stat4']."', stat5='".$notas_json['stat5']."', stat6='".$notas_json['stat6']."', stat7='".$notas_json['stat7']."', stat8='".$notas_json['stat8']."', stat9='".$notas_json['stat9']."', stat10='".$notas_json['stat10']."', stat11='".$notas_json['stat11']."', stat12='".$notas_json['stat12']."', stat13='".$notas_json['stat13']."' WHERE id_jogo = $id_jogo";

		if($resultado_query = mysqli_query($link, $sql2)){
			echo 'update sucessful';
			
		} else {
			echo("Error description: ".mysqli_error($link));
		};