
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
    <h3>고속도로 문화재 1호 ‘대전육교’, 아치교의 아름다움 살린 명품 관광자원으로 개발된다</h3><h6>윤희일 기자  2023. 11. 1. 09:26</h6>
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
<section dmcf-sid="7YqJq9Xevt">
<figure class="figure_frm origin_fig" dmcf-pid="zJm1mCLZh1" dmcf-ptype="figure">
<p class="link_figure"><img alt="고속도로 1호 문화재 ‘대전육교’. 대전시 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/khan/20231101092634425djtd.jpg" data-org-width="700" dmcf-mid="uJstsho5yF" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/khan/20231101092634425djtd.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            고속도로 1호 문화재 ‘대전육교’. 대전시 제공
           </figcaption>
</figure>
<p dmcf-pid="qLI3ISatW5" dmcf-ptype="general">대전 대덕구 비래동에 가면 아치 형태의 대형 교량을 볼 수 있다. 1969년에 경부고속도로 일부로 건설된 ‘대전육교’다. 길이 201ｍ, 폭 21.4m, 높이 35ｍ 규모인 이 육교는 1970년 경부고속도로의 개통과 함께 대전시 대덕구 회덕동에서부터 옥천군 군북면 증약리까지를 연결하면서 국가발전의 중추 역할을 했다. 이후 교량의 노후화로 안전 문제가 우려되는 데다 경부고속도로를 확장하는 과정에서 노선이 변경되고 새로운 교량이 개통하면서 1999년 완전히 폐쇄됐다. 이후 지금까지 별다른 용도 없이 방치됐다.</p>
<p dmcf-pid="BoC0CvNFSZ" dmcf-ptype="general">2020년 6월에는 근대 산업화와 관련된 상징성이 높고 아치 교량으로서 우수한 건축미를 갖고 있다는 점을 인정받아 고속도로 1호 문화재(국가등록문화재 제783호)로 지정됐다.</p>
<p dmcf-pid="bghphTj3CX" dmcf-ptype="general">대전시가 방치된 이 ‘대전육교’를 명품 관광자원으로 다시 살리는 사업에 나서기로 했다.</p>
<p dmcf-pid="KvUMUqWQWH" dmcf-ptype="general">시는 대전육교 일원을 관광자원으로 활용하기 위해 ‘대전육교 일원 관광 자원화 공간디자인 용역’을 추진한다고 1일 밝혔다.</p>
<p dmcf-pid="9TuRuBYxCG" dmcf-ptype="general">시는 대전육교가 가진 우수한 건축미를 최대한 살릴 수 있는 공간디자인을 통해 이 육교가 사람을 불러모으는 새로운 관광자원이 될 수 있도록 한다는 구상을 하고 있다.</p>
<p dmcf-pid="2y7e7bGMhY" dmcf-ptype="general">시는 이 용역을 통해 2024년 5월까지 대전육교 일원에 대한 관광 자원화 마스터플랜을 수립하고 2025년 8월까지 기본 및 실시설계 용역을 거쳐 9월부터 본격적인 공사에 들어가기로 했다. 이 사업에는 약 1억9000만원의 사업비가 투입된다.</p>
<p dmcf-pid="V52g28FLCW" dmcf-ptype="general">이장우 대전시장은 지방선거 당시 대전육교를 명품 관광 자원으로 개발하겠다는 공약을 낸 바 있다. 육교의 상부에 계족산과 대전 야경을 조망할 수 있는 산책로와 전망대를 만들고, 하부에는 보행 경관로를 조성하는 것이 주요 내용이다.</p>
<p dmcf-pid="f1VaV63ovy" dmcf-ptype="general">박승원 대전시 관광진흥과장은 “방치되고 있는 대전육교에 획기적인 공간디자인을 입혀 대전의 새로운 명품 관광자원으로 만들겠다”고 말했다.</p>
<p dmcf-pid="4tfNfP0gTT" dmcf-ptype="general">윤희일 선임기자 yhi@kyunghyang.com</p>
</section>
</div></p></section></div><h6>[Source : 경향신문]</h6></div>
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