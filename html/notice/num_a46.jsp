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
					<td class="subject">사이트&nbsp;운영&nbsp;장애에&nbsp;따른&nbsp;안내(9월 15일)</td>
					<td class="date">2014.09.16</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br><br>
						9월 15일 서버상의 장애로 인해 사이트 접속 시 로그인 서비스와 페이지 접속이 원활하지 않았습니다.<br><br>
						회원 분들을 포함하여 사이트를 이용하신 모든 분들께 불편을 끼쳐 드려 대단히 죄송하다는 말씀 드리며 이와 관련 하여 9월 발
						도장 출석 이벤트의 당첨자 선정 기준은 아래와 같이 적용할 예정이오니 참조 부탁 드립니다.<br><br>
						-당첨자 선정 기간 예외 : 2014년 9월 15일 1일 출석 제외<br>	
						-당첨자 선정 기준 : 30일, 20일, 10일 이상 출석 체크한 모든 회원들 대상으로 당첨자 선정 (1일을 제외하고 선정 기준 반영)<br>
						-당첨자 발표 : 2014년 10월 7일<br><br>
						현재는 로그인 서비스가 정상적으로 이용 가능 하오니 남은 기간 동안 많은 참여 바라며 불편을 끼쳐 드린 점 다시 한번 사과의
						말씀 드립니다.<br><br>
						감사합니다.<br><br>
						한국 코카-콜라(유)<br>
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