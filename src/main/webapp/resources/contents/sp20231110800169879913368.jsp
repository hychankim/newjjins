
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
    <h3>KBO 역수출 신화→WS 2차전 승리 주역 켈리처럼...PS 탈락 충격먹은 양키스 팬매체, '푸른 눈의 선동렬' 페디 영입 강력 주장</h3><h6>손찬익  2023. 11. 1. 08:00</h6>
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
<section dmcf-sid="toCFyHD7Lq">
<figure class="figure_frm origin_fig" dmcf-pid="FATuXtOKdz" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=수원, 최규한 기자] 30일 오후 수원 KT위즈파크에서 ‘2023 신한은행 SOL KBO 포스트시즌 플레이오프’ 1차전 KT 위즈와 NC 다이노스의 경기가 열렸다.5회말 1사 주자없는 상황 KT 문상철의 파울에 NC 선발 페디가 타구를 손으로 가리키고 있다. 2023.10.30 / dreamer@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101080018843wfkg.jpg" data-org-width="530" dmcf-mid="XfxEnafOM9" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101080018843wfkg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=수원, 최규한 기자] 30일 오후 수원 KT위즈파크에서 ‘2023 신한은행 SOL KBO 포스트시즌 플레이오프’ 1차전 KT 위즈와 NC 다이노스의 경기가 열렸다.5회말 1사 주자없는 상황 KT 문상철의 파울에 NC 선발 페디가 타구를 손으로 가리키고 있다. 2023.10.30 / dreamer@osen.co.kr
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="3NSpG5mBd7" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=수원, 최규한 기자]경기를 마치고 승리투수 NC 페디와 강인권 감독이 인사를 나누고 있다. 2023.10.30 / dreamer@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101080019026nabo.jpg" data-org-width="650" dmcf-mid="ZbZ2pzyPdK" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101080019026nabo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=수원, 최규한 기자]경기를 마치고 승리투수 NC 페디와 강인권 감독이 인사를 나누고 있다. 2023.10.30 / dreamer@osen.co.kr
           </figcaption>
</figure>
<p dmcf-pid="0EYq10hVLu" dmcf-ptype="general">[OSEN=손찬익 기자] 메이저리그 최고의 명문 구단 뉴욕 양키스는 올 시즌 82승 80패(승률 0.506)로 아메리칸리그 동부지구 4위로 마감하며 포스트시즌 진출에 실패했다. 미국 팬사이트 팬사이디드의 '양크스 고 야드'는 지난달 31일(이하 한국시간) 'KBO 역수출의 신화'로 불리는 메릴 켈리(애리조나 다이아몬드백스)의 사례를 들며 "양키스가 오프 시즌 에릭 페디(NC 다이노스)를 영입해야 한다"고 주장했다. </p>
<p dmcf-pid="p2LIADMTRU" dmcf-ptype="general">켈리는 2015년부터 2018년까지 SK 와이번스에서 뛰면서 통산 119경기에 등판해 48승 32패 평균자책점 3.86을 남겼다. 국내 무대에서 능력을 인정받은 켈리는 메이저리그 스카우트의 눈에 띄었고 애리조나에서 빅리그에 데뷔하는 기회를 얻게 됐다. </p>
<p dmcf-pid="UYqeV63odp" dmcf-ptype="general">2019년 빅리그 데뷔 첫해 애리조나 선발진의 한 축을 맡으며 13승 14패를 거둔 켈리는 지난해 13승 8패에 이어 올 시즌 12승 8패로 개인 통산 세 차례 두 자릿수 승리를 달성했다. 지난달 29일 텍사스 레인저스와의 월드시리즈 2차전 선발로 나서 7이닝 1실점(무사사구 9탈삼진)으로 2차전 승리를 이끌었다. </p>
<p dmcf-pid="uPATrInXM0" dmcf-ptype="general">'양크스 고 야드'는 "최근 들어 켈리가 메이저리그에서 좋은 활약을 펼치면서 빅리그에서 부진한 모습을 보인 투수들이 아시아 무대에서 두 번째 기회를 얻기 위해 KBO리그에 진출하는 경우가 많다. 2019년 빅리그에 데뷔한 켈리는 올 시즌 WBC 미국 대표팀에서 뛰었고 월드시리즈 2차전에서 비교할 수 없는 7이닝을 기록했다"고 전했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="7BdrgA6hd3" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=수원, 최규한 기자] 30일 오후 수원 KT위즈파크에서 ‘2023 신한은행 SOL KBO 포스트시즌 플레이오프’ 1차전 KT 위즈와 NC 다이노스의 경기가 열렸다.5회말 1사 주자없는 상황 KT 문상철의 볼넷 때 NC 선발 페디가 볼판정에 불만을 드러내고 있다. 2023.10.30 / dreamer@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101080019168nlil.jpg" data-org-width="650" dmcf-mid="5aBJ4QpaLb" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101080019168nlil.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=수원, 최규한 기자] 30일 오후 수원 KT위즈파크에서 ‘2023 신한은행 SOL KBO 포스트시즌 플레이오프’ 1차전 KT 위즈와 NC 다이노스의 경기가 열렸다.5회말 1사 주자없는 상황 KT 문상철의 볼넷 때 NC 선발 페디가 볼판정에 불만을 드러내고 있다. 2023.10.30 / dreamer@osen.co.kr
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="zBdrgA6hnF" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=수원, 지형준 기자]플레이오프 1차전 MVP 페디가 미소짓고 있다. 2023.10.30 /jpnews@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101080020414ucjn.jpg" data-org-width="530" dmcf-mid="1OtfuBYxRB" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101080020414ucjn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=수원, 지형준 기자]플레이오프 1차전 MVP 페디가 미소짓고 있다. 2023.10.30 /jpnews@osen.co.kr
           </figcaption>
</figure>
<p dmcf-pid="q38NRibDdt" dmcf-ptype="general">이 매체는 양키스가 워싱턴 내셔널스에서 뛰었고 페디를 영입해야 한다는 의견을 내놓았다. 2017년부터 지난해까지 워싱턴에서 뛰었던 페디는 102경기에서 21승 33패 평균자책점 5.41을 남겼다. 특히 2021년 7승(9패)을 거두며 개인 한 시즌 최다승을 달성했고 지난해 6승 13패를 기록했다. </p>
<p dmcf-pid="B6jvwOiHR1" dmcf-ptype="general">페디는 올 시즌 20승 6패 평균자책점 2.00 209탈삼진으로 다승, 평균자책점, 최다 탈삼진 등 3개 부문 1위에 이름을 올렸다. 20승 200탈삼진은 1986년 해태 타이거즈 선동렬 이후 37년 만에 달성한 대기록이다. 또한 선동렬, 한화 류현진, KIA 윤석민에 이어 KBO리그 역대 4번째 투수 트리플 크라운을 달성하는 영광을 누렸다. </p>
<p dmcf-pid="bATuXtOKn5" dmcf-ptype="general">지난 30일 KT와의 플레이오프 1차전 선발로 나선 페디는 6이닝 3피안타(1피홈런) 1볼넷 12탈삼진 1실점으로 NC의 기선 제압에 큰 공을 세웠다. </p>
<p dmcf-pid="K4alEmdYnZ" dmcf-ptype="general">'양크스 고 야드'는 "페디는 많은 비용을 들이지 않고 영입 가능한 투수다. 1년간 아시아 무대에서 뛰면서 많은 걸 이뤄냈다. 그는 의심할 여지없이 올 겨울 메이저리그 복귀를 계획하고 있으며 양키스는 더 깊이 들어가지 않을 여유가 없다"고 페디를 반드시 붙잡아야 한다고 강조했다. /what@osen.co.kr</p>
</section>
</div></p></section></div><h6>[Source : OSEN]</h6></div>
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