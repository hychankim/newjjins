
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
    <h3>삼성전자, 내년 'AI 폰' 출격 예고… 갤S24에 탑재되나</h3><h6>이재현 기자  2023. 11. 1. 07:11</h6>
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
<section dmcf-sid="xyuWBafO2n">
<figure class="figure_frm origin_fig" dmcf-pid="yMkRr0hVbi" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진은 갤럭시S23 시리즈. /사진=장동규 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneyweek/20231101071109975hyge.jpg" data-org-width="647" dmcf-mid="QG1C0dqkKL" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneyweek/20231101071109975hyge.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진은 갤럭시S23 시리즈. /사진=장동규 기자
           </figcaption>
</figure>
<div dmcf-pid="WimnCzyPqJ" dmcf-ptype="general">
           삼성전자가 내년 초 출시 예정인 갤럭시S24 시리즈에 생성형 인공지능(AI) 기술을 적용할 전망이다. 
          </div>
<p dmcf-pid="Y08pxOiHfd" dmcf-ptype="general">1일 업계에 따르면 삼성전자는 전날 열린 올해 3분기 실적발표에서 "향후에도 스마트폰이 AI의 가장 중요한 접점으로 보고있다"며 "디바이스 경쟁력과 글로벌 11억대의 데이터 베이스로 온디바이스, 서버 기반 하이브리드 AI 기술을 준비 중"이라고 언급했다.</p>
<p dmcf-pid="GsZOFR7ABe" dmcf-ptype="general">외부 클라우드에 접속하지 않고 기기 내에 생성형 AI 기능을 탑재하는 온디바이스 방식 AI 기술로 본격적인 'AI 스마트폰' 시대를 주도하겠다는 설명이다.</p>
<p dmcf-pid="HqRBivNFKR" dmcf-ptype="general">삼성전자의 생성형 AI 언급은 내년 초 출시할 갤럭시S24에 생성형 AI를 탑재할 것이라는 업계 관측을 공식적으로 인정한 것으로 풀이된다.</p>
<p dmcf-pid="X12t8wRyBM" dmcf-ptype="general">앞서 샘모바일, 폰아레나 등 정보기술(IT) 외신은 갤럭시S24 시리즈가 AI에 초점을 맞춰 출시될 것이라는 전망을 내놓은 바 있다. 외신은 삼성의 차세대 스마트폰에 사용자가 제공한 키워드를 기반으로 콘텐츠와 스토리를 제작하는 챗GPT와 구글 바드와 유사한 기능이 탑재된다고 보도했다. </p>
<p dmcf-pid="Z12t8wRybx" dmcf-ptype="general">다니엘 아라우조 삼성전자 MX(모바일 경험) 사업부 상무는"고객들이 사용하는 핵심기능에 AI를 적용할 예정"이라며 "사용자 패턴과 선호도를 기반으로 최적화해서 더욱 의미있고 혁신적인 경험을 2024년부터 제공할 계획"이라고 밝혔다. 업계 관측대로 내년 1~2월 출시 전망인 갤럭시S24 시리즈부터 AI 서비스가 도입될 가능성이 크다.</p>
<p dmcf-pid="5yuWBafObQ" dmcf-ptype="general">갤럭시S24시리즈는 전작과 비교해 다양한 변화가 예상된다. IT팁스터들에 따르면 갤럭시S24 울트라 모델의 경우 곡면 엣지 디스플레이가 아닌 평면 디스플레이가 탑재될 것이란 관측도 나온다. 또 삼성전자의 자체 칩인 '엑시노스 2400'이 탑재되고 카메라 성능도 한층 개선될 것으로 전망된다. 갤럭시S24 시리즈는 갤럭시S24, 갤럭시S24 플러스, 갤럭시S24 울트라 등 3종으로 출시될 것으로 보인다. </p>
<p dmcf-pid="1zMqJSatqP" dmcf-ptype="general">이재현 기자 jhyunee@mt.co.kr<br/>&lt;저작권자 ⓒ '성공을 꿈꾸는 사람들의 경제 뉴스' 머니S, 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 머니S]</h6></div>
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