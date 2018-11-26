<?php

	class db{

		//host
		private $host = 'us-cdbr-iron-east-01.cleardb.net';


		//usuario
		private $usuario = 'b3b2eb57f4bfd7';

		//senha
		private $senha = '4d4a033d';


		//bd para executar
		private $database = 'heroku_723cd138ea77e37';

		public function Conecta_mysql(){
			

			$con = mysqli_connect($this->host, $this->usuario, $this->senha, $this->database);
			//ajustar  o charset de comunicação entre app e bd
			mysqli_set_charset($con,'utf8');


			//verificar conexão
			if(mysqli_connect_errno()){
				echo 'erro ao conectar com bd mysql'.mysqli_connect_error();
			}

			return $con;



		}


	}





?>