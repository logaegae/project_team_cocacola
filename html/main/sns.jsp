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
		
		//처음에 숨기기
		$('.sns_icontap>img').css({'display':'none'});
		$('.sns_icontap>div').css({'display':'none'});
		setWH();
		$(window).resize(setWH);
	})	
	$(window).load(function(){	
		//정렬함수 실행	
		snsOrder();
		$(window).resize(snsOrder);
		
	})
</script>	
	<style>	
			@media screen and (min-width: 641px) {
		         body{
                   background-image:url(../../lib/images/background.jpg);
                   width: 100%;
                   height: 100%;
                   background-repeat: repeat-x;
	         	}
	         	.topMenu .option_set li.t1 a{
					background-image: url("../../lib/images/nav_viewAll.png");
				} 
		        .topMenu .option_set li.t3 a{
					background-image: url("../../lib/images/nav_sns_on.png");
				}
			}
			@media screen and (max-width: 640px) {
				body{
					background: #f6f6f6;
				}
				.topMenu .option_set li.t1 a{
			    	background-image: url("../../lib/images/ico_viewAll_off.png");				    	
			    }
			    .topMenu .option_set li.t3 a{
			    	background-image: url("../../lib/images/ico_sns_on.png");
			    }	
			    .media_head{
			    	min-width:480px;
			    }
			    .media_footer{
			    	min-width:480px;
			    }
			    .topMenu{
			    	min-width:480px;
			    }
			}
	
	</style>
</head>
<body>
<%@include file="/html/side/header.jsp"%>
<%@include file="/html/main/topmenu.jsp"%>
<%@include file="/html/side/sideBody.jsp"%>
	<div class="sns_bg">
		<div class="sns_wrapper">
			<div class="sns_content" style="height:1000px;">
				<div class="sns_dejemok">
					<img src="../../lib/images/img_sns_title.png">
				</div>
				
				<div class="sns_icontap" id="snsicon1" >
					<img src="../../lib/images/img_sns_1.png">
				</div>
				
				<div class="sns_icontap nd" id="snsicon2">
					<div class="snsicon_bg1">
						<div class="sns_twitter">
							<dl>
								<dt><strong>@CokeCaster</strong></dt>
									<dd class="twihidden">
										<a href="javascript:COKEMAIN.PopLink('http://twitter.com/CokeCaster', 71)">
											올림픽 D-18,얼마 남지 않은 Gold Moment!
											코카-콜라와 함께 태극전사들 향해 황금빛응원을 남겨줘!
											가장 힘찬응원 남긴 3명 코카-콜라 골드에디션 선물!
											#코카콜라 #THATSGOLD #금메달그느낌 https://t.co/TqTu3WoM..
										</a>
									</dd>
							</dl>
						</div>
					</div>
				</div>
				
				<div class="sns_icontap nd" id="snsicon3">
					<div class="snsicon_bg2">
						<div class="sns_instagram1">
						<div class="snsBx"><a href="https://www.instagram.com/p/BHCMIR_jeXc/?taken-by=coke.style" target="_blank">
						<div class="snsTopins"><strong>오늘은 금요일이니까</strong></div>
						<div class="snsMiddle">
						<dl class="blogList">
						<dt><img src="http://cocacolakoreablog.co.kr/upload/site/site_20160706100733.jpg" alt="블로그 썸네일 이미지" width="178" height="124"></dt>
							<dd class="snssodyd">	coke.style오늘은 금요일이니까
									우리 모두 돌직구 날리고 칼!퇴!
									#먼저_들어가보겠습니다
												
									#코카콜라 #스프라이트 #스프라이트돌직구 #Cocacola #Cokestyle #sprite #금요일 #금요일밤 #불금엔 #칼퇴 #퇴근 #퇴..</dd></dl></div></a></div>
						</div>
					</div>
				</div>
				
				<div class="sns_icontap nd" id="snsicon4" >
					<div class="snsicon_bg1">
						<div class="sns_twitter">
							<dl>
								<dt><strong>@CokeCaster</strong></dt>
									<dd class="twihidden">
										<a href="javascript:COKEMAIN.PopLink('http://twitter.com/CokeCaster', 72 )">
										오늘이 바로 올림픽 승리를 향한 열정을 다지는 결단식!
										국가대표팀의 Gold Moment 만들 수 있도록
										코카-콜라가 짜릿하게 응원할게~
										 
										#코카콜라 #THATSGOLD #금메달그느낌 https://t.co/YotdEL2WGW
										</a>
									</dd>
							</dl>
						</div>
					</div>
				</div>
				
					<div class="sns_icontap nd" id="snsicon5">
					<div class="snsicon_bg3">
						<div class="face_box">
							<div class="face_top">
								<dl>
									<dt><a href="http://www.facebook.com/cocacola" target="_blank"><img src="../../lib/images/x_fb_thumb.png" alt="페이스북 썸네일 이미지"></a></dt>
									<dd>
										<a href="http://www.facebook.com/cocacola" target="_blank"><span>Facebook에 있는<strong>Coca-Cola</strong></span></a>
										<iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Fwww.facebook.com%2Fcocacola&amp;send=false&amp;layout=button_count&amp;width=170&amp;show_faces=false&amp;font=verdana&amp;colorscheme=light&amp;action=like&amp;height=30&amp;appId=486569954740273" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:170px; height:30px;" allowtransparency="true"></iframe>
												
									<dd>
								</dl>
							</div>
							<div class="face_body">
								<img src="../../lib/images/facebook1.png" alt="페이스북 썸네일 이미지" width="178" height="124">
								<p class="txt">요즘 완전 꽂혀서, 무한 재생중인 노래
												도끼의 “SPRITE ON YOU”!!
												이 노래에 #스프라이트 는 몇번이나 나올까?
												
												노래를 듣..</p>
							</div>
							<div class="face_bottom">
								<input type="button" value="댓글보기"><span>&nbsp;5</span>
							</div>
						</div>
					</div>
				</div>
				
				
				
				<div class="sns_icontap nd" id="snsicon6" >
					<div class="snsicon_bg2">
						<div class="sns_instagram2">
							<div class="snsBx">
							<a href="https://www.instagram.com/p/BHJzT2eD5wG/?taken-by=coke.style" target="_blank"><div class="snsTopins">
							<strong>열고 싶지 x100</strong></div><div class="snsMiddle">
							<dl class="blogList"><dt><img src="http://cocacolakoreablog.co.kr/upload/site/site_20160706100643.jpg" alt="블로그 썸네일 이미지" width="178" height="124"></dt>
							<dd class="snssodyd">coke.style열고 싶지 x100 !!?
								코카-콜라의 짜릿한 유혹에 빠져들걸?

								#코카콜라 #스프라이트 #스프라이트돌직구 #Cocacola #Cokestyle
								#sprite #금요일 #금요일밤 #불금엔 #칼퇴 #퇴근 #퇴근길 #먹스타그램 #음..</dd></dl></div></a></div>
						</div>
					</div>
				</div>
				
			
				<div class="sns_icontap" id="snsicon7">
					<img src="../../lib/images/img_sns_7.png">
				</div>
				
				
				<div class="sns_icontap nd" id="snsicon8" style="height:173px;">
					<div class="snsicon_bg1">
						<div class="sns_twitter">
								<dl>
								<dt><strong>@CokeCaster</strong></dt>
									<dd>
										<a href="javascript:COKEMAIN.PopLink('http://twitter.com/CokeCaster', 73 )">
											yo, 스프라이트. 비트 주세요. 
											#도끼 의 속시원한 랩 Sprite on you!
											모두 스프라이트 들고 풋쳐핸접!
											
											#속시원하게 #스프라이트 #스프라이트온유 https://t.co/eoFgPPEKKI
										</a>
									</dd>
								</dl>
						</div>
					</div>
				</div>
				
				<div class="sns_icontap" id="snsicon9">
					<img src="../../lib/images/img_sns_12.png">
				</div>
				
				<div class="sns_icontap nd" id="snsicon10" style="height:354px;">
					<div class="snsicon_bg3">
						<div class="face_box">
						
							<div class="face_top">
								<dl>
									<dt><a href="http://www.facebook.com/cocacola" target="_blank"><img src="../../lib/images/x_fb_thumb.png" alt="페이스북 썸네일 이미지"></a></dt>
									<dd>
										<a href="http://www.facebook.com/cocacola" target="_blank"><span>Facebook에 있는<strong>Coca-Cola</strong></span></a>
										<a href="">
											<img src="../../lib/images/facebooklike_03.png">
										</a>					
									<dd>
								</dl>
							</div>
							
							<div class="face_body">
								<img src="../../lib/images/facebook2.png" alt="페이스북 썸네일 이미지" width="178" height="124">
								<p class="txt">“2016 롤 챔스 코리아 서머 VIP 티켓 이벤트”
												리그 1위를 다투는 Tigers와 SKT의 경기를 VIP 좌석에서 즐기고 싶다면? 
												경기..</p>
							</div>
							<div class="face_bottom">
								<input type="button" value="댓글보기"><span>&nbsp;5</span>
							</div>
						</div>
					</div>
				</div>
				
				<div class="sns_icontap nd" id="snsicon11">
					<div class="snsicon_bg2">
						<div class="sns_instagram3">
							<div class="snsBx">
								<a href="https://www.instagram.com/p/BHeemy3DHgT/?taken-by=coke.style" target="_blank"><div class="snsTopins">
								<strong>Barrel the Vibes 2016</strong>
							</div>
								<div class="snsMiddle">
									<dl class="blogList">
										<dt><img src="http://cocacolakoreablog.co.kr/upload/site/site_20160706100553.jpg" alt="블로그 썸네일 이미지" width="178" height="124"></dt>
												<dd class="snssodyd">Barrel the Vibes 2016 
													요즘 가장 핫한 힙합 아티스트가 던지는 돌직구!
													#도끼 / #더콰이엇 / #박재범 / #그레이 /
													#사이먼도미닉 / #로꼬
													가장 시원하게, 가장 사이다답게!
													Sprite on You
												</dd></dl></div></a></div>
						</div>
					</div>
				</div>
				
				<div class="sns_icontap" id="snsicon12" >
					<img src="../../lib/images/img_sns_11.png">
				</div>
				
				<div class="sns_icontap nd" id="snsicon13" style="height:173px;">
					<div class="snsicon_bg1">
						<div class="sns_twitter">
							<dl>
								<dt><strong>@CokeCaster</strong></dt>
								<dd>
								<a href="javascript:COKEMAIN.PopLink('http://twitter.com/CokeCaster', 74 )">
								눈빛만봐도 알수있잖아~
								말하지않아도통하는내친구!
								너랑함께하는순간이 모두 GoldMoment야!
								금메달처럼 짜릿한순간공유
								▶https://t.co/UH263zOl5s
								#코카콜라 #THATSGOLD #금메달그느낌 https://t.co/VWA1ySYCxe	
								</a>
								</dd>
							</dl>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
<%@include file="/html/side/footer.jsp"%>
	
</body>
</html>