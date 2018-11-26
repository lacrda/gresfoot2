<?php

	class db{


		$url = parse_url(getenv("mysql://b0fc924a809363:8cf3ef12@us-cdbr-iron-east-01.cleardb.net/heroku_e3047586806ab25?reconnect=true"));

		$server = $url["host"];
		$username = $url["user"];
		$password = $url["pass"];
		$db = substr($url["path"], 1);

		echo $server."</br>";

		echo $db;

		public function conecta_mysql(){

		$conn = mysqli_connect($server, $username, $password, $db);

		return $conn;

		//verificar conexão
		if(mysqli_connect_errno()){
			echo 'erro ao conectar com bd mysql'.mysqli_connect_error();
		}
	}

}


		
// //host
// 		private $host = 'localhost';


// 		//usuario
// 		private $usuario = 'root';

// // 		//senha
// // 		private $senha = '';


// // 		//bd para executar
// // 		private $database = 'gresfoot';
// 		// public function Conecta_mysql(){



// // 			$con = mysqli_connect($this->host, $this->usuario, $this->senha, $this->database);
// // 			//ajustar  o charset de comunicação entre app e bd
// 			mysqli_set_charset($con,'utf8');





	// 	}


	// }





?>