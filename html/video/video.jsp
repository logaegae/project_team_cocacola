<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Coca-Cola Korea</title>
<link rel = "shortcut icon" href = "/CocaCola/favicon.ico"> 
<link rel="stylesheet" type="text/css" href="../../lib/css/cocacola.css">
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="../../lib/js/common.js"></script>
<script type="text/javascript" src="../../lib/js/video.js"></script>
<style type="text/css">
   	
    body{
	    background: #f6f3ee url('../../lib/images/bg_tvcf.jpg') no-repeat left top;
	    position: relative;    
	    width: 100%;
	    height: 100%;

    }
    .videomenu_ep1 {display:block;} 
    @media screen and (max-width: 640px){
   		body{ background: #fff; }
   		.media_head{
   			min-width:500px;
   		}
   		.media_footer{
   			min-width:500px;
   		}
   	}
</style>

</head>

<body>

<%@include file="/html/side/header.jsp"%>
<%@include file="/html/side/sideBody.jsp"%>
<%@include file="/html/video/videoSection.jsp"%>


 <%@include file="/html/side/footer.jsp"%>
 
</body>
</html>