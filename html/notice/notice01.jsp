<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Coca-Cola Korea</title>
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
              a{
                        color: #999;
              }
              a:hover{
                        text-decoration: underline;
              }            
              .page_a .on span{
              	font-weight:bold;
              }                     
              
              /*반응형*/
              @media screen and (max-width:640px){
	               body{
	                        background-color: #f6f6f6;
	                        background-image: none;
	               }
              }
    </style>
    <script>

    </script>
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
			<caption>list</caption>
		
			<colgroup>
				<col style="width:70%;">
				<col>
			</colgroup>
			
			<thead>
				<tr>
				          <td class="sub">제&nbsp;목</td>
				          <td class="day">날&nbsp;짜</td>
				</tr>
			</thead>
			
			<tbody>
			
			<%@include file="/html/notice/noticeTable01.jsp"%>
			
			</tbody>
		</table>
	</div>
	
	<div class="page_a">
		<span class="paging_first"><a href="./notice01.jsp"><img src="../../lib/images/board_paging_first.gif"></a></span>
		<span class="paging_prev"><a href="javascript:void(0);"><img src="../../lib/images/board_paging_prev.gif"></a></span>
		<div class="page_b">
			<span><a class="page01" href="javascript:void(0);"><span>1</span></a></span>
			<span><a class="page02" href="javascript:void(0);"><span>2</span></a></span>
			<span><a class="page03" href="javascript:void(0);"><span>3</span></a></span>
		</div>
		<span class="paging_next"><a href="javascript:void(0);"><img src="../../lib/images/board_paging_next.gif"></a></span>
		<span class="paging_end"><a href="javascript:void(0);"><img src="../../lib/images/board_paging_end.gif"></a></span>
	</div>
	<div class="check_button" style="display:none;">
		<span class="prev"><a href="javascript:void(0);"><img src="../../lib/images/menu_prev.png" alt="이전"></a></span>
		<span class="next"><a href="javascript:void(0);"><img src="../../lib/images/menu_next.png" alt="다음"></a></span>
		<span class="list"><a href="javascript:void(0);"><img src="../../lib/images/menu_list.png" alt="목록"></a></span>
	</div>
</div>     

<%@include file="/html/side/footer.jsp"%>  
</body>
</html>