<?php
              
  session_start();

  echo $_SESSION['round'];


  require_once('db.class.php');
		$objDb = new db();
		$link = $objDb->conecta_mysql();
		$id_jogo = $_SESSION['id_jogo'];
		$sql = "SELECT * from games where id_jogo = $id_jogo;"; 
		if($resultado_query = mysqli_query($link, $sql)){
					
		$resultado = mysqli_fetch_array($resultado_query, MYSQLI_ASSOC);
		$notas[]="";
		$sum = 0;				
		foreach ($resultado as $key => $value) {
				if (substr($key, 0, 4 ) == "stat") {
				$k[$key] = json_decode($value, true);
				$notas['enredo'][$key] = ($k[$key]['bar'] + $k[$key]['samba'])/2;
				$notas['evolucao'][$key] = ($k[$key]['bar']*2 + $k[$key]['chao']*3)/5;
				$notas['bateria'][$key] = ($k[$key]['bar'] + $k[$key]['samba'])/2;
				$notas['mspb'][$key] = ($k[$key]['bar']);
				$notas['comissao'][$key] = ($k[$key]['bar']*2 + $k[$key]['chao'])/3;
				$notas['alegorias'][$key] = ($k[$key]['bar']);
				$notas['harmonia'][$key] = ($k[$key]['bar'] + $k[$key]['chao']*2)/3;
				$notas['fantasia'][$key] = $k[$key]['bar'];
				$notas['samba'][$key] = $k[$key]['samba'];
				$notas['total'][$key] = 0;
				};
				};
			
			$notas_json[]="";
		foreach ($notas as $key => $value) {
			if (is_array($value)) {	
			foreach ($value as $escola => $nota) {
				if ($nota > 5) {
					$notaf = rand(99,rand(99,100))/10;
				} else if ($nota > 4){
					$notaf = rand(rand(98,99),rand(99,100))/10;
				} else if ($nota > 3){
					$notaf = rand(98,rand(98,99))/10;
				} else if ($nota > 2){
					$notaf = rand(97,rand(98,99))/10;
				} else if ($nota > 1){
					$notaf = rand(95,97)/10;
				} else if ($nota == 0){
					$notaf = 0;	
				} else {
					$notaf = rand(93,97)/10;
				}
				$notasf[$escola][$key] = $notaf; 
			}

			}


		}
		foreach ($notasf as $key => $value) {
				$notas_json[$key] = json_encode($value);
			}

		$objDb = new db();
		$link = $objDb->conecta_mysql();

		$sql2 = "UPDATE games SET round=20, stat1='".$notas_json['stat1']."',stat2='".$notas_json['stat2']."', stat3='".$notas_json['stat3']."', stat4='".$notas_json['stat4']."', stat5='".$notas_json['stat5']."', stat6='".$notas_json['stat6']."', stat7='".$notas_json['stat7']."', stat8='".$notas_json['stat8']."', stat9='".$notas_json['stat9']."', stat10='".$notas_json['stat10']."', stat11='".$notas_json['stat11']."', stat12='".$notas_json['stat12']."', stat13='".$notas_json['stat13']."' WHERE id_jogo = $id_jogo";

		if($resultado_query = mysqli_query($link, $sql2)){
			echo 'update sucessful';
			
		} else {
			echo("Error description: ".mysqli_error($link));
		};



$_SESSION['round'] = 20;
header("Location: results_notas.php");
	}


?>