
var slideFn = {
		idx : 0,
		moveOn : function(target){
			target.addClass('on').siblings().removeClass('on');
		},
		moveSlide : function(target, end){
			target.stop().animate({
				'left': end
			})
		},
}
$(function(){

		
})
$(window).load(function(){
	
	//Side Button Click
	$('.brand_btn #brand_next').click(function(){	
		if( $('.brand_wrap .brand ul').css('left') == '0px' ){ 
			$('.brand_wrap .brand ul').animate({'left':'-150px'},function(){				
				$('.brand_btn #brand_next img').attr('src','../../lib/images/btn_next_off.png');
				$('.brand_btn #brand_prev img').attr('src','../../lib/images/btn_prev_on.png');
			
			});
		}	
	    return false;
	})
	
	$('.brand_btn #brand_prev').click(function(){
		if( $('.brand_wrap .brand ul').css('left') == '-150px' ){
			$('.brand_wrap .brand ul').animate({'left': 0},function(){
				$('.brand_btn #brand_prev img').attr('src','../../lib/images/btn_prev_off.png');
				$('.brand_btn #brand_next img').attr('src','../../lib/images/btn_next_on.png');
			});
		}	
		return false;
	})
	
	//Side Selection 
	
	$(".selectBx_off").click(function(){
		$(".selectBx_off").hide();
		$(".selectBx_on").show();
		$(".optionBx").slideDown();
	});
	$(".selectBx_on").click(function(){
		$(".optionBx").slideUp(function(){
		$(".selectBx_on").hide();
		$(".selectBx_off").show();
		});
	});
})