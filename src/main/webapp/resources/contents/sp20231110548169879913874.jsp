
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
    <h3>前 MLB 단장, FA 시장 예상...류현진 1년 800만$, 이정후는 ‘예측 불가’</h3><h6>김재호 MK스포츠 기자(greatnemo@maekyung.com)  2023. 11. 1. 05:48</h6>
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
<section dmcf-sid="0aNtSbGMGp">
<p dmcf-pid="pvT8unKwt0" dmcf-ptype="general">메이저리그 단장 출신 유명 칼럼니스트가 2023-24 메이저리그 FA 시장을 예상했다. 익숙한 얼굴들도 보인다.</p>
<p dmcf-pid="UTy67L9rt3" dmcf-ptype="general">‘디 어슬레틱’ 칼럼니스트이자 전직 메이저리그 단장인 짐 보우든은 1일(한국시간) 2023-24 메이저리그 FA 1위부터 40위까지 랭킹을 공개했다.</p>
<p dmcf-pid="uyWPzo2mXF" dmcf-ptype="general">그 결과, 류현진은 35위, 이정후는 37위에 랭크됐다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="7l2rLyA0Gt" dmcf-ptype="figure">
<p class="link_figure"><img alt="류현진은 복귀 시즌 인상적인 모습을 보여줬다. 사진= MK스포츠 DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101054801920fflr.jpg" data-org-width="600" dmcf-mid="FaKDivNFXu" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101054801920fflr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            류현진은 복귀 시즌 인상적인 모습을 보여줬다. 사진= MK스포츠 DB
           </figcaption>
</figure>
<div dmcf-pid="zSVmoWcp11" dmcf-ptype="general">
           보우든은 류현진이 토미 존 수술에서 회복한 이후 복귀해 인상적인 모습을 보여줬다며 그의 2023시즌을 평가했다.
          </div>
<p dmcf-pid="qCKDivNFZ5" dmcf-ptype="general">류현진은 이번 시즌 11경기에서 52이닝을 소화하며 평균자책점 3.46, WHIP 1.288을 기록했다. 선수 자신이 “최고였다”고 자평할 정도로 최상의 시나리오가 나왔다.</p>
<p dmcf-pid="Bh9wnTj3ZZ" dmcf-ptype="general">보우든은 류현진이 11차례 선발 등판을 가졌고 이중 9경기에서 3실점 이하로 막았으며 그중 6경기를 5이닝, 1경기를 6이닝까지 던졌다고 소개했다.</p>
<p dmcf-pid="bl2rLyA0ZX" dmcf-ptype="general">패스트볼 구속은 87~89마일 수준이었고, 체인지업 피안타율은 0.276 커터 피안타율은 0.238이라 소개하며 “2024년에는 더 발전된 모습을 보여야한다”고 평했다.</p>
<p dmcf-pid="K0LXI7T6HH" dmcf-ptype="general">그러면서 계약 기간 1년에 낮은 보장 금액에 인센티브가 포함된 계약을 찾을 것이라고 예상했다.</p>
<p dmcf-pid="9poZCzyPYG" dmcf-ptype="general">예상 계약 규모로는 1년 800만 달러에 인센티브가 추가된 계약을 예상했으며 토론토 블루제이스, 미네소타 트윈스, 디트로이트 타이거즈를 추천 구단으로 제시했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="2Ug5hqWQ1Y" dmcf-ptype="figure">
<p class="link_figure"><img alt="이정후에 대한 스카웃들의 평가는 엇갈리고 있다. 사진= MK스포츠 DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101054803231pgrf.jpg" data-org-width="640" dmcf-mid="3Ng5hqWQ1U" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101054803231pgrf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이정후에 대한 스카웃들의 평가는 엇갈리고 있다. 사진= MK스포츠 DB
           </figcaption>
</figure>
<div dmcf-pid="VGQlc5mB5W" dmcf-ptype="general">
           이정후에 대해서는 메이저리그 스카웃들이 평가가 나뉘고 있다고 소개했다. “일부는 그가 바로 메이저리그에서 타격 능력을 보여줄 것이라 평가하고 있고,일부는 그가 메이저리그 투수들에 적응하는 기간이 1~2년 정도 필요할 것이라 보고 있다”는 것이 그의 소개다. 타율 2할 후반대의 평범한 타자가 될 것이라는 평가와 3할 타자가 될 수 있다는 평가가 공존하고 있다고 덧붙였다.
          </div>
<p dmcf-pid="fHxSk1sbXy" dmcf-ptype="general">그는 이어 이정후의 가장 돋보이는 능력이 컨택과 선구안이지만 파워는 떨어지고, 중견수 수비에 있어 넓은 수비 범위와 강한 팔힘을 갖고 있으며 주루에서는 평균 이상의 능력을 갖고 있지만 도루 능력은 위협적인 수준이 아니라고 평했다. 시즌 막판 발목 부상으로 이탈한 것도 소개했다.</p>
<p dmcf-pid="4bkpWV5J5T" dmcf-ptype="general">그는 이정후의 계약 규모에 대해 ‘현재는 측정 불가’라며 평가를 보류했다. 추천 구단으로는 샌프란시스코 자이언츠, 클리블랜드 가디언즈, 토론토, 디트로이트를 언급했다.</p>
<p dmcf-pid="8KEUYf1iGv" dmcf-ptype="general"><strong>그가 언급한 40명의 FA와 예상 금액은 다음과 같다.</strong></p>
<p dmcf-pid="69DuG4tnXS" dmcf-ptype="general"><strong>1위 오타니 쇼헤이: 10년 4억 7700만 달러 이상</strong></p>
<p dmcf-pid="PHxSk1sbZl" dmcf-ptype="general"><strong>2위 야마모토 요시노부: 7년 2억 1100만 달러</strong></p>
<p dmcf-pid="QXMvEtOKHh" dmcf-ptype="general"><strong>3위 조던 몽고메리: 5년 1억 2700만 달러</strong></p>
<p dmcf-pid="xZRTDFI91C" dmcf-ptype="general"><strong>4위 애런 놀라: 5년 1억 2500만 달러</strong></p>
<p dmcf-pid="yl2rLyA0HI" dmcf-ptype="general"><strong>5위 블레이크 스넬: 5년 1억 2200만 달러</strong></p>
<p dmcf-pid="WSVmoWcpYO" dmcf-ptype="general"><strong>6위 코디 벨린저: 6년 1억 4400만 달러</strong></p>
<p dmcf-pid="YvfsgYkUGs" dmcf-ptype="general"><strong>7위 맷 채프먼: 6년 1억 2700만 달러</strong></p>
<p dmcf-pid="GDUaQsJGXm" dmcf-ptype="general"><strong>8위 조시 헤이더: 3년 6700만 달러</strong></p>
<p dmcf-pid="HwuNxOiHXr" dmcf-ptype="general"><strong>9위 클레이튼 커쇼: 1년 2200만 달러</strong></p>
<p dmcf-pid="Xr7jMInXGw" dmcf-ptype="general"><strong>10위 소니 그레이: 3년 6400만 달러</strong></p>
<p dmcf-pid="ZW6CjXwzHD" dmcf-ptype="general"><strong>11위 에두아르도 로드리게스(옵트아웃): 5년 9000만 달러</strong></p>
<p dmcf-pid="5YPhAZrq5E" dmcf-ptype="general"><strong>12위 마이클 와카: 1년 1600만 달러</strong></p>
<p dmcf-pid="1GQlc5mBHk" dmcf-ptype="general"><strong>13위 루카스 지올리토: 2년 2400만 달러</strong></p>
<p dmcf-pid="tT4OaGEuXc" dmcf-ptype="general"><strong>14위 마르커스 스트로맨(옵트아웃): 선수옵션 실행(1년 2100만 달러)</strong></p>
<p dmcf-pid="Fy8INHD7GA" dmcf-ptype="general"><strong>15위 세스 루고: 2년 2000만 달러</strong></p>
<p dmcf-pid="3VrzX63oZj" dmcf-ptype="general"><strong>16위 J.D. 마르티네스: 1년 1200만 달러</strong></p>
<p dmcf-pid="0fmqZP0gZN" dmcf-ptype="general"><strong>17위 루어데스 구리엘 주니어(옵트아웃) 3년 3600만 달러</strong></p>
<p dmcf-pid="p4sB5QpaGa" dmcf-ptype="general"><strong>18위 테오스카 에르난데스: 퀄리파잉 오퍼 수용</strong></p>
<p dmcf-pid="UW6CjXwzXg" dmcf-ptype="general"><strong>19위 호르헤 솔레어(옵트아웃): 2년 3200만 달러</strong></p>
<p dmcf-pid="uYPhAZrq1o" dmcf-ptype="general"><strong>20위 윗 메리필드(상호 옵션): 2년 1600만 달러</strong></p>
<p dmcf-pid="7GQlc5mBtL" dmcf-ptype="general"><strong>21위 리스 호스킨스: 1년 1200만 달러</strong></p>
<p dmcf-pid="zgZe9A6htn" dmcf-ptype="general"><strong>22위 이마나가 쇼타: 측정 불가</strong></p>
<p dmcf-pid="qa5d2cPlYi" dmcf-ptype="general"><strong>23위 아롤디스 채프먼: 2년 1200만 달러</strong></p>
<p dmcf-pid="BN1JVkQSXJ" dmcf-ptype="general"><strong>24위 미치 가버: 2년 1600만 달러</strong></p>
<p dmcf-pid="biYQqgVsZd" dmcf-ptype="general"><strong>25위 카를로스 산타나: 1년 750만 달러</strong></p>
<p dmcf-pid="KnGxBafOYe" dmcf-ptype="general"><strong>26위 저스틴 터너: 1년 1200만 달러</strong></p>
<p dmcf-pid="9LHMbN4I5R" dmcf-ptype="general"><strong>27위 제이머 칸델라리오: 2년 1500만 달러</strong></p>
<p dmcf-pid="2LHMbN4IYM" dmcf-ptype="general"><strong>28위 토미 팸: 1년 700만 달러</strong></p>
<p dmcf-pid="VoXRKj8C5x" dmcf-ptype="general"><strong>29위 카일 헨드릭스: 2년 2500만 달러</strong></p>
<p dmcf-pid="fgZe9A6h1Q" dmcf-ptype="general"><strong>30위 조던 힉스: 3년 3000만 달러</strong></p>
<p dmcf-pid="4HxSk1sb1P" dmcf-ptype="general"><strong>31위 웨이드 마일리(상호 옵션): 1년 1350만 달러</strong></p>
<p dmcf-pid="8XMvEtOK56" dmcf-ptype="general"><strong>32위 앤드류 히니: 2년 2500만 달러</strong></p>
<p dmcf-pid="6T4OaGEuG8" dmcf-ptype="general"><strong>33위 잭 플레어티: 1년 1000만 달러</strong></p>
<p dmcf-pid="Py8INHD714" dmcf-ptype="general"><strong>34위 마에다 켄타: 1년 1000만 달러</strong></p>
<p dmcf-pid="QW6CjXwzYf" dmcf-ptype="general"><strong>35위 류현진: 1년 800만 달러</strong></p>
<p dmcf-pid="xGQlc5mBtV" dmcf-ptype="general"><strong>36위 마이클 콘포르토(옵트아웃): 팀 잔류</strong></p>
<p dmcf-pid="yeT8unKw12" dmcf-ptype="general"><strong>37위 이정후: 측정 불가</strong></p>
<p dmcf-pid="Wdy67L9rG9" dmcf-ptype="general"><strong>38위 해리슨 베이더: 1년 800만 달러</strong></p>
<p dmcf-pid="YfmqZP0g1K" dmcf-ptype="general"><strong>39위 제임스 팩스턴: 1년 800만 달러</strong></p>
<p dmcf-pid="G4sB5QpaGb" dmcf-ptype="general"><strong>40위 카일 깁슨: 1년 800만 달러</strong></p>
<p dmcf-pid="H8Ob1xUNZB" dmcf-ptype="general">[피닉스(미국) =김재호 MK스포츠 특파원]</p>
<p dmcf-pid="XtJYmplfHq" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : MK스포츠]</h6></div>
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