
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
    <h3>'솔랭' 점수 2,000점 돌파한 '쵸비'가 전하는 팁</h3><h6>강윤식  2023. 11. 1. 00:25</h6>
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
<section dmcf-sid="2j8gYJBEdc">
<figure class="figure_frm origin_fig" dmcf-pid="V5mH8Tj3iA" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=라이엇 게임즈." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/DAILYESPORTS/20231101002507454oabl.jpg" data-org-width="2048" dmcf-mid="9HNhqmdYnk" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/DAILYESPORTS/20231101002507454oabl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=라이엇 게임즈.
           </figcaption>
</figure>
<div dmcf-pid="fsJw3A6hdj" dmcf-ptype="general">
            한국 서버 솔로 랭크 점수 신기록을 경신한 젠지e스포츠의 '쵸비' 정지훈이 팬들에게 솔로 랭크 팁을 전수했다.
          </div>
<p dmcf-pid="4j8gYJBEiN" dmcf-ptype="general">젠지는 21일 서울 강서구 KBS아레나에서 열린 2023 LoL 월드 챔피언십 스위스 스테이지 3라운드에서 G2e스포츠를 2대0으로 완파했다. 압도적인 경기력으로 G2를 찍어 누른 젠지는 3연승의 기록과 함께 녹아웃 스테이지에 진출했다. 경기 후 중국 매체 완플러스와의 인터뷰에서 정지훈은 "롤드컵 우승을 목표로 하고 있는데, 8강 진출이라는 첫 단계를 잘 해낸 것 같아서 만족스럽다"는 소감을 전했다.</p>
<p dmcf-pid="84t2cqWQea" dmcf-ptype="general">정지훈은 롤드컵 스위스 스테이지를 앞두고 팬들의 많은 관심을 받았다. 바로 한국 서버 솔로 랭크 점수 덕분이다. 지난 15일 정지훈은 1,986점을 달성하면서, 기존 1,964점의 '켈린' 김형규를 제치고 점수 신기록과 함께 1위로 올라섰다. 65%가 넘는 승률로 솔로 랭크를 이어가던 정지훈은 다음날 2,008점으로 2,000점을 돌파하면서 화제를 모았다. 31일 현재는 2,087점의 점수를 기록하고 있다.</p>
<p dmcf-pid="6lgI7wRyeg" dmcf-ptype="general">이에 대한 질문에 정지훈은 "1등을 찍은 것이 좋다"며 "솔로 랭크 점수 기록을 깨면서 기분이 좋았고, 자신감도 많이 얻었다"고 힘줘 말했다. 그러면서 티어 상승을 꿈꾸며 솔로 랭크에 도전하는 많은 이용자들에게 팁을 전수하기도 했다. 그는 "팀원이 이상한 판단을 한다 싶으면 바로 버리고 자기 할 것을 하는 걸 추천한다"고 덧붙였다.</p>
<p dmcf-pid="PUS3eZrqno" dmcf-ptype="general">정지훈은 만나고 싶은 팀에 대한 질문에는 "저희는 어떤 팀을 만나도 이길 수 있게 잘 준비할 예정이다"고 답하면서 만나고 싶지 않은 팀에 대해서는 "T1을 포함한 LCK 팀은 그만 만나고 싶다"고 이야기했다. 실제로 젠지는 지난 29일 열린 녹아웃 스테이지 대진 추첨에서 BLG를 만났다. 4강에 간다고 하면 WBG와 NRG의 승자와 맞붙으므로 정지훈의 바람은 이뤄졌다.</p>
<p dmcf-pid="QFnmpkQSiL" dmcf-ptype="general">마지막으로 정지훈은 롤드컵 우승에 대한 각오를 밝혔다. 그는 "이번 롤드컵 한국에서 열리기도 하고, 제가 솔로 랭크 1위를 찍으면서 실력적으로 자신이 있다"며 "이번에 기회가 온 만큼 잘하는 모습 보여서 우승까지 바라보겠다"는 말을 남기며 인터뷰를 마쳤다.</p>
<p dmcf-pid="x5dDFj8Cnn" dmcf-ptype="general">강윤식 기자 (skywalker@dailyesports.com)</p>
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