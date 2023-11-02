
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
    <h3>겨우 진정시킨 물가 다시 ‘움찔’…경기 발목 잡을라 [尹정부 민생현안]</h3><h6>박진석  2023. 11. 1. 07:00</h6>
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
<section dmcf-sid="5RGN4DMTBo">
<figure class="figure_frm origin_fig" dmcf-pid="1UcV5QpabL" dmcf-ptype="figure">
<p class="link_figure"><img alt="윤석열 대통령이 31일 국회 본회의에서 2024년도 예산안 및 기금운용계획안에 대해 시정연설을 하고 있다. ⓒ연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/dailian/20231101070050338sluz.jpg" data-org-width="700" dmcf-mid="ZPYafExvBg" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/dailian/20231101070050338sluz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            윤석열 대통령이 31일 국회 본회의에서 2024년도 예산안 및 기금운용계획안에 대해 시정연설을 하고 있다. ⓒ연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="tzD8FR7Aqn" dmcf-ptype="general">윤석열 정부가 ‘물가와의 전쟁’을 선포하며 출범 직후부터 물가 안정에 모든 정책역량을 집중했음에도 최근 물가는 여전히 불안한 모습을 보이고 있다.</p>
<p dmcf-pid="Fs2Wc5mB2i" dmcf-ptype="general">물가 지표만 놓고 보면 우리나라 물가는 안정권에 접어들었다고 해도 과언이 아니다. 지난해 7월 6.3%로 정점을 찍었던 소비자물가상승률이 올해 들어 둔화 흐름을 계속 보였기 때문이다.</p>
<p dmcf-pid="3SP5mplfqJ" dmcf-ptype="general">특히 올 6~7월에는 물가상승률이 2%대로 내려가면서 25개월 만에 최저 수준을 기록하기도 했다. 추경호 경제부총리 경제팀이 소기의 성과를 거뒀다는 평가가 나온 이유다.</p>
<p dmcf-pid="0xWgVkQS2d" dmcf-ptype="general">문제는 물가가 다시 반등했다는 점이다. 2%까지 하락했던 물가는 국제 유가 상승 등 이유로 현재 3% 후반까지 다시 올랐다. 여기에 이스라엘-하마스 사태까지 덮치면서 물가가 잡히는 속도가 예상보다 지연될 수 있다는 전망까지 나오고 있다.</p>
<p dmcf-pid="peHj8wRy9e" dmcf-ptype="general"><strong>물가 상승세에 소비심리 꽁꽁</strong></p>
<p dmcf-pid="Us2Wc5mBbR" dmcf-ptype="general">통계청이 발표한 ‘9월 소비자물가동향’에 따르면 지난달 소비자물가지수는 112.99(2020년=100)로 1년 전보다 3.7% 올랐다. 이는 지난 4월(3.7%) 이후 5개월 만에 가장 높은 상승률이다.</p>
<p dmcf-pid="uvQ1sUS49M" dmcf-ptype="general">물가상승률은 석유류 가격 낙폭이 작아지면서 두 달 연속 오름폭을 확대했다. 농축수산물도 3.7% 올라 전월(2.7%)보다 상승 폭을 확대했다. 농산물이 7.2% 오르며 전월(5.4%)보다 오름폭을 키웠다.</p>
<p dmcf-pid="7jUOivNFqx" dmcf-ptype="general">특히 이스라엘-하마스 사태에 따른 지정학적 리스크, 고물가, 긴축 기조 장기화 등으로 소비자심리가 위축하고 있다는 점은 전망을 어둡게 하는 요인이다.</p>
<p dmcf-pid="z7E4tMujbQ" dmcf-ptype="general">실제로 우리나라 소비자심리지수는 석 달 연속 하락했다. 한국은행이 내놓은 ‘2023년 10월 소비자동향조사 결과’를 보면 10월 중 소비자심리지수(CCSI)는 98.1로 전월 대비 1.6p 줄었다.</p>
<p dmcf-pid="qEqlgYkUKP" dmcf-ptype="general">이 가운데 물가 상승에 대한 기대감을 뜻하는 물가수준전망(151)은 전월 대비 4p 상승했다. 국제유가 상승에 따른 석유류 가격 하락 축소, 농산물 가격 상승, 공공요금 인상 등으로 체감물가가 높은 수준을 보여서다.</p>
<p dmcf-pid="BHJUSbGM96" dmcf-ptype="general">향후 1년간 물가상승률에 대한 전망을 의미하는 기대인플레이션율은 0.1%p 올라 3.4%로 집계됐다.</p>
<p dmcf-pid="KSR3CzyPV4" dmcf-ptype="general"><strong>대응책 내놓고 있는 정부…체감은 부족</strong></p>
<p dmcf-pid="9pD8FR7AKf" dmcf-ptype="general">정부도 서민 장바구니 물가 안정과 취약계층 부담 완화를 위해 다양한 대책을 추진하고 있다.</p>
<p dmcf-pid="2Yn7T9XeBV" dmcf-ptype="general">가장 먼저 국제유가 등 석유시장 불확실성이 커지자 유류세 인하 조치를 연말까지 연장했다. 먹거리 물가 안정을 위해 비축 물량을 풀고 기업 원가 부담 완화를 위해 수급 불안 원료 할당관세를 추가 적용했다. 규제 개선과 수출 활성화를 지원하겠다고도 약속했다.</p>
<p dmcf-pid="VqOMunKw22" dmcf-ptype="general">이러한 수백억원 규모에 달하는 물가 안정 대책에도 불구하고 고물가 기조는 해소될 기미를 보이지 않고 있다. 여기에는 정부가 어찌할 수 없는 대외적인 요인도 있다.</p>
<p dmcf-pid="fyJUSbGMf9" dmcf-ptype="general">하지만 정부 대책이라고 하는 것들이 대개 행정력으로 가격 인상을 억누르거나 두더지 잡기식 물가 단속 등 대증요법에 그치다 보니 근본적인 처방이 안 나온다는 지적도 나온다.</p>
<p dmcf-pid="49lJBafO9K" dmcf-ptype="general">특히 정부는 10월부터 다시 물가가 내려갈 것이라는 입장을 내놨으나 이마저도 확실치 않은 상황이다. 최근 한국은행은 경제주체 가격·임금설정 행태 전환으로 소비자물가 상승률 둔화 시점이 예상보다 더뎌질 가능성이 있다고 내다봤다.</p>
<p dmcf-pid="62SibN4I2B" dmcf-ptype="general">지표에만 얽매이는 ‘숫자놀음’ 식 정책은 안된다는 의견도 제기된다. 지표와 체감 물가 간 차이가 점점 심해질수록 정부에 대한 신뢰를 약화시키는 계기가 될 수 있기에 현장 위기감을 적극 반영한 대안이 절실하다.</p>
<p dmcf-pid="Pa7CLyA0Kq" dmcf-ptype="general">윤 대통령은 ‘2024년도 시정연설’에서 “국민이 체감하는 물가는 여전히 높고 장기간 지속해 온 고금리로 생계비 부담은 가중되고 있다. 민생 어려움은 여전하다”며 “범정부 물가 안정 체계를 가동해 장바구니 물가 관리에 주력하는 등 정부는 물가와 민생 안정을 모든 정책 최우선에 두고 총력 대응하겠다”고 말했다.</p>
</section>
</div></p></section></div><h6>[Source : 데일리안]</h6></div>
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