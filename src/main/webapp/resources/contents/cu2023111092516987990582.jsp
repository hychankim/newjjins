
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
    <h3>대만·한국 전통연주자 한 무대에…국립국악원, 초청 공연</h3><h6>강진아 기자  2023. 11. 1. 09:25</h6>
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
<section dmcf-sid="tOXiB2ZdV9">
<figure class="figure_frm origin_fig" dmcf-pid="F6g3ISat9K" dmcf-ptype="figure">
<p class="link_figure"><img alt="[서울=뉴시스]대만국악단 연주 모습. (사진=국립국악원 제공) 2023.11.01. photo@newsis.com  *재판매 및 DB 금지" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsis/20231101092501762ypti.jpg" data-org-width="720" dmcf-mid="5si5rInXBV" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsis/20231101092501762ypti.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [서울=뉴시스]대만국악단 연주 모습. (사진=국립국악원 제공) 2023.11.01. photo@newsis.com *재판매 및 DB 금지
           </figcaption>
</figure>
<p dmcf-pid="3F2IigVsbb" dmcf-ptype="general">[서울=뉴시스] 강진아 기자 = 한국과 대만 전통 연주자가 한 무대에 올라 양국의 전통음악의 멋을 전한다.</p>
<p dmcf-pid="0aIf53C2KB" dmcf-ptype="general">국립국악원은 대만국립전통예술중심 대만국악단을 초청해 오는 10일과 11일 예악당에서 교류공연 '화이부동(和而不同)'을 개최한다.</p>
<p dmcf-pid="pv3NfP0gqq" dmcf-ptype="general">국립국악원과 대만국립전통예술중심은 2018년 상호 교류공연을 위한 업무협약을 맺고 2018년 대만과 2019년 한국에서 각각 초청 공연을 진행했다. 올해는 코로나19로 지연됐던 교류공연을 재개해 11월엔 대만국악단을 국내로 초청하고 12월엔 국립국악원 창작악단이 대만을 방문한다.</p>
<p dmcf-pid="UCNphTj3Vz" dmcf-ptype="general">지난 두 번의 공연에선 두 단체가 서로의 음악을 연주하거나 협연자를 교류했다면, 올해는 하나의 연주단으로 함께 무대에도 오른다. 첫날은 국립국악원 창작악단과 대만국악단이 합동 공연하며, 다음날은 대만국악단의 단독 연주 무대로 꾸며진다.</p>
<p dmcf-pid="usoFOlg1b7" dmcf-ptype="general">10일에는 린신핀 작곡의 '강원도'를 국악기 피리와 대만의 관즈가 어우러지는 이중 협주곡으로 선보인다. 최지혜 작곡의 '이현'에선 대만의 얼후와 국악기 해금이 한 무대에 올라 비슷한 듯 다른 양국 악기의 매력을 엿볼 수 있다. </p>
<p dmcf-pid="75C410hVVu" dmcf-ptype="general">마지막 곡인 홍치엔후이 작곡의 'Vive les Percussions!'은 대만국악단이 한국 공연을 위해 위촉한 곡이다. 한국의 사물놀이와 대만의 전통 타악기가 어우러지며 다양한 박자와 리드미컬한 연주를 들려준다.<br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="z3vQ07T69U" dmcf-ptype="figure">
<p class="link_figure"><img alt="[서울=뉴시스]국립국악원 창작악단 연주 모습. (사진=국립국악원 제공) 2023.11.01. photo@newsis.com *재판매 및 DB 금지" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsis/20231101092501943wjln.jpg" data-org-width="720" dmcf-mid="1lEqyHD7b2" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsis/20231101092501943wjln.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [서울=뉴시스]국립국악원 창작악단 연주 모습. (사진=국립국악원 제공) 2023.11.01. photo@newsis.com *재판매 및 DB 금지
           </figcaption>
</figure>
<p dmcf-pid="qIa0CvNFbp" dmcf-ptype="general">11일은 대만국악단의 대표작들이 연주된다. 대만 산지의 차를 수확하고 운반하는 자연을 묘사한 옌민취 작곡의 '로이 실 차', 말레이시아와 인도네시아 등 다문화적 요소를 수용한 싱가포르의 다양성을 그린 왕천웨이 작곡의 '융합', 대만 군대와 민속 문화 행진을 소재로 한 루윤 작곡의 '진' 등으로 대만의 전통 관현악을 즐길 수 있다.</p>
<p dmcf-pid="BuYe7bGMK0" dmcf-ptype="general">또 한국의 본조 아리랑과 강원도 아리랑을 중심으로 한 이채이 작곡의 '코리아 판타지'에서는 해금과 유사한 악기 주후가 협연한다. 황춘다 작곡의 '환생'에서는 코로나19 이후 회복하는 다채로운 생명력을 생황 협주곡으로 그려낸다.</p>
<p dmcf-pid="bHs2XtOKB3" dmcf-ptype="general">지휘는 대만국악단 음악감독이자 지휘자인 치앙 칭포가 맡는다. 치앙 칭포는 2015년부터 2017년까지 그리스 대표 오케스트라 테살로니키 국립심포니오케스트라 수석 객원지휘자로 활동했고, 2020년 8월 대만국악단 음악감독으로 취임했다.</p>
<p dmcf-pid="K7GdzKHRVF" dmcf-ptype="general"><span>☞공감언론 뉴시스</span> akang@newsis.com </p>
</section>
</div></p></section></div><h6>[Source : 뉴시스]</h6></div>
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