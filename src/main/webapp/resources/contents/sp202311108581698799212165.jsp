
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
    <h3>2024 강원 동계 청소년 올림픽 성화, 청소년들에게 올림픽 정신 전파</h3><h6>조영준 기자  2023. 11. 1. 08:58</h6>
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
<section dmcf-sid="GxzklyA0h1">
<figure class="figure_frm origin_fig" dmcf-pid="H91nDsJGS5" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 제주특별자치도에서 강원 2024 성화 점화 행사가 진행됐다. ⓒ2024 강원 동계 청소년 올림픽 조직위" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101085854463eajn.jpg" data-org-width="900" dmcf-mid="WGHeADMTTF" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101085854463eajn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 제주특별자치도에서 강원 2024 성화 점화 행사가 진행됐다. ⓒ2024 강원 동계 청소년 올림픽 조직위
           </figcaption>
</figure>
<p dmcf-pid="XHmbxdqkyZ" dmcf-ptype="general">[스포티비뉴스=조영준 기자] 2024 강원 동계청소년올림픽대회(이하 강원 2024) 성화가 제주 청소년들의 열렬한 환호 속에 네 번째 점화 행사를 가졌다. </p>
<p dmcf-pid="ZXsKMJBEyX" dmcf-ptype="general">지난달 28일 제주시민복지타운광장에서 열린 제8회 청소년동아리문화올림픽 개막식의 하이라이트는 강원 2024 성화 도착과 점화였다. </p>
<p dmcf-pid="5ZO9RibDTH" dmcf-ptype="general">진종오 강원 2024 조직위 공동위원장이 들고 입장한 성화 램프를 김희현 제주특별자치도 정무부지사와 오경규 제주특별자치도 교육청 교육국장이 거치대에 안치됐다. </p>
<p dmcf-pid="1nVOG5mBlG" dmcf-ptype="general">이어서 고문화 제주도체육회 부회장, 제주남녕고 유도 이현지, 제주 힙합동아리 '버프' 임재연, 제주 청소년참여위원회 강시연 위원을 거쳐 제주에서 강원 2024 청소년 서포터즈로 활약 중인 김현지에게 전달됐다. </p>
<p dmcf-pid="tLfIH1sbTY" dmcf-ptype="general">모든 점화자가 모여 성화를 점화하는 순간 무대 위 LED에서도 청소년의 도전을 응원하는 영상이 상영되며 성화를 더욱 돋보이게 했다. 김희현 정무부지사를 비롯 오경규 제주특별자치도 교육청 교육국장 등 여러 내빈과 강옥련 청소년활동진흥센터장이 동아리 청소년들, 시민 3,000여 명과 점화의 현장에 함께 했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Fo4CXtOKTW" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 제주특별자치도에서 강원 2024 성화 점화 행사가 진행됐다. ⓒ2024 강원 동계 청소년 올림픽 조직위원회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101085856058nbaq.jpg" data-org-width="900" dmcf-mid="YFsKMJBElt" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101085856058nbaq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 제주특별자치도에서 강원 2024 성화 점화 행사가 진행됐다. ⓒ2024 강원 동계 청소년 올림픽 조직위원회
           </figcaption>
</figure>
<p dmcf-pid="3lj028FLTy" dmcf-ptype="general">행사상 주변에는 청소년동아리 문화공연, 동아리 체험 플레이존이 운영되었고, 특히 2018 평창기념재단에서 준비한 스키, 컬링, 아이스하키 등 동계스포츠존은 하루 종일 많은 학생들로 북적였다. 마스코트 뭉초 키링 제작·스티커 배부 등의 이벤트에도 긴 줄이 늘어섰다. </p>
<p dmcf-pid="0SApV63olT" dmcf-ptype="general">점화식에 참여한 대회 청소년 서포터즈 김현지는 "동계 스포츠를 접하기 어려운 제주도에서 강원 2024 대회를 열심히 알리고 있다"면서 "스포츠뿐만 아니라 힙합, 오케스트라, 봉사 등 여러 분야의 제주 청소년들이 오늘 한 자리에 모여서 대회를 응원하고 있다는 점을 꼭 알려달라"고 환하게 웃었다. </p>
<p dmcf-pid="pvcUfP0gSv" dmcf-ptype="general">진종오 위원장은 "강원 2024 성화를 환영해 준 제주 청소년들이 꼭 대회 기간에 방문해 주기를 바란다"며 감사함을 표했다. </p>
<p dmcf-pid="UCpNOlg1lS" dmcf-ptype="general">한편 강원 2024 성화는 지난 10월 3일 그리스에서 채화했다. 10월 8일 인천국제공항을 통해 입국하였고 대회 개최 100일을 앞둔 10월 11일, 서울광장을 출발해 총 80일간의 투어 대장정에 돌입했다. </p>
<p dmcf-pid="uhUjISatCl" dmcf-ptype="general">제주를 떠난 성화는 광주광역시로 향한다. 11월 4일에 5·18 민주광장에서 역시 지역 청소년들과 함께 하는 축제를 펼칠 예정이다. 11월 6일에는 대회가 열리는 강원특별자치도에 도착해 18개 시·군을 순회하며 청소년들을 만난다.</p>
<p dmcf-pid="7luACvNFWh" dmcf-ptype="general">&lt;저작권자 ⓒ SPOTV NEWS. 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 스포티비뉴스]</h6></div>
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