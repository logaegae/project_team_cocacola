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
					<td class="subject">개인정보&nbsp;유효기간제&nbsp;시행으로&nbsp;인한&nbsp;회원DB&nbsp;파기</td>
					<td class="date">2015.07.21</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br>
						항상 저희 사이트를 이용해 주시고 사랑해 주시는 회원님들께 감사의 말씀을 드립니다.<br><br>
						한국 코카-콜라 회원님의 개인정보 보호를 위하여 관련 법령에 따라 2014년 8월 17일부터 1년 이상 장기 미 이용
						회원님의 개인정보를 파기 또는 별도 보관해야 합니다.<br><br>
						<strong>개인정보 유효기간제란?</strong><br>
						정보통신망 이용촉진 및 정보보호 등에 관한 법률 제29조 제2항에 따르면 정보통신서비스제공자 등은
						정보통신서비스를 대통령령으로 정하는 기간 동안 이용하지 아니하는 이용자의 개인정보를 보호하기
						위해 대통령령으로 정하는 바에 따라 개인정보를 파기 등 필요한 조치를 취해야 한다고 규정하고 있습니다.<br><br>
						<strong>2015년 8월 17일까지 <a href="www.cocacola.co.kr">www.cocacola.co.kr</a>을 통해 로그인 이용이 없을 경우</strong><br>
						①회원님의 개인정보가 파기되며<br>
						②2015년 8월 18일부터 로그인이 불가능 하게 됩니다.<br>
						③로그인을 원하는 경우 신규로 회원가입을 진행해야 하는 불편함이 생길 수 있습니다.<br><br>
						<strong>-2015년 8월 17일 이전에 <a href="http://www.cocacola.co.kr">www.cocacola.co.kr</a>을 통해 1회 이상 로그인 하시면 기존 계정으로 지속적인<br>
						이용이 가능하오니 빠른 시일내에 로그인을 진행하시기 바랍니다.<br>
						- 앞으로도 코카-콜라 회원님의 소중한 개인정보가 안전하게 지켜질 수 있도록 최선을 다하겠습니다.</strong><br><br>
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