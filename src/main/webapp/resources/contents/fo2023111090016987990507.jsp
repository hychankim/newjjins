
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
    <h3>이스라엘 대통령 "가자 민간인 희생 줄여야"... 하마스 제거 의지 재확인</h3><h6>조아름  2023. 11. 1. 09:00</h6>
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
<section dmcf-sid="ZNDspzyPXN">
<figure class="figure_frm origin_fig" dmcf-pid="5GtpdL9rta" dmcf-ptype="figure">
<p class="link_figure"><img alt="지난달 30일 이스라엘의 가자지구 공습으로 다친 팔레스타인 소녀가 가자지구 라파의 한 병원에서 치료를 기다리고 있다. 라파=AP 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101090016740nbrh.jpg" data-org-width="640" dmcf-mid="XwUqoj8Ctj" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101090016740nbrh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            지난달 30일 이스라엘의 가자지구 공습으로 다친 팔레스타인 소녀가 가자지구 라파의 한 병원에서 치료를 기다리고 있다. 라파=AP 연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="1HFUJo2mXg" dmcf-ptype="general">이츠하크 헤르조그 이스라엘 대통령이 "가자지구에서 민간인 사상자를 줄이는 데 집중하고 있다"며 자국의 군사 작전을 옹호했다. 팔레스타인 무장 정파 하마스의 기반을 파괴해야 한다는 이스라엘 정부의 입장도 재확인했다.</p>
<p dmcf-pid="tITGfP0g5o" dmcf-ptype="general">헤르조그 대통령은 31일(현지시간) 영국 BBC와 인터뷰에서 가자지구에서 발생한 8,000명 이상의 사망자 가운데 여성과 어린이가 70％에 달한다는 유엔 보고에 대한 질문에 "아무도 그들이 대가를 치르길 원하지 않는다"며 이렇게 답했다. 그는 "충격적 잔학 행위를 저지른 끔찍한 적과 싸우고 있다"면서 하마스의 기반 시설을 파괴할 거란 이스라엘의 입장을 재확인했다.</p>
<p dmcf-pid="FCyH4QpaHL" dmcf-ptype="general">200명 이상의 인질 구출이 이스라엘과 국제사회의 최우선 과제라고도 했다. 다만 카타르가 중재하는 협상에서 이스라엘이 고려할 가치가 있는 제안은 받지 못했다고 밝혔다. 카타르는 이스라엘과 하마스 사이 중재자를 자처하며 하마스의 인질 석방 과정에서 역할을 했다. 헤르조그 대통령은 인질 가족과의 만남이 "내 인생에서 가장 어려웠던 만남"이었다며 "이스라엘 국민은 전례 없이 깊은 고통에 빠져 애도하고 있다"고 말했다. </p>
<p dmcf-pid="3Z07nafO1n" dmcf-ptype="general">그는 이스라엘이 가자지구 남부를 폭격하고 있다는 의혹을 부인했다. 가자지구 남부는 앞서 이스라엘이 가자지구 주민들에게 북부를 떠나 피란을 가라고 말한 곳이다. 유엔은 가자 남부의 피란민이 100만명을 넘는다고 보고 있다. 헤르조그 대통령은 "남쪽의 안전 지대는 진정한 안전 지대"라며 "국제법에 따라 사람들에게 안전 지대로 이동하라고 요청하고 경고했으며 이동을 돕고 있다"고 주장했다. </p>
<p dmcf-pid="05pzLN4IXi" dmcf-ptype="general">병원 근처 폭격에 대해서는 "병원 자체를 겨냥하지는 않을 것"이라고 말했다. 앞서 팔레스타인 적신월사는 지난달 29일 이스라엘군이 가자지구 알쿠드스 병원 바로 옆을 직접 공습했다며 "의료진과 피란민, 환자들이 병원을 떠나게 하려는 목적"이라고 비난했다.</p>
<p dmcf-pid="p1Uqoj8C1J" dmcf-ptype="general">조아름 기자 archo1206@hankookilbo.com</p>
</section>
</div></p></section></div><h6>[Source : 한국일보]</h6></div>
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