
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
    <h3>슈어저-가르시아 중도 탈락, TEX 첫 우승할 수 있나? "공백 쉽지 않다" 감독은 울상</h3><h6>노재형  2023. 11. 1. 09:03</h6>
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
<section dmcf-sid="pdBZG5mBDF">
<figure class="figure_frm origin_fig" dmcf-pid="4aq8V63omh" dmcf-ptype="figure">
<p class="link_figure"><img alt="텍사스 레인저스 맥스 슈어저가 지난 31일(한국시각) 월드시리즈 3차전서 4회 투구를 앞두고 브루스 보치 감독에게 허리 통증을 호소하고 있다. AP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090539533rixy.jpg" data-org-width="1200" dmcf-mid="9gXvhTj3sT" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090539533rixy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            텍사스 레인저스 맥스 슈어저가 지난 31일(한국시각) 월드시리즈 3차전서 4회 투구를 앞두고 브루스 보치 감독에게 허리 통증을 호소하고 있다. AP연합뉴스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="8NB6fP0gmC" dmcf-ptype="figure">
<p class="link_figure"><img alt="텍사스 아돌리스 가르시아가 월드시리즈 3차전서 8회 타격을 한 직후 옆구리를 만지고 있다. AP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090539750rfad.jpg" data-org-width="1200" dmcf-mid="2QDaLN4Isv" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090539750rfad.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            텍사스 아돌리스 가르시아가 월드시리즈 3차전서 8회 타격을 한 직후 옆구리를 만지고 있다. AP연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="zuTEADMTsZ" dmcf-ptype="general"> [스포츠조선 노재형 기자]창단 첫 월드시리즈 우승을 노리는 텍사스 레인저스가 대형 악재를 만났다. </p>
<p dmcf-pid="q7yDcwRyDX" dmcf-ptype="general">텍사스는 1일(이하 한국시각) 애리조나 다이아몬드백스와의 월드시리즈 4차전을 앞두고 투수 맥스 슈어저와 우익수 아돌리스 가르시아를 부상으로 인해 로스터에서 제외했다고 발표했다. </p>
<p dmcf-pid="BzWwkreWsH" dmcf-ptype="general">가르시아 대신 내외야를 고루 볼 수 있는 에제키엘 두란과 슈어저 대신해 불펜투수 브록 버키가 각각 로스터에 합류했다. 규정상 시리즈 도중 부상 등의 이유로 로스터에서 제외된 선수는 해당 시리즈에 복귀할 수 없다. </p>
<p dmcf-pid="bKXOrInXmG" dmcf-ptype="general">따라서 휴스턴 애스트로스와의 ALCS에서 MVP에 오르는 등 이번 포스트시즌서 맹타를 휘두른 가르시아와 시즌 막판 어깨 부상을 입은 뒤 회복이 빨라 ALCS에서 합류한 슈어저는 월드시리즈 일정을 모두 마감했다. </p>
<p dmcf-pid="K9ZImCLZrY" dmcf-ptype="general">가르시아는 이날 4차전을 앞두고 선발 라인업에서 제외됐다. 대신 트래비스 잰코스키가 우익수에 기용돼 9번 타순에 배치됐다. 가르시아가 빠지면서 중심타선은 3번에 지명타자 밋치 가버, 4번에 좌익수 에반 카터가 각각 이름을 올렸다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="6TicNkQSDI" dmcf-ptype="figure">
<p class="link_figure"><img alt="아돌리스 가르시아는 월드시리즈 1차전에서 끝내기 홈런을 터뜨리는 등 이번 가을 맹타를 휘둘렀다. USATODAY연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090540078mqpk.jpg" data-org-width="1200" dmcf-mid="VnCDcwRyDS" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090540078mqpk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            아돌리스 가르시아는 월드시리즈 1차전에서 끝내기 홈런을 터뜨리는 등 이번 가을 맹타를 휘둘렀다. USATODAY연합뉴스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="PWLEADMTsO" dmcf-ptype="figure">
<p class="link_figure"><img alt="맥스 슈어저는 ALCS에 맞춰 복귀했으나 월드시리즈에서 중도 탈락하게 됐다. UPI연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090540394mjtt.jpg" data-org-width="1200" dmcf-mid="fCgexdqkIl" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090540394mjtt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            맥스 슈어저는 ALCS에 맞춰 복귀했으나 월드시리즈에서 중도 탈락하게 됐다. UPI연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="Vrd9B2ZdmT" dmcf-ptype="general"> 브루스 보치 감독은 "가르시아가 경기 전 스윙 연습을 하고 치료를 받았는데 좋은 뉴스가 나오지 않았다. 슈어저도 통증을 풀려고 노력했지만 여전히 좋지 않다"면서 "남은 시리즈에 대신 들어온 선수들이 기회를 잡고 도움을 주기를 바란다. 야수쪽과 투수쪽 중 어느 쪽을 보강해야 하느냐의 문제였는데, 솔직히 (가르시아와 슈어저를 감안하면)쉽지 않은 결정이었다. 한 선수는 지난 경기에 선발투수였고, 다른 선수는 4번타자였다"며 고민의 흔적을 드러냈다. </p>
<p dmcf-pid="fmJ2bV5Jrv" dmcf-ptype="general">가르시아는 전날 열린 3차전에서 8회 중견수 플라이를 친 직후 왼쪽 옆구리를 만지면서 1루로 달려나갔다. 옆구리 결림 증세가 발생한 것인데, 상태가 호전되지 않아 8회말 수비에서 교체됐다. 가르시아는 지난 28일 홈에서 열린 1차전에서 연장 11회말 끝내기 홈런을 터뜨리며 절정의 타격감을 이어갔다. </p>
<p dmcf-pid="4IL428FLsS" dmcf-ptype="general">슈어저는 같은 날 선발로 등판해 3회까지 무실점으로 잘 던지다 3-0으로 앞선 4회말 투구를 위해 마운드로 오르던 중 인상을 찌푸리더니 한 차례 연습피칭 직후 허리 통증을 호소했다. 텍사스는 다행히 준비가 제대로 안 된 상태에서 등판한 존 그레이가 6회까지 1안타 무실점의 호투를 펼친 덕분에 결국 3대1로 승리할 수 있었다. </p>
<p dmcf-pid="8Co8V63osl" dmcf-ptype="general">1961년 창단한 텍사스는 2010년과 2011년 2년 연속 월드시리즈에서 진출했지만, 우승에는 이르지 못했다. 12년 만에 다시 AL 챔피언에 올라 월드시리즈에 진출한 텍사스는 3차전까지 2승1패로 앞서 있다. <br/>노재형 기자 jhno@sportschosun.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠조선]</h6></div>
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