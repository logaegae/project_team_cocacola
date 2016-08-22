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
			table.member td{
				    border: 1px solid #d9d9d9;
				    height:20px;
				    padding:2px;
			}
			table.member thead td{
					background-color:#ffc000;
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
					<td class="subject">2011&nbsp;코-크&nbsp;로또&nbsp;이벤트&nbsp;당첨자&nbsp;발표</td>
					<td class="date">2012.01.09</td>
				</tr>
				<tr>
				<td colspan="2">
				<p>안녕하세요. 한국 코카-콜라 입니다.<br>
				   2011년 한 해 동안 코-크 로또 이벤트에 참여해주신 많은 분들에게 감사 드립니다.<br><br>
				       안타깝게도 최종 당첨자는 없었지만,<br>
				       대신 웹사이트/블로그/트위터에서 적극적으로 참여해주신 100분을 선발하여<br>
				       코카-콜라 1박스씩 드리기로 결정되었습니다.<br>
				   (단, 코카-콜라 웹사이트 회원이신 분들을 우선적으로 선발하였음을 알려드립니다.)<br><br>
				   <span style="color:red;">당첨되신 분들은 2012년 1월 16일(월)까지 </span><a href="http://blog.naver.com/cokecast"><strong style="color:red;">코카-콜라 블로그</strong>
				   (클릭)</a> <span style="color:red;">에 <br><strong>비밀댓글</strong>로 
				   <strong>웹사이트 ID / 이름 / 주소(우편번호) / 휴대폰 번호</strong>
				       를 남겨주시면 감사하겠습니다.</span><br><br>
				   *기한 내 위 정보를 모두 남겨주셔야 경품 발송이 가능합니다.<br>
				   *입력하신 개인정보는 경품 발송 이외의 용도로는 사용되지 않습니다.<br><br><br>
				   12월 31일까지 진행되었던 <strong>'2011 코-크 로또 이벤트'</strong>당첨자를 아래와 같이 공지합니다.</p>
				   </td>
				</tr>
				<tr style="border:none;">
				<td colspan="2">
					<table style="width:240px;" class="member">
						<colgroup>
							<col style="width:25%;">
							<col style="width:50%;">
							<col style="width:25%;">
						</colgroup>
						<thead>
							<tr class="abc">
								 <td><span>NO</span></td>
								 <td><span>아이디</span></td>
								 <td><span>이름</span></td>
							</tr>
						</thead>
						<tbody>
						 <tr><td class="num">1</td><td>deltaya</td><td>강*애</td></tr>
						 <tr><td class="num">2</td><td>rudi77</td><td>강*희</td></tr>
						 <tr><td class="num">3</td><td>ojesuslove</td><td>고*석</td></tr>
						 <tr><td class="num">4</td><td>ojesuslove7</td><td>고*젤**셸</td></tr>
						 <tr><td class="num">5</td><td>kwon14325</td><td>권*연</td></tr>
						 <tr><td class="num">6</td><td>rla7159</td><td>김*관</td></tr>
						 <tr><td class="num">7</td><td>blacksea</td><td>김*규</td></tr>
						 <tr><td class="num">8</td><td>sung62</td><td>김*근</td></tr>
						 <tr><td class="num">9</td><td>ara9203</td><td>김*라</td></tr>
						 <tr><td class="num">10</td><td>bong9105</td><td>김*민</td></tr>
						 <tr><td class="num">11</td><td>unbyung2000</td><td>김*병</td></tr>
						 <tr><td class="num">12</td><td>cafemoduna</td><td>김*섭</td></tr>
						 <tr><td class="num">13</td><td>happyms11</td><td>김*성</td></tr>
						 <tr><td class="num">14</td><td>tory1101</td><td>김*성</td></tr>
						 <tr><td class="num">15</td><td>kimms98</td><td>김*수</td></tr>
						 <tr><td class="num">16</td><td>hyunsuk82</td><td>김*숙</td></tr>
						 <tr><td class="num">17</td><td>erica22</td><td>김*언</td></tr>
						 <tr><td class="num">18</td><td>ilis2</td><td>김*영</td></tr>
						 <tr><td class="num">19</td><td>kdr1194</td><td>김*용</td></tr>
						 <tr><td class="num">20</td><td>mijeong912</td><td>김*정</td></tr>
						 <tr><td class="num">21</td><td>playstation</td><td>김*진</td></tr>
						 <tr><td class="num">22</td><td>wlsgk123</td><td>김*하</td></tr>
						 <tr><td class="num">23</td><td>wildcoke</td><td>김*현</td></tr>
						 <tr><td class="num">24</td><td>EnaSUN0726</td><td>김*현</td></tr>
						 <tr><td class="num">25</td><td>thehe009</td><td>김*현</td></tr>
						 <tr><td class="num">26</td><td>milpiyou</td><td>김*형</td></tr>
						 <tr><td class="num">27</td><td>dier</td><td>김*환</td></tr>
						 <tr><td class="num">28</td><td>kkhkkh1115</td><td>김*희</td></tr>
						 <tr><td class="num">29</td><td>fhotos</td><td>나*윤</td></tr>
						 <tr><td class="num">30</td><td>shoaka</td><td>명*호</td></tr>
						 <tr><td class="num">31</td><td>kikiruna</td><td>문*배</td></tr>
						 <tr><td class="num">32</td><td>sagwahk</td><td>박*규</td></tr>
						 <tr><td class="num">33</td><td>skyhoq</td><td>박*기</td></tr>
						 <tr><td class="num">34</td><td>tnsrud21</td><td>박*민</td></tr>
						 <tr><td class="num">35</td><td>aprilia121</td><td>박*변</td></tr>
						 <tr><td class="num">36</td><td>ara91</td><td>박*신</td></tr>
						 <tr><td class="num">37</td><td>tkfl0131</td><td>박*영</td></tr>
						 <tr><td class="num">38</td><td>wofjaos</td><td>박*은</td></tr>
						 <tr><td class="num">39</td><td>hester21</td><td>박*주</td></tr>
						 <tr><td class="num">40</td><td>lov2kangta</td><td>박*진</td></tr>
						 <tr><td class="num">41</td><td>stshun</td><td>박*진</td></tr>
						 <tr><td class="num">42</td><td>qkrwnsgh131</td><td>박*호</td></tr>
						 <tr><td class="num">43</td><td>bej85124</td><td>백*진</td></tr>
						 <tr><td class="num">44</td><td>suhjg</td><td>서*구</td></tr>
						 <tr><td class="num">45</td><td>skw92512</td><td>선*원</td></tr>
						 <tr><td class="num">46</td><td>yeyeong8389</td><td>손*영</td></tr>
						 <tr><td class="num">47</td><td>unujs</td><td>손*우</td></tr>
						 <tr><td class="num">48</td><td>sws5138</td><td>심*섭</td></tr>
						 <tr><td class="num">49</td><td>saldis</td><td>여*욱</td></tr>
						 <tr><td class="num">50</td><td>helloyou</td><td>염*호</td></tr>
						 <tr><td class="num">51</td><td>fengiun</td><td>오*미</td></tr>
						 <tr><td class="num">52</td><td>beargrylls</td><td>원*주</td></tr>
						 <tr><td class="num">53</td><td>dijini777</td><td>유*은</td></tr>
						 <tr><td class="num">54</td><td>s0835</td><td>윤*미</td></tr>
						 <tr><td class="num">55</td><td>alsdbfl</td><td>이*경</td></tr>
						 <tr><td class="num">56</td><td>ltaerye</td><td>이*례</td></tr>
						 <tr><td class="num">57</td><td>cutitoff</td><td>이*린</td></tr>
						 <tr><td class="num">58</td><td>ddmomo</td><td>이*선</td></tr>
						 <tr><td class="num">59</td><td>tact1023</td><td>이*섭</td></tr>
						 <tr><td class="num">60</td><td>leeyunse</td><td>이*세</td></tr>
						 <tr><td class="num">61</td><td>kkak2248</td><td>이*연</td></tr>
						 <tr><td class="num">62</td><td>junjuneg</td><td>이*영</td></tr>
						 <tr><td class="num">63</td><td>somajin</td><td>이*은</td></tr>
						 <tr><td class="num">64</td><td>belgirl2</td><td>이*은</td></tr>
						 <tr><td class="num">65</td><td>firss</td><td>이*일</td></tr>
						 <tr><td class="num">66</td><td>lyj850830</td><td>이*정</td></tr>
						 <tr><td class="num">67</td><td>noljaphoto</td><td>이*주</td></tr>
						 <tr><td class="num">68</td><td>aabbgg</td><td>이*준</td></tr>
						 <tr><td class="num">69</td><td>s2aska</td><td>이*진</td></tr>
						 <tr><td class="num">70</td><td>joygirls</td><td>이*화</td></tr>
						 <tr><td class="num">71</td><td>lonveh</td><td>이*희</td></tr>
						 <tr><td class="num">72</td><td>yutie</td><td>임*미</td></tr>
						 <tr><td class="num">73</td><td>nsma16</td><td>임*진</td></tr>
						 <tr><td class="num">74</td><td>michelle82</td><td>임*희</td></tr>
						 <tr><td class="num">75</td><td>tnsrud22</td><td>장*경</td></tr>
						 <tr><td class="num">76</td><td>y820310</td><td>장*미</td></tr>
						 <tr><td class="num">77</td><td>jkh0224</td><td>장*희</td></tr>
						 <tr><td class="num">78</td><td>ms3024</td><td>전*현</td></tr>
						 <tr><td class="num">79</td><td>wjswoghd</td><td>전*홍</td></tr>
						 <tr><td class="num">80</td><td>nokiss4868</td><td>정*경</td></tr>
						 <tr><td class="num">81</td><td>hamin016</td><td>정*민</td></tr>
						 <tr><td class="num">82</td><td>sutel</td><td>정*수</td></tr>
						 <tr><td class="num">83</td><td>0298b</td><td>정*숙</td></tr>
						 <tr><td class="num">84</td><td>gi2184</td><td>정*숙</td></tr>
						 <tr><td class="num">85</td><td>jjy2230</td><td>정*영</td></tr>
						 <tr><td class="num">86</td><td>teaok1222</td><td>정*옥</td></tr>
						 <tr><td class="num">87</td><td>boread</td><td>정*은</td></tr>
						 <tr><td class="num">88</td><td>eunah002</td><td>정*은</td></tr>
						 <tr><td class="num">89</td><td>ai4u0118</td><td>정*진</td></tr>
						 <tr><td class="num">90</td><td>teaok122</td><td>정*호</td></tr>
						 <tr><td class="num">91</td><td>nette78</td><td>조*별</td></tr>
						 <tr><td class="num">92</td><td>ds5yjm</td><td>조*호</td></tr>
						 <tr><td class="num">93</td><td>doohee87</td><td>조*희</td></tr>
						 <tr><td class="num">94</td><td>posasi83</td><td>진*미</td></tr>
						 <tr><td class="num">95</td><td>choihj23</td><td>최*재</td></tr>
						 <tr><td class="num">96</td><td>rkdgus4747</td><td>추*진</td></tr>
						 <tr><td class="num">97</td><td>ww77hh</td><td>한*혜</td></tr>
						 <tr><td class="num">98</td><td>ghd2471</td><td>홍*기</td></tr>
						 <tr><td class="num">99</td><td>pooh2993</td><td>홍*리</td></tr>
						 <tr><td class="num">100</td><td>solemio</td><td>황*숙</td></tr>
					 	</tbody>
					 </table>
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