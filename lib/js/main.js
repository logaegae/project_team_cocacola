
//정렬 함수 생성자
function OrderFn(unit){
	this.cord_x = 0;
	this.cord_y = 0;	
	this.conWid = 0;
	this.conHei = 0;
	this.avoid = [];
};
//기본단위 측정
OrderFn.prototype.makeWH = function(unit){
	this.conWid = unit.outerWidth(true);
	this.conHei = unit.outerHeight(true); 
};
//화면을 넘어갈 때
OrderFn.prototype.overSreen = function(box){
	if( this.cord_x + this.conWid >= box.width() ){
		this.cord_x = 0;
		this.cord_y += this.conHei;
		};
};
//계산된 좌표로 이동
OrderFn.prototype.move = function(target){	
		target.css({	
			'transform':'translate('+this.cord_x+'px,'+this.cord_y+'px)'			
		});	
};
//타겟과 겹칠경우 오른쪽 이동
OrderFn.prototype.goRight = function(){	
	if(this.avoid.length != 0){
		for(j=0;j < Math.ceil(this.avoid.length / 4) ;j++){
			if(this.avoid[4*j] <= this.cord_x && this.avoid[4*j] + this.avoid[4*j+1] >= this.cord_x && this.avoid[4*j+2] <= this.cord_y && this.avoid[4*j+2] + this.avoid[4*j+3] >= this.cord_y){
				this.cord_x += this.conWid;			
			}
		}
	}
};
//피할 좌표 설정
OrderFn.prototype.addAvoid = function(target){
	
		this.avoid.push(this.cord_x);
		this.avoid.push(target.outerWidth(true));
		this.avoid.push(this.cord_y);
		this.avoid.push(target.outerHeight(true));
	
};

/*Brand*/
var ggg = function(){	
	//인스턴스 생성
	var brandOrder = new OrderFn( $('.itembox > div').first() );
	//상속
	brandOrder.prototype = OrderFn.prototype;
	//기본단위 생성
	brandOrder.makeWH($('.itembox > div').first());
	
	$('.itembox > div').each(function(i,e){
		
		//x축으로 기본단위만큼 이동
		brandOrder.cord_x += brandOrder.conWid;
		//첫번째 위치 보정
		if(i == 0) brandOrder.cord_x = 0;
		//화면을 넘어갈 때 계산
		brandOrder.overSreen($('.itembox'));
		//계산된 값으로 이동
		brandOrder.move($(e));
			
	});
	//반응형 높이보정
	if($(window).width() + 17 < 640){ $('.brand .brand-title').css({ 'transform':'translate(0px,0px)' })}
	else{ $('.brand .brand-title').css({ 'transform':'translate(270px,0px)' }) }
	$('.itembox').css({'height':$('.itembox').offset().top + brandOrder.cord_y });	
};

/*Main*/
var mainOrder = function(){
	//인스턴스 생성
	var Main = new OrderFn( $('.conts').first() );
	//상속
	Main.prototype = OrderFn.prototype;
	//기본단위 생성
	Main.makeWH($('.conts').first());
	// 기본단위 보정
	Main.conWid += 10;
	Main.conHei += 10;
	//피할 좌표 저장
	Main.addAvoid($('.video_set'));
	$('.conts').each(function(i,e){
		
		//x축으로 기본단위만큼 이동
		Main.cord_x += Main.conWid;
		//첫번째 위치 보정
		if(i == 0) Main.cord_x = 0;	
		//겹칠 경우  이동
		Main.goRight();
		//이동한 다음 문제들
		
		for(k=0;k<10;k++){
			//화면을 넘어갈 때 계산
			Main.overSreen($('.main_container'));
			//넘어갔는데 겹친 경우
			Main.goRight();
		}
		//계산된 값으로 이동
		Main.move($(e));
		//큰 콘텐츠 좌표 저장
		
		if( $(e).width() > Main.conWid || $(e).height() > Main.conHei ) Main.addAvoid($(e));	
	});
	//반응형 높이보정
	$('.main_wrapper').css({'height':$('.main_wrapper').offset().top + Main.cord_y + 30})
	
}

/*SNS*/

var snsOrder = function(){
	//인스턴스 생성
	var sns = new OrderFn( $('.conts').first() );
	//상속
	sns.prototype = OrderFn.prototype;	
	//피할 좌표 저장
	sns.addAvoid($('.sns_dejemok'));	
	//반응형	
	if($(window).width() + 17 < 640){
		// 기본단위 보정
		sns.makeWH($('.sns_icontap.nd').first());
		sns.conHei = 20;

		$('.sns_icontap.nd').each(function(i,e){				
		
			//x축으로 기본단위만큼 이동
			sns.cord_x += sns.conWid;
			//첫번째 위치 보정
			if(i == 0) sns.cord_x = 0;
			//겹칠 경우  이동
			sns.goRight();
			//이동한 다음 문제들
			
			for(k=0;k<20;k++){
				//화면을 넘어갈 때 계산
				sns.overSreen($('.sns_content'));
				//넘어갔는데 겹친 경우
				sns.goRight();
			}
			//계산된 값으로 이동
			
			sns.move($(e));
			//큰 콘텐츠 좌표 저장		
			if( $(e).width() > sns.conWid || $(e).height() > sns.conHei ) sns.addAvoid($(e));			
		});
	}else{
		$('.sns_icontap').each(function(i,e){
			
			//기본단위 생성
			sns.makeWH($('.sns_icontap').first());
			// 기본단위 보정
			sns.conWid += 20;
			sns.conHei += 20;
		
			//x축으로 기본단위만큼 이동
			sns.cord_x += sns.conWid;
			//첫번째 위치 보정
			if(i == 0) sns.cord_x = 0;	
			//겹칠 경우  이동
			sns.goRight();
			//이동한 다음 문제들
			
			for(k=0;k<10;k++){
				//화면을 넘어갈 때 계산
				sns.overSreen($('.sns_content'));
				//넘어갔는데 겹친 경우
				sns.goRight();
			}
			//계산된 값으로 이동
			sns.move($(e));
			//큰 콘텐츠 좌표 저장		
			if( $(e).width() > sns.conWid || $(e).height() > sns.conHei ) sns.addAvoid($(e));			
		});
	}
	
	//반응형 높이보정
	$('.sns_content').css({'height':$('.sns_content').offset().top + sns.cord_y + 30})
	
	
}

//높이값 지정 - 정렬함수에 필요
function setWH() {
	if($(window).width() + 17 >= 641){	
		$('.sns_icontap').each(function(i,e){
			if($(e).attr('class').indexOf('nd') == -1){
				$(e).css({'height':'173px'})
			}else if( $(e).children('div').is('.snsicon_bg1')){
				$(e).css({'height':'173px'})
			}else{
				$(e).css({'height':'354px'})
			}
		})
	}else{
		$('.sns_icontap').each(function(i,e){
			if( $(e).children('div').is('.snsicon_bg1')){
				$(e).css({'height':'124px'})
			}else if( $(e).children('div').is('.snsicon_bg2')){
				$(e).css({'height':'282px'})
			}else{
				$(e).css({'height':'326px'})
			}
		})
	}
}

$(window).load(function(){
/*Brand*/
	$('.mid').css({
		'top':'0px',
		'left':'0px'
	});

	 $('.mid').first().css({
		'transform':'translate(0,0)'				
	})	
	$('.brand .brand-title').css({
		'left':'0px'
	})
/*Main*/
	setTimeout(function(){
		$('.conts img').show(1000);
		
		
	},1000)
	setTimeout(function(){
		$('.conts').find('.circle').parents('.conts').find('img').css({			
			'transform': 'rotate(360deg)',
			'transition': '1s'	
		})	
	},1800)
/*SNS*/	
	setTimeout(function(){
		
		$('.sns_icontap > img').show(700);
		$('.sns_icontap > div').show(700);
		
	},1000)	
	
})