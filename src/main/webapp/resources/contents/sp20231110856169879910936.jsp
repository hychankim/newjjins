
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
    <h3>'우리 선수들이 왜 발롱도르 못 타냐고? 파티 좋아하니까!' 브라질 대통령, 자국 선수들 비판</h3><h6>주대은  2023. 11. 1. 08:56</h6>
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
<section dmcf-sid="PegmWXwzH6">
<figure class="figure_frm origin_fig" dmcf-pid="QaDvtplfG8" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085626141nwzi.jpg" data-org-width="594" dmcf-mid="ViAmWXwztR" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085626141nwzi.jpg" width="658"/></p>
</figure>
<p dmcf-pid="xNwTFUS4G4" dmcf-ptype="general">[스포탈코리아] 주대은 기자= 브라질 대통령이 자국 선수들에게 리오넬 메시를 본보기 삼으라고 말했다. </p>
<p dmcf-pid="y0BQgA6h1f" dmcf-ptype="general">지난 1일(한국 시간) 축구 매체 ‘골닷컴’은 “브라질 루이스 이나시우 룰라 다시우바 대통령이 발롱도르에서 우승하고 싶다면 리오넬 메시를 따르라고 이야기했다”라고 보도했다. </p>
<p dmcf-pid="W72eADMTZV" dmcf-ptype="general">발롱도르를 주관하는 ‘프랑스풋볼’은 31일(한국 시간) 프랑스 파리에 위치한 샤들레 극장에서 ‘2023 발롱도르’ 시상식을 진행했다. 주인공은 메시였다. 그는 개인 통산 8번째 발롱도르를 받았다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="YzVdcwRyt2" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085627450jcuu.jpg" data-org-width="594" dmcf-mid="fossYZrqHM" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085627450jcuu.jpg" width="658"/></p>
</figure>
<p dmcf-pid="GqfJkreW59" dmcf-ptype="general">2022 FIFA 카타르 월드컵 우승과 골든볼 수상에 이어 발롱도르까지 손에 쥔 메시다. 세계 최고 선수이자 역대 최고 선수 반열에 올랐다는 것에 이견이 거의 없다. </p>
<p dmcf-pid="HQiESWcpZK" dmcf-ptype="general">매체에 따르면 다시우바 대통령은 메시를 칭찬했다. 그는 “브라질 선수들은 메시를 본보기 삼아야 한다”라며 “36세에도 세계 챔피언과 발롱도르 같은 모든 것을 얻었다”라며 메시를 칭찬했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="XxnDvYkUZb" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085628816ujtp.jpg" data-org-width="594" dmcf-mid="4xppV63o5x" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085628816ujtp.jpg" width="658"/></p>
</figure>
<p dmcf-pid="ZMLwTGEuHB" dmcf-ptype="general">다시우바 대통령은 “발롱도르를 받고 싶다면 헌신해야 한다. 브라질 축구 선수들은 프로페셔널 해야 한다. 파티에 어울리지 않아야 한다”라며 자국 선수들은 비판했다. </p>
<p dmcf-pid="58eACvNFHq" dmcf-ptype="general">이례적인 칭찬이었다. 브라질과 아르헨티나는 라이벌로 유명하다. 과거 브라질 축구 황제 ‘호나우두’는 “메시가 월드컵에서 우승하면 행복하겠지만, 브라질과 아르헨티나는 앙숙이다. 내가 아르헨티나의 우승을 바라는 건 위선”이라고 말했을 정도다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="16dchTj3Yz" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085630428umih.jpg" data-org-width="647" dmcf-mid="8QppV63oXQ" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085630428umih.jpg" width="658"/></p>
</figure>
<p dmcf-pid="tPJklyA0Y7" dmcf-ptype="general">‘골닷컴’은 “메시는 조용한 생활로 널리 알려져 있다. 축구 말고 다른 일로 헤드라인을 장식하지 않는다”라며 다시우바 대통령 의견에 힘을 실었다. </p>
<p dmcf-pid="F72eADMTZu" dmcf-ptype="general">매체는 “최근 가장 근접했던 선수는 네이마르였다. 2015년, 2017년에 3위를 차지했다. 그러나 그는 현재 31세다. 게다가 십자인대 부상까지 당했다. 발롱도르를 받지 못할 가능성이 크다”라고 덧붙였다. </p>
<p dmcf-pid="3zVdcwRytU" dmcf-ptype="general">브라질은 세계에서 손에 꼽히는 축구 강국이다. 그러나 수년간 발롱도르와 인연이 없다. 2007년 카카의 발롱도르 수상이 브라질 선수의 마지막 수상이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="0qfJkreWYp" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085631742mygh.jpg" data-org-width="600" dmcf-mid="6axasho5YP" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportalkr/20231101085631742mygh.jpg" width="658"/></p>
</figure>
<p dmcf-pid="pB4iEmdYY0" dmcf-ptype="general">사진=게티이미지코리아 <br/> 취재문의 sportal@sportalkorea.co.kr | Copyright ⓒ 스포탈코리아. 무단전재 및 재배포 금지</p>
</section>
</div></p></section></div><h6>[Source : 스포탈코리아]</h6></div>
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