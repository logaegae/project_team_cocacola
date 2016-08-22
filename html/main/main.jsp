<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">

<title>Coca-Cola Korea</title>

<link rel = "shortcut icon" href = "/CocaCola/favicon.ico"> 
<link rel="stylesheet" type="text/css" href="../../lib/css/cocacola.css">
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="../../lib/js/common.js"></script>
<script type="text/javascript" src="../../lib/js/main.js"></script>
<script>
	$(document).ready(function(){	
		
		//정렬함수 실행
		$('.conts img').css({'display':'none'});
		mainOrder();
		$(window).resize(mainOrder);
	})
	$(window).load(function(){		
	
		$('.video-list').css('width',$('.video-list li').outerWidth(true) * $('.video-list li').length+'px');
			
	
		$('.video_set .next').click(function(){
			if(slideFn.idx == 7) return false;
			
			var moveDist = slideFn.idx * ( - $('.video-list li').outerWidth(true) ) - $('.video-list li').outerWidth(true);
			slideFn.moveSlide($('.video-list'), moveDist + 'px');
			slideFn.idx++;			
			return false;
		});
		
		//Slide Prev Button
		$('.video_set .prev').click(function(){			
			
			if(slideFn.idx == 0) return false;
			
			var moveDist = slideFn.idx * ( - $('.video-list li').outerWidth(true) ) + $('.video-list li').outerWidth(true);
			slideFn.moveSlide($('.video-list'), moveDist + 'px');
			slideFn.idx--;					
			return false;
		});
		
		//Slide Click
		$('.video-list li').click(function(){
						
			var name = '../../lib/video/'+$(this).find('img').attr('title')+'.mp4';
			slideFn.moveOn($(this));
			$('.movie_middle .vCover').css('display','none');			
			
			$('.movie_middle video').remove();
			$('.movie_middle').stop().append('<video width="432" height="241" controls autoplay> <source src="'+name+'" type="video/mp4"></video>');			
			$('.video_title').text($(this).find('img').attr('alt') + $(this).find('.txt').text());
		});
		
		$('.vCover').click(function(){
			$('.video-list .on').click();
		});
		//Slide Title Click
		$('.video_title').click(function(){
			
			$('.video-list .on').click();
		})
		//Contents Hover
		setTimeout(function(){
			$('.conts').mouseenter(function(){
				if($(this).find('dl').is('dl')){
					
					$(this).children('img').css('display','none').parent('.conts').find('dl').css('display','block');
					
					if($(this).find('dl').is('.circle')){	
						$(this).css({'background-image':"url('../../lib/images/bg_circle.png')"});			
						$(this).find('a').css({'height':'173px'})
				
					}else if($(this).find('dl').is('.s_round')){
						$(this).css({'background-image':"url('../../lib/images/bg_square.png')"});												
						$(this).find('a').css({'height':'173px'})
					}else if($(this).find('dl').is('.l_round')){
						$(this).css({'background-image':"url('../../lib/images/bg_longSquare.png')"});					
						$(this).find('a').css({'height':'354px'})
					}
				}
			}).mouseleave(function(){
				$(this).css('background-image','none');
				$(this).children('img').css('display','block').parent('.conts').find('dl').css('display','none');
			})
		}	,2500)
	})
</script>

	<style media="screen">	
			.conts a{
				color:#FFF;
				width:100%;
				display:inline-block;
			}
			@media screen and (min-width: 641px) {
		         body{
		         		background: #f6f3ee;
						background-image:url(../../lib/images/background.jpg);
						width: 100%;
						height: 100%;
						background-position : left top;
						background-repeat: repeat-x;
	         	}
	         	.topMenu .option_set li.t1 a{
						background-image: url("../../lib/images/nav_viewAll_on.png");
				} 
		        .topMenu .option_set li.t2 a{
						background-image: url("../../lib/images/nav_brand.png");
				}
			}
			@media screen and (max-width: 640px) {
				body{
					background: #f6f6f6;
					min-width:535px;
				}
				.topMenu .t1 a{
			    	background-image: url("../../lib/images/ico_viewAll_on.png");				    	
			    }
			    .topMenu .t2 a{
			    	background-image: url("../../lib/images/ico_brand_off.png");
			    }		    
			   
			} 
	</style>
</head>

<body>

<%@include file="/html/side/header.jsp"%>
<%@include file="/html/main/topmenu.jsp"%>
<%@include file="/html/side/sideBody.jsp"%>
<div class="main_wrapper">
	<div class="main_container">
	
		<div class="video_set" >
			<div class="video_wrap">	
				<div class="video_left">
					<img src="../../lib/images/video_left.png" alt="" />
				</div>
				<div class="movie_middle">
					<img class = "vCover" width="430" height="241" style="cursor:pointer;" src="../../lib/images/cdcd9b33-8730-45fa-a456-8b8e266304de.png">					
					<video width="430" height="241" controls style="display:none;">
  						<source src="../../lib/video/cokeSummer.mp4" type="video/mp4">
  					</video>
				</div>
				<div class="video_right">
					<img src="../../lib/images/video_right.png" alt="" />
				</div>
				<div class="video_btns">
					<p class="video_title">[코카-콜라] Coke Summer</p>
					<ul class="video_sns">
						<li class="sns_btn1"><a href="javascript:void(0);"><em class="hidden">페이스북</em></a></li>
						<li class="sns_btn2"><a href="javascript:void(0);"><em class="hidden">트위터</em></a></li>
                    </ul>
				</div>
				
				<div class="slide_wrap">
					<a class = "prev"href=""><img src="../../lib/images/btn_left.png" alt="이전"></a>
					<div class="video_slide">
						<ul class="video-list" id="video-list-wrapper" >
							<li class="on" >
								<span class="thum">
									<img src="../../lib/images/f3294a1e-1485-4030-9e39-7e93d8991725.jpg" width="48" height="48" alt="[코카-콜라]" title="cokeSummer">									
								</span> 
								<span class="txt">Coke Summer</span>
							</li>
							<li>
								<span class="thum">
									<img src="../../lib/images/d7603608-425d-4eca-b9b4-b169c5a03371.jpg" width="48" height="48" alt="[씨그램]" title="seagram">
								</span>
								<span class="txt">열 때마다 톡 쏜다! - 차승원</span>
							</li>
							<li>
								<span class="thum">
								<img src="../../lib/images/206c1323-7e28-452b-84d0-3f31a1a7b7b0.jpg" width="48" height="48" alt="[토레타]" title="toreta">
								</span>
								<span class="txt">토레타! By Aquarius - 박보영</span>
							</li>
							<li>
								<span class="thum">
									<img src="../../lib/images/69223a31-4b58-4459-b092-49eaa8d7dfb0.jpg" width="48" height="48" alt="[파워에이드]" title="powerAde">
								</span>
								<span class="txt">NEW BLUE BLOOD</span>
							</li>
							<li>
								<span class="thum">
									<img src="../../lib/images/f56d239e-7ae7-48ee-9276-c0d502f34fdc.jpg" width="48" height="48" alt="[스프라이트]" title="sprite">
								</span> 
								<span class="txt">속 시원하게 스프라이트!</span>
							</li>
							<li>
								<span class="thum">
									<img src="../../lib/images/22964aa3-12da-4a31-8acf-a3a569cd4b1e.jpg" width="48" height="48" alt="[코카-콜라]" title="cocaCola-heart">
								</span> 
								<span class="txt">마음을 전해요 - 서강준</span>
							</li>
							<li>
								<span class="thum">
									<img src="../../lib/images/86b8e8de-751d-4f22-ab36-7df5d3152c46.jpg" width="48" height="48" alt="[조지아]" title="georgiaGotika">
								</span> 
								<span class="txt">고티카의 골든타임</span>
							</li>
							<li>
								<span class="thum">
									<img src="../../lib/images/81cc92ae-8a76-44ec-a397-369dd2c00e55.jpg" width="48" height="48" alt="[미닛메이드]" title="minitmade">
								</span> 
								<span class="txt">속 껍질이 보이는 - 홈스타일</span>
							</li>
							<li>
								<span class="thum">
									<img src="../../lib/images/221bd1be-5a4c-453c-a2ac-895290352dc6.jpg" width="48" height="48" alt="[코카-콜라]" title="cocaColaThisFavor">
								</span> 
								<span class="txt">이 맛, 이 느낌!</span>
							</li>
						</ul>
					</div>
					<a class="next" href=""><img src="../../lib/images/btn_right.png" alt="다음"></a>
				</div>						
			</div>	
			
			<div class="sns_wrap">
			
			
			<!-- 페이스북 -->
				<div class="face_wrap">
					<div class="face_box">
						<div class="face_top">
							<dl>
								<dt><a href="http://www.facebook.com/cocacola" target="_blank"><img src="../../lib/images/x_fb_thumb.png" alt="페이스북 썸네일 이미지"></a></dt>
								<dd>
									<a href="http://www.facebook.com/cocacola" target="_blank"><span>Facebook에 있는</br><strong>Coca-Cola</strong></span></a>
									<iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.facebook.com%2Fcocacola&amp;send=false&amp;layout=button_count&amp;width=170&amp;show_faces=false&amp;font=verdana&amp;colorscheme=light&amp;action=like&amp;height=30&amp;appId=486569954740273" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:170px; height:30px;" allowtransparency="true"></iframe>					
								<dd>
							</dl>
						</div>
						<div class="face_body">
						<a href="https://www.facebook.com/permalink.php?story_fbid=855956121202435&id=663709713760411&substory_index=0">
							<img src="../../lib/images/13516310_852683341529713_6136736853843478594_n.png" alt="페이스북 썸네일 이미지" width="178" height="124">
							<p class="txt">이토록 반가운 차줌마의 컴백!! #삼시세끼 고창 편 넘나 오래 기다린 것! 보고팠던 참바다씨, 호주니, 그리고 뉴페이스까지!..</p>
							</a>
						</div>
						<div class="face_bottom">
							<input type="button" value="댓글보기"><span>&nbsp;5</span>
						</div>
					</div>
					
					
				</div>
				<div class="blog_wrap">
					<div class="blog_box">
						<div class="blog_top">
							<strong>생각만해도 넘나 행복한..</strong>
						</div>
						<div class="blog_body">
							<a href="https://www.instagram.com/p/BHUAs-4D1Bc/?taken-by=coke.style">
								<dl class="blogList">
									<dt><img src="../../lib/images/site_20160706100432.jpg" alt="블로그 썸네일 이미지" width="178" height="124"></dt>
									<dd>coke.style생각만해도 넘나 행복한 공간T^T @jeju_cafe_cola 핫플레이스에서 찍으면 무조건 인생샷! 지금 이 순간 코카-콜라를 느껴봐!</dd>
								</dl>
							</a>
						</div>
					</div>
				</div>
			</div>				
        </div>
          
		<div class="conts" id="con1"><img src="../../lib/images/d24c5a89-8ff2-49e1-b415-a25a4436089f.png" alt="" /><a href="/CocaCola/html/login/sign.jsp"><dl class="circle"><dt><strong>&nbsp;</strong></dt><dd>지금 한국 코카-콜라 회원에 가입하시면 특별한 혜택을 드립니다.</dd></dl></a></div>
		<div class="conts" id="con2"><img src="../../lib/images/a197fc6a-e6c4-46ed-bad5-0a999e4a563a.png" alt="" /><a href="http://www.cocacola.co.kr/Toreta"><dl class="l_round"><dt><strong>토레타! By 아쿠아리우스는 10가지 과일채소</strong></dt><dd>(자몽, 백포도, 사과, 배, 감귤, 망고, 당근, 양배추, 레몬, 케일)수분 함유된 수분보충음료 입니다.<br>언제 어디서나 온가족이 맛있게 마실 수 있고, 저칼로리라 더 가볍게 부담 없이 즐길 수 있습니다.</dd></dl></a></div>
		<div class="conts" id="con3"><img src="../../lib/images/63e68239-c135-49f6-a9c3-7ffcc38627a0.png" alt="" /><a href="https://tastethefeeling.coca-cola.com/kr/"><dl class="s_round"><dt><strong>지금 이 느낌, GIF로 만들기</strong></dt><dd>코카-콜라는 당신에게 어떤 느낌인가요?<br>GIF를 클릭하고 나만의 느낌을 입력한 다음 SNS에 공유해 보세요.</dd></dl></a></div>
		<div class="conts" id="con4"><img src="../../lib/images/46922757-69a8-4ebe-a4eb-ac7cd9143335.png" alt="" /><a href="https://www.facebook.com/permalink.php?story_fbid=865742083557172&id=663709713760411"><dl class="s_round"><dt><strong>Coke RESTAURANT</strong></dt><dd>Syrup Waller앱을 통해<br>코-크 레스토랑에서<br>코-크 콤보밀 주문하면,<br>짜릿한 선물이 쏟아진다!</dd></dl></a></div>
		<div class="conts" id="con5"><img src="../../lib/images/e50fda17-9155-4a29-9794-11b39e23e2a1.png" alt="" /><a href="http://www.lgcare.com/brand/detail.jsp?gbn=3&bid1=R035"><dl class="s_round"><dt><strong>금메달, 그 느낌!</strong></dt><dd>금메달 딴 것처럼 짜릿한 GOLD MOMENT를 공유하고<br>코카-콜라와 함께 골드 써머, 짜릿하게 즐기세요!</dd></dl></a></div>
		<div class="conts" id="con6"><img src="../../lib/images/32ad6aa8-1af6-4f27-8113-2182f46ba1e5.png" alt="" /><a href="http://www.spriteonyou.com/Event/Default"><dl class="s_round"><dt><strong>Sprite on You 미리 듣기</strong></dt><dd>스프라이트와 Dok2의 콜라보레이션,<br>‘Sprite on You’ 미리 듣기</dd></dl></a></div>
		<div class="conts" id="con7"><img src="../../lib/images/d3ca2e99-6ecb-4a83-95cf-b33ebe278d94.png" alt="" /><div class="circle"></div></div>
		<div class="conts" id="con8"><img src="../../lib/images/925a6483-da28-472f-86e3-6d57acfd69d7.png" alt="" /><a href="http://www.minutemaid.kr/ko/home/"><dl class="s_round"><dt><strong>미닛메이드 홈스타일 출시!</strong></dt><dd>홈스타일 아이디어<br>과즙과 자몽 속 껍질까지 먹자!<br>대한민국만세!</dd></dl></a></div>
		<div class="conts" id="con9"><img src="../../lib/images/b6a862aa-f8ae-4c6c-a417-03f97e3c4564.png" alt="" /><div class="circle"></div></div>
		<div class="conts" id="con10"><img src="../../lib/images/2fc40bc6-2dd1-48b5-8fe4-1e86308e7014.png" alt="" /><a href="http://www.cocacola.co.kr/Matetea/"><dl class="circle"><dt><strong>하루 종일 마테바디!</strong></dt><dd>먹고 놀고 마시는 라틴스타일<br>0칼로리 마테차!</dd></dl></a></div>
		<div class="conts" id="con11"><img src="../../lib/images/d74c5dac-e3c8-4d77-b17c-06ec80a9c17e.png" alt="" /><a href="http://www.thesprite.kr/ko/videos/"><dl class="s_round"><dt><strong>돌직구 요정 설현</strong></dt><dd>답답한 순간, 스프라이트처럼 시원하게 돌직구로 날려버려~</dd></dl></a></div>

	</div>
</div>
 <%@include file="/html/side/footer.jsp"%>
</body>
</html>
