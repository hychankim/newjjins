
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
    <h3>아랍연맹-이집트-요르단, '이'군의 가자 난민촌 폭격 맹비난</h3><h6>차미례 기자  2023. 11. 1. 08:48</h6>
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
<section dmcf-sid="4hcqfP0gq2">
<figure class="figure_frm origin_fig" dmcf-pid="8yr2Qezc99" dmcf-ptype="figure">
<p class="link_figure"><img alt="[가자지구=AP/뉴시스] 10월 30일 이스라엘군의 공습을 받은 가자지구 북부에서 화염과 연기가 치솟고 있다. 2023. 11.01." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsis/20231101084811279zhfl.jpg" data-org-width="720" dmcf-mid="qKAzV63oqx" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsis/20231101084811279zhfl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [가자지구=AP/뉴시스] 10월 30일 이스라엘군의 공습을 받은 가자지구 북부에서 화염과 연기가 치솟고 있다. 2023. 11.01.
           </figcaption>
</figure>
<p dmcf-pid="6vDK6MujqK" dmcf-ptype="general">[서울=뉴시스] 차미례 기자 = 아랍연맹(AL)의 아흐메드 아불 게이트 사무총장은 10월 31일(현지시간) 성명을 발표, 이스라엘군이 가자지구 북부의 자발리아 난민촌을 무차별 폭격한데 대해서 강력히 비난했다. </p>
<p dmcf-pid="PGO4RibDfb" dmcf-ptype="general">그는 성명에서 가자지구의 이번 폭격을 "신종 범죄"로 규정하고 국제사회가 이에 대해 더 이상 침묵해서는 안된다고 주장했다. </p>
<p dmcf-pid="QoPW10hV2B" dmcf-ptype="general">이집트 외무부도 성명을 발표, 이스라엘의 이번 공격은 " 국제법에 대한 노골적인 위반행위"라고 비난했다. </p>
<p dmcf-pid="xB1aDsJG9q" dmcf-ptype="general">요르단도 외무부 성명을 통해서 이번 공격을 비난하고 이스라엘이 위험한 확전에 책임이 있음을 분명히 했다. </p>
<p dmcf-pid="yUGijExvVz" dmcf-ptype="general">요르단은 특히 이스라엘이 서안지구에서도 이스라엘 정착촌 주민들이 팔레스타인 민간인들을 공격, 계속해서 살상하고 있는 도발 행위에 대해 비난했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="WHI8enKwf7" dmcf-ptype="figure">
<p class="link_figure"><img alt="[가자지구=AP/뉴시스] 지난달 31일 가자지구 누세이라트 난민촌에서 팔레스타인 주민들이 이스라엘의 폭격으로 무너진 건물 잔해 속 생존자를 찾고 있다. 2023.11.01." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsis/20231101084811994qgio.jpg" data-org-width="720" dmcf-mid="bjXLcwRyfP" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsis/20231101084811994qgio.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [가자지구=AP/뉴시스] 지난달 31일 가자지구 누세이라트 난민촌에서 팔레스타인 주민들이 이스라엘의 폭격으로 무너진 건물 잔해 속 생존자를 찾고 있다. 2023.11.01.
           </figcaption>
</figure>
<p dmcf-pid="YHI8enKwbu" dmcf-ptype="general">그러면서 국제사회가 그 책임을 묻고 전쟁을 멈추게 하며 팔레스타인인들에 대한 국제적 보호에 나서야 한다고 강조했다. </p>
<p dmcf-pid="GlkB4QpaVU" dmcf-ptype="general">이스라엘은 31일 인구가 밀집한 자발리아 난민촌을 전폭기를 대거 투입해서 폭격했다. 이 폭격 이후 가자지구의 보건부는 50명 이상이 폭격으로 살해 당했으며 약 150명이 부상을 당했고 수 십명이 아직도 건물 폐허 속에 묻혀 있다고 발표했다. </p>
<p dmcf-pid="HPqmSWcp2p" dmcf-ptype="general">이스라엘군의 팔레스타인 민간인 살상이 계속되면서 아랍연맹 22개 회원국을 비롯한 아랍권 전체의 이스라엘에 대한 비난과 전쟁 중지 요구가 더욱 강하게 쏟아져 나오고 있다.</p>
<p dmcf-pid="XFTRoj8CB0" dmcf-ptype="general"><span>☞공감언론 뉴시스</span> cmr@newsis.com </p>
</section>
</div></p></section></div><h6>[Source : 뉴시스]</h6></div>
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