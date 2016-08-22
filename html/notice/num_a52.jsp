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
					<td class="subject">출석&nbsp;체크&nbsp;이벤트&nbsp;종료&nbsp;안내</td>
					<td class="date">2016.02.04</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>
						안녕하세요. 한국 코카-콜라입니다.<br><br>
						현재 EVENT메뉴를 통해 장기간 운영 해온 '출석 체크 이벤트'가 2016년 2월 기준으로 서비스 종료 예정입니다.<br>
						그 동안 '출석 체크 이벤트'를 응모해 주신 모든 코카-콜라 회원님께 감사에 말씀을 전합니다.<br><br>
						- 응모 기간 : 2016년 2월 29일 까지<br>
						- 당첨자 선정 : 2016년 3월 2일 예정<br>
						- 서비스 종료 : 2016년 3월 기준으로 응모 불가<br>
						- 당첨자 발표 : 공지사항을 통해 발표<br><br>
						앞으로 더 좋은 혜택과 서비스를 드릴 수 있도록 노력하겠습니다.<br><br>
						감사합니다.<br><br>
						한국 코카-콜라 (유)<br>
						*기타 문의 : webmaster@cocacola.co.kr
						</p>
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