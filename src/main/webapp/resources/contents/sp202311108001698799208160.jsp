
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
    <h3>'은퇴 예고' 나달, 내년 프랑스오픈과 파리 올림픽서 유종의 미 거두나</h3><h6>서장원 기자  2023. 11. 1. 08:00</h6>
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
<section dmcf-sid="xjpz53C23V">
<figure class="figure_frm origin_fig" dmcf-pid="yDq907T6u2" dmcf-ptype="figure">
<p class="link_figure"><img alt="부상 회복 중인 라파엘 나달. ⓒ AFP=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101080040597txar.jpg" data-org-width="1400" dmcf-mid="QJq907T60f" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101080040597txar.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            부상 회복 중인 라파엘 나달. ⓒ AFP=뉴스1
           </figcaption>
</figure>
<p dmcf-pid="WwB2pzyPz9" dmcf-ptype="general">(서울=뉴스1) 서장원 기자 = 국제테니스연맹(ITF)이 부상 회복 중인 라파엘 나달(240위·스페인)의 2024 파리 올림픽 출전을 위해 할 수 있는 모든 지원을 아끼지 않을 것이라고 밝혔다.</p>
<p dmcf-pid="Y4hTrInXpK" dmcf-ptype="general">1일(한국시간) 로이터 통신에 따르면 데이비드 해거티 ITF 회장은 "우리는 나달이 챔피언이자 금메달리스트라는 것을 잘 알고 있다. 따라서 파리 올림픽 출전은 나달의 커리어에 동화책 같은 결말이 될 수 있다. 다만 대회 참가 여부는 나달에게 달려 있다"고 말했다.</p>
<p dmcf-pid="G8lymCLZpb" dmcf-ptype="general">남자 테니스계 '빅3'로 불리며 한 시대를 풍미한 나달은 최근 잦은 부상에 고전하면서 예전 같은 기량을 보여주지 못하고 있다. 올해 1월 열린 호주오픈 남자 단식 2회전에서 미국의 매킨지 맥도널드에게 패한 뒤 고관절 부상에 시달렸고, 결국 수술대에 올랐다.</p>
<p dmcf-pid="H6SWsho5FB" dmcf-ptype="general">더 이상 몸이 따라주지 않는다는 것을 직감한 나달은 내년 시즌을 끝으로 은퇴하겠다는 뜻을 밝혔고, '유종의 미'를 거두기 위해 회복에 전념하고 있다. 자신의 훈련 영상을 소셜미디어에 공개하기도 했다.</p>
<p dmcf-pid="X9shkreWFq" dmcf-ptype="general">다만 아직 복귀 시점은 알 수 없다. 호주 오픈 토너먼트 디렉터 크레이그 타일리는 나달이 내년 1월 열리는 호주오픈에 출전할 것이라고 밝혔지만, 나달 측이 아직 복귀 일정이 확정되지 않았다고 말하면서 오리무중이 됐다.</p>
<p dmcf-pid="Z2OlEmdY7z" dmcf-ptype="general">마지막을 위한 무대는 마련돼 있다. 나달이 가장 강점을 보인 프랑스오픈과 역시 프랑스 파리에서 개최되는 파리 올림픽에 출전해 이상적인 마지막을 그려볼 수 있다.</p>
<p dmcf-pid="5VISDsJG37" dmcf-ptype="general">나달은 올림픽 무대에서도 정상에 선 적이 있다. 2008 베이징 올림픽에서 단식 금메달을 목에 걸었고, 2016 리우 올림픽에서는 복식에서 금메달을 차지했다.</p>
<p dmcf-pid="1VISDsJGFu" dmcf-ptype="general">해거티 회장은 "우리는 나달이 다시 경기를 할 수 있도록 최선을 다할 것이다. 특히 그가 엄청난 성공을 거둔 곳이 파리, 그리고 프랑스오픈이기에 훌륭한 복귀 무대가 될 것이다. 그는 최고의 자리에 있기를 원하며 우리 역시 그가 최고가 되기를 바란다"며 건강하게 복귀할 수 있도록 도울 것을 약속했다.</p>
<p dmcf-pid="tfCvwOiHUU" dmcf-ptype="general">superpower@news1.kr </p>
</section>
</div></p></section></div><h6>[Source : 뉴스1]</h6></div>
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