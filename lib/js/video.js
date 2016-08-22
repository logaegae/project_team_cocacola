var videoFn = {
	makeBg : function(target,width, height, bg){
		target.css({
			
			'width':width,
			'height':height,
			'background-image':'url("'+bg+'")'
			
			});
		},
	disNone : function(){
		var imsi = Math.floor($('.video1_new_tvcf').width() / $('.video1_new_tvcf li').outerWidth(true) );
		$('.video1_new_tvcf li').each(function(i){			
			if(i<imsi || i < 2){				
				$('.video1_new_tvcf li').eq(i).css({ 'visibility':'visible'});
			}else{
				$('.video1_new_tvcf li').eq(i).css({ 'visibility':'hidden'});
			}
		});
	},
	makeBlind : function(){
		var aa = $(window).width()*0.4 - 400;
		if(aa < 0) aa = 0;
		$('body').append('<div class="blind"></div>').append('<div class="shadow"></div>').find('.shadow').show(1000);
		$('.shadow').css({
			'width': '610px',
			'height': '349px',		
		    'margin-top': '-175px',
			'left': aa+'px',
			'top':'50%'
		});
		$('.blind').fadeTo(300,0.4);		
	},
	popClose : function(){
		$('.blind').remove();
		$('.shadow').remove();
		$('.imsi').remove();
	},
	makePop : function(title,url,cate){
        var kind = '';
        var tag = "";
        tag+='<div class="popup">';
        tag+='<div class="content">';
        
        tag+='<div class="tit" style="display: block;"><strong>'+title+'</strong>';
    	tag+='<span class="close"><img src="../../lib/images/btn_close.png"></span></div>';
		tag+='<iframe width="100%" height="100%" src='+url+' frameborder="0" allowfullscreen></iframe>';
      
        tag+='</div>';
        tag+='</div>';      
        
    	$('.shadow').append(tag).find('.popup').css({'background-image':'url("../../lib/images/tvcf_pop_'+cate+'.png")'});
    	
    },
	centerPop : function popCenter(){
		
		var aa = $(window).width()*0.4 - 400;
		if(aa < 0) aa = 0;
		$('.shadow').stop().animate({
			'left': aa+'px'
		});
	}
}


$(function(){
	//video resize
	videoFn.disNone();
	$(window).resize( videoFn.disNone );		
});


$(window).load(function(){

	
//Video Select Box
	$('.tvcf_submenu_on').click(function(){
	
	$('.tvcf_submenu_option').slideUp(400,function(){
		$('.tvcf_submenu_on').css({'display':'none'}).parents('.tvcf_submenulist ').children('.tvcf_submenu_off').css({'display':'block'});
		});
	})

	$('.tvcf_submenu_off').click(function(){
	
	$(this).css({'display':'none'}).parents('.tvcf_submenulist').children('.tvcf_submenu_on').css({'display':'block'});
	$('.tvcf_submenu_option').slideDown(300);
	
	})
	
	$('.tvcf_submenu_option ul li a').click(function(){	
		location.href='.'+$(this).attr('href').slice(20);
	})


	//Hover
	$('.video1_new_tvcf li, .secvideo1 li').mouseenter(function(){
		
		$(this).find('img').css('display','none');
		$(this).find('.video_tit').css('display','none');
		$(this).find('.video_txt').css('display','block');
		videoFn.makeBg($(this), '230px', '173px', '../../lib/images/bg_square.png');
		
	}).mouseleave(function(){
		
		$(this).css('background-image','none');
		$(this).find('img').css('display','block');
		$(this).find('.video_tit').css('display','block');
		$(this).find('.video_txt').css('display','none');
		
	})
	
	//List Click
	$('.tvcf_menu_box li a').click(function(){
		var id = $(this).parent('li').attr('id');		
		var idx = Math.floor( id.slice(6) );
		
		$(this).addClass('on').parent('li').siblings().children('a').removeClass('on');
		

		$('.cate_list').find('.videomenu_ep'+idx).css('display','block').siblings().css('display','none');	
		
		$('.tvcf_submitmar').parent('div').remove();
		$('.secvideo1').parent('div').remove();
		$('.more_wrapper').css('display','none');
		return false;
	})

	//Video PopUp 1
	$('.video1_new_tvcf li a').click(function(){
		var title = $(this).find('.video_tit').text();
		var url = $(this).attr('href');
		var cate = $(this).find('.video_tit').attr('class').split(' ')[1];
			        
		videoFn.makeBlind();
		setTimeout(function(){
			videoFn.makePop(title,url,cate);
		},1000);
		
		return false;
	});	
	//Video PopUp 2
	$('.secvideo1 li a').click(function(){
		var title = $(this).find('.video_tit').text();
		var url = $(this).attr('href');
		
		var vlist = ['cocacola','cokezero','sprite','fanta','sunny10','schweppes','georgia','fuzetea','matetea','maid','power','soonsoo','toreta','seagram'];
		var vdx = Math.floor(location.href.split('/')[location.href.split('/').length-1].split('.')[0].slice(8)) - 1;	
		
		var cate = vlist[vdx];
	
		
		videoFn.makeBlind();
		setTimeout(function(){
			videoFn.makePop(title,url,cate);
		},1000);
		
		return false;
		
	});		
	
	//Close PopUp
	$('body').on( 'click', $('.blind'), videoFn.popClose);
	//PopUp center	
	$(window).on('resize',$('.shadow'),videoFn.centerPop);
	
	//More Button
	//버튼 설정
	var last = 0;
	
	$('.more_list a').click(function(){  

		var num = $('.secvideo1 ul li').length;
		last += 12;
		
		if(last <= num){
			for(i=0;i<last;i++){
				$('.secvideo1 ul li').eq(i).css({'display':'inline-block'});
			}
			$('.more_list').css({'display':'block'});
		}else if(last > num ){
			for(i=0;i<num;i++){
				$('.secvideo1 ul li').eq(i).css({'display':'inline-block'});
				$('.more_list').css({'display':'none'});
			}
			
		}					
		
	});
	
	$('body > div > div').each(function(i,e){
			
		if( $(e).attr('class').indexOf('secvideo') != -1 && $(e).children('ul').children('li').length > 12){
			$(e).children('ul').children('li').css({'display':'none'});
			$('.more_list').css({'display':'block'});
			$('.more_list a').click();
		}
	
	});
	$('.secvideo1 ul li').click(function(){

		return false;
	});

	
});
