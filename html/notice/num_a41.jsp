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
					<td class="subject">Coke&nbsp;BRAND&nbsp;APP&nbsp;서비스&nbsp;종료안내</td>
					<td class="date">2013.12.24</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br>
						현재 운영 중인 Coke BRAND APP 서비스가 2013년 12월31일에 종료 예정임을 알려드립니다.<br><br>
						2012년 안드로이드, 아이폰 스토어를 통해 Coke BRAND APP을 신규로 출시하였습니다.<br>
						코카-콜라의 다양한 TV CF와 이벤트 정보, 핫플레이스, 블로그 등을 통한 APP에 최적화된 서비스를 제공 하였습니다.<br>
						현재 운영되고 있는 서비스 강화를 위해 부득이 하게 ‘서비스 종료’라는 아쉬운 소식을 전하게 되었습니다.<br>
						그동안 Coke BRAND APP 서비스를 이용해 주신 고개님들께 진심으로 감사 드리며, 서비스 종료에 대해 고객님들의
						너그러운 이해를 부탁 드립니다.<br><br>
						[Coke BRAND APP 종료]<br><br>
						● 서비스 종료 일자  : 2013년 12월 31일<br>
						● 서비스 종료 내용  : 안드로이드 APP, 아이폰 APP<br>
						● 서비스 기타 문의  : <mark>cokecaster@adqua.co.kr</mark><br><br>
						더 좋은 서비스로 만나 뵐 수 있는 코카-콜라가 되도록 하겠습니다.<br><br>
						감사합니다.<br><br>
						한국 코카-콜라 (유)</p>
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