
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
    <h3>안세영 “아직은 선수로 보여드려야 할 게 많아요”</h3><h6>송지훈  2023. 11. 1. 00:02</h6>
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
<section dmcf-sid="Vcav9CLZyr">
<figure class="figure_frm origin_fig" dmcf-pid="f9qJvMujCw" dmcf-ptype="figure">
<p class="link_figure"><img alt="항저우 아시안게임 선수단 격려행사에서 투혼상을 받은 배드민턴 여제 안세영(오른쪽). [연합뉴스]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/joongang/20231101000231305tjvc.jpg" data-org-width="559" dmcf-mid="2jnCqmdYlm" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/joongang/20231101000231305tjvc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            항저우 아시안게임 선수단 격려행사에서 투혼상을 받은 배드민턴 여제 안세영(오른쪽). [연합뉴스]
           </figcaption>
</figure>
<p dmcf-pid="42BiTR7AhD" dmcf-ptype="general"> 항저우 아시안게임에서 부상을 딛고 2관왕에 올랐던 ‘배드민턴 여제’ 안세영(21·삼성생명)이 돌아온다. 11월 중순 코트에 복귀해 내년 파리올림픽을 대비한 훈련에 들어간다. </p>
<p dmcf-pid="8fKLWdqkSE" dmcf-ptype="general">안세영은 대한체육회 주최로 지난달 30일 서울 송파구 롯데호텔에서 열린 항저우 아시안게임 선수단 격려행사 ‘Thank you, 팀 코리아’에 참가했다. 아시안게임을 마친 뒤 귀국해 재활에 전념해 온 안세영이 처음 소화한 공식 일정이다. 이 자리에서 안세영은 “그동안 온전히 재충전의 시간을 가졌다. 부상 부위는 많이 좋아졌다. 아직은 정상 컨디션의 50~60% 수준이지만, 11월 중순 일본에서 열리는 대회(14일 개막 구마모토 마스터스)부터 출전한다는 계획을 갖고 몸 상태를 끌어올리고 있다”며 “연말까지 3개 국제 대회에 출전할 계획”이라고 말했다. </p>
<p dmcf-pid="649oYJBEyk" dmcf-ptype="general">안세영은 10월 항저우 아시안게임에서 배드민턴 여자 단식과 단체전 금메달을 목에 걸며 2관왕에 올랐다. 한국 배드민턴이 아시안게임에서 여자 단식과 단체전을 제패한 건 지난 1994년 방수현 이후 29년 만의 쾌거다. 특히 단식 결승에서는 무릎 인대가 파열되는 부상을 당했는데도 통증을 견디며 숙적 천위페이(중국)를 제압해 큰 감동을 안겼다. </p>
<p dmcf-pid="P82gGibDyc" dmcf-ptype="general">안세영은 아시안게임 직후 수많은 인터뷰 요청과 광고·방송 출연 제의를 받았지만 모두 정중히 거절했다. 그는 소셜미디어를 통해 “정말 많은 제의를 받은 건 사실이지만 여러분들이 아는 안세영은 어제도, 오늘도, 내일도 그저 평범한 운동선수”라면서 “아직은 선수로 보여드려야 할 게 많기에 배드민턴에만 집중하겠다”는 글을 올렸다. </p>
<p dmcf-pid="Qx8A5gVsvA" dmcf-ptype="general">안세영은 이날 행사에서도 “운동과 방송·광고를 병행하기엔 벅차다는 판단이었다”면서 “아직 올림픽 메달을 목에 걸어보지 못했다. 파리올림픽 레이스가 한창 진행 중인 상황에서 운동 이외에 다른 것까지 함께 할 순 없다는 생각은 여전히 변함이 없다”고 잘라 말했다. </p>
<p dmcf-pid="xM6c1afOvj" dmcf-ptype="general">안세영이 재활훈련을 하는 동안 배드민턴 여자 단식은 천위페이의 독무대였다. 천위페이는 덴마크 오픈과 프랑스 오픈을 잇달아 제패하며 랭킹 포인트를 끌어올렸다. 안세영은 “천위페이를 생각하면 마음이 조급해질 수 있다. 한 템포 쉬어간다는 생각으로 여유 있게 복귀를 준비할 것”이라고 했다. </p>
<p dmcf-pid="yWSuL3C2hN" dmcf-ptype="general">송지훈 기자 song.jihoon@joongang.co.kr</p>
</section>
</div></p></section></div><h6>[Source : 중앙일보]</h6></div>
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