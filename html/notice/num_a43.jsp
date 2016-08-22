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
					<td class="subject">장기&nbsp;미접속&nbsp;회원&nbsp;및&nbsp;개인정보&nbsp;미기재&nbsp;회원&nbsp;DB&nbsp;삭제</td>
					<td class="date">2014.06.23</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br>
						항상 저희 사이트를 이용해 주시고 사랑해 주시는 회원님들께 감사의 말씀을 드립니다.<br><br>
						2014년 8월 1일 기준으로 회원가입 된 회원 중 하기의 내용을 기준으로 회원DB 삭제가 진행 될 예정입니다.<br>
						개인정보보호를 위한 사항과 부정확한 개인정보를 정리하는 사항이오니 양해 부탁 드립니다.<br><br>
						<strong>＊회원 DB 삭제 기준</strong><br><br>
						1. 3년 이상 로그인 하지 않은 회원<br>
						2. 부정확한 e-mail(@없는 e-mail, 공백이 있는 e-mail)<br>
						3. 부정확한 이름(특수문자, 숫자 기입)<br>
						4. 전화번호, 휴대폰번호 미기재<br>
						5. E-mail 미기재<br><br>
						일 정: 2014년 08월 01일 처리 예정<br><br>
						<span style="color:red;">＊로그인 관련하여 문제점 또는 궁금하신 사항은 아래의 고객센터로 문의 바랍니다.</span><br><br>
						감사합니다.<br><br>
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