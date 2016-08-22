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
<style type="text/css">
	
	@media screen and (min-width: 641px){
	 	body {	 		
	 		width:100%; 
	 		height:100%; 
	 		background:url('../../lib/images/background.jpg') repeat-x left top;
			position:relative;
		}	
	}
</style>

</head>

<body>
<%@include file="/html/side/header.jsp"%>
<%@include file="/html/side/sideBody.jsp"%>

<div class="colaevent_subBg">
	</div>
		<div class="event_outer">
			<div class="event_tit">
				<div class="event_content">
					<h3>
						<img src ="../../lib/images/title_event.png">
					</h3>
					<!-- 모바일용 때문에 div 추가 클래스이름 event_contents -->
					<div class="event_contents">
						<div class="event_tapbox">
							<ul>
								<li>
									<img src="../../lib/images/subgnb_evt.png">
								</li>
							</ul>
						</div>
								<div class="event_contentlist">
									<ul class="event_contentlists">
										<li>
											<a href="http://www.futurefeed.co.kr/" target="_blank">
												<p class="event_banner">
													<img src="../../lib/images/yjevent1.png">
												</p>
												<div class="event_info">
													<p class="event_txt"><strong>Coke Future Feed 참여 이벤트!</strong></p>
													<p class="event_date"><span><strong>기간</strong></span> 2016.01.20 ~ 2016.02.29</p>
												</div>
											</a>
										</li>
										<li>
											<a href="http://cocacolakoreablog.co.kr/2585" target="_blank">
												<p class="event_banner">
													<img src="../../lib/images/yjevent2.png">
												</p>
												<div class="event_info">
													<p class="event_txt"><strong>코카-콜라 보틀의 주인공이 되어보세요!</strong></p>
													<p class="event_date"><span><strong>기간</strong></span> 2015.04.20 ~ 2015.06.14</p>
												</div>
											</a>
										</li>
										<li>
											<a href="/CocaCola/html/main/main.jsp" target="_blank">
												<p class="event_banner">
													<img src="../../lib/images/yjevent3.png">
												</p>
												<div class="event_info">
													<p class="event_txt"><strong>e-mail 수신동의 및 중복확인 이벤트</strong></p>
													<p class="event_date"><span><strong>기간</strong></span> 2014.10.01 ~ 2014.10.31</p>
												</div>
											</a>
										</li>
										<li>
											<a href="http://cocacolakorea.tistory.com/2023" target="_blank">
												<p class="event_banner">
													<img src="../../lib/images/yjevent4.png">
												</p>
												<div class="event_info">
													<p class="event_txt"><strong>파파존스 스파이시 삼바 출시!</strong></p>
													<p class="event_date"><span><strong>기간</strong></span> 2014.06.01 ~ 2014.06.30</p>
												</div>
											</a>
										</li>
										<li>
											<a href="" target="_blank">
												<p class="event_banner">
													<img src="../../lib/images/yjevent5.png">
												</p>
												<div class="event_info">
													<p class="event_txt"><strong>파파존스 스파이시 삼바 출시!</strong></p>
													<p class="event_date"><span><strong>기간</strong></span> 2014.03.17 ~ 2014.05.16</p>
												</div>
											</a>
										</li>
									</ul>
						 </div>
					</div>
				</div>
			</div>
		</div>
<%@include file="/html/side/footer.jsp"%>
</body>
</html>