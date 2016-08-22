<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../lib/css/cocacola.css">
<link rel="stylesheet" type="text/css" href="../../lib/css/cocacola_login.css">
<link rel = "shortcut icon" href = "/CocaCola/favicon.ico"> 
<style type="text/css" >
	
	body{background-color: #fff;}
	

	@media screen and (max-width: 555px){
		.login_wrap .login-box dl {width:80%}
	}
	@media screen and (max-width: 445px){
		.login_wrap .login-box dl {width:70%}
	}
	@media screen and (min-width: 641px){
		.media_head, .media_footer {	
			display:block;
		}
	}
</style> 
</head>
<body>
<%@include file="/html/side/header.jsp"%>

		<div class="login640_wrap">
			<div class="login_container">
				<div class="sm_container">
					<h2>회원로그인</h2><span><img src="../../lib/images/cocacola2.gif"></span>
				</div>	
					<p class="sm_subtext">
						안녕하세요. <span class="point-red">한국  코카-콜라</span>에 오신걸 환영합니다.<br>
						지금 로그인 하셔서 병 속 가득한 행복을 느껴보세요.
					</p>
					<section class="sm_sec">
						<fieldset>
								<legend></legend>
								
								<div class="login-box rb5">
									
										<dl>
											
											<dd><input type="text" class="input insdd" id="loginId" name="loginId" placeholder="아이디"></dd>
											
											<dd><input type="password" class="input insdd" id="loginPass" name="loginPass" placeholder="비밀번호"></dd>
										</dl>
										<span class="login_btn"><a href="javascript:LoginOk();" class="bt-login rb3">로그인</a></span>
										<span class="round1 rb3 last" onclick="" style="cursor:pointer">영타한글보기</span>
									
									<p>
									    <input type="hidden" id="chkID" style="display:none" name="chkID">
									    <input type="hidden" id="loginReferrer" style="display:none" name="loginReferrer" value="%2f">				
										
									</p>
									
								</div>								
							</fieldset>
					</section>
					<section class="round2 rb5">
						<p>회원가입 / 아이디찾기 / 비밀번호 찾기는 <br>PC웹 <span class="point-red2">(www.cocacola.co.kr)</span>에서 하실 수 있습니다.</br>
						로그인 및 회원가입에 궁금하신 점이 있으신가요?</p>
						<dl>
							<dt>한국 코카-콜라<br> 웹사이트 문의</dt>
							<dd class="round-red rb5">02 - 514 - 7187</dd>
						</dl>
						<dl>
							<dt>한국 코카-콜라<br> 소비자 보호실</dt>
							<dd class="round-red rb5">080 - 024 - 5999</dd>
						</dl>
					</section>
			</div>
				<div class="key-pop" id="divKeypop">
						<img src="../../lib/images/keyboard.gif" alt="키보드">
						<a class="loginclose-bt" onclick="javascript:CloseKeyboardImg()">닫기</a>
				</div>
		</div>
		
<%@include file="/html/side/footer.jsp"%>
</body>
</html>