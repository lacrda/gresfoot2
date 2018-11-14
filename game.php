<?php
session_start();
	if (!isset($_SESSION['usuario'])) {
		header('Location: index.php?erro=1');
	}
	
if($_SESSION['bar'] == ''){
	$_SESSION['bar'] = 0;
}
if($_SESSION['com'] == ''){
	$_SESSION['com'] = 0;
}
if($_SESSION['imp'] == ''){
	$_SESSION['imp'] = 0;
}

echo($_SESSION['usuario']);

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
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
  		$("#test").click(function(){
  			var user = $_SESSION['usuario'];
  			alert(user);
  		});		
  		});
    </script>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
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
            <!-- <div class="row actions hidden-xs" style="display: none">
              <div>
                <table class="table table-bordered table-striped table-color table-condensed" style="font-size: 12px" >
                <thead></thead>
                <tr>
                  <th style="width: 5px">.</th>
                  <th>Ações Recentes</th>
                  <th>$</th>
                  <th colspan="2">Áreas Impactadas</th>
                </tr>
                <tr>
                  <td>S1</td>
                  <td>Feijoada </td>
                  <td> 15 x num random</td>
                  <td></td>
                  <td><span class="glyphicon glyphicon-arrow-down">Comunidade</span></td>
                </tr>
                <tr>
                  <td>S2</td>
                  <td>Decisão "x"</td>
                  <td> - R$ 5.000,00 </td>
                  <td><span class="glyphicon glyphicon-arrow-up">Mídia</span></td>
                  <td><span class="glyphicon glyphicon-arrow-down">Comunidade</span></td>
                </tr>
                <tr>
                  <td>S3</td>
                  <td>Decisão "y"</td>
                  <td> - R$ 5.000,00 </td>
                  <td><span class="glyphicon glyphicon-arrow-up">Barracão</span></td>
                  <td><span class="glyphicon glyphicon-arrow-up">Comunidade</span></td>
                </tr>
                <tr>
                  <td>S4</td>
                  <td>Decisão "z"</td>
                  <td> - R$ 5.000,00 </td>
                  <td><span class="glyphicon glyphicon-arrow-up">Comunidade</span></td>
                  <td></td>
                </tr>
                <tr>
                  <td>S5</td>
                  <td>Decisão "a"</td>
                  <td> - R$ 5.000,00 </td>
                  <td><span class="glyphicon glyphicon-arrow-up">Mídia</span></td>
                  <td><span class="glyphicon glyphicon-arrow-down">Barracão</span></td>
                </tr>
                </table>
              </div>   
            </div> -->
            
      	
                <div align="center">
                	<div class="col-md-12">
                    <div class="prog-row" >
                    <h4>Ritmo no Barracão</h4>
                    <div class="progress">
                    <div class=" progress-bar " style="width:<?= $_SESSION['bar'] ?>%; font-size: 12px;"><?= $_SESSION['bar'] ?></div>
                    </div>
                	</div>
                    </div>
                    <div class="col-md-12">
                    <div class="prog-row" >
                    <h4>Comunidade</h4>
                     <div class="progress">
                     <div class="progress-bar" style="width: <?= $_SESSION['com'] ?>%; font-size: 12px"><?= $_SESSION['com'] ?></div>
                    </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="prog-row" >
                    <h4>Desempenho nos Ensaios</h4>
                     <div class="progress">
                      <div class=" progress-bar"  style="width: <?= $_SESSION['des'] ?>%; font-size: 12px"><?= $_SESSION['des'] ?></div>
                    </div>
                </div>
                    </div>
                </div>
  
     
            
                <div class=" col-md-12" align="center" style="margin-top: 3px;margin-bottom: 3px;">
                    <h4>Ações disponíveis para essa semana</h4>
                    <!--button text must have less than 45caracters-->
                    <div class="col-md-4">
                   	<div class="panel panel-default" >
					<div class="panel-heading">
					<h6 class="panel-title">Opção 1</h6>
					 </div>
					<div class="panel-body" style="box-sizing: border-box;height: 70px">
					Contratar Equipe Terceirizada
					</div>
                    <button   id="test" type="button" class="btn btn-default btn-block btn-action" style="margin-bottom: 0px;">Selecionar</button>
					</div> 
                	</div>
                	<div class="col-md-4">
                   	<div class="panel panel-default">
					<div class="panel-heading">
					<h6 class="panel-title">Opção 2</h6>
					 </div>
					<div class="panel-body" style="box-sizing: border-box;height: 70px">
					Fazer Feijoada na Quadra
					</div>
                    <button type="button" class="btn btn-default btn-block btn-action" style="margin-bottom: 0px">Selecionar</button>
					</div> 
                	</div>
                	<div class="col-md-4">
                   	<div class="panel panel-default">
					<div class="panel-heading">
					<h6 class="panel-title">Opção 3</h6>
					 </div>
					<div class="panel-body" style="box-sizing: border-box;height: 70px">
					Divulgar Samba
					</div>
                    <button type="button" class="btn btn-default btn-block btn-action" style="margin-bottom: 0px">Selecionar</button>
					</div> 
                	</div>
                	
                </div>
          </div>
          <div class="col-md-3">
        	<!-- Nav tabs -->
		  <ul class="nav nav-tabs" role="tablist">
			    <li class="active" ><a href="#escolas" data-target="#escolas" data-toggle="tab">Escolas</a></li>
			    <li > <a href="#profile" data-target="#profile" data-toggle="tab" > Últimas Ações </a></li>
		  </ul>

		  <!-- Tab panes -->
		  	<div class="tab-content">
		    <div class="tab-pane fade in active" role="tabpanel" id="escolas">
		    
		   	</div>
		    <div role="tabpanel" class="tab-pane fade in" id="profile">Últimas Ações</div>
            <button type="submit" class="btn-action btn btn-default btn-advance btn-block" style="height: 60px;">Ir para Próxima Semana</button>
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
                          <td>Semana 1</td>
                          <td>Semana 2</td>
                          <td>Semana 3</td>
                          <td>Semana 4</td>
                          <td>Semana 5</td>
                          <td>Semana 6</td>
                          <td>Semana 7</td>
                          <td>Semana 8</td>
                          <td>Semana 9</td>
                          <td>Semana 10</td>
                          <td>Semana 11</td>
                          <td>Semana 12</td>
                          <td>Semana 13</td>
                          <td>Semana 14</td>
                          <td>Semana 15</td>
                          <td>Semana 16</td>
                          <td>Semana 17</td>
                          <td>Semana 18</td>
                          <td>Semana 19</td>
                          <td>Semana 20</td>
                        </tr>
                        <tr> 
                          <td style="font-weight: bold">Calendário</td>
                          <td class="activity">Escolha Enredo</td>
                          <td></td>
                          <td></td>
                          <td  class="activity">Escolha Samba</td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td></td>
                          <td class="activity">1º Ensaio</td>
                          <td></td>
                          <td class="activity" style="font-size: 10px">Barracões</td>
                          <td class="activity">2º Ensaio</td>
                          <td></td>
                          <td class="activity">3º Ensaio</td>
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
        
        <script type="text/javascript">$(function () {
                  $('[data-toggle="tooltip"]').tooltip()
                  $.fn.extend({
                      popoverClosable: function (options) {
                          var defaults = {
                              template:
                                  '<div class="popover">\
                  <div class="arrow"></div>\
                  <div class="popover-header" style="width:200px">\
                  <button type="button" class="close" data-dismiss="popover" aria-hidden="true">&times;</button>\
                  <h3 class="popover-title"></h3>\
                  </div>\
                  <div class="popover-content"></div>\
                  </div>'
                          };
                          options = $.extend({}, defaults, options);
                          var $popover_togglers = this;
                          $popover_togglers.popover(options);
                          $popover_togglers.on('click', function (e) {
                              e.preventDefault();
                              $popover_togglers.not(this).popover('hide');
                          });
                          $('html').on('click', '[data-dismiss="popover"]', function (e) {
                              $popover_togglers.popover('hide');
                          });
                      }
                  });
                  $(function () {
                      $('[data-toggle="popover"]').popoverClosable();
                  });
                                    })
        </script>
  </body>
      

    </html>


