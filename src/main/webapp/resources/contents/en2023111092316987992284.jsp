
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
    <h3>김다영 "철업디가 가장 먼저 생일선물 보내줘", 김영철 "미역국 보냈는데 미담이 안 퍼져" (철파엠)</h3><h6>이연실  2023. 11. 1. 09:23</h6>
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
<section dmcf-sid="8VViB2ZdR6">
<div dmcf-pid="644LKf1ii8" dmcf-ptype="general">
<p>'김영철의 파워FM'에 SBS 아나운서 김다영이 출연했다. <br/><br type="_moz"/></p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="PQQNfP0gJ4" dmcf-ptype="figure">
<p class="link_figure"><img alt="iMBC 연예뉴스 사진" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/iMBC/20231101092329995ieui.jpg" data-org-width="1142" dmcf-mid="4Yt9H1sbMP" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/iMBC/20231101092329995ieui.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            iMBC 연예뉴스 사진
           </figcaption>
</figure>
<div dmcf-pid="Qhh1mCLZef" dmcf-ptype="general">
<br/>
<p>1일(수) 방송된 SBS 파워FM '김영철의 파워FM'에서는 아나운서 김다영이 '직장인 탐구생활' 코너에서 직장인 트렌드를 소개했다. </p>
</div>
<div dmcf-pid="xvv3ISatiV" dmcf-ptype="general">
<p>이날 DJ 김영철이 "김다영 아나운서, 후배 들어오지 않았냐? 선배가 된 기분 어떻냐?"라는 한 청취자의 질문을 소개하며 "후배 아나운서가 남자냐?"라고 묻자 김다영이 "그렇다. 8월에 김현진 아나운서가 입사했다. 단독으로 들어왔다"라고 답했다. </p>
</div>
<div dmcf-pid="yjjhLN4IJ2" dmcf-ptype="general">
<p>이어 김영철이 "단둘이 밥을 먹은 적 있냐?"라고 묻자 김다영이 "있다. 첫밥을 사줘야 하는데 그날 비가 진짜 많이 왔다. 나가서 먹기 귀찮기는 했는데 첫밥을 구내식당에서 먹기는 좀 그래서 나가서 맛있는 베트남 음식을 4개 시켜서 다 먹었다"라고 설명했다. </p>
</div>
<div dmcf-pid="WIIZwOiHi9" dmcf-ptype="general">
<p>"김다영 아나운서, 풀메하고 어디에 가시냐? 너무 예쁘다"라는 한 청취자의 질문에 김다영은 "감사하다. 내일 SDF, SBS D포럼이라고 1년에 한 번 지식강연 프로그램 하는 게 있다. 오후 MC를 맡아서 오늘 리허설을 하러 간다. 바로 출발해야 해서 의상까지 입고 왔다"라고 밝혔다. </p>
</div>
<div dmcf-pid="YRRc6MujeK" dmcf-ptype="general">
<p>김영철이 "다영 아나, 생일은 누구와 보냈냐?"라는 한 청취자의 질문을 소개하며 "이틀 전이 생일이었다. 저는 어제인 줄 헷갈렸다"라고 말하자 김다영이 "주말에는 친구랑 가족들이랑 보냈는데 생일 당일은 월요일이어서 스케줄이 많았다. 15시간 그냥 일을 하면서 보냈다. 행복했다"라고 답했다. </p>
</div>
<div dmcf-pid="GnnrRibDdb" dmcf-ptype="general">
<p>"누가 미역국을 보내지 않았냐?"라는 김영철의 질문에 김다영이 "철업디가 가장 먼저 선물을 보내준 사람이었다. 제가 얘기를 했어야 했는데"라고 응수해 웃음을 자아냈고, 김영철이 "이런 얘기를 자연스럽게 해주셔야 하는데. 제가 왜 왼손이 한 일을 오른발 네번째 발가락까지 알게 하는지 이제 아시겠냐? 미담이 안 퍼진다. 이인권 아나운서한테도 생일 때 미역국을 선물했는데 소문이 안 퍼진다. SBS 아나운서들 특징이냐?"라고 호소해 또 웃음이 터졌다. </p>
</div>
<div dmcf-pid="HJJDxdqkRB" dmcf-ptype="general">
<p>이후 김다영은 직장인 트렌드 키워드로 'K직장인들의 월평균 야근 횟수'를 언급하며 "우리 K직장인들은 월평균 5.1회 야근을 하는 것으로 나타났다. 한 번 야근할 때 가장 길게 일하는 직무는 IT개발 분야라고 한다"라고 전했다. </p>
</div>
<div dmcf-pid="XggOJo2mMq" dmcf-ptype="general">
<p>이에 김영철이 "다영 아나도 야근을 가끔 하시냐?"라고 묻자 김다영은 "저는 기본 근무가 야근이기 때문에 밤에 출근한다. 오히려 '철파엠' 있을 때 일찍 나오는 조근이 저한테는 야근이라고 할 수 있다. 저는 오늘 야근 같은 조근을 한다"라고 설명했다. </p>
</div>
<div dmcf-pid="Z77P3uv8Lz" dmcf-ptype="general">
<p>'김영철의 파워FM'은 매일 오전 7시부터 9시까지 SBS 파워FM에서 방송되며, PC 및 스마트폰 애플리케이션 'SBS 고릴라'를 통해서도 들을 수 있다.</p>
</div>
<p dmcf-pid="5hh1mCLZe7" dmcf-ptype="general">iMBC 이연실 | 화면캡쳐 보이는라디오</p>
</section>
</div></p></section></div><h6>[Source : MBC연예]</h6></div>
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