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
					<td class="subject">장기&nbsp;미접속&nbsp;회원&nbsp;DB삭제</td>
					<td class="date">2014.08.01</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br>
						항상 저희 사이트를 이용해 주시고 사랑해 주시는 회원님들께 감사의 말씀을 드립니다.<br><br>
						<strong>2014년 8월 1일 회원 중 장기적으로 로그인하지 않은 회원정보를 일괄 삭제 처리 하였습니다.</strong><br><br>
						일부 회원정보의 기록에 따라 삭제 처리가 누락될 수 있으니 이점 참고 바라며, 누락 된 회원 중 탈퇴를 원하시는
						경우 코카-콜라 홈페이지<a href="www.cocacola.co.kr">(www.cocacola.co.kr)</a>의 접속, 로그인 후 MY INFO를 통해 “회원 탈퇴하기”을 진행
						부탁 드립니다.<br>
						로그인 정보를 잊으신 회원께서는 아이핀 인증 후 아이디/비밀번호 찾기를 통해 접속이 가능하며, 2012년 개인정
						보보호법 적용에 따라 본인 인증을 위해 아이핀 발급 후 이용이 가능한 점 양해해주시면 감사하겠습니다.<br><br>
						“회원 탈퇴하기” 진행 중 궁금하신 사항이나 애로사항은 하기 메일을 통해 문의 부탁 드립니다.<br>
						감사합니다.
						<div style="text-align:center;">한국 코카-콜라 (유)<br>
						*기타 문의 : webmaster@cocacola.co.kr</div></p>
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