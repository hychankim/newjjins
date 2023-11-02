
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
    <h3>강하게 선수 키우는 최태웅 감독 “눈물 흘린 이현승, 혼 좀 냈다” [V리그]</h3><h6>김찬홍  2023. 10. 31. 22:59</h6>
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
<section dmcf-sid="7UE7eXwzpz">
<figure class="figure_frm origin_fig" dmcf-pid="zqmbntOKz7" dmcf-ptype="figure">
<p class="link_figure"><img alt="작전을 지시하는 최태웅 현대캐피탈 감독. 한국배구연맹(KOVO)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/kukinews/20231031225904639jhbw.jpg" data-org-width="680" dmcf-mid="U2P6czyP0B" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/kukinews/20231031225904639jhbw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            작전을 지시하는 최태웅 현대캐피탈 감독. 한국배구연맹(KOVO)
           </figcaption>
</figure>
<div dmcf-pid="qkBDXnKw0u" dmcf-ptype="general">
<br/>최태웅 감독이 마지막 범실을 기록한 눈물 흘린 이현승을 다그쳤다. 
          </div>
<p dmcf-pid="BWdGKOiHzU" dmcf-ptype="general">현대캐피탈은 31일 안산 상록수체육관에서 열린 ‘도드람 2023~2024 V-리그’ 남자부 1라운드 OK금융그룹과 경기에서 세트 스코어 2대 3(25-22 22-25 25-20 25-27 15-17)로 패배했다.</p>
<p dmcf-pid="b0cUMGEu0p" dmcf-ptype="general">현대캐피탈은 개막 5연패에 빠졌다. 승점 1점은 얻어냈지만 여전히 리그 최하위(승점 2점)에 머물러있다. 다섯 명의 선수가 두 자릿수 득점을 올렸지만 40개의 범실을 범하며 자멸했다. 특히 5세트에 연달아 범실로 사실상 승리를 헌납했다.</p>
<p dmcf-pid="KpkuRHD770" dmcf-ptype="general">최 감독은 경기가 끝나고 “마지막까지 최선을 다하고 소득이 있었던 경기”였다라고 경기를 짤막하게 총평했다.</p>
<p dmcf-pid="9sfI3j8C33" dmcf-ptype="general">최근 팀 공격력이 좋지 않았던 현대캐피탈은 주포 허수봉을 아웃사이드 히터, 미들블로커, 아포짓 스파이커 등 다양한 포지션에 놓고 실험을 했다. 이날에는 아웃사이드 히터로 고정시켜 경기를 풀어갔다.</p>
<p dmcf-pid="2lQv7DMTuF" dmcf-ptype="general">최 감독은 “오늘 허수봉의 리시브와 공격도 괜찮았다. 블로킹에서는 기대에 못 미쳣지만 앞으로 할 수 있다는 생각이 든다”라면서도 “삼각편대를 형성하고 시즌을 소화하고 있는 데 (전)광인이가 살아나야 한다. 아직도 숙제는 남아있는 듯 하다”라고 평가했다.</p>
<p dmcf-pid="VC6lUkQSzt" dmcf-ptype="general">4세트와 5세트에 연달은 범실로 다 잡은 경기를 내준 현대캐피탈이다. 특히 4세트에 14-13에서 OK금융그룹의 리시브가 그대로 넘어오면서 끝낼 기회가 있었는데, 아흐메드의 공격이 네트에 가로 막히면서 승부가 듀스까지 이어졌다.</p>
<p dmcf-pid="fTRWBmdYz1" dmcf-ptype="general">최 감독은 “지다 보니깐 범실이 자주 나오는 것 같다. 자신있게 경기를 해야 한다. 자신감을 찾아야 한다. 그래도 큰 문제는 없다고 본다”라고 언급했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="4J1nC8FL35" dmcf-ptype="figure">
<p class="link_figure"><img alt="경기가 끝나고 눈물을 흘리는 이현승. 한국배구연맹(KOVO)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/kukinews/20231031225905916owib.jpg" data-org-width="680" dmcf-mid="ukfI3j8C3q" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/kukinews/20231031225905916owib.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            경기가 끝나고 눈물을 흘리는 이현승. 한국배구연맹(KOVO)
           </figcaption>
</figure>
<div dmcf-pid="8gpNTMujFZ" dmcf-ptype="general">
<br/>또 5세트 매치 포인트를 헌납한 상황에서 공격을 시도하는 상황에서 이현승은 허수봉을 향해 과감하게 앞쪽으로 토스를 시도했지만, 공이 그대로 아웃되면서 승리를 내줬다. 경기가 끝나고 이현승은 눈물을 흘리기도 했다.
          </div>
<p dmcf-pid="6xGRr9XeuX" dmcf-ptype="general">최 감독은 “위로를 해주지 않았다. 오늘은 혼을 좀 냈다. 자신있게 행동을 해놓고 눈물을 흘리면서 핑계를 대는 듯한 모습을 보이는 듯 해서 울지 말라고 했다”라면서 “나는 그 토스가 멋있다고 생각했다. 그 어린 나이의 선수가 할 수 없는 최고의 판단이라고 생각한다. 그런 자신있는 부분을 높이 사는 데 미스했다고 눈물을 흘리는 건 아니라고 본다”라고 격려했다.</p>
<p dmcf-pid="PxGRr9XeFH" dmcf-ptype="general">현대캐피탈은 다음달 4일 홈에서 KB손해보험을 맞는다. KB손해보험에게도 패배할 경우 라운드 전패를 기록하게 된다.</p>
<p dmcf-pid="Q2hfNUS4FG" dmcf-ptype="general">최 감독은 “조금 더 부드럽게 선수들이 움직일 수 있게끔 힘이 좀 빠져야할 것 같다. 그래서 스피드가 나야할 것 같다. 범실이 조금 줄었으면 좋겠다”고 바람을 전했다.</p>
<p dmcf-pid="xo0avxUN0Y" dmcf-ptype="general">안산=김찬홍 기자 kch0949@kukinews.com</p>
</section>
</div></p></section></div><h6>[Source : 쿠키뉴스]</h6></div>
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