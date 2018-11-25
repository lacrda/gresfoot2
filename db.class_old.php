<?php

	class db{

		//host
		private $host = 'localhost';


		//usuario
		private $usuario = 'root';

		//senha
		private $senha = '';


		//bd para executar
		private $database = 'gresfoot';

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