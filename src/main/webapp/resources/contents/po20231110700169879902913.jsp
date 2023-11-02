
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
    <h3>윤 대통령, 민생 외치면서 또 ‘반노동’…통상 분쟁 우려도 [뉴스AS]</h3><h6>장현은  2023. 11. 1. 07:00</h6>
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
<section dmcf-sid="QEGInTj3PA">
<figure class="figure_frm origin_fig" dmcf-pid="fEXWEtOK4F" dmcf-ptype="figure">
<p class="link_figure"><img alt="윤석열 대통령이 30일 오전 서울 용산 대통령실에서 열린 제45회 국무회의에서 발언하고 있다. 대통령실사진기자단." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hani/20231101072008750cgdx.jpg" data-org-width="800" dmcf-mid="VLb7WV5JP3" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hani/20231101072008750cgdx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            윤석열 대통령이 30일 오전 서울 용산 대통령실에서 열린 제45회 국무회의에서 발언하고 있다. 대통령실사진기자단.
           </figcaption>
</figure>
<p dmcf-pid="4QDAQsJG6t" dmcf-ptype="general">☞한겨레 뉴스레터 H:730 구독하기. 검색창에 ‘한겨레 h730’을 쳐보세요.</p>
<p dmcf-pid="87dx7L9r41" dmcf-ptype="general">윤석열 대통령이 지난 30일 국무회의에서 “국민의 절박한 목소리”라며 ‘이주노동자에게 최저임금 미적용’ ‘중대재해처벌법 적용 완화’를 언급했다. 국제 노동규범인 국제노동기구(ILO) 기본협약 비준 탈퇴와 50인 미만 사업장 중대재해처벌법 적용 유예라는 법 개정 사안을 민생 현장의 목소리라며 쏘아 올린 윤 대통령 발언에 ‘뜬금없다’는 반응과 함께 정부의 반노동 정책 기조를 재확인했다는 평가가 나온다. 윤 대통령의 이번 발언은 취약계층 노동자에 대한 차별을 강화하고 소상공인과의 대립을 부추기는 방향일 뿐 아니라, 국제 규범에 맞지 않아 통상 분쟁을 일으킬 소지도 있다는 지적이 나온다.</p>
<p dmcf-pid="6dOwdlg1P5" dmcf-ptype="general">윤 대통령은 이주노동자를 고용하는 식당 사례를 소개하며 “(업주가) ‘외국인 노동자의 임금을 내국인과 동등하게 지불해야 한다는 아이엘오 조항에서 탈퇴해야 하는 것 아니냐’며 비상대책 마련을 호소했다”고 말했다. 윤 대통령이 언급한 아이엘오 111호(고용과 직업상 차별 금지) 협약은 국제노동기구가 반드시 비준할 것을 요구하는 8개 기본협약 중 하나다. 고용과 직업에서 인종·성별·피부색·출신국가 등을 이유로 어떤 차별도 하지 말라는 게 핵심 내용이다.</p>
<p dmcf-pid="PPEjPmdY4Z" dmcf-ptype="general">이미 세계 175개국이 비준할 만큼, 문명국의 한 기준으로 자리 잡았다. 한국도 1998년 비준했다. 특히 대부분 고용허가제로 들어오는 이주노동자들은 한국 노동시장에서 임금과 복지 등 처우가 가장 취약한 경우가 많다. 윤 대통령 발언은 이들 취약 노동자의 임금을 깎기 위해 국제 기준을 번복하자는 의미로 읽힌다.</p>
<p dmcf-pid="QgvCgYkU8X" dmcf-ptype="general">현실성도 매우 떨어진다. 협약을 탈퇴하려면 정부가 국제노동기구에 해당 협약 탈퇴를 요청할 수 있지만 국제적으로 사례를 찾기 어렵다. 국회가 이미 비준해 국내법과 같은 효력을 지닌 이 협약을 탈퇴하려면 다시 복잡한 절차를 거쳐야 한다. 이주노동자를 차별대우하려면 애초 국적 등을 이유로 근로조건을 차별하지 못하도록 규정한 근로기준법도 함께 바꿔야 한다. 여소야대의 21대 국회에선 어림없는 일이다. 윤 대통령 발언 직후 대통령실이 나서 “정책적 결정을 한 것이라 말하긴 어렵다”고 서둘러 진화에 나선 배경이다.</p>
<p dmcf-pid="xsFZsUS4xH" dmcf-ptype="general">내년 1월27일부터 중대재해처벌법이 적용되는 50인 미만 사업장 노동자도 가장 취약한 노동계층으로 분류된다. 실제 중대재해의 81%는 이들 50인 미만 사업장에서 발생한다. 아무런 보완책 없이 적용을 유예하자는 대통령 발언은 이들을 계속 위험한 노동 환경에 두자는 얘기와 다르지 않다. 대통령이 ‘민생’ 목소리를 빌려 친기업적 노동 정책 기조를 재확인한 것이란 분석이 나온다. 김종진 유니온센터 이사장은 “윤 대통령이 약자 복지와 민생경제를 외치면서 되레 노동시장 이중구조를 강화하는 퇴행적인 행위이며, 둘 다 ‘을’인 취약 노동자와 소상공인 사이에 갈등과 혐오를 조장한다”고 말했다.</p>
<p dmcf-pid="yS70SbGM4G" dmcf-ptype="general">전문가들은 기본협약을 탈퇴하면 통상 마찰과 국제 신뢰도 하락을 겪어야 할 수도 있다고 경고한다. 유럽연합(EU)은 2020년 한국이 단결권 관련 기본협약을 비준하지 않은 것은 자유무역협정(FTA)을 위반한 것이라며 문제를 제기해 전문가 패널 협의가 열린 적도 있다. 국제통상 전문가인 송기호 변호사는 한겨레에 “국제통상 부문에서 노동 문제가 최근에도 관심을 많이 받고 있고 논의가 되고 있다”며 “단기간 특정 업종의 비용을 낮추는 효과는 있겠으나, 장기적으로 안정적인 통상 환경을 해치고 국민 경제에도 악영향을 미치는 한편 여러 국가와의 에프티에이에서 문제가 생길 수도 있는 지점”이라고 말했다. </p>
<p dmcf-pid="WTqUT9XePY" dmcf-ptype="general">장현은 기자 mix@hani.co.kr</p>
</section>
</div></p></section></div><h6>[Source : 한겨레]</h6></div>
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