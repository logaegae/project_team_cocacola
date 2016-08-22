<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel = "shortcut icon" href = "/CocaCola/favicon.ico"> 
<title>Coca-Cola Korea</title>
<link rel="stylesheet" type="text/css" href="../../lib/css/cocacola.css">
<link rel = "shortcut icon" href = "/CocaCola/favicon.ico"> 
<style>          
	body{
		background-image: url(../../lib/images/bg_customercenter.jpg);
		background-color : #f6f3ee;
		background-repeat : no-repeat;
		background-position : left top;
	}	
	
	@media screen and (max-width: 640px) {
        
        body {
        background: #FFF;
        position:static;
        }
        
   	}
	</style>
</head>


<body>
<%@include file="/html/side/header.jsp"%>
<%@include file="/html/side/sideBody.jsp"%>

	<div class = "contact">	
          <div class="content">
                    <img src="../../lib/images/title_customercenter.png">
          </div>
          <div class="subtent">
                    <img src="../../lib/images/txt_customer.png" usemap="#Map">
          </div>
        	<map name="Map" id="Map">
				<area shape="rect" coords="36,157,197,168" href="mailto:webmaster@cocacola.co.kr" alt="webmaster@cocacola.co.kr">
			</map>	
          <div class="last">
                    <img src="../../lib/images/img_customer.png">
          </div>         
	</div>
<%@include file="/html/side/footer.jsp"%>
</body>
</html>
	