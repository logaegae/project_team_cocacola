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
	<script type="text/javascript" >
  	$(function(){ 		
  		
  		var liList = {
  				idx : 0,
  				idxArr : [],
  				idxMaker : function(){  		  			
  		  			
  		  			$('.zine_cover .now').parent('ul').children('li').each(function(i,e){
  		  				liList.idxArr[i] = $(e).index();
  		  			})
  				},
  				bgChange : function(target,value) {
  		  			var imsi = target.css('background-position').split(' ');
  		  			target.css('background-position', value+' '+imsi[1])
  		  		},
  				disOn : function(target){
  					target.css('display','block').addClass('now').siblings().css('display','none').removeClass('now').parent('ul').siblings().children('li').css('display','none').removeClass('now');
  				}  				
  		}
  	
  		/*Tab menu click*/  		
  		$('.zine_tab').find('a').click(function(){	  	
  			
  			if( $(window).width() > 640 ){  			
	  			liList.bgChange($(this),'0px');
	  			$(this).parent('li').siblings().children('a').each(function(i,e){
	  				liList.bgChange($(e),'-42px');
  				});
  			
  			}				  			
  			
			$('.zine_buttons .prev_icon').css('display','none').siblings().css('display','block');
  			$('.zine_cover').children('img').css('display','none');
  			liList.disOn( $('.zine_cover ul').eq($(this).parent('li').index()).children('li').first() );
  			
  			liList.idx = 0;
  			liList.idxArr = [];
  			liList.idxMaker();  			
  			return false;
  		});
  		
  		/*next button*/
  		$('.zine_buttons .next_icon').click(function(){  		    			  			
  			
  			for(var i = 0 in liList.idxArr){
  				
  				if (liList.idxArr[i] ==  $('.zine_cover .now').index()){
  					liList.idx = Number(i) + 1;
  				}
  			}
  			liList.disOn( $('.zine_cover .now').parent('ul').children().eq(liList.idxArr[liList.idx]) );
  			$('.zine_buttons .prev_icon').css('display','block');
  		
  			if(liList.idx == liList.idxArr.length - 1 ){
  				$('.zine_buttons .next_icon').css('display','none');
  			}
  			return false;	
  		})
  		
  		/*prev button*/
  		$('.zine_buttons .prev_icon').click(function(){  		    			  			
  			
  			for(var i = 0 in liList.idxArr){
  				
  				if ($('.zine_cover .now').index() != 0 && liList.idxArr[i] ==  $('.zine_cover .now').index()){
  					liList.idx = Number(i) - 1;  				
  				}
  			}
  			liList.disOn( $('.zine_cover .now').parent('ul').children().eq(liList.idxArr[liList.idx]) );  			
  			$('.zine_buttons .next_icon').css('display','block');
  			
  			if(liList.idx == 0 ){
  				$('.zine_buttons .prev_icon').css('display','none');
  			}
  			return false;	
  		})
  	})
  </script>

  <style>
	@media screen and (min-width: 641px) {	         	
	    body{
	      position: relative;
	      width: 100%;
	      height: 100%;
	      background-image: url("../../lib/images/background.jpg");
	      background-repeat: repeat-x;
	      background-position: left top;
	      background-color: #f6f3ee ;
	    }
    }
    @media screen and (max-width: 640px) {
    	body{
					background: #fff;
				}
    
    }
    
    </style>

</head>
<body>

<%@include file="/html/side/header.jsp"%>
<%@include file="/html/side/sideBody.jsp"%>
  <form>
    <div class="zine_content">
      <div class="zine_body">

        <ul class="zine_tab">
          <li class="zine_menu1"><a href=""><img src="../../lib/images/gnb_m_webzine_01.png" alt="what's up" />what's up</a></li>
          <li class="zine_menu2"><a href=""><img src="../../lib/images/gnb_m_webzine_02.png" alt="speaking talk" />speaking talk</a></li>
          <li class="zine_menu3"><a href=""><img src="../../lib/images/gnb_m_webzine_03.png" alt="social now" />social now</a></li>
          <li class="zine_menu4"><a href=""><img src="../../lib/images/gnb_m_webzine_04.png" alt="coke times" />coke times</a></li>
        </ul>
        <div class="zine_cover">
          <img src="../../lib/images/img_0.png" alt="매거진 커버" >
          <ul class="menu_images1">

            <li style="display: none;"><img src="../../lib/images/5dada792-e5a2-464e-85cb-c7d25f0b1065.png" alt="100년의 헤리티지 시리즈 소개" title="100년의 헤리티지 시리즈 소개"></li>

            <li style="display: none;"><img src=" ../../lib/images/2d8e432f-4db7-4c21-a987-12293b96a2df.png" alt="2015년 새해소망을 짜릿하게 이뤄줄 패키지 출시!" title="2015년 새해소망을 짜릿하게 이뤄줄 패키지 출시!" usemap="#imgMap12"></li>
            <map name="imgMap12">
            <area shape="rect" coords="41,372,186,407" href="http://cocacolakoreablog.co.kr/2500" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/9447c023-8359-4763-96ed-162aa5c8dda0.png" alt="뜨거운 열정으로 가득 찬 COKE CREATOR 3기 발대식" title="뜨거운 열정으로 가득 찬 COKE CREATOR 3기 발대식" usemap="#imgMap13"></li>
            <map name="imgMap13">
            <area shape="rect" coords="41,645,184,689" href="http://cocacolakorea.tistory.com/2415" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/69bfe9e0-2e4b-4f74-99a0-eea6504c7b65.png" alt="코카-콜라 배경화면으로 여름을 즐겨보자!" title="코카-콜라 배경화면으로 여름을 즐겨보자!" usemap="#imgMap14"></li>
            <map name="imgMap14">
            <area shape="rect" coords="41,440,184,474" href="http://cocacolakorea.tistory.com/2184" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/3c5242b7-c6e9-4c32-bec1-f84be352edb6.png" alt="HAPPINESS FLAG" title="HAPPINESS FLAG" usemap="#imgMap15"></li>
            <map name="imgMap1" id="imgMap1">
            <area shape="rect" coords="211,279,358,317" href="http://www.coca-cola.kr/2014-fifa-world-cup" target="_blank">
            </map>

          </ul>

          <ul class="menu_images2">

            <li style="display: none;"><img src=" ../../lib/images/0837bcbb-d05a-49b6-b74c-723b548116ad.png" alt="코카-콜라의 매력에 빠진 앤디워홀" title="코카-콜라의 매력에 빠진 앤디워홀"></li>

            <li style="display: none;"><img src=" ../../lib/images/2cc316ff-d11a-45bf-aad4-11739e4547f1.png" alt="코카-콜라 해피니스 머신" title="코카-콜라 해피니스 머신"></li>

            <li style="display: none;"><img src=" ../../lib/images/0c9f2ffd-3fa6-4b39-9f54-c520d70c469b.png" alt="코카-콜라가 사람들의 삶에 미치는 의미는?" title="코카-콜라가 사람들의 삶에 미치는 의미는?"></li>

            <li style="display: none;"><img src=" ../../lib/images/773975e7-245c-41da-bc5c-6386934b423a.png" alt="독특한 스펜서체의 코카-콜라 로고" title="독특한 스펜서체의 코카-콜라 로고"></li>

            <li style="display: none;"><img src=" ../../lib/images/2a776559-0d3f-4f7a-a056-1781c9fd9813.png" alt="바르게 알고 섭취하는 카페인" title="바르게 알고 섭취하는 카페인"></li>

            <li style="display: none;"><img src=" ../../lib/images/00b3bb36-3ea8-48db-ab9b-08efb30d30b8.png" alt="코카-콜라를 가장 많이 마시는 나라는 어디일까요?" title="코카-콜라를 가장 많이 마시는 나라는 어디일까요?"></li>

            <li style="display: none;"><img src=" ../../lib/images/7c661c96-cc94-451f-a7d6-1e5ac03ef628.png" alt="나라마다 코카-콜라 맛이 다르다는 게 사실일까요?" title="나라마다 코카-콜라 맛이 다르다는 게 사실일까요?"></li>

            <li style="display: none;"><img src=" ../../lib/images/0aa89d82-3cad-420f-abfb-6c9b5738cbb1.png" alt="우주를 다녀온 코-크 파운틴 머신" title="우주를 다녀온 코-크 파운틴 머신"></li>

            <li style="display: none;"><img src=" ../../lib/images/3ebf9418-8f8e-4bcf-8e5a-3c9ddedb7cd3.png" alt="Coca-Cola Hidden Icons : 비비안(Vivian)" title="Coca-Cola Hidden Icons : 비비안(Vivian)"></li>

            <li style="display: none;"><img src=" ../../lib/images/470e975d-9d43-4923-ad38-fbf2c9abbb8a.png" alt="최초의 여성 흑인 모델" title="최초의 여성 흑인 모델"></li>

            <li style="display: none;"><img src=" ../../lib/images/95a15df0-adfc-46e1-bf44-a0d37ca416aa.png" alt="SHARE THE SOUND! 음악으로 생명을 살리는 Coke RED 캠페인" title="SHARE THE SOUND! 음악으로 생명을 살리는 Coke RED 캠페인"></li>
            <map name="imgMap26" id="imgMap26">
            <area shape="rect" coords="222,745,365,780" href="http://cocacolakorea.tistory.com/2425" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/781ed758-9a94-4295-84f8-d9c7db824f23.png" alt="코카-콜라 컨투어보틀 국내한정판" title="코카-콜라 컨투어보틀 국내한정판"></li>

            <li style="display: none;"><img src=" ../../lib/images/c029e028-6400-4236-828d-a59020f70986.png" alt="코카-콜라는 어떻게 국경을 넘어 전 세계인의 코-크가 되었나?" title="코카-콜라는 어떻게 국경을 넘어 전 세계인의 코-크가 되었나?"></li>

            <li style="display: none;"><img src=" ../../lib/images/77e39e88-3999-4f39-a10d-0723a159a8f3.png" alt="콜라는 충치의 주범이다?" title="콜라는 충치의 주범이다?"></li>

            <li style="display: none;"><img src=" ../../lib/images/862b1289-0127-4df7-8836-46a3be652e7e.png" alt="콜라는 다이어트의 적?" title="콜라는 다이어트의 적?"></li>

            <li style="display: none;"><img src=" ../../lib/images/d9623494-453c-4605-91b2-36c294c49298.png" alt="스포츠를 통해 하나 되는 순간, 코카-콜라도 함께 합니다." title="스포츠를 통해 하나 되는 순간, 코카-콜라도 함께 합니다."></li>

            <li style="display: none;"><img src=" ../../lib/images/baa6799d-76f5-43c9-8d62-8652c2ae0670.png" alt="`Time`지 커버를 장식한 최초의 사물" title="`Time`지 커버를 장식한 최초의 사물"></li>

            <li style="display: none;"><img src=" ../../lib/images/ef2a4620-4fa1-465b-83c2-2587b17f6e1e.png" alt="Coca-Cola Contour Bottle : 예술가와의 만남" title="Coca-Cola Contour Bottle : 예술가와의 만남"></li>

          </ul>

          <ul class="menu_images3">


            <li style="display: none;"><img src=" ../../lib/images/29d2cc34-6372-4a75-be64-fc99bc49f917.png" alt="지금은 #코크타임 맛있게 쉬어가자~!" title="지금은 #코크타임 맛있게 쉬어가자~!" usemap="#imgMap31"></li>
            <map name="imgMap31">
            <area shape="rect" coords="49,773,203,806" href="https://www.facebook.com/663709713760411/videos/vb.663709713760411/735201539944561/?type=2&amp;theater" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/2d756545-21ec-4985-b34b-8fe001999815.png" alt="코카-콜라를 사랑한 가죽공예 장인" title="코카-콜라를 사랑한 가죽공예 장인" usemap="#imgMap32"></li>
            <map name="imgMap32">
            <area shape="rect" coords="216,424,369,459" href="https://www.facebook.com/663709713760411/photos/a.665677576896958.1073741828.663709713760411/721104894687559/?type=1&amp;theater" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/35238b46-fba8-4d12-a924-67f7be05634c.png" alt="신촌물총축제를 상쾌하게 깨운 2015 스프라이트 샤워, 그 현장 속으로!" title="신촌물총축제를 상쾌하게 깨운 2015 스프라이트 샤워, 그 현장 속으로!" usemap="#imgMap33"></li>
            <map name="imgMap33">
            <area shape="rect" coords="215,499,371,536" href="http://cocacolakorea.tistory.com/2614" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/17c12117-9410-4cf8-b449-1279a572acae.png" alt="탄산대첩의 돈스파이크와 이규한을 만나다." title="탄산대첩의 돈스파이크와 이규한을 만나다." usemap="#imgMap34"></li>
            <map name="imgMap34">
            <area shape="rect" coords="69,688,225,726" href="https://www.facebook.com/permalink.php?story_fbid=680330265431689&amp;id=663709713760411" target="_blank">
            <area shape="rect" coords="361,688,518,726" href="https://www.facebook.com/permalink.php?story_fbid=680730282058354&amp;id=663709713760411" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/a07108d9-8772-4b51-aecf-72e1a17ef07f.png" alt="코카-콜라 X 사우스빅의 짜릿한 콜라보레이션!" title="코카-콜라 X 사우스빅의 짜릿한 콜라보레이션!" usemap="#imgMap35"></li>
            <map name="imgMap35">
            <area shape="rect" coords="216,326,371,362" href="http://cocacolakorea.tistory.com/2607" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/48cdcdd7-e85d-4b8f-b6e8-15ecd331e4f5.png" alt="코카-콜라100주년 기념 코크보틀하우스" title="코카-콜라100주년 기념 코크보틀하우스" usemap="#imgMap36"></li>
            <map name="imgMap36">
            <area shape="rect" coords="216,579,371,614" href="http://cocacolakorea.tistory.com/2595" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/5d1f12a8-7a9b-4a29-bfc7-f352b25c9b89.png" alt="코카-콜라 병에 담긴 100년 간의 이야기" title="코카-콜라 병에 담긴 100년 간의 이야기" usemap="#imgMap37"></li>
            <map name="imgMap37">
            <area shape="rect" coords="49,693,205,727" href="http://cocacolakorea.tistory.com/2581" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/10d76e02-4af3-4331-9dd0-906fd651cf7a.png" alt="인스타그램으로 짜릿하게!" title="인스타그램으로 짜릿하게!" usemap="#imgMap38"></li>
            <map name="imgMap38">
            <area shape="rect" coords="198,628,393,663" href="https://instagram.com/coke.style/#" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/b13fcbdf-c218-4b1b-93fe-37fa0a1c3fa3.png" alt="짜릿하게 이뤄져라! 코카-콜라 썸판기로 너의 연애를 테스트해봐" title="짜릿하게 이뤄져라! 코카-콜라 썸판기로 너의 연애를 테스트해봐" usemap="#imgMap39"></li>
            <map name="imgMap39">
            <area shape="rect" coords="43,777,187,810" href="http://cocacolakoreablog.co.kr/2519" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/ae73a753-b110-48cd-b98c-865fec729927.png" alt="코카-콜라 월페이퍼 다운받고 양의 기운 받자" title="코카-콜라 월페이퍼 다운받고 양의 기운 받자" usemap="#imgMap310"></li>
            <map name="imgMap310">
            <area shape="rect" coords="42,777,187,810" href="http://cocacolakoreablog.co.kr/2500" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/8cb1247c-2319-4927-b49f-95b2d5b51cc6.png" alt="폴라베어와 함께 신나는 겨울을!" title="폴라베어와 함께 신나는 겨울을!" usemap="#imgMap311"></li>
            <map name="imgMap311">
            <area shape="rect" coords="53,335,193,369" href="https://story.kakao.com/ch/cocacola/jHALZLZZNX0" target="_blank">
            <area shape="rect" coords="326,695,465,729" href="https://story.kakao.com/ch/cocacola/F9Yupvh5Rw9" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/920b9530-93ee-4bb3-a5f3-b5c94eab0211.png" alt="HAPPY HALLOWEEN" title="HAPPY HALLOWEEN" usemap="#imgMap312"></li>
            <map name="imgMap312">
            <area shape="rect" coords="41,754,185,788" href="https://www.facebook.com/coca-cola/photos/pb.40796308305.-2207520000.1415782451./10153666386993306/?type=3&amp;theater" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/6b18a43f-7bc4-42b3-ab3a-6d9e6ce711e8.png" alt="글라소 비타민워터가 전하는 2014부산국제영화제" title="글라소 비타민워터가 전하는 2014부산국제영화제" usemap="#imgMap313"></li>
            <map name="imgMap313">
            <area shape="rect" coords="45,775,184,808" href="http://glaceauvitaminwaterblog.kr/category/2014%20BIFF" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/2ec5a7ce-092b-4aee-9cfa-0a8e9aa006c8.png" alt="[FANTA]WINNER 환타 체인지 영상" title="[FANTA]WINNER 환타 체인지 영상" usemap="#imgMap314"></li>
            <map name="imgMap314">
            <area shape="rect" coords="206,565,290,644" href="https://story.kakao.com/ch/cocacola/J59OxoAvsv0" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/33528ccb-4173-42fa-bfcb-3c35eed30260.png" alt="글라소가 소개하는 색다른 아티스트 스토리" title="글라소가 소개하는 색다른 아티스트 스토리" usemap="#imgMap315"></li>
            <map name="imgMap315">
            <area shape="rect" coords="65,778,269,811" href="https://www.facebook.com/glaceauvitaminwaterkr" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/53316e99-3923-4bf7-9c32-0030332c472b.png" alt="한국 VS 러시아 경기 팬 반응 하이라이트!" title="한국 VS 러시아 경기 팬 반응 하이라이트!" usemap="#imgMap316"></li>
            <map name="imgMap316">
            <area shape="rect" coords="403,482,550,517" href="http://youtu.be/ntrWPo_ixMw" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/e4f8ec74-570b-4461-a810-d7427a3bca77.png" alt="터트려! 스무살의 포텐" title="터트려! 스무살의 포텐" usemap="#imgMap317"></li>
            <map name="imgMap317">
            <area shape="rect" coords="39,398,195,443" href="http://cocacolakoreablog.co.kr/1792" target="_blank">
            </map>

          </ul>
          <ul class="menu_images4">

            <li style="display: none;"><img src=" ../../lib/images/a1886b22-ff61-4d06-b86a-26006ce3daac.png" alt="유재석, 정준하 맛있게 쉬어가자 광고 선보여" title="유재석, 정준하 맛있게 쉬어가자 광고 선보여" usemap="#imgMap41"></li>
            <map name="imgMap41">
            <area shape="rect" coords="209,738,312,751" href="http://news.joins.com/article/18735888" target="_blank">
            <area shape="rect" coords="324,738,438,751" href="http://www.asiailbo.co.kr/cpDaum/_preView.php/21090100/186905.s" target="_blank">

            </map>

            <li style="display: none;"><img src=" ../../lib/images/deba2c08-3e5d-4d91-9c5b-948abeebc1c5.png" alt="코카-콜라사, ‘미닛메이드 추석선물세트’ 4종 선보여" title="코카-콜라사, ‘미닛메이드 추석선물세트’ 4종 선보여" usemap="#imgMap42"></li>
            <map name="imgMap42">
            <area shape="rect" coords="96,688,199,700" href="http://www.ajunews.com/view/20150903150633353" target="_blank">
            <area shape="rect" coords="214,688,337,700" href="http://www.asiatoday.co.kr/view.php?key=20150903010002298" target="_blank">
            <area shape="rect" coords="348,688,461,700" href="http://view.asiae.co.kr/news/view.htm?idxno=2015090308453120101&amp;iqfrm=google" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/aafd7b7e-d91c-406e-94e4-5051ae8221c6.png" alt="‘코카-콜라’, CGV와 함께 ‘코카-콜라 텀블러 콤보’ 이벤트" title="‘코카-콜라’, CGV와 함께 ‘코카-콜라 텀블러 콤보’ 이벤트" usemap="#imgMap43"></li>
            <map name="imgMap43">
            <area shape="rect" coords="203,151,317,528" href="http://isplus.live.joins.com/news/article/article.asp?total_id=18433691&amp;ctg=1700&amp;tm=i_lf_a012&amp;iqfrm=google" target="_blank">
            <area shape="rect" coords="335,514,438,528" href="http://www.edaily.co.kr/news/NewsRead.edy?newsid=02148406609466664" target="_blank">

            </map>

            <li style="display: none;"><img src=" ../../lib/images/4a12a55b-0a04-4ee5-b7b6-1697d5cdcba4.png" alt="`태양의 마테차` 눈에 띄는 성장세" title="`태양의 마테차` 눈에 띄는 성장세" usemap="#imgMap44"></li>
            <map name="imgMap44">
            <area shape="rect" coords="105,634,209,648" href="http://www.hankookilbo.com/v/48ea23b3bd1f4dbdbc1c4559a8f862a9" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/2f2d577a-3124-49a5-b70e-caa53763daf6.png" alt="코카-콜라 모델에 유재석, 정준하 콤비 발탁" title="코카-콜라 모델에 유재석, 정준하 콤비 발탁" usemap="#imgMap45"></li>
            <map name="imgMap45">
            <area shape="rect" coords="159,456,265,468" href="http://www.segye.com/content/html/2015/06/15/20150615003701.html?OutUrl=naver" target="_blank">
            <area shape="rect" coords="280,456,373,468" href="http://sports.chosun.com/news/utype.htm?id=201506150100182720013015&amp;ServiceDate=20150615" target="_blank">
            <area shape="rect" coords="388,456,481,468" href="http://isplus.live.joins.com/news/article/article.asp?total_id=18025136&amp;ctg=1502&amp;tm=i_ntr" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/b8e6f417-4c7a-415a-97c4-a9088552ba52.png" alt="강균성, 하하, 강남 써니텐 광고 화보공개" title="강균성, 하하, 강남 써니텐 광고 화보공개" usemap="#imgMap46"></li>
            <map name="imgMap46">
            <area shape="rect" coords="106,552,211,564" href="http://www.segye.com/content/html/2015/05/11/20150511001444.html" target="_blank">
            <area shape="rect" coords="227,552,318,564" href="http://sports.chosun.com/news/utype.htm?id=201505110100111110007693&amp;ServiceDate=20150511" target="_blank">
            <area shape="rect" coords="334,552,426,564" href="http://isplus.live.joins.com/news/article/article.asp?total_id=17774168&amp;ctg=1700&amp;tm=i_lf" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/f1fbf1fe-661d-4f19-8c50-f1d6622a2d1e.png" alt="코카-콜라 병 탄생 100주년 , 짜릿한 키스를 담다" title="코카-콜라 병 탄생 100주년 , 짜릿한 키스를 담다" usemap="#imgMap47"></li>
            <map name="imgMap47">
            <area shape="rect" coords="107,731,211,743" href="http://www.ajunews.com/view/20150403155733400" target="_blank">
            <area shape="rect" coords="226,731,319,743" href="http://sports.chosun.com/news/utype.htm?id=201504030100043550002547&amp;ServiceDate=20150403" target="_blank">
            <area shape="rect" coords="334,731,426,744" href="http://isplus.live.joins.com/news/article/article.asp?total_id=17506049&amp;ctg=1700&amp;tm=i_lf" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/dbed7a7f-4c55-432e-8444-444186a9abff.png" alt="스포츠  활동 후 마시는 코코넛 음료 `지코(ZICO)`" title="스포츠  활동 후 마시는 코코넛 음료 `지코(ZICO)`" usemap="#imgMap48"></li>
            <map name="imgMap48">
            <area shape="rect" coords="235,446,350,459" href="http://biz.heraldcorp.com/view.php?ud=20150305000553" target="_blank">
            <area shape="rect" coords="251,463,333,477" href="http://money.joins.com/news/article/article.asp?total_id=17290728&amp;ctg=1100" target="_blank">

            </map>

            <li style="display: none;"><img src=" ../../lib/images/17529405-5b47-4a6b-9aea-dc4bebce261a.png" alt="미닛메이드, `밀키라떼 망고·애플` 2종 출시" title="미닛메이드, `밀키라떼 망고·애플` 2종 출시" usemap="#imgMap49"></li>
            <map name="imgMap49">
            <area shape="rect" coords="115,773,240,787" href="http://www.dtoday.co.kr/news/articleView.html?idxno=152539" target="_blank">
            <area shape="rect" coords="115,792,215,804" href="http://osen.mt.co.kr/article/G1110075947" target="_blank">

            </map>

            <li style="display: none;"><img src=" ../../lib/images/7e4fc58a-92eb-46b9-b159-65df6ca7b229.png" alt="코카-콜라,  새해 소망 담은 TV광고(새해편)공개" title="코카-콜라,  새해 소망 담은 TV광고(새해편)공개" usemap="#imgMap410"></li>
            <map name="imgMap410">
            <area shape="rect" coords="103,782,225,793" href="http://sports.chosun.com/news/ntype.htm?id=201501140100165050010025&amp;servicedate=20150114" target="_blank">
            <area shape="rect" coords="103,798,225,809" href="http://view.asiae.co.kr/news/view.htm?idxno=2015011414374263259" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/f491a02f-d4ad-45a1-bf7d-adfe30cee806.png" alt="코카콜라, 폴라베어 품은 ‘코-크 볼’ 출시" title="코카콜라, 폴라베어 품은 ‘코-크 볼’ 출시" usemap="#imgMap411"></li>
            <map name="imgMap411">
            <area shape="rect" coords="40,747,166,761" href="http://isplus.live.joins.com/news/article/article.asp?total_id=16645559&amp;ctg=1700&amp;tm=i_lf" target="_blank">
            <area shape="rect" coords="40,769,166,781" href="http://view.asiae.co.kr/news/view.htm?idxno=2014120908171933308" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/837f03ad-d41f-4715-9853-ba29d6864157.png" alt="코카-콜라 롤드컵 맞아 뜻 깊은 선물" title="코카-콜라 롤드컵 맞아 뜻 깊은 선물" usemap="#imgMap412"></li>
            <map name="imgMap412">
            <area shape="rect" coords="42,752,220,767" href="http://esports.dailygame.co.kr/view.php?ud=2014101914351426870" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/59706a00-5584-481f-9361-36976458c786.png" alt="스파클링 워터 `씨그램(Seagram`s) 톡쏘는 상쾌함 그대로!" title="스파클링 워터 `씨그램(Seagram`s) 톡쏘는 상쾌함 그대로!" usemap="#imgMap413"></li>
            <map name="imgMap413">
            <area shape="rect" coords="405,591,548,606" href="http://sports.khan.co.kr/news/sk_index.html?cat=view&amp;art_id=201409112101196&amp;sec_id=561901&amp;pt=nv" target="_blank">
            <area shape="rect" coords="418,612,547,627" href="http://news.kukinews.com/article/view.asp?arcid=0008606596&amp;code=41171811&amp;cp=nv" target="_blank">
            <area shape="rect" coords="418,633,546,648" href="http://mnb.moneyweek.co.kr/mnbview.php?no=2014090214298083023" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/7407555d-b94c-440f-9cb2-384554f26ff2.png" alt="수지VS헨리, `스프라이트 슈퍼샤워` 대결" title="수지VS헨리, `스프라이트 슈퍼샤워` 대결" usemap="#imgMap414"></li>
            <map name="imgMap414">
            <area shape="rect" coords="38,455,157,468" href="http://www.jtn.co.kr/v2/sub_view.asp?idx=32658&amp;gubun2=여행/라이프" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/21fbcd0a-8194-4b67-9bfd-63a5c64069e5.png" alt="미닛메이드 새 모델로 `이서진`발탁" title="미닛메이드 새 모델로 `이서진`발탁" usemap="#imgMap415"></li>
            <map name="imgMap415">
            <area shape="rect" coords="101,444,236,460" href="http://sports.chosun.com/news/utype.htm?id=201407020100010380000195&amp;ServiceDate=20140701" target="_blank">
            <area shape="rect" coords="101,463,235,479" href="http://isplus.live.joins.com/news/article/article.asp?total_id=15120714&amp;ctg=1502&amp;tm=i_ntr" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/b62d05f8-8de5-4576-a6e4-f71c44309cb6.png" alt="씨스타 효린 광고모델로 전격 발탁" title="씨스타 효린 광고모델로 전격 발탁" usemap="#imgMap416"></li>
            <map name="imgMap416">
            <area shape="rect" coords="101,634,214,647" href="http://bizn.khan.co.kr/khan_art_view.html?artid=201405201652071&amp;code=920401&amp;med=khan" target="_blank">
            <area shape="rect" coords="101,654,225,666" href="http://sports.donga.com/3/all/20140520/63610094/4" target="_blank">
            <area shape="rect" coords="101,671,227,684" href="http://view.asiae.co.kr/news/view.htm?idxno=2014052009591771437" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/36603a6b-57e1-44c4-aaaf-b37f4ce4f163.png" alt="`너만의 환타를 만들어봐! TVC 온에어" title="`너만의 환타를 만들어봐! TVC 온에어" usemap="#imgMap417"></li>
            <map name="imgMap417">
            <area shape="rect" coords="95,569,210,583" href="http://sports.khan.co.kr/news/sk_index.html?cat=view&amp;art_id=201405130942163&amp;sec_id=540101&amp;pt=nv" target="_blank">
            <area shape="rect" coords="95,586,202,600" href="http://www.ajunews.com/view/20140523165754720" target="_blank">
            <area shape="rect" coords="95,603,202,617" href="http://economy.hankooki.com/lpage/sports/201405/e20140520102809120390.htm" target="_blank">
            </map>

            <li style="display: none;"><img src=" ../../lib/images/82616171-ed3d-4225-abd8-1cd3090da095.png" alt="진욱의 슈웹스 새 CF 긴장감을 즐겨라" title="이진욱의 슈웹스 새 CF 긴장감을 즐겨라" usemap="#imgMap418"></li>
            <map name="imgMap418">
            <area shape="rect" coords="38,383,192,410" href="http://news.donga.com/3/all/20140227/61257514/3" target="_blank">
            </map>

          </ul>
          <div class="zine_buttons">
          <ul>
	          <li class="face_icon"><a>페이스북</a></li>
	          <li class="twit_icon"><a>트위터</a></li>
	          <li class="prev_icon"><a>이전</a></li>
	          <li class="next_icon"><a>다음</a></li>
          </ul>
          </div>
        </div>

      

      </div>
    </div>
  </form>
 <%@include file="/html/side/footer.jsp"%>
</body>
</html>