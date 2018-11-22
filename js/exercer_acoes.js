window.onload = function(){
	var bar = parseInt($('#barracao').html());
	var com = parseInt($('#com').html());
	var des = parseInt($('#des').html());
	console.log(bar);
    $('.teste3').click(function(){
    	$('#barracao').html(bar);
    	var eff_bar = parseInt($(this).attr('data-bar'));
    	var eff_com = parseInt($(this).attr('data-com'));
    	var eff_des = parseInt($(this).attr('data-des'));
    	console.log(bar+eff_bar);
    	console.log(com+eff_com);
    	console.log(des+eff_des);
    	if ((bar+eff_bar)>100) {
    		$('#barracao').html(100);
    	$('#barracao').css('width',100+'%');
    	} else{
    	$('#barracao').html(bar+eff_bar);
    	$('#barracao').css('width', bar+eff_bar+'%');
    	};
    	if ((com+eff_com)>100) {
    		$('#com').html(100);
    	$('#com').css('width',100+'%');
    	} else {
    	$('#com').html(com+eff_com);
    	$('#com').css('width', com+eff_com+'%');
    	};
    	if ((des+eff_des)>100) {
    	$('#des').html(100);
    	$('#des').css('width', 100+'%');
    	} else {
    	$('#des').html(des+eff_des);
    	$('#des').css('width', des+eff_des+'%');
    	};
    	$("input[name='bar']").attr({'value':bar+eff_bar});
    	$("input[name='com']").attr({'value':com+eff_com});
    	$("input[name='des']").attr({'value':des+eff_des});
    	$("#next-round").attr({'action' : 'btwn_rounds.php'});

    });
  	};


