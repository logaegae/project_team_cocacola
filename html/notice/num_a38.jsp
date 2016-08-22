<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Notice</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../../lib/css/cocacola.css">
	<link rel = "shortcut icon" href = "/CocaCola/favicon.ico"> 
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="../../lib/js/common.js"></script>
	<script type="text/javascript" src="../../lib/js/board.js"></script>
	<style>
	             
              body{
					background-image: url(../../lib/images/bg_notice.jpg);
					width: 100%;
					height: 100%;
					background-repeat: no-repeat;
					background-color: #f6f3ee;
					font-family: "맑은 고딕";
              }


              /*반응형*/
              @media screen and (max-width:640px){
	              body{
	                        background-color: #f6f6f6;
	                        background-image: none;
	              }	       
	             
              }
    </style>
</head>

<body>
<%@include file="/html/side/header.jsp"%>
<%@include file="/html/side/sideBody.jsp"%>
<div class="notice">
   	<img src="../../lib/images/title_notice.png">
</div>

<div class="table_position">	
	<div class="wrap_table">
		<table id="board">
			<caption>view</caption>
			<colgroup>
				<col style="width:70%;">
				<col>
			</colgroup>
			<thead>
				<tr>
					<td scope="col" class="sub">제 목</th>
					<td scope="col" class="day">날 짜</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="subject">COKE&nbsp;POINT&nbsp;서비스&nbsp;종료&nbsp;안내</td>
					<td class="date">2013.09.11</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br><br>
						현재 운영 중인 Coke POINT 서비스는 10월 2일에 종료 예정임을 알려드리며,<br>
						포인트를 보유 하고 계신 회원님들께서는 9월 24일까지 모두 소진해주시기 바랍니다.<br>
						<span style="text-decoration : underline"><strong>현재 보유하고 계신 포인트는 10월 2일 이후 자동 소멸될 예정입니다.</strong></span><br><br>
						보다 많은 분들께 다양한 경품을 혜택을 드리고자<br>
						9월 한 달 동안은 동일 상품에 대해 중복 신청이 가능 하오니 많은 참여 부탁 드립니다.<br>
						(포인트 차감 방식은 동일)<br>
						<strong>9월 Coke Shop 운영 일정</strong><br><br>
						<strong>1차</strong><br>
						 - 신청기간 : 2013년 9월 4일 ~ 9월 17일 PM 11:59까지<br>
						 - 당첨자 발표 : 9월 25일<br><br>
						<strong>2차</strong><br>
						- 신청기간 : 2013년 9월 18일 ~ 10월 1일 PM 11:59까지<br>
						- 당첨자 발표 : 10월 9일<br><br>
						그 동안 Coke Point 서비스를 이용해 주신 모든 회원님들께 진심으로 감사 드리며<br>
						더 나은 서비스로 인사 드리겠습니다.<br><br>
						감사합니다.<br><br>
						<div style="text-align: center;">한국 코카-콜라 (유)<br>
						<strong>*기타 문의 : cokecaster@adqua.co.kr</strong></div></p>
					</td>
				</tr>
			</tbody>
		
		</table>
	</div>

	<div class="check_button">
		<span class="prev"><a href="javascript:void(0);"><img src="../../lib/images/menu_prev.png" alt="이전"></a></span>
		<span class="next"><a href="javascript:void(0);"><img src="../../lib/images/menu_next.png" alt="다음"></a></span>
		<span class="list"><a href="javascript:void(0);"><img src="../../lib/images/menu_list.png" alt="목록"></a></span>
	</div>
</div>
<%@include file="/html/side/footer.jsp"%>  
</body>
</html>