var pageFn = {   		
    	
    		needLog : function(){
	    			if(confirm('로그인이 필요합니다. \n로그인하시겠습니까?')){
	    				window.open('/CocaCola/html/login/login.html','_blank','width=480,height=500');
	    			}
	    			else{
	    				return false;
	    			}
    				
    		},
			turnOn : function(){
						var addr = location.href.split('/');
						addr = addr[addr.length-1].split('.');
					
						$('.page_b').find( '.page'+addr[0].slice(6) ).addClass('on');
					},
    		idxNone : [52,51,50,49,48,46,45,44,43,42,41,40,39,38,37,36,35,34],
    		NePrButton : function(one,target){
			    			var addr = location.href.split('/');		
			    			var imsi = 0;
			    			addr = addr[addr.length - 1].split('.');					
			    			if(Number($('.imsi').find('a').attr('id').slice(5)) === Number(addr[0].slice(5))) return false;
			    			for(var i = 0 in pageFn.idxNone ){		
			    				if( Number(pageFn.idxNone[i]) == Number(addr[0].slice(5)) + one){
			    					imsi = 1;
			    				}			
			    			}
			    			if (imsi){
			    			addr = Number(addr[0].slice(5)) + one;
			    			target.attr('href','./num_a'+addr+'.jsp');
			    			}else{
			    				pageFn.needLog();
			    				return false;
			    			}
    			
			    		}
    		
}
$(window).load(function(){
	
	//Page Num Href	
	$('.page_b>span').each(function(i,e){
		var pageNum = $(e).children('a').attr('class').slice(4);
		$(e).children('a').attr('href','./notice'+pageNum+'.jsp');
	})
	//Page Buttons
	
	$('.page_a .paging_end').children('a').attr('href','./notice'+function(){
		var pageNum = $('.page_b > span').length;
		if (pageNum < 10) pageNum = '0'+pageNum;
		return pageNum
		}()+'.jsp');
	
	
	$('.paging_prev a').click(function(){
		
		var pageNum = $('.page_b').find('.on').parent('span').index();		
		if(pageNum == 0) return false;		
		if (pageNum < 10) pageNum = '0'+pageNum;
		
		$(this).attr('href','./notice'+pageNum+'.jsp')	
		
	})
	$('.paging_next a').click(function(){
		var pageNum = $('.page_b').find('.on').parent('span').index();
		
		if(pageNum == $('.page_b > span').length - 1) return false;
		pageNum = pageNum + 2;
		if (pageNum < 10) pageNum = '0'+pageNum;	
		$(this).attr('href','./notice'+pageNum+'.jsp')	
		
	})  
	
	//Add On Class
	pageFn.turnOn();	
		
	//Need Login
	$('tbody td a').click(function(){
		if($(this).attr('class') === 'needLogin'){
			pageFn.needLog();
			return false;   	
		}
	})
	//Enter the last content
	if(location.href.split('/')[location.href.split('/').length - 1].slice(0,4) === 'num_'){
	$('body').append('<div class="imsi" style="display:none"></div>');
	$('.imsi').load('./noticeTable01.jsp tr:first-child');
	}
	//Bottom Buttons
	
	$('.check_button .list>a').click(function(){
		var addr = location.href.split('/');
		addr = addr[addr.length-1].split('.');
		addr = Math.floor( Number(addr[0].slice(5)) / 20 );		
		
		var total = Math.ceil($('.imsi').find('a').attr('id').slice(5) / 20);
		
		var pageNum = Math.abs(total - addr);
		if (pageNum < 10) pageNum = '0'+pageNum;		
		$(this).attr('href','./notice'+pageNum+'.jsp')	
	})
	
	$('.check_button .prev>a').click(function(){	
		pageFn.NePrButton(1,$(this));
		
		
	})
	$('.check_button .next>a').click(function(){
		pageFn.NePrButton(-1,$(this));
		
	})
	
})