
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
    <h3>“10년전 다나카와 비슷” 日괴물에이스 1억달러는 부족해…7년 2억1000만달러에 메츠행 전망</h3><h6>김진성 기자  2023. 11. 1. 05:29</h6>
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
<section dmcf-sid="baT0k1sbAA">
<figure class="figure_frm origin_fig" dmcf-pid="Kqiw2cPlNj" dmcf-ptype="figure">
<p class="link_figure"><img alt="오릭스 버팔로스 야마모토 요시노부./오릭스 버팔로스 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052908772qzmk.jpg" data-org-width="640" dmcf-mid="04SFAZrqgs" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052908772qzmk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            오릭스 버팔로스 야마모토 요시노부./오릭스 버팔로스 SNS
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="9bLmfExvgN" dmcf-ptype="figure">
<p class="link_figure"><img alt="오릭스 버팔로스 야마모토 요시노부./오릭스 버팔로스 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052908983cyks.jpg" data-org-width="640" dmcf-mid="pB2JtMujjm" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052908983cyks.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            오릭스 버팔로스 야마모토 요시노부./오릭스 버팔로스 SNS
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="2VNCPmdYoa" dmcf-ptype="figure">
<p class="link_figure"><img alt="오릭스 버팔로스 야마모토 요시노부./오릭스 버팔로스 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052909213jzuq.jpg" data-org-width="640" dmcf-mid="ULT0k1sbjr" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052909213jzuq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            오릭스 버팔로스 야마모토 요시노부./오릭스 버팔로스 SNS
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Vr1KCzyPgg" dmcf-ptype="figure">
<p class="link_figure"><img alt="오릭스 버팔로스 야마모토 요시노부./오릭스 버팔로스 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052909514vhjz.jpg" data-org-width="640" dmcf-mid="uy8opJBEkw" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052909514vhjz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            오릭스 버팔로스 야마모토 요시노부./오릭스 버팔로스 SNS
           </figcaption>
</figure>
<p dmcf-pid="fO3VSbGMAo" dmcf-ptype="general">[마이데일리 = 김진성 기자] “10년간 메이저리그 인플레이션을 감안하면 2억2000만달러에 해당한다.”</p>
<p dmcf-pid="418opJBEaL" dmcf-ptype="general">다나카 마사히로(35, 라쿠텐 골든이글스)는 2014년부터 2020년까지 메이저리그 뉴욕 양키스에 몸 담았다. 2013-2014 오프시즌 당시 미일포스팅시스템을 통해 양키스와 7년 1억5500만달러(약 2092억원) 계약을 체결했다. 이는 여전히 아시아 투수 최고금액 계약이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="8BnrVkQSAn" dmcf-ptype="figure">
<p class="link_figure"><img alt="2020 도쿄올림픽 야마모토 요시노부./게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052909811uome.jpg" data-org-width="640" dmcf-mid="7EqxH8FLaD" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052909811uome.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2020 도쿄올림픽 야마모토 요시노부./게티이미지코리아
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="6S7PYf1ioi" dmcf-ptype="figure">
<p class="link_figure"><img alt="2020 도쿄올림픽 야마모토 요시노부./게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052910098uwxl.jpg" data-org-width="640" dmcf-mid="zwYuw3C2gE" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052910098uwxl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2020 도쿄올림픽 야마모토 요시노부./게티이미지코리아
           </figcaption>
</figure>
<p dmcf-pid="PYKe5QpaNJ" dmcf-ptype="general">10년만에 다나카 기록을 깰 투수가 나타났다. 일찌감치 1억달러는 거뜬하다고 전망됐지만, 2억달러를 돌파할 것이라는 예상이 나왔다. 2023-2024 메이저리그 FA 시장에서 가장 좋은 조건으로 계약하는 투수가 될 수 있다.</p>
<p dmcf-pid="QyBMX63ojd" dmcf-ptype="general">일본프로야구 최고 투수 야마모토 요시노부(25, 오릭스 버팔로스)다. 야마모토는 선발투수 시장이라고 불리는 다가올 FA 시장에서 쟁쟁한 기존 메이저리그 투수들을 제치고 1티어로 분류된다. 블리처리포트는 지난달 30일(이하 한국시각) 2023-2024 주요 FA들의 행선지와 몸값을 예상했다.</p>
<p dmcf-pid="xXViFR7AAe" dmcf-ptype="general">야마모토가 2억1000만달러(약 2834억원)에 뉴욕 메츠와 7년 계약을 맺을 것이라고 내다봤다. 이 예상이 현실화되면, 야마모토가 메이저리그 아시아 투수 최고금액 계약의 주인공이 된다. 아울러 내년부터 센가 코다이와 한솥밥을 먹는다.</p>
<p dmcf-pid="yFPaunKwaR" dmcf-ptype="general">야마모토는 최근 3년 연속 사와무라상의 주인공이 됐다. 일본프로야구 최초로 3년 연속 4관왕이 됐으니 당연한 결과다. 야마모토는 올 시즌 23경기서 16승6패 평균자책점 1.21, 169탈삼진을 기록했다. 물론 지난달 28일 한신 타이거즈와의 재팬시리즈 1차전서 5⅔이닝 10피안타 7실점하는 등 포스트시즌 들어 조금 흔들리긴 했다.</p>
<p dmcf-pid="Wr1KCzyPkM" dmcf-ptype="general">그러나 메이저리그 구단들의 평가는 흔들리지 않는다. 블리처리포트는 “오타니 외의 FA들 중에서 가장 큰 계약을 따낼 수도 있다. 너무나 터무니없는 재능이 있기 때문이다. 그리고 아직 너무 어리기 때문이다. 두려움 없이 FA 7년 계약을 체결할 수 있는 기회를 가질 것이다”라고 했다.</p>
<p dmcf-pid="Y7dEKj8Ccx" dmcf-ptype="general">심지어 다나카의 10년 전 계약을 현재 시세로 환산해도 야마모토가 근접할 것이라는 예상이다. 블리처리포트는 “야마모토의 상황은 10년 전 다나카와 거의 같다. 다나카의 7년 1억5500만달러 계약은 지난 10년간 메이저리그 인플레이션을 감안하면 2억2000만달러에 해당한다”라고 했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="GZfn3ezckQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="야마모토 요시노부./게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052910462lhip.jpg" data-org-width="640" dmcf-mid="qyXqsUS4Nk" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052910462lhip.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            야마모토 요시노부./게티이미지코리아
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="HZfn3ezcjP" dmcf-ptype="figure">
<p class="link_figure"><img alt="야마모토 요시노부./게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052910732ixps.jpg" data-org-width="640" dmcf-mid="BxLmfExvgc" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052910732ixps.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            야마모토 요시노부./게티이미지코리아
           </figcaption>
</figure>
<p dmcf-pid="XvzQG4tnk6" dmcf-ptype="general">메츠는 일찌감치 야마모토 영입에 적극적으로 나설 구단으로 꼽혔다. 그러나 뉴욕 양키스, 보스턴 레드삭스, LA 다저스, 샌프란시스코 자이언츠도 종종 거론된다. 오타니 다음으로 인기가 많은 FA라서, 실제 FA 시장이 열리면 가격이 더 오를 가능성도 있다.</p>
</section>
</div></p></section></div><h6>[Source : 마이데일리]</h6></div>
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