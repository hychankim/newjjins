
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
    <h3>김하성의 새 감독은 누구? SD, 외부 후보와 면접 진행</h3><h6>김재호 MK스포츠 기자(greatnemo@maekyung.com)  2023. 11. 1. 06:09</h6>
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
<section dmcf-sid="6wmULyA0Xs">
<p dmcf-pid="P46munKwXm" dmcf-ptype="general">2024시즌 김하성과 하이파이브를 나눌 감독은 누구일까?</p>
<p dmcf-pid="Q6QOzo2mXr" dmcf-ptype="general">‘디 어슬레틱’ 샌디에이고 파드레스 담당 기자 데니스 린은 1일(한국시간) 파드레스의 감독 면접 진행 상황을 전했다.</p>
<p dmcf-pid="xPxIqgVsZw" dmcf-ptype="general">이에 따르면, 파드레스는 외부 인사로 감독 물색 범위를 넓혔다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="yWG8mplfGD" dmcf-ptype="figure">
<p class="link_figure"><img alt="필 네빈은 에인절스 감독을 맡았다. 사진= MK스포츠 DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101060901034ukjp.jpg" data-org-width="600" dmcf-mid="8jkteho5XO" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101060901034ukjp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            필 네빈은 에인절스 감독을 맡았다. 사진= MK스포츠 DB
           </figcaption>
</figure>
<div dmcf-pid="WYH6sUS4ZE" dmcf-ptype="general">
           파드레스는 LA에인절스 감독에서 경질된 필 네빈, 같은 팀의 내야코치로 있었던 벤치 길, 그리고 에릭 차베스 뉴욕 메츠 벤치코치와 면접을 진행한 것으로 알려졌다.
          </div>
<p dmcf-pid="YGXPOuv8Gk" dmcf-ptype="general">세 명 모두 코치 경력이 풍부한 베테랑들이다.</p>
<p dmcf-pid="GQMCBafOtc" dmcf-ptype="general">현역 시절 올스타를 경험한 유틸리티 선수인 네빌은 2008년 독립리그인 골든베이스볼리그 오렌지카운티 플라이어스 감독으로 지도자 생활을 시작, 샌프란시스코, 뉴욕 양키스, 에인절스 등에서 코치를 맡았다.</p>
<p dmcf-pid="HxRhbN4IXA" dmcf-ptype="general">2022시즌 도중 경질된 조 매든을 대신해 감독이 됐고 2023시즌에는 정식 감독으로 임명됐다. 시즌이 끝난 뒤 계약을 갱신하지 않는 방식으로 경질됐다.</p>
<p dmcf-pid="XMelKj8CGj" dmcf-ptype="general">길은 텍사스 레인저스, 애너하임 에인절스에서 내야수로 뛰었으며 2014년 멕시코 퍼시픽리그 토마테로스 데 쿨리아칸의 감독을 맡으며 지도자 생활을 시작했다. 2022년 LA에인절스 코치진에 합류하며 메이저리그에 진출했다.</p>
<p dmcf-pid="ZdiTVkQSGN" dmcf-ptype="general">2021년 도쿄올림픽, 2023년 월드베이스볼클래식(WBC)에서 멕시코 대표팀을 맡은 경험이 있다.</p>
<p dmcf-pid="5JnyfExvHa" dmcf-ptype="general">차베스는 현역 시절 골드글러브 6회, 실버슬러거 1회로 언급된 후보중 가장 화려한 선수 경력을 갖고 있다.</p>
<p dmcf-pid="1iLW4DMT5g" dmcf-ptype="general">은퇴 이후 오클랜드 어슬레틱스 중계진에 합류했다가 뉴욕 양키스, LA에인절스 프런트를 거쳐 2021년 12월 양키스 타격코치에 부임했다. 2022시즌 이후에는 메츠 벤치코치로 보직을 옮겼다.</p>
<p dmcf-pid="tsIzaGEuto" dmcf-ptype="general">파드레스는 이들을 비롯해 내부 후보도 물색중이다. 기존 코칭스태프 일원인 라이언 플레어티, 마이크 쉴트가 유력한 차기 감독 후보로 거론되고 있다.</p>
<p dmcf-pid="FOCqNHD7HL" dmcf-ptype="general">[피닉스(미국) =김재호 MK스포츠 특파원]</p>
<p dmcf-pid="3IhBjXwzGn" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
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