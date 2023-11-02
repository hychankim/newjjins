
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
    <h3>“오르막길도 거뜬”...전기자전거 ‘운동’ 효과 있을까?</h3><h6>최지혜  2023. 11. 1. 06:06</h6>
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
<section dmcf-sid="PJa7fExvqb">
<figure class="figure_frm origin_fig" dmcf-pid="QgkKQsJGBB" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진=게티이미지뱅크]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/KorMedi/20231101060631635hokk.jpg" data-org-width="700" dmcf-mid="6OqOWV5JqK" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/KorMedi/20231101060631635hokk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진=게티이미지뱅크]
           </figcaption>
</figure>
<p dmcf-pid="xsSRaGEuKq" dmcf-ptype="general">11월의 첫날인 오늘은 늦가을치고 포근할 것으로 보인다. 기상청에 따르면 평년보다 최대 6도 높을 전망이다. 아침 최저기온은 5∼17도, 낮 최고기온은 19∼25도로 예보됐다. 미세먼지 농도는 전 권역이 '좋음'~'보통' 수준으로 예상된다. </p>
<p dmcf-pid="ySGLEtOKbz" dmcf-ptype="general"><strong>오늘의 건강=</strong> 전기자전거의 인기가 나날이 늘고 있다. 출퇴근뿐만 아니라 주말 나들이, 장보기 등 일상 곳곳에 전기자전거를 애용하는 것이다. 먼 거리도 부담없이 이동 가능하고 높은 오르막길도 거뜬히 오를 수 있다는 이유에서다. 한국스마트이모빌리티협회(KEMA)에 따르면 작년 국내 전기자전거 판매량은 10만7000대로 2018년(2만4000대) 대비 약 346% 성장했다. 전기자전거, '진짜' 운동 효과 있을까? </p>
<p dmcf-pid="WTXgw3C227" dmcf-ptype="general">일반적으로 전기자전거는 모터 구동방식에 따라 종류가 나뉜다. 페달을 밟으면 모터가 구동하는 파스(PAS)방식, 페달을 밟지 않고 스로틀(Throttle)을 조작하는 스로틀방식, 이 두 방식이 탑재된 파스-스로틀 겸용 방식으로 구분된다. 어떤 방식이든 전기자전거를 탈 때는 근육이 쓰인다. 파스방식 전기자전거는 일반자전거보단 힘이 덜 들 순 있지만 페달을 밟을 때 엉덩이, 허벅지 등 근육이 사용된다. 페달을 밟지 않더라도 핸들을 잡고 균형을 잡을 때 어깨, 팔 등 몸 곳곳의 근육이 쓰인다. </p>
<p dmcf-pid="YGtAOuv8fu" dmcf-ptype="general">실제 미국의 중년 여성 론다 마틴(Rhonda Martin)은 과거 몸무게가 207kg에 달했으나 전기자전거를 타며 127kg 감량에 성공했다. 물론 론다의 다이어트에는 전기자전거 외에도 다양한 요인이 작용했겠지만, 그는 전기자전거가 운동에 큰 동기부여가 됐다고 밝혔다. 걸을 때보다 이동이 더 자유롭고, 칼로리도 소모하고 사람들과 어울릴 때도 자신감을 되찾았다는 것이다. </p>
<p dmcf-pid="GQJFBafOBU" dmcf-ptype="general">전기자전거가 일반자전거보다 덜 피로하게 장거리 주행을 할 수 있는 점도 신체 활동량을 늘리는 데 도움준다는 영국의 한 연구 결과가 있다. 체력이 약한 이들도 활동적으로 야외활동을 할 수 있는 기회가 자연스럽게 느는 것이다. 2019년 진행된 또다른 연구에서는 전기자전거가 정신을 맑게 하는 데 이로운 것으로 나타났다. 미국 공공과학 도서관 온라인 학술지 《플러스원(PLoSOne)》에 발표된 한 연구에 따르면 50~83세 성인 100명을 조사한 결과, 전기자전거 등으로 사이클링 운동을 규칙적으로 한 사람들은 그렇지 않은 이들보다 정신 건강, 인지 기능 등에 긍정적인 효과가 있었다. </p>
<p dmcf-pid="HRLp9A6hfp" dmcf-ptype="general">안전장비 착용은 필수다. 전기자전거는 적은 힘으로도 빠른 속도를 낼 수 있어 사고 위험이 크다. 헬멧을 비롯 손목 및 무릎보호대 등으로 혹시 모를 부상을 최소화해야 한다. 헬맷은 충격에 강해 머리를 보호할 수 있고 가벼운 무게로 운동을 방해하지 않는 제품을 고르는 것이 좋다. 헬멧 안에 모자나 헤드폰, 두건을 쓰면 헬멧이 잘 벗겨져 다칠 수 있어 주의해야 한다. </p>
<p dmcf-pid="XDIPnTj390" dmcf-ptype="general">한편 해외에서는 전기자전거 배터리 폭발 화재 사고가 꾸준히 늘고 있다. 뉴욕타임스는 전기자전거 화재로 사망한 인원이 2019년 5명, 2022년 9명, 올해는 9월 기준 14명으로 늘고 있다고 보도했다. 화재 원인은 미인증 리튬이온 배터리로 나타났다. 지난 4일 시드니모닝헤럴드 등 외신에 따르면 시드니의 한 호스텔 객실에서 리튬이온 배터리 폭발 사고가 있었다. 복도 CCTV 영상에는 배터리가 터지면서 방이 화염에 휩싸이는 모습이 담겼다. 시드니 소방 당국은 호스텔 방 안에서 충전 중이던 리튬이온 배터리가 폭발해 화재가 발생한 것으로 보고 있다.</p>
<p dmcf-pid="ZvHoDFI923" dmcf-ptype="general">최지혜 기자 (jhchoi@kormedi.com)</p>
</section>
</div></p></section></div><h6>[Source : 코메디닷컴]</h6></div>
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