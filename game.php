<?php
session_start();
	if (!isset($_SESSION['usuario'])) {
		header('Location: index.php?erro=1');
	}

	if (isset($_POST['rodada'])){
		$_SESSION['round'] = $_POST['rodada'];
	}

if ($_SESSION['round']==1) {
    header("Location: inicio.php");
  }  

if ($_SESSION['round']==7 || $_SESSION['round']==10 || $_SESSION['round']==13 || $_SESSION['round']==16) {

  header('Location: add_to_stat.php');
}

if($_SESSION['round']==19){
  header("Location: calcula_notas_salva_db.php");
}

if($_SESSION['round']==20){
  header("Location: results_notas.php");
}

if($_SESSION['bar'] > 100){
	$_SESSION['bar'] = 100;
};
if($_SESSION['com']  > 100){
	$_SESSION['com'] = 100;
};
if($_SESSION['des']  > 100){
	$_SESSION['des'] = 100;
};

?>
<!DOCTYPE html>
<html lang="pt-br">
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
              url: 'ajax_enredos.php',
              success: function(data) {
                $('#escolas').html(data);
              }
            });
          $.ajax({
              url: 'ajax_results_bar.php',
              success: function(data) {
                $('#results_bar').html(data);
              }
            });
          $.ajax({
              url: 'ajax_results_chao.php',
              success: function(data) {
                $('#results_chao').html(data);
              }
            });
          $.ajax({
              url: 'ajax_results_des.php',
              success: function(data) {
                $('#results_des').html(data);
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
    <script src="https://glacial-tundra-34184.herokuapp.com/js/exercer_acoes.js"></script>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <div style="display: none" id="round">S<?=$_SESSION["round"]?></div>
  <body  id="fundo">
    <div class="container-fluid" >
      <nav class="navbar navbar-default">
           <div class="navbar-header">
             <a  href="#">
             	<img src="img/logo/android-icon-48x48.png"></a>
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#barra-navegacao">
                <span class="sr-only">Alternar Menu</span>
                <span class="icon-bar"></span>  
                <span class="icon-bar"></span>  
                <span class="icon-bar"></span>  
              </button>
           </div>

            <div class="collapsed navbar-collapse" id="barra-navegacao" >
                <div class="nav navbar-left">
                  <ul class="nav">
                      <li class="topicos"><?= $_SESSION['name'] ?></li>
                      <li class="topicos">Guilherme Lacerda</li>
                  </ul>
                </div>
                <ul class="nav navbar-nav navbar-right" align="middle">
                       <li><a href="sair.php">Sair</a></li>
                      <li><a href="home.php">Minha Conta</a></li>
                   </ul>  
            </div>    
      </nav>
      <div class="container-fluid">
        <!-- Modal -->
          <div class="modal fade" role="dialog" id="janela">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">

                    <!-- header -->
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">
                        <span>&times;</span>
                      </button>
                      <h4 class="modal-title">Out/2018 - Semana 1</h4>
                    </div>

                    <!-- body -->
                    <div class="modal-body">
                      <h4>Instruções</h4>
                      <p>Lorem Ipsum Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Lorem Ipsum Lorem IpsumLorem IpsumLoremLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </p>
                      <h4 style="border-bottom: 1px;">Notícias</h4>
                      <p>Lorem Ipsum Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Lorem Ipsum Lorem IpsumLorem IpsumLoremLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem </p>
                      <article>
                        Lorem Ipsum Lorem Ipsum Lorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem Lorem Ipsum Lorem IpsumLorem IpsumLoremLorem IpsumLorem IpsumLorem IpsumLorem IpsumLorem
                      </article>
                    </div>  
                    <!-- footer -->
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                      <button type="submit" class="btn btn-primary">Logar</button>                
                    </div>      
                    </div>        
                  </div>
             </div>
        <!-- Conteúdo "Estático" -->
        <div class="row">
          <div class="col-md-3">

              <table class="table table-condensed table-striped table-color table-bordered">
                <thead>
                </thead>
                <tr rowspan="2">
                  <td colspan="2"><center><img src="<?= $_SESSION['img'] ?>" align="center"></center></td>
                </tr>
                <tr>
                  <td>Fundação</td>
                  <td><?= $_SESSION['info'] ?></td>
                </tr>
                <!-- <tr>
                  <td>Região</td>
                  <td>Vila Isabel</td>
                </tr> -->
                <!-- <tr>
                  <td>Títulos</td>
                  <td>1988, 2006, 2013</td>
                </tr>
                <tr>
                  <td>Intérprete</td>
                  <td>Tinga</td>
                </tr>
                <tr>
                  <td>Rainha de Bateria</td>
                  <td>Sabrina Sato</td> -->
                </tr>
                </table>
                <table class="table table-condensed table-striped table-color table-bordered">
                  <thead></thead>
                  <tr>
                    <th><h4 style="font-weight: bold">$</h4></th>
                    <th><h4><?= $_SESSION['cash'] ?>.000,00</h4></th>
                  </tr>
                </table>
          </div>
          <div class="col-md-6">
                	
                <div align="center">
                	<div class="col-md-12">
                    <div class="prog-row" >
                    <h4>Ritmo no Barracão</h4>
                    <div class="progress">
                    <div id="barracao" class=" progress-bar" style="width:<?= $_SESSION['bar'] ?>%; font-size: 12px;"><?= $_SESSION['bar'] ?></div>
                    </div>
                	</div>
                    </div>
                    <div class="col-md-12">
                    <div class="prog-row" >
                    <h4>Comunidade</h4>
                     <div class="progress">
                     <div id="com" class="progress-bar" style="width: <?= $_SESSION['com'] ?>%; font-size: 12px"><?= $_SESSION['com'] ?></div>
                    </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="prog-row" >
                    <h4>Desempenho nos Ensaios</h4>
                     <div class="progress">
                      <div id="des" class=" progress-bar"  style="width: <?= $_SESSION['des'] ?>%; font-size: 12px"><?= $_SESSION['des'] ?></div>
                    </div>
                </div>
                    </div>
                </div>
  
     
            
                <div class=" col-md-12" align="center" style="margin-top: 3px;margin-bottom: 3px;">
                    <h4>Ações disponíveis para essa semana</h4>
                    <div id="action"></div>
                    <!--from load_actions.php-->
                    
                </div>
          </div>
          <div class="col-md-3">
        	<!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
			    <li class="active" style="font-size: 11px;" ><a href="#escolas" data-target="#escolas" data-toggle="tab">Enredos</a></li>
			    <li style="font-size: 11px;"><a href="#results_bar" data-target="#results_bar" data-toggle="tab" >Barracões</a></li>
			    <li style="font-size: 11px;"><a href="#results_chao" data-target="#results_chao" data-toggle="tab" >Chão</a></li>
			    <li style="font-size: 11px;"><a href="#results_des" data-target="#results_des" data-toggle="tab" >Samba</a></li>
		  </ul>

		  <!-- Tab panes -->
		  	<div class="tab-content">
		  	<div class="col-md-6" style="padding:0px 0px;">
		  	<table style='font-size: 9px' class='table-bordered table table-layout table-striped table-color table-condensed text-center'>
			<thead></thead>
        	<th>Escolas</th>
        	<tr>
        	<td>Vila Isabel</td>
        	</tr>
        	<tr>
        	<td>Império Serrano</td>
        	</tr><tr>
        	<td>Viradouro</td>
        	</tr><tr>
        	<td>Grande Rio</td>
        	</tr><tr>
        	<td>Salgueiro</td>
        	</tr><tr>
        	<td>Beija-Flor</td>
        	</tr><tr>
        	<td>Imperatriz</td>
        	</tr><tr>
        	<td>Unidos da Tijuca</td>
        	</tr><tr>
        	<td>Portela</td>
        	</tr><tr>
        	<td>União da Ilha</td>
        	</tr><tr>
        	<td>Paraíso do Tuiuti</td>
        	</tr><tr>
        	<td>Mangueira</td>
       		</tr><tr>
        	<td>Mocidade</td>
        	</tr>

        	</table>
        	</div>
		    <div class="tab-pane fade in active col-md-6" role="tabpanel" id="escolas" style="padding:0px 0px;" >
		    
		   	</div>
		    <div role="tabpanel" class="tab-pane fade in col-md-6" id="results_bar" style="padding:0px 0px;">

		    </div>
		    <div role="tabpanel" class="tab-pane fade in col-md-6" id="results_chao" style="padding:0px 0px;">

		    </div>
		    <div role="tabpanel" class="tab-pane fade in col-md-6" id="results_des" style="padding:0px 0px;">

		    </div>
		    <form  method="post" id="next-round">
		    <input style="display: none" name='bar' value=0></input>
		 	<input style="display: none" name='com' value=0></input>
		    <input style="display: none" name='des' value=0></input>
		    <input style="display: none" name='cash' value=0></input>
            <button id='teste2' type="submit" name="round" value="<?= ($_SESSION["round"]+1)?>" class="btn-action btn btn-default btn-advance btn-block" style="height: 60px;" >Ir para Próxima Semana</button>
            </form>
          </div>
        </div>  
      </div>
      <footer style="margin-bottom: 0px">
          <div class="container-fluid">
            <table class="table table-layout table-condensed table-bordered table-striped table-color text-center display-table display-cell" style="font-size: 12px">
                        <th style="background-color:white;font-size: 20px;text-align: center;vertical-align: middle" rowspan="2"><span class="glyphicon glyphicon-calendar"></span></th>
                        <th colspan="4">Out/18</th>
                        <th colspan="4">Nov/18</th>
                        <th colspan="4">Dez/18</th>
                        <th colspan="4">Jan/19</th>
                        <th colspan="4">Fev/19</th>
                        <tr>
                          <td id="S1">Semana 1</td>
                          <td id="S2">Semana 2</td>
                          <td id="S3">Semana 3</td>
                          <td id="S4">Semana 4</td>
                          <td id="S5">Semana 5</td>
                          <td id="S6">Semana 6</td>
                          <td id="S7">Semana 7</td>
                          <td id="S8">Semana 8</td>
                          <td id="S9">Semana 9</td>
                          <td id="S10">Semana 10</td>
                          <td id="S11">Semana 11</td>
                          <td id="S12">Semana 12</td>
                          <td id="S13">Semana 13</td>
                          <td id="S14">Semana 14</td>
                          <td id="S15">Semana 15</td>
                          <td id="S16">Semana 16</td>
                          <td id="S17">Semana 17</td>
                          <td id="S18">Semana 18</td>
                          <td id="S19">Semana 19</td>
                          <td id="S20">Semana 20</td>
                        </tr>
                        <tr> 
                          <td style="font-weight: bold">Calendário</td>
                          <td class="activity">Escolha Enredo</td>
                          <td></td>
                          <td></td>
                          <td  class="activity">Escolha Samba</td>
                          <td></td>
                          <td></td>
                          <td class="activity">1º Ensaio</td>
                          <td></td>
                          <td></td>
                          <td class="activity">2º Ensaio</td>
                          <td></td>
                          <td></td>
                          <td class="activity">3º Ensaio</td>
                          <td></td>
                          <td></td>
                          <td class="activity">Ensaio Técnico</td>
                          <td></td>
                          <td class="activity">Desfile</td>
                          <td style="background-color: gold">Apuração</td>
                          <td></td>
                        </tr>
              </table>
            </div>
        </footer>

        <!-- Include all compiled plugins (below), or include individual files as needed -->    
        
        <script type="text/javascript">

        var round = String($("#round").html());
				console.log(round);
				console.log('#' + round);
				$('#' + round).css('background-color', 'green');
				$('#' + round).css('color', 'white');		

        	// $(function () {
         //          $('[data-toggle="tooltip"]').tooltip()
         //          $.fn.extend({
         //              popoverClosable: function (options) {
         //                  var defaults = {
         //                      template:
         //                          '<div class="popover">\
         //          <div class="arrow"></div>\
         //          <div class="popover-header" style="width:200px">\
         //          <button type="button" class="close" data-dismiss="popover" aria-hidden="true">&times;</button>\
         //          <h3 class="popover-title"></h3>\
         //          </div>\
         //          <div class="popover-content"></div>\
         //          </div>'
         //                  };
         //                  options = $.extend({}, defaults, options);
         //                  var $popover_togglers = this;
         //                  $popover_togglers.popover(options);
         //                  $popover_togglers.on('click', function (e) {
         //                      e.preventDefault();
         //                      $popover_togglers.not(this).popover('hide');
         //                  });
         //                  $('html').on('click', '[data-dismiss="popover"]', function (e) {
         //                      $popover_togglers.popover('hide');
         //                  });
         //              }
         //          });
         //          $(function () {
         //              $('[data-toggle="popover"]').popoverClosable();
         //          });
         //                            })
        </script>
  </body>
      

    </html>


