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
					<td class="subject">서버이관에&nbsp;따른&nbsp;로그인&nbsp;장애&nbsp;안내</td>
					<td class="date">2016.01.26</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br><br>
						1월 23일~1월 25일 간 서버이관에 따른 인증서 오류로 인해 로그인 서비스가 원활하지 않았습니다.<br><br>
						모든 회원분들께 불편을 끼쳐 드려 대단히 죄송하다는 말씀 드리며 이와 관련하여 1월 발도장 출석 이벤트의 당첨자 선정 기준
						을 아래와 같이 적용할 예정이오니 참조 부탁드립니다.<br><br>
						-당첨자 선정 기간 예외: 2016년 1월 23일~1월 25일 까지 전체 제외(응모 불가 기간)<br>
						- 당첨자 선정 기준: 10일, 20일, 30일 이상 출석 상품의 선정기준 중 3일을 제외하고 선정<br>
						- 당첨자 발표 : 2016년 2월 3일<br><br>
						현재는 로그인 서비스가 정상적으로 이용 가능 하오니 남은 기간 동안 많은 참여 바라며 불편을 끼쳐 드린 점 다시 한 번 사과의
						말씀 드립니다.<br><br>
						감사합니다.<br><br>
						한국 코카-콜라 (유)<br><br>
						*기타 문의 : webmaster@cocacola.co.kr</p>
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