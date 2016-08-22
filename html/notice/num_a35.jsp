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
					<td class="subject">회원약관&nbsp;및&nbsp;개인정보취급방침&nbsp;변경&nbsp;안내</td>
					<td class="date">2012.02.23</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br>
						항상 저희 사이트를 이용해 주시고 사랑해 주시는 회원님들께 감사의 말씀을 드립니다.<br><br>
						2012년 3월 1일부터 한국 코카-콜라 사이트의 회원약관 및 개인정보취급방침이 아래와 같이 변경됩니다.<br>
						이용에 참고 부탁 드립니다.<br><br>
						변경약관 적용일: 2012년 3월 1일(목)<br>
						주요 변경내용:<br><br>
						1. 회원약관 변경 <br>
						1) 개인정보보호법에 따른 용어 변경 및 관련 내용 정비<br>
						2) 회원약관의 일부로 있었던 개인정보처리방침 내용을 회원약관에서 분리하여 별도로 규정<br>
						3) 기존 개인정보처리방침에 포함되어 있던 링크 사이트, 게시물 및 이메일 무단 수집 거부 조항들을 약관으로 이동<br><br>
						2. 개인정보취급방침의 변경<br>
						1) 개인정보보호법에 따른 용어 변경 및 관련내용 정비<br>
						2) 링크 사이트, 게시물, 이메일 무단 수집 거부 조항들을 약관으로 이동<br>
						보다 자세한 내용은 사이트 하단에 게시된 회원약관 및 개인정보취급방침 항목을 통해 확인하실 수 있습니다.<br><br>
						<a href="/CocaCola/html/etc/agree.jsp" style="color:red;">회원약관</a>바로  보기<br>
						<a href="/CocaCola/html/etc/legal.jsp" style="color:red;">법적고지</a>바로  보기<br>
						<a href="/CocaCola/html/etc/privacy.jsp" style="color:red;">개인정보취급방침</a>바로  보기<br><br>
						감사합니다.</p>
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