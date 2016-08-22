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
					<td class="subject">개인정보&nbsp;유효기간제&nbsp;시행으로&nbsp;인한&nbsp;회원DB&nbsp;삭제&nbsp;완료</td>
					<td class="date">2015.09.21</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br>
						항상 저희 사이트를 이용해 주시고 사랑해 주시는 회원님들께 감사의 말씀을 드립니다.<br><br>
						한국 코카-콜라 회원님의 개인정보 보호를 위하여 개인정보유효기간제 법령에 따라 2014년 8월 17일 이후
						1년 이상 장기 미 이용 회원님의 개인정보를 파기하였습니다.<br><br>
						<strong>대 상 : 1년이상 로그인 하지 않은 회원</strong><br>
						<strong>정 보 : 회원과 관련 된 모든 개인정보 삭제</strong><br>
						<strong>시 행 : 2015년 8월 18일</strong><br><br>
						<span style="color:red;">＊로그인 관련하여 문제점 또는 궁금하신 사항은 아래의 고객센터로 문의 바랍니다.</span><br>
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