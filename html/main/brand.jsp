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
	<link rel = "shortcut icon" href = "/favicon.ico"> 
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="../../lib/js/common.js"></script>
	<script type="text/javascript" src="../../lib/js/main.js"></script>
	<script>
		$(document).ready(function(){
			
			
			
			var gggReady = function(){
				$('.mid').css({
					'top':'1000px',
					'left':'500px'
				});
				$('.brand .brand-title').css({
					'top' : '400px',
					'left': '1000px'					
				})
				$('.brand .brand-title img').css({
					'display':'none'
				})
			}();
			
			
		})
		
		
		$(window).load(function(){	
			
			$('.brand .brand-title img').show(800).parent().css({
				'left':'0px',
				'top':'70px',
				'transform':'translate(270px,0)'				
			});
		
			ggg();	
			
			$(window).resize(ggg);
			
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
	         	.topMenu .option_set li.t1 a{
						background-image: url("../../lib/images/nav_viewAll.png");
				} 
		        .topMenu .option_set li.t2 a{
						background-image: url("../../lib/images/nav_brand_on.png");
				}
				.brand .item_wrap{
					margin-top: 160px;
				}
			}
			@media screen and (max-width: 640px) {
				body{
					background: #f6f6f6;
				}
				.topMenu .option_set li.t1 a{
			    	background-image: url("../../lib/images/ico_viewAll_off.png");				    	
			    }
			    .topMenu .option_set li.t2 a{
			    	background-image: url("../../lib/images/ico_brand_on.png");
			    }	
			    
			} 	        
	                    
		</style>

</head>

<body>

<%@include file="/html/side/header.jsp"%>
<%@include file="/html/main/topmenu.jsp"%>
<%@include file="/html/side/sideBody.jsp"%>
<%@include file="/html/brand/brand_main.jsp"%>
<%@include file="/html/side/footer.jsp"%>

	
</body>