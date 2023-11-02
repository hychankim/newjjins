
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
    <h3>'그대들은', 혹평에도 7일째 1위→'소년들' 등판…실화의 힘 증명할까</h3><h6>김보영  2023. 11. 1. 08:26</h6>
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
<section dmcf-sid="7dhGNkQSk5">
<figure class="figure_frm origin_fig" dmcf-pid="znvZcwRyNZ" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/Edaily/20231101082629364ewiu.jpg" data-org-width="670" dmcf-mid="uffR3uv8k1" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/Edaily/20231101082629364ewiu.jpg" width="658"/></p>
</figure>
<div dmcf-pid="qhzfG5mBkX" dmcf-ptype="general">
           [이데일리 스타in 김보영 기자] 미야자키 하야오 신작 ‘그대들은 어떻게 살 것인가’가 7일 연속 박스오피스 1위를 달리고 있는 가운데 정지영 감독, 설경구 주연의 사건 실화극 ‘소년들’이 마침내 오늘(1일) 개봉해 등판한다. 
          </div>
<p dmcf-pid="BYVMFUS4cH" dmcf-ptype="general">1일 오전 영화진흥위원회 영화관입장권 통합전산망 집계에 따르면 ‘그대들은 어떻게 살 것인가’(이하 ‘그대들은’, 감독 미야자키 하야오)는 전날 5만 6021명을 동원해 박스오피스 1위를 지켰다. 누적 관객 수는 106만 3666명이다.</p>
<p dmcf-pid="bE17CvNFAG" dmcf-ptype="general">‘그대들은 어떻게 살 것인가’는 일본 애니메이션계의 거장이자 스튜디오 지브리를 이끌고 있는 미야자키 하야오 감독이 무려 10년 만에 내놓은 신작이다. 시간과 공간을 초월한 신비로운 세계에 우연히 발을 들인 소년 마히토가 미스터리한 왜가리를 만나 펼치는 시공초월 판타지를 그린다. 미야자키 하야오 감독은 당초 전작 ‘바람의 분다’를 끝으로 은퇴 의사를 밝혔지만 이를 번복하고 10년 만에 이 작품을 내놨다. 미야자키 하야오의 나이가 올해 82세 고령인 만큼 이번 작품이 사실상 그의 마지막 작업이 될지도 모른다는 관측이 있었고, 이 작품이 그의 전작들을 총망라한 집대성이자 자전적 이야기라는 사실이 일찍이 알려졌다. 이에 개봉 전부터 큰 관심을 끌며 압도적인 예매율로 흥행을 예고했다. </p>
<p dmcf-pid="KLT5kreWgY" dmcf-ptype="general">하지만 막상 뚜껑을 연 뒤에는 극심한 호불호 속 혹평들이 쏟아지고 있는 상황이다. 난해한 스토리의 내용과 개연성과 거리가 먼 전개방식, 일본 제국주의를 미화한다는 일각의 지적, 주인공 아버지가 아내가 죽은 뒤 처제와 결혼해 아이를 낳는다는 설정 등이 거부감을 불러일으킨 것. 이에 지난 25일 25만 명이 넘는 관객 수로 스코어를 열었지만, 개봉 첫주 주말을 지나며 평균 관객 수가 5만 명대로 급격히 하락한 상황이다. </p>
<p dmcf-pid="9KNrPR7AjW" dmcf-ptype="general">이 가운데 정지영 감독, 설경구 주연 영화 ‘소년들’이 오늘(1일) 개봉한다. ‘소년들’은 지방 소읍의 한 슈퍼에서 발생한 강도치사사건의 범인으로 지목된 소년들과 사건의 재수사에 나선 형사, 그리고 그들을 둘러싼 사람들의 이야기를 그린 사건 실화극이다. 석궁 테러 사건을 조명한 법정 실화극 ‘부러진 화살’, 금융범죄 실화극 ‘블랙머니’ 등 사회고발적인 작품들로 마음을 울렸던 한국영화계 최고참 정지영 감독의 신작이다. ‘소년들’의 경우, 수많은 실화탐사 보도프로그램 등을 통해 조명돼 수많은 대중의 공분과 안타까움을 일으켰던 1999년 삼례나라슈퍼 사건을 모티브로 만들었다. </p>
<p dmcf-pid="2spKTGEuAy" dmcf-ptype="general">영화관입장권 통합전산망에 따르면, ‘그대들은 어떻게 살 것인가’가 예매량 5만 7800명(22.3%)으로 여전히 예매율 1위를 달리고 있는 가운데, ‘소년들’이 그 뒤를 바짝 뒤쫓고 있다. ‘소년들’의 예매율은 현재 6.6%, 예매량 4만 2910명을 기록 중이다. ‘소년들’이 입소문을 타고 흥행해 ‘그대들은 어떻게 살 것인가’의 독주를 막을 수 있을지 주목된다.</p>
<p dmcf-pid="VtxLzKHRAT" dmcf-ptype="general">김보영 (kby5848@edaily.co.kr) </p>
</section>
</div></p></section></div><h6>[Source : 이데일리]</h6></div>
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