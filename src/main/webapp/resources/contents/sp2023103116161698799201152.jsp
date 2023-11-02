
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
    <h3>SWC2023, 11월4일 태국 방콕서 월드 파이널 개최</h3><h6>이원희  2023. 10. 31. 16:16</h6>
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
<section dmcf-sid="QTcvYafOLG">
<figure class="figure_frm origin_fig" dmcf-pid="xWEyHj8CLY" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031161633394ruvx.jpg" data-org-width="800" dmcf-mid="PHeEmQpaRH" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031161633394ruvx.jpg" width="658"/></p>
</figure>
<div dmcf-pid="yJKdLzyPdW" dmcf-ptype="general">
            '서머너즈워 월드 아레나 챔피언십2023(이하 SWC2023)' 월드 파이널이 오는 11월4일 태국 방콕에서 열린다.
          </div>
<p dmcf-pid="W3lFUOiHJy" dmcf-ptype="general">'SWC2023' 월드 파이널은 컴투스(대표 이주환) '서머너즈워: 천공의 아레나(이하 서머너즈워)'의 글로벌 최강자를 선발하는 마지막 관문이다. 예선과 본선을 거쳐 선발된 최강 8인 중 단 한 명의 세계 챔피언을 가리는 자리로, 지난 8월부터 전 세계가 함께하는 e스포츠 축제 'SWC2023'의 피날레를 장식한다.</p>
<p dmcf-pid="YmirIR7AJT" dmcf-ptype="general">이번 월드 파이널은 방콕 시내에 위치한 태국 최대 규모 e스포츠 경기장인 아이콘시암 내 트루 아이콘 홀에서 11월4일 오후 2시(한국 시각 기준)부터 개최된다. 1000명 이상의 관객들이 오프라인으로 참석, 현장을 뜨거운 응원 열기로 가득 채울 예정이다.</p>
<p dmcf-pid="GzY7bvNFJv" dmcf-ptype="general">소환사들이 한 데 모여 경기를 시청하는 뷰잉 파티도 대만, 인도네시아, 베트남 등 세계 각지에서 개최된다. 또한 전 경기가 한국어, 영어, 프랑스어, 독일어, 태국어, 포르투갈어 등 총 13개 언어의 전문 해설과 함께 '서머너즈워' e스포츠 채널과 트위치 등을 통해서 제공될 예정이다.</p>
<p dmcf-pid="H5OZFwRyiS" dmcf-ptype="general">경기는 8강 싱글 엘리미네이션 토너먼트로 진행된다. 두 번째 세계 제패에 나서는 '레스트(LEST)'와 '딜리전트(DILIGENT-YC)', 오픈 퀄리파이어로 진출한 '제라(ZERA)', 지난해에 이어 월드 파이널에 진출한 '트루웨일(TRUEWHALE)'과 '핑크로이드(PINKROID)' 등 역대급 강자들이 격돌한다.</p>
<p dmcf-pid="X5OZFwRydl" dmcf-ptype="general">컴투스는 현장 관객에게 라이프 스타일 굿즈 기업 스펙트럼(SPEXTRUM)과 함께 제작한 기념품 패키지를 제공하고 여러 가지 미니 이벤트를 진행하며 경기 외 즐길 거리도 다양하게 마련한다.</p>
<p dmcf-pid="ZTcvYafOMh" dmcf-ptype="general">또 개최에 앞서 다양한 이벤트도 커뮤니티를 통해 진행하며 분위기를 달굴 예정이다. 11월3일까지 'SWC' 공식 홈페이지에서 선수들을 향한 응원이 담긴 이미지를 제작해 응모하는 '치어풀 응원 이벤트'를 진행하고, 11월4일 오후 1시30분까지는 게임 내에서 승부 예측 이벤트를 진행한다.</p>
<p dmcf-pid="57WuBSatJC" dmcf-ptype="general">'SWC2023' 월드 파이널에 대한 보다 자세한 정보는 <span>공식 카페</span> 및 대회 <span>공식 홈페이지</span>에서 확인할 수 있다.</p>
<p dmcf-pid="1RqMJUS4LI" dmcf-ptype="general">이원희 기자 (cleanrap@dailygame.co.kr)</p>
</section>
</div></p></section></div><h6>[Source : 데일리e스포츠]</h6></div>
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