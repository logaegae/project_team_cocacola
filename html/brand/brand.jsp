<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<title>Coca-Cola Korea</title>
	<link rel = "shortcut icon" href = "/CocaCola/favicon.ico"> 
	<link rel="stylesheet" type="text/css" href="../../lib/css/cocacola.css">
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="../../lib/js/common.js"></script>
	<script type="text/javascript" src="../../lib/js/main.js"></script>	
	
	<script>
		$(function(){
			ggg();
			$(window).resize(ggg);
			
			$('.brand .brand-title').css({
	   			'top':'70px',
	   			'left':'700px'
	   		});
		})		
	</script>	
	<style type="text/css">   
		
		@media screen and (min-width: 641px) {		
			body{
				background-image:url(../../lib/images/background.jpg);
	            width: 100%;
	            height: 100%;
	            background-repeat: repeat-x;
	   		}  
	   		
		}		           
	</style>
</head>
<body>

<%@include file="/html/side/sideBody.jsp"%>
<%@include file="/html/side/header.jsp"%>

<%@include file="/html/brand/brand_main.jsp"%>
	
<%@include file="/html/side/footer.jsp"%>
</body>
</html>