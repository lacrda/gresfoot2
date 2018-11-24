<?php
              
  session_start();
  require_once('db.class.php');
		$objDb = new db();
		$link = $objDb->conecta_mysql();
		$id_jogo = $_SESSION['id_jogo'];
		$sql = "SELECT * from games where id_jogo = $id_jogo;"; 
				if($resultado_query = mysqli_query($link, $sql)){
					
				$resultado = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);
				$array_jsons[]="";				
				foreach ($resultado as $key => $value) {
						if (substr($key, 0, 4 ) == "stat") {
							$k[$key] = json_decode($value, true);
							$k[$key]['chao'] = $k[$key]['chao'] + rand(-1,1);
							$k[$key]['bar'] = rand($k[$key]['bar'],5);
							$array_jsons[$key]=json_encode($k[$key]);


							// if ($k[$key]['bar']==5) {
							// 	if ($k[$key]['chao']==5) {
							// 		$array_jsons[$key]=json_encode($value);
							// 		continue;
							// 	} else {
							// 		$k[$key]['chao'] = $k[$key]['chao'] + rand(-1,1);
							// 	};
							// 	$array_jsons[$key]=json_encode($value);
							// 	continue;
							// } else {
							// 	$k[$key]['bar'] = $k[$key]['bar'] + rand(-1,1);
							// };
							// $array_jsons[$key]=json_encode($value);						
					};
				};
			};
		
		$objDb = new db();
		$link = $objDb->conecta_mysql();

		$sql2 = "UPDATE games SET stat1='".$array_jsons['stat1']."',stat2='".$array_jsons['stat2']."', stat3='".$array_jsons['stat3']."', stat4='".$array_jsons['stat4']."', stat5='".$array_jsons['stat5']."', stat6='".$array_jsons['stat6']."', stat7='".$array_jsons['stat7']."', stat8='".$array_jsons['stat8']."', stat9='".$array_jsons['stat9']."', stat10='".$array_jsons['stat10']."', stat11='".$array_jsons['stat11']."', stat12='".$array_jsons['stat12']."', stat13='".$array_jsons['stat13']."' WHERE id_jogo = $id_jogo";

		if($resultado_query = mysqli_query($link, $sql2)){
			echo 'update sucessful';
			var_dump($array_jsons);
			var_dump($_SESSION);
		} else {
			echo("Error description: ".mysqli_error($link));
		};


header("Location: results_ensaios.php");


?>