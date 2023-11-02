
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
    <h3>[WTT] '탁구 괴물' 주천희, 호주 교포 지민형 꺾고 챔피언스 16강행</h3><h6>조영준 기자  2023. 11. 1. 08:28</h6>
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
<section dmcf-sid="84btacPlh0">
<figure class="figure_frm origin_fig" dmcf-pid="6lmg07T6T3" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 주천희" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101082826809xpih.jpg" data-org-width="900" dmcf-mid="VUq9ISatyu" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101082826809xpih.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 주천희
           </figcaption>
</figure>
<p dmcf-pid="PSsapzyPvF" dmcf-ptype="general">[스포티비뉴스=조영준 기자] '탁구 괴물' 주천희(21, 삼성생명, 세계 랭킹 20위)가 호주 교포 지민형(36, 세계 랭킹 37위)을 꺾고 월드테이블테니스(WTT) 챔피언스 16강에 올랐다. </p>
<p dmcf-pid="Qutvxdqkht" dmcf-ptype="general">주천희는 지난달 31일(현지시간) 독일 프랑크푸르트에서 열린 WTT 챔피언스 프랑크푸르트 여자 단식 1회전(32강)에서 지민형을 3-0(11-7 11-4 11-6)으로 이겼다. </p>
<p dmcf-pid="x7FTMJBEl1" dmcf-ptype="general">WTT 챔피언스는 복식 없이 단식만 진행한다. 세계 상위 랭커들이 총출동하는 이 대회는 '4대 메이저'로 불리는 그랜드 스매시와 왕중왕전인 파이널스 다음으로 랭킹 포인트가 높다. </p>
<p dmcf-pid="yazZLN4Iy5" dmcf-ptype="general">한국 선수로는 여자 단식의 주천희와 신유빈(19, 대한항공, 세계 랭킹 8위) 전지희(31, 미래에셋증권)와 남자 단식 장우진(28) 임종훈(26, 한국거래소) 이상수(33, 삼성생명)가 참가했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="WNq5oj8CSZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 주천희" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101082829534rpdr.jpg" data-org-width="900" dmcf-mid="fctpcwRylU" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101082829534rpdr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 주천희
           </figcaption>
</figure>
<p dmcf-pid="YjB1gA6hTX" dmcf-ptype="general">중국 귀화 선수인 주천희는 올해 두나무 한국프로탁구리그에서 24승 6패를 기록하며 다승왕을 차지했다. 국내 대회에서 독보적인 기량으로 '탁구 괴물'로 불린 그는 이번 챔피언스에 참가했다. </p>
<p dmcf-pid="Gg7XnafOlH" dmcf-ptype="general">첫 경기에서 맞붙은 이는 전 국가대표 지민형이었다. 국내에서 활약한 지민형은 호주 이민 후 국적을 얻고 호주 국가대표로 선발됐다. </p>
<p dmcf-pid="HazZLN4ISG" dmcf-ptype="general">주천희는 '베테랑' 지민형을 상대로 완승하며 가볍게 16강에 진출했다. </p>
<p dmcf-pid="XNq5oj8CSY" dmcf-ptype="general">주천희는 세계 13위 양샤오신(35, 모나코)과 8강 진출을 다툰다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="ZSe2CvNFvW" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 장우진 ⓒ대한탁구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101082831046sdvw.jpg" data-org-width="900" dmcf-mid="4gbtacPlCp" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101082831046sdvw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 장우진 ⓒ대한탁구협회
           </figcaption>
</figure>
<p dmcf-pid="5vdVhTj3Ty" dmcf-ptype="general">남자 탁구의 간판 장우진은 남자 단식 1회전에서 일본의 '탁구 에이스' 하리모토 토모카즈(20, 세계 랭킹 7위)에게 2-3(11-9 9-11 8-11 11-6 9-11)으로 석패했다. </p>
<p dmcf-pid="1TJflyA0lT" dmcf-ptype="general">장우진은 지난 9월 30일 2022 항저우 아시안게임 단식 8강전에서 하리모토에게 역스윕 역전승을 거두며 4강에 올랐다. 당시 하리모토는 경기 도중 생긴 부상으로 흔들렸다. </p>
<p dmcf-pid="twfUkreWhv" dmcf-ptype="general">이후 이번 대회에서 재회한 이들의 승부는 시종일관 접전이 이어졌다. 마지막 5게임 9-9에서 장우진은 아쉽게 뒷심 싸움에서 밀리며 16강 진출에 실패했다. </p>
<p dmcf-pid="Fr4uEmdYlS" dmcf-ptype="general">이로써 WTT 챔피언스 프랑크푸르트에서 16강에 오른 한국 선수는 총 4명이다. 신유빈은 한국 시간으로 2일 새벽에 열리는 16강에서 독일의 자비네 빈터를 만난다. </p>
<p dmcf-pid="3m87DsJGTl" dmcf-ptype="general">이상수는 독일의 백전노장 티모 볼을 꺾고 16강에 올랐다. 그는 16강에서 세계 최강자인 판젠동(중국, 세계 랭킹 1위)을 만난다. </p>
<p dmcf-pid="0ZNMG5mBlh" dmcf-ptype="general">'왼손 백핸드의 달인' 임종훈은 세계 5위 량진쿤(중국)과 16강에서 맞대결한다. </p>
<p dmcf-pid="p5jRH1sbWC" dmcf-ptype="general">한편 TV 채널 SPOTV와 SPOTV ON, 스포츠 OTT 서비스인 SPOTV NOW는 WTT 챔피언스 프랑크푸르트 주요 경기를 위성 생중계한다. 또한 SPOTV ASIA(스포티비 아시아)에서도 생중계한다. 스포티비 아시아는 동남아 지역 13개국에 송출되는 채널로 테니스 그랜드슬램 대회인 윔블던과 US오픈, 남자프로테니스 ATP 투어, 모터사이클 레이싱 대회인 모토지피(GP), WTT(World Table Tennis) 탁구대회, BWF(세계배드민턴연맹) 배드민턴 대회 국제스포츠클라이밍(IFSC) 스포츠클라이밍 월드컵 등 다양한 콘텐츠를 제공 중이다.</p>
<p dmcf-pid="U1AeXtOKCI" dmcf-ptype="general">&lt;저작권자 ⓒ SPOTV NEWS. 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 스포티비뉴스]</h6></div>
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