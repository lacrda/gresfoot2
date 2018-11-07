<?php

$status_escolas = array('Enredo' => 'Kizomba' , 'bar' => 3 , 'chao'=> 4  );
var_dump($status_escolas);
$stat = json_encode($status_escolas);
echo $stat;
$s = json_decode($stat,true);
$enredo = $s["Enredo"];

echo $enredo;












?>