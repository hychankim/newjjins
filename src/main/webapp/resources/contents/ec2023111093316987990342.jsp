
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader("Expires",0);
%>    
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@200;400&display=swap" rel="stylesheet">




  <link rel="stylesheet" href="../../style/pressmain.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">  

  

  <style>
    /* @import url('cdn.jsdelivr.net/font-iropke-batang/1.2/font-iropke-batang.css'); */

    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    }
    
    body {
    font-family: Arial, sans-serif;
    margin: 0 auto;
    padding: 20px;
    }
    
    h3 {
    font-size: 24px;
    margin: 0 0 20px;
    padding: 0 0 20px;

    }
    
    h6 {
    font-size: 14px;
    color: #777;
    margin: 10px auto;
    text-align: right;
    }
    
    h6:first-of-type {
    margin-bottom: 30px;
    /* border-bottom: 1px solid rgb(208, 215, 255); */
    }
    
    p {
    font-family: 'Noto Sans KR', sans-serif;
    font-size: 16px;
    line-height: 1.6;
    margin: 10px 0;
    
    }
    
    img {
    max-width: 100%;
    height: auto;
    margin: 10px auto;
    }
    
    .figure_frm {
    text-align: center;
    }
    
    .press {
    margin: 0px auto;
    max-width: 1000px;
/*    border-left: 1px solid rgb(208, 215, 255); */
/*    border-right: 1px solid rgb(208, 215, 255); */
    padding: 0 100px;
    /* background-color: rgb(249, 251, 255); */
    }
    
    </style>
</head>

<body>
<div id="container"> 
	<a id="backToTop" class="scrolltop" href="">
    	<img src="../../image/top.png" style="width: 38px; height: 38px;">
	</a>
  <header>
      <div class="login">
        <ul class="snb">
          <li class="search-container">
            <button id="search-icon">
              <img src="../../image/search.svg" alt="검색 아이콘">
            </button>
            <input type="text" id="search-input" placeholder="검색어를 입력하세요">
          </li>
          <script>
            let str1;
            let str2;
            let id = `${loginUser.userid}`;
            if(id.length > 0){
              str1 = `<li><a href="#" onclick="location.href='../../memberUpdate.do?userid=${loginUser.userid}'" class="snbmenu">${loginUser.nickname}(${loginUser.userid})님</a></li>`;
              str2 = `<li><a href="#" onclick="location.href='../../logout.do'" class="snbmenu">로그아웃</a></li>`;
            }
            else{
              str1 = `<li><a href="../../login.do" class="snbmenu">로그인</a></li>`;
              str2= `<li><a href="../../join.do" class="snbmenu">회원가입</a></li>`;
            }
            document.write(str1);
            document.write(str2);
          </script>
        </ul>
      </div>
      <nav>
        <div class="mainLogo">
          <script>
            let str;
            if(id.length > 0){
              str = `<a href="#" onclick="location.href='../../login.do?userid=${loginUser.userid}'">`;
            }
            else{
              str = `<a href="#" onclick="location.href='../../main.do'">`;
            }
            document.write(str);
          </script>
          <img src='../../image/logo_move.gif' alt=''>
          </a>
        </div>
        <div class=" categorie">
          <ul class="cate_list">
            <li class="news_list"><a href="../../subject.do?subject=sports" class="news_warp"><span class="tx">스포츠</span></a>
              <ul class="spo_list">
                <li class="s_list"><a href="../../subcategory.do?subcategory=soccer"><p>축구</p></a></li>
                <li class="s_list"><a href="../../subcategory.do?subcategory=worldsoccer"><p>해외축구</p></a></li>
                <li class="s_list"><a href="../../subcategory.do?subcategory=baseball"><p>야구</p></a></li>
                <li class="s_list"><a href="../../subcategory.do?subcategory=worldbaseball"><p>해외야구</p></a></li>
                <li class="s_list"><a href="../../subcategory.do?subcategory=basketball"><p>농구</p></a></li>
                <li class="s_list"><a href="../../subcategory.do?subcategory=volleyball"><p>배구</p></a></li>
                <li class="s_list"><a href="../../subcategory.do?subcategory=golf"><p>골프</p></a></li>
                <li class="s_list"><a href="../../subcategory.do?subcategory=esports"><p>e스포츠</p></a></li>
               	<li class="s_list"><a href="../../subcategory.do?subcategory=general"><p>일반</p></a></li>
              </ul>
            </li>
            <li class="news_list"><a href="../../subject.do?subject=politics" class="news_warp"><span class="tx">정치</span></a></li>
            <li class="news_list"><a href="../../subject.do?subject=economic" class="news_warp"><span class="tx">경제</span></a></li>
            <li class="news_list"><a href="../../subject.do?subject=society" class="news_warp"><span class="tx">사회</span></a></li>
            <li class="news_list"><a href="../../subject.do?subject=culture" class="news_warp"><span class="tx">문화</span></a></li>
            <li class="news_list"><a href="../../subject.do?subject=entertainment" class="news_warp"><span class="tx">연예</span></a>
              <ul class="enter_list">
                <li class="e_list"><a href="../../subcategory.do?subcategory=star"><p>연예인</p></a></li>
                <li class="e_list"><a href="../../subcategory.do?subcategory=variety"><p>예능</p></a></li>
                <li class="e_list"><a href="../../ubcategory.do?subcategory=music"><p>음악</p></a></li>
                <li class="e_list"><a href="../../subcategory.do?subcategory=drama"><p>드라마</p></a></li>
                <li class="e_list"><a href="../../subcategory.do?subcategory=movie"><p>영화</p></a></li>
              </ul>
            </li>
            <li class="news_list"><a href="../../subject.do?subject=digital" class="news_warp"><span class="tx">과학</span></a></li>
            <li class="news_list"><a href="../../subject.do?subject=foreign" class="news_warp"><span class="tx">국제</span></a></li>
          </ul>
        </div>
      </nav>
  </header>
  <div class="press">
    <h3>증시 전날 약세 딛고 반등, 코스피 2300선 회복…코스닥 1.8%↑[개장시황]</h3><h6>공준호 기자  2023. 11. 1. 09:33</h6>
    <div class="article_view" data-tiara-action-name="본문이미지확대_클릭" data-tiara-layer="article_body" data-translation-body="true">

      <section dmcf-sid="XlIGiYg1oj">

        <figure class="figure_frm origin_fig" dmcf-pid="ZyS5gZA0kN" dmcf-ptype="figure">
        <p class="link_figure"></p>
        </figure>
        <figure class="figure_frm origin_fig" dmcf-pid="5jgr2w8Cga" dmcf-ptype="figure">
        <p class="link_figure"></p>
        </figure>
        <figure class="figure_frm origin_fig" dmcf-pid="1HW3AFD7ag" dmcf-ptype="figure">
        <p class="link_figure"></p>
        </figure>
  <p><div class="article_view" data-tiara-action-name="본문이미지확대_클릭" data-tiara-layer="article_body" data-translation-body="true">
<section dmcf-sid="VqzN07T63D">
<figure class="figure_frm origin_fig" dmcf-pid="fyTfCvNFpE" dmcf-ptype="figure">
<p class="link_figure"><img alt="코스피 지수가 1%대 하락 마감한 10월31일 서울 중구 하나은행 명동점 딜링룸에 코스피 지수 등이 표시되고 있다. 이날 코스피는 전 거래일 대비 32.56p(1.41%) 하락한 2277.99, 코스닥은 21.02p(2.78%) 하락한 736.10, 달러·원 환율은 0.4원 낮아진 1350.5원으로 장을 마감했다. 2023.10.31/뉴스1 ⓒ News1 김도우 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101093351545waaa.jpg" data-org-width="1400" dmcf-mid="2g5RYZrqzw" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101093351545waaa.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            코스피 지수가 1%대 하락 마감한 10월31일 서울 중구 하나은행 명동점 딜링룸에 코스피 지수 등이 표시되고 있다. 이날 코스피는 전 거래일 대비 32.56p(1.41%) 하락한 2277.99, 코스닥은 21.02p(2.78%) 하락한 736.10, 달러·원 환율은 0.4원 낮아진 1350.5원으로 장을 마감했다. 2023.10.31/뉴스1 ⓒ News1 김도우 기자
           </figcaption>
</figure>
<p dmcf-pid="49Kk7bGM0k" dmcf-ptype="general">(서울=뉴스1) 공준호 기자 = 전날 큰 폭의 하락세를 나타냈던 증시가 장 초반 반등에 나서고 있다.</p>
<p dmcf-pid="829EzKHR7c" dmcf-ptype="general">1일 오전 9시21분 현재 코스피는 전날 대비 31.64p(1.39%) 상승한 2309.63를 가리키고 있다.</p>
<p dmcf-pid="6V2Dq9XezA" dmcf-ptype="general">외국인은 15억원, 기관은 531억원 각각 순매수했다. 개인은 553억원 순매도했다.</p>
<p dmcf-pid="Pp0n53C2Fj" dmcf-ptype="general">전날 코스피는 32p가량 하락하며 1월 이후 처음으로 2280선을 하회했지만 이날 장 초반 강세를 나타내면서 낙폭을 하루만에 만회하는 모습이다.</p>
<p dmcf-pid="QUpL10hVpN" dmcf-ptype="general">한지영 키움증권 연구원은 "전일 급락에 따른 기술적 매수세 유입과 하마스의 일부 인질 석방 소식에 따른 중동발 불안완화가 증시 상방요인이 될 것"이라고 말했다. 다만 그는 "연방공개시장위원회(FOMC) 경계심리, 개인을 중심으로 한 국내 수급 변동성 등 하방 요인도 공존하면서 제한된 주가 흐름을 보일 전망"이라고 말했다.</p>
<p dmcf-pid="xuUotplf0a" dmcf-ptype="general">여기에 더해 이날 우리나라 수출이 13개월 만에 상승세로 전환됐다는 소식이 전해진 점도 주가강세 요인으로 꼽힌다. 1일 산업통상자원부가 발표한 '2023년 10월 수출입동향'에 따르면 지난달 우리나라 수출은 550억9000만달러, 수입은 534억6000만달러로 16억4000만달러 무역수지 흑자를 기록했다.</p>
<p dmcf-pid="yhCbrInXzg" dmcf-ptype="general">수출은 지난해 10월 이후 13개월 만에 증가세를 기록했다. 전년 동월보다 5.1% 증가한 것으로 조업일수를 고려한 일평균 수출 또한 26억2000만달러로 올해 최고치였던 지난 9월 실적을 경신했다. </p>
<p dmcf-pid="WlhKmCLZpo" dmcf-ptype="general">반도체는 전년보다 3.1% 감소한 89억달러를 기록했지만, 지난해 8월 이후 가장 낮은 감소율을 보이며 하반기 반등 가능성을 살렸다. 이같은 소식에 삼성전자(005930)와 SK하이닉스(000660) 주가는 각각 2.84%, 1.94% 오르며 강세를 나타내고 있다.</p>
<p dmcf-pid="YSl9sho5FL" dmcf-ptype="general">코스피 시가총액 상위 종목 중 삼성전자우(005935) 2.05%, NAVER(035420) 2.03%, POSCO홀딩스(005490) 1.58%, LG에너지솔루션(373220) 1.43%, 기아(000270) 1.04%, 현대차(005380) 0.88%, LG화학(051910) 0.34%, 삼성바이오로직스(207940) 0.14% 등은 상승했다.</p>
<p dmcf-pid="GIOqDsJGUn" dmcf-ptype="general">코스닥은 전날 대비 13.26p(1.80%) 상승한 749.36를 가리키고 있다.</p>
<p dmcf-pid="HCIBwOiH0i" dmcf-ptype="general">외국인은 23억원, 기관은 151억원 각각 순매수했다. 개인은 151억원 순매도했다.</p>
<p dmcf-pid="XhCbrInX3J" dmcf-ptype="general">코스닥 시가총액 상위 10개 종목 중 에코프로(086520) 3.55%, 엘앤에프(066970) 2.76%, 에코프로비엠(247540) 2.7%, 포스코DX(022100) 2.14%, 레인보우로보틱스(277810) 1.35%, HLB(028300) 1.21%, JYP Ent.(035900) 0.39%, 셀트리온헬스케어(091990) 0.3% 등은 상승했다. 펄어비스(263750) -1.12%, 알테오젠(96170) -0.48% 등은 하락했다.</p>
<p dmcf-pid="ZBqjpzyPzd" dmcf-ptype="general">서울외환시장에서 달러·원 환율은 전날보다 3.8원 오른 1354.3원에 거래되고 있다.</p>
<p dmcf-pid="5bBAUqWQ0e" dmcf-ptype="general">zero@news1.kr </p>
</section>
</div></p></section></div><h6>[Source : 뉴스1]</h6></div>
  <footer>
    <div class="announcement">
      <div class="ft">
        <ul class="foot">
          <li>저작권 및 제휴문제</li>
          <li>개인정보 처리방침</li>
          <li>이용약관</li>
          <li>고객센터</li>
        </ul>
      </div>
    </div>
    <div class="area">
      <div class="ft2">
        <div class="fot_img">
          <img src="../../image/logomini.png" alt="">
        </div>
        <div class="ceo">
          <ul>
            <li>대표이사: 김형찬</li>
            <li class="copy">Copyright &copy; 2023 뉴찐스 all rights reserved</li>
          </ul>
        </div>
        <div class="contact">
          <ul>
            <li>대표 전화번호:010-1234-5678</li>
            <li>news@zzins.com</li>
            <li>찾아오시는길 망포역 4번 출구</li>
            <li>사무실 번호:031-1234-5678</li>
          </ul>
        </div>
      </div> 
    </div>  
  </footer>
  </div></body>
<script>
  window.addEventListener("scroll", function() {
    var backToTop = document.getElementById("backToTop");
    if (window.scrollY > 300) {
      backToTop.style.display = "block";
    } else {
      backToTop.style.display = "none";
    }
    
    // 탑버튼 클릭 이벤트 핸들러
/*     backToTop.addEventListener("click", function() {
      window.scroll({ top: 0, behavior: "smooth" });
    }); */
  });
</script>
</html>