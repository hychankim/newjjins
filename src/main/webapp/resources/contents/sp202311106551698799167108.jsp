
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
    <h3>NBA 데일리 부상리포트 (11월 1일) : 부커·빌 복귀 어디까지 왔나</h3><h6>서호민  2023. 11. 1. 06:55</h6>
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
<section dmcf-sid="BEqtEtOKU6">
<figure class="figure_frm origin_fig" dmcf-pid="bYefYf1i78" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/jumpball/20231101065602231lzug.jpg" data-org-width="500" dmcf-mid="qe5vivNFFP" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/jumpball/20231101065602231lzug.jpg" width="658"/></p>
</figure>
<div dmcf-pid="KGd4G4tn74" dmcf-ptype="general">
            [점프볼=서호민 기자] 데빈 부커(27, 196cm)와 브래들리 빌(30, 193cm)이 1일(한국시간) 경기에 결장한다. 부커는 왼쪽 발목 부상 여파로 지난 25일 골든스테이트 워리어스와 개막전 이후 3경기 연속 결장을 확정했다. 프리시즌 도중 허리 부상을 당한 빌은 아직 시즌 데뷔 경기를 치르지 못하고 있다. 다행히 두 선수 코트 복귀가 가까워지고 있으며 현재 가벼운 슈팅 훈련 위주로 회복하고 있는 중이다. 
          </div>
<p dmcf-pid="3VxbnTj3F6" dmcf-ptype="general">피닉스 선즈 프랭크 보겔 감독은 '애리조나 센트럴'과의 인터뷰에서 "부커와 빌의 복귀가 가까워지고 있다. 다만 아직 완전한 몸상태에는 이르지 못하고 있다. 그래도 한 가지 긍정적인 건 하루 하루 지날 때마다 그들의 몸 상태가 좋아지고 있다는 것이다"는 말로 두 선수의 복귀가 머지 않았음을 알렸다. 그러면서 보겔 감독은 <span>"두 선수 모두 경기에 뛰고 싶어서 안달 난 상태다. 의학적으로 문제가 없다는 소견만 받는다면 코트 복귀가 가능할 것으로 보인다</span><span>"고 덧붙이기도 했다.</span></p>
<p dmcf-pid="2uknunKw7V" dmcf-ptype="general">한편, 피닉스는 주축 선수들의 전력 이탈 속에서도 개막 후 2승 1패로 나쁘지 않은 출발을 보이고 있다. 케빈 듀란트(36, 208cm)가 팀을 든든히 지탱해주고 있는 덕분이다. 듀란트는 개막 후 3경기에서 평균 27.7점(FG 47.5%) 8.7리바운드 4.0어시스트를 기록하며 팀을 홀로 이끌고 있다. [부상자 업데이트는 한국시간 11월 1일 오전 6시 기준] </p>
<p dmcf-pid="V7EL7L9rU2" dmcf-ptype="general"><strong>#뉴욕 닉스(1-2) vs 클리블랜드 캐벌리어스(1-2) - 오전 8시 30분, 로킷 모기지 필드하우스<br/><br/>▶뉴욕 닉스</strong><br/>부상선수 X</p>
<p dmcf-pid="fC4zCzyP09" dmcf-ptype="general"><strong>▶클리블랜드 캐벌리어스</strong><br/>재럿 앨런 – 왼쪽 발목뼈 타박상(Out)<br/>다리우스 갈랜드 – 왼쪽 햄스트링 염좌(Out)<br/>타이 제롬 – 오른쪽 발목 염좌(Out)<br/>캐리스 르버트 – 왼쪽 햄스트링 통증(Questionable)<br/>도노반 미첼 – 오른쪽 햄스트링 통증(Questionable)<br/>리키 루비오 – 개인사유(Out)</p>
<p dmcf-pid="4h8qhqWQpK" dmcf-ptype="general"><strong>#샌안토니오 스퍼스(1-2) vs 피닉스 선즈(2-1) - 오전 11시, 풋 프린트 센터<br/><br/>▶샌안토니오 스퍼스</strong><br/>부상선수 X</p>
<p dmcf-pid="8l6BlBYxFb" dmcf-ptype="general"><strong>▶피닉스 선즈</strong><br/>브래들리 빌 – 허리 경련(Out)<br/>데빈 부커 – 왼쪽 발목 염좌(Out) <br/>데미언 리 – 오른쪽 무릎 반월판 수술(무기한 아웃)</p>
<p dmcf-pid="6WRVWV5J0B" dmcf-ptype="general"><strong>#올랜도 매직(2-1) vs LA 클리퍼스(2-1) - 오전 11시 30분, 크립토닷컴 아레나<br/><br/>▶올랜도 매직</strong><br/>조나단 아이작 - 휴식결장</p>
<p dmcf-pid="PYefYf1iFq" dmcf-ptype="general"><strong>▶LA 클리퍼스</strong><br/>브랜든 보스턴 주니어 – 왼쪽 대퇴사두근 건염(Out)<br/>본스 하일랜드 – 왼쪽 발목 염좌(Questionable)<br/>테렌스 맨 – 왼쪽 발목 염좌(Out)<br/>마커스 모리스 – 코치결정(Out)<br/>노먼 파웰 – 왼발 통증(Questionable)<br/>이비카 주바치 – 오른쪽 넓적다리 타박상(Questionable)</p>
<p dmcf-pid="QyM2y2Zduz" dmcf-ptype="general">*Probable(출전가능), Questionable(경기시작 직전 결정), Doubtful(출전의심, 출전가능성↓)으로 표기된 선수는 경기시작 직전까지 상황에 따라 출전여부가 바뀔 수도 있음을 알려드립니다.</p>
<p dmcf-pid="xWRVWV5J77" dmcf-ptype="general">#사진_AP/연합뉴스<br/>#부상리포트_NBA</p>
</section>
</div></p></section></div><h6>[Source : 점프볼]</h6></div>
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