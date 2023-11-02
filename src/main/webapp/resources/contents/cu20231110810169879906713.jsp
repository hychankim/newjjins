
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
    <h3>11월의 시작, 일교차 크고 바람 약간 강해</h3><h6>유하경 기상캐스터  2023. 11. 1. 08:10</h6>
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
<section dmcf-sid="ZypTEmdY98">
<div class="video_frm" dmcf-pid="5G7YrInXq4" dmcf-ptype="embed">
<div class="layer_vod">
<div class="vod_player">
<iframe allowfullscreen="" class="player_iframe" dmcf-mid="HJyNQezcqP" dmcf-mtype="video/youtube" frameborder="0" height="370" id="video@HJyNQezcqP" scrolling="no" src="https://www.youtube.com/embed/stVLd1ISj28?origin=https://v.daum.net&amp;enablejsapi=1&amp;playsinline=1" width="100%"></iframe>
</div>
</div>
</div>
<p dmcf-pid="1OXsoj8C9f" dmcf-ptype="general">이제 2023년 달력이 두 장 남았습니다.</p>
<p dmcf-pid="tHzGmCLZfV" dmcf-ptype="general">올해의 막바지로 갈수록 바람도 좀 더 차가워지는데요.</p>
<p dmcf-pid="FypTEmdY92" dmcf-ptype="general">특히 오늘은 경북북부동해안과 경북북동산지를 중심으로 바람이 강하게 불겠습니다.</p>
<p dmcf-pid="3Vi2FUS4b9" dmcf-ptype="general">오늘 밤까지 순간풍속 55km/h 내외, 산지는 70km/h의 강풍이 예상되고요.</p>
<p dmcf-pid="0T0vkreWbK" dmcf-ptype="general">대구와 그 밖의 경북지역도 바람이 약간 강하겠습니다.</p>
<p dmcf-pid="piwJ28FL2b" dmcf-ptype="general">아침에 안개가 끼면 날이 맑다는 말이 있죠.</p>
<p dmcf-pid="UxjQzKHRbB" dmcf-ptype="general">오늘도 아침에는 경북 내륙을 중심으로 가시거리 1km 미만의 안개가 끼어있고요.</p>
<p dmcf-pid="uxjQzKHR9q" dmcf-ptype="general">낮에는 청명하고 맑은 날씨 속 일교차가 크겠습니다.</p>
<p dmcf-pid="7C5IacPlKz" dmcf-ptype="general">대구의 아침 기온 7도로 시작해 낮에는 25도까지 올라 일교차가 18도가량 벌어지겠고요.</p>
<p dmcf-pid="zwWDJo2mV7" dmcf-ptype="general">김천과 성주 등 일부 지역에서는 낮과 밤의 기온차가 20도 이상 커지겠습니다.</p>
<p dmcf-pid="qmGrnafOfu" dmcf-ptype="general">위성영상입니다. 오늘 전국적으로 제주도남쪽해상에 위치한 고기압의 영향을 받겠습니다.</p>
<p dmcf-pid="BaIg6Muj9U" dmcf-ptype="general">자세한 지역별 날씨 보시면 오늘 우리 지역 날씨 맑겠고요.</p>
<p dmcf-pid="bVi2FUS4Bp" dmcf-ptype="general">미세먼지 농도는 ‘보통’ 수준 예상됩니다. </p>
<p dmcf-pid="KF2tlyA0B0" dmcf-ptype="general">바다의 물결은 0.5m에서 최고 1.5m로 잔잔하게 일겠습니다.</p>
<p dmcf-pid="9Pa6uBYxb3" dmcf-ptype="general">오늘 아침 대구의 기온 7도, 구미 6도 가리키고 있습니다.</p>
<p dmcf-pid="22J9tplfBF" dmcf-ptype="general">낮에는 대구 25도, 구미 24도로 일교차가 매우 크겠습니다.</p>
<p dmcf-pid="VdEeKf1ift" dmcf-ptype="general">안동의 현재 기온 6도, 영주 5도로 시작하고요.</p>
<p dmcf-pid="fkvcRibD91" dmcf-ptype="general">낮 기온은 안동 22도, 영주 21도까지 오르겠습니다.</p>
<p dmcf-pid="42J9tplfV5" dmcf-ptype="general">오늘 포항의 기온은 13도, 낮 기온은 25도 예상됩니다.</p>
<p dmcf-pid="8fnV3uv8KZ" dmcf-ptype="general">내일 새벽까지 동해안에는 바람이 강하고 물결이 약간 높게 일겠습니다.</p>
<p dmcf-pid="6Pa6uBYxBX" dmcf-ptype="general">금요일까지 평년 기온 웃돌며 일교차 큰 맑은 날씨가 이어지겠고요.</p>
<p dmcf-pid="PC5IacPlbH" dmcf-ptype="general">주말에는 기압골의 영향으로 비가 내릴 전망입니다.</p>
<p dmcf-pid="QSFlADMT2G" dmcf-ptype="general">날씨였습니다.</p>
</section>
</div></p></section></div><h6>[Source : 대구MBC]</h6></div>
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