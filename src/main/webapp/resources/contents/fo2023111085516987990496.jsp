
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
    <h3>하마스 "수일 내 외국인 포로 석방"…이스라엘인 석방은 거부</h3><h6>이현우  2023. 11. 1. 08:55</h6>
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
<section dmcf-sid="1T7hZFI9uR">
<p dmcf-pid="twXchTj37M" dmcf-ptype="general">이스라엘과 교전 중인 팔레스타인 무장정파 하마스가 수일 내로 외국인 국적 인질들을 석방할 계획이라고 밝히면서 배경에 관심이 집중되고 있다. 이스라엘 지상군이 가자지구에 진입, 중심도시인 가자시티에 대한 포위전에 나서면서 이스라엘 이외 국적 인질들에 대한 협상속도를 높인 것으로 풀이된다. 일각에서는 하마스가 인질을 방패삼아 시가전 준비를 위한 시간끌기에 나선 것이란 비판도 제기되고 있다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="FHKy3uv8px" dmcf-ptype="figure">
<p class="link_figure"><img alt="[이미지출처=UPI연합뉴스]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/akn/20231101085514513dpro.jpg" data-org-width="745" dmcf-mid="5lAVdL9r0e" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/akn/20231101085514513dpro.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [이미지출처=UPI연합뉴스]
           </figcaption>
</figure>
<p dmcf-pid="3EGjISatpQ" dmcf-ptype="general">31일(현지시간) 타임스오브이스라엘에 따르면 아부 우바이다 하마스 대변인은 이날 텔레그램 계정을 통해 올린 공개 영상 성명을 통해 "앞으로 며칠 내에 일정 수의 외국인 포로를 석방할 것"이라며 "이는 일부 국가들과의 중재 협상의 결과"라고 밝혔다. 그러나 이스라엘인 포로 석방은 없다고 선을 그었다. 우바이다 대변인은 "가자지구를 조만간 이스라엘군의 무덤으로 만들겠다"고 경고했다.</p>
<p dmcf-pid="01fHuBYx3P" dmcf-ptype="general">전날 이스라엘 방위군(IDF)이 발표한 오리 메기디쉬 이병 구출에 대해서도 "이스라엘군이 우리에게서 구출한 인질이 아니다"라며 당초 자신들이 억류한 인질이 아니라고 주장했다. 하마스는 전체 인질 중에 약 50명 정도는 하마스가 아닌 다른 팔레스타인 무장조직들이 억류하고 있다고 주장 중이다. </p>
<p dmcf-pid="pSUIH1sb36" dmcf-ptype="general">이스라엘측은 이스라엘인 인질에 대해서도 즉각적인 석방에 나서라고 압력을 가하고 있지만 하마스측은 이를 거부하고 있다. 타임스오브이스라엘은 "이스라엘 방위군(IDF)이 가자지구에서 지상전 작전을 시행하면서 하마스는 이스라엘과 동맹간 분열을 일으키고 이스라엘 내 전쟁결의를 약화시키고자 다양한 심리적 기법을 쓰면서 시간끌기에 나서고 있다"고 강도높게 비판했다. </p>
<p dmcf-pid="Ut4X7bGMU8" dmcf-ptype="general">이스라엘 당국은 아직 하마스와 가자지구 무장조직들에 억류된 인질이 240명 정도 있는 것으로 파악하고 있다. 지난 7일 하마스에 끌려간 인원 245명 중 4명은 석방됐고 1명은 지상작전을 통해 구출해 240명이 남았다는 것이다. </p>
<p dmcf-pid="uX9W07T6z4" dmcf-ptype="general">한편 자국민이 인질로 붙잡혀있는 각국 정부는 카타르를 비롯한 중동국가들의 중재를 통해 하마스와 인질 협상을 진행 중으로 알려졌다. 하마스는 인질협상 대가를 각국에 요구하며 자금확보에 나서고 있다는 비판도 받고 있다. </p>
<p dmcf-pid="7PcfJo2mzf" dmcf-ptype="general">이현우 기자 knos84@asiae.co.kr</p>
</section>
</div></p></section></div><h6>[Source : 아시아경제]</h6></div>
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