
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
    <h3>진짜 ‘강등권’ 싸움은 지금부터…수·강·수, ‘6점 그 이상’ 파이널 라운드 맞대결이 시작된다</h3><h6>박준범  2023. 11. 1. 07:30</h6>
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
<section dmcf-sid="t8B9vYkUR6">
<figure class="figure_frm origin_fig" dmcf-pid="FtWHacPlM8" dmcf-ptype="figure">
<p class="link_figure"><img alt="김도균(왼쪽부터), 윤정환, 염기훈. 제공 | 한국프로축구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101073010283bibi.jpg" data-org-width="500" dmcf-mid="ZoPM10hVMx" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101073010283bibi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김도균(왼쪽부터), 윤정환, 염기훈. 제공 | 한국프로축구연맹
           </figcaption>
</figure>
<p dmcf-pid="3gRJ07T6R4" dmcf-ptype="general"><br/> [스포츠서울 | 박준범기자] 진짜 ‘강등권’ 싸움은 지금부터다.</p>
<p dmcf-pid="0SrOQezcnf" dmcf-ptype="general">울산 현대가 리그 2연패를 조기에 달성하면서 오롯이 관심은 ‘강등권’으로 쏠린다. 여느 시즌과 마찬가지로 강등권 싸움은 끝까지 알 수 없는 형국이다.</p>
<p dmcf-pid="pIV8G5mBLV" dmcf-ptype="general">35라운드가 종료된 현재, 10위는 수원FC(승점 32)다. 11위는 강원FC(승점 27), 최하위는 수원 삼성(승점 26)이 차지하고 있다. 12위는 다이렉트 강등이 되고, 10위와 11위는 K리그2 팀들과 승강 플레이오프(PO)를 치른다.</p>
<p dmcf-pid="UmKVyHD7J2" dmcf-ptype="general">파이널 라운드가 돌입한 후 2경기를 소화했는데, 이들 세 팀 모두 1승도 따내지 못했다. 공교롭게도 나란히 1무1패씩을 기록 중이다. 자연스럽게 순위 변동도 없다. 36라운드에서는 비슷한 흐름으로 패하거나 비겼다. 특히 강원과 수원 삼성은 격차가 승점 1에 불과해 언제든 순위가 뒤집힐 수 있다. 하지만 좀처럼 격차가 벌어지지 않고 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="uZio7bGMJ9" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 한국프로축구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101073010609pyus.jpg" data-org-width="700" dmcf-mid="5wkw4QpadQ" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101073010609pyus.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 한국프로축구연맹
           </figcaption>
</figure>
<p dmcf-pid="75ngzKHRJK" dmcf-ptype="general"><br/> 다만 아직 세 팀 간 맞대결은 시작하지 않았다. 이른바 ‘승점 6짜리’ 경기는 이제부터인 셈이다. 맞대결에서 패하게 되면 승점 이상으로 ‘치명타’로 돌아올 수밖에 없다. 가장 먼저 맞붙는 건 수원FC와 수원 삼성이다. 두 팀은 오는 12일 수원종합운동장에서 36라운드 맞대결을 펼친다. ‘수원 더비’다.</p>
<p dmcf-pid="zl8QZFI9Lb" dmcf-ptype="general">맞대결에서 수원FC가 수원 삼성을 꺾게 되면 수원FC의 다이렉트 강등 시나리오는 사라진다. 반대로 수원 삼성 입장에서는 다이렉트 강등에 더욱 가까워지는 만큼 그야말로 ‘사활’을 걸어야 한다. 올시즌 맞대결에서는 수원FC가 3전 전승으로 단 한 번도 지지 않았다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="q0Nc94tnJB" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 한국프로축구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101073010967hjdi.jpg" data-org-width="700" dmcf-mid="1zTYoj8CdP" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101073010967hjdi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 한국프로축구연맹
           </figcaption>
</figure>
<p dmcf-pid="BCf6H1sbdq" dmcf-ptype="general"><br/> 그리고 25일에는 수원FC와 강원이 만난다. 올시즌 상대 전적은 1승1무1패다. 수원의 화끈한 공격력과 강원 수비의 정면충돌이 될 것으로 보인다. 마지막으로 수원 삼성과 강원의 맞대결은 최종전에 열린다. 그때까지 두 팀의 격차가 유지된다면 1경기 결과 때문에 운명이 뒤바뀔 수도 있다.</p>
<p dmcf-pid="b7kw4QpaLz" dmcf-ptype="general">또 다득점도 중요한 요소다. K리그는 승점 다음으로 골 득실이 아닌 다득점으로 순위를 결정하고 있다. 수원FC가 41골로 가장 앞서 있다. 수원 삼성이 31골, 강원이 27골을 기록 중이다. 격차가 크지 않은 만큼 수원 삼성과 강원은 다득점에서 순위가 결정되는 상황도 발생할 수 있다.</p>
<p dmcf-pid="KXJLuBYxR7" dmcf-ptype="general">beom2@sportsseoul.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠서울]</h6></div>
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