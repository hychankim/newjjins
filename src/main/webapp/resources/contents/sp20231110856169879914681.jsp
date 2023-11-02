
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
    <h3>우즈, 매킬로이, 김주형 참가 TGL리그, 내년 1월 대망의 첫 티샷</h3><h6>주영로  2023. 11. 1. 08:56</h6>
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
<section dmcf-sid="9a9IH1sbN5">
<figure class="figure_frm origin_fig" dmcf-pid="2Ptasho5kZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="(사진=TGL 홈페이지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/Edaily/20231101085603817qdxj.jpg" data-org-width="670" dmcf-mid="K3lJkreWa1" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/Edaily/20231101085603817qdxj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            (사진=TGL 홈페이지)
           </figcaption>
</figure>
<div dmcf-pid="VM0ACvNFgX" dmcf-ptype="general">
           [이데일리 스타in 주영로 기자] 골프팬들의 관심을 끌 새로운 이벤트가 2024년 1월 드디어 첫 티샷을 한다. ‘골프 황제’ 타이거 우즈(미국)와 로리 매킬로이(북아일랜드) 그리고 김주형(22) 등 남자 골프의 정상급 스타들이 내년 1월 스크린 골프에서 샷대결을 한다.
          </div>
<p dmcf-pid="fZEBQezckH" dmcf-ptype="general">AP통신은 우즈와 매킬로이가 합작해 만든 스크린골프 리그 ‘TGL’이 내년 1월 9일 미국 플로리다주 팜비치가든의 소피 센터에서 첫 경기를 치른다고 1일 보도했다.</p>
<p dmcf-pid="40OfJo2mkG" dmcf-ptype="general">같은 기간 미국프로골프(PGA) 투어는 대회가 없지만, 하와이에서 새해 첫 대회로 열리는 더센트리를 끝낸 뒤 소니오픈으로 이어지는 중간에 TGL 첫 경기가 펼쳐진다.</p>
<p dmcf-pid="8c4S10hVjY" dmcf-ptype="general">우즈와 매킬로이는 지난해 8월 스크린골프리그 TGL의 창설을 발표했다. 성격은 단순히 스크린골프로 샷대결을 하는 것에 그치지 않고 ‘스포츠와 엔터테인먼트’를 결합한 형태가 될 것이라는 계획을 밝혔다. </p>
<p dmcf-pid="6DPy3uv8oW" dmcf-ptype="general">1월 대회는 그 시작이며, PGA 투어를 대표해온 톱스타가 대거 출전할 전망이다. </p>
<p dmcf-pid="PZEBQezcgy" dmcf-ptype="general">우즈와 매킬로이가 TGL 리그 창설한 이후 콜린 모리카와, 애덤 스콧, 리키 파울러, 패트릭 캔틀레이 그리고 호주교포 이민우와 한국 선수로는 김주형 등이 함께 하기로 했다. 이날 저스틴 토머스는 애틀랜타 드라이브GC와 계약하며 TGL 합류 소식을 전했다.</p>
<p dmcf-pid="QpI4igVscT" dmcf-ptype="general">대회가 열리는 소피 센터는 2322㎡의 크기로 약 2000명의 관중을 수용할 수 있다. 대회장 내부에는 표준 시뮬레이터 화면의 약 20배 크기인 64피트 x 46피트(19.5m ×14m)의 거대한 시뮬레이터 화면이 설치된다.</p>
<p dmcf-pid="xSLFKf1igv" dmcf-ptype="general">선수들은 티샷과 50야드 이상의 어프로치 샷은 시뮬레이터 안에서 하지만 퍼트는 실제 그린과 비슷하게 만들어진 ‘그린 존’에서 한다. </p>
<p dmcf-pid="yqvxacPlkS" dmcf-ptype="general">TGL은 4명이 한 팀을 이룬 6개 팀으로 운영된다. 5개 팀은 이미 발표됐고 나머지 1개 팀은 조만간 발표될 예정이다.</p>
<p dmcf-pid="WyapV63ool" dmcf-ptype="general">경기는 두 개 팀이 9개홀 포섬과 6개홀 싱글 매치 플레이를 연이어 치르는 방식으로 진행된다. 승리한 팀은 2점, 패한 팀은 점수가 없지만 연장전에서 승패가 결정되면 1점을 받는다.</p>
<p dmcf-pid="YM0ACvNFkh" dmcf-ptype="general">정규 시즌 동안 모든 팀이 맞붙고, 상위 4개 팀이 플레이오프에 진출하는 방식으로 1월 시작해 4월 마스터스가 열리기 끝낸다는 계획이다.</p>
<p dmcf-pid="GRpchTj3NC" dmcf-ptype="general">주영로 (na1872@edaily.co.kr) </p>
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