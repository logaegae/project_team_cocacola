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
					<td class="subject">조지아&nbsp;캔커피&nbsp;이물질에&nbsp;대해&nbsp;진심으로&nbsp;사과드립니다</td>
					<td class="date">2013.08.14</td>
				</tr>
				<tr>
					<td colspan="2">
						<p>안녕하세요. 한국 코카-콜라입니다.<br><br>
						당사는 소비자가 안심하고 즐길 수 있는 품질 좋은 제품을 제공하는 것을 최우선으로 삼아 비즈니스를 해왔습니다. 그럼에도 불
						구하고 이번 이물질 사건으로 인해 불미스러운 일을 겪은 해당 소비자분을 비롯하여 조지아커피를 사랑해주신 많은 소비자들께 
						심려 끼쳐 드린 점에 진심으로 유감스럽게 생각합니다.<br><br>
						해당 제품은 소비자의 제품 불만 접수 직후 식약처의 가이드라인에 따라 즉각적인 이물 보고를 하였으며 현재 조사가 진행 중입
						니다.<br><br>
						현재까지 제품 전 제조과정을 포함해 전반적인 조사를 실시한 결과로는 유통 과정에서 해당 캔 제품 상단부분에 용기 손상이 확
						인되었으며, 이 과정에서 캔 내부의 진공 해제 및 외부 공기의 유입을 통한 미생물 오염이 이번 이물질의 직접적인 원인으로 파
						악되고 있습니다. 다만 정확한 원인 규명을 위해 식약처 조사 결과를 기다리고 있습니다.<br><br>
						결과 여부를 떠나 이번 건으로 피해를 입은 소비자분께 다시 한번 진심으로 사과드리며, 앞으로 이와 같은 문제가 발생하지 않
						도록 유통 과정까지 더욱 주의를 기울일 것을 약속드립니다.<br><br>
						항상 소비자가 믿고 애용할 수 있는 제품을 제공할 수 있도록 만전을 기하겠습니다.<br><br>
						한국 코카-콜라 드림</p>
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