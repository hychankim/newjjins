
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
    <h3>엔비디아, 칩 제작 돕는 AI 챗봇 공개</h3><h6>김미정 기자  2023. 11. 1. 08:57</h6>
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
<section dmcf-sid="bfeGUqWQzB">
<p dmcf-pid="KRa394tnpq" dmcf-ptype="general">(지디넷코리아=김미정 기자)엔비디아가 반도체 설계를 돕는 인공지능(AI) 챗봇을 공개했다.</p>
<p dmcf-pid="9icu4Qpa0z" dmcf-ptype="general">벤처비트는 30일(현지시간) 엔비디아가 'CAD국제회의'에서 반도체 제작 과정을 최적화하고 설계 과정을 지원하는 AI 챗봇 '칩니모'를 공개했다고 보도했다. 30년간 수집한 내부 데이터로 거대언어모델(LLM)을 훈련해 반도체 제작 노하우를 알려주는 셈이다.  </p>
<p dmcf-pid="2Dl8nafOz7" dmcf-ptype="general">엔비디아는 칩니모를 모든 반도체 설계 단계에 적용할 수 있다고 강조했다. 사용자가 GPU 아키텍처와 설계 과정 중 질문하면, 칩니모는 이를 해결할 수 있는 기술적인 방안으로 답변한다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Vjs9RibD7u" dmcf-ptype="figure">
<p class="link_figure"><img alt="엔비디아가 '니모' 프레임워크로 반도체 제작 과정을 지원하는 AI 챗봇을 공개했다. (사진=엔비디아)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ZDNetKorea/20231101085706426pzbh.png" data-org-width="640" dmcf-mid="qbN028FL7K" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ZDNetKorea/20231101085706426pzbh.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            엔비디아가 '니모' 프레임워크로 반도체 제작 과정을 지원하는 AI 챗봇을 공개했다. (사진=엔비디아)
           </figcaption>
</figure>
<p dmcf-pid="fxotbV5JuU" dmcf-ptype="general">코드 생성기 역할도 한다. 칩 설계용 전문 언어 '베릴로그'나 'VHDL'을 통해 최대 20줄에 달하는 소프트웨어 코드를 한번에 생성할 수 있다. 칩니모는 반도체 제작에 필요한 데이터 분석도 스스로 할 수 있다.  </p>
<p dmcf-pid="4eN028FL0p" dmcf-ptype="general">연구진은 파운데이션 모델 기반으로 칩니모를 구축했다는 입장이다. 파운데이션 모델을 선택한 후 1조개가 넘는 토큰, 텍스트, 소프트웨어 단어, 기호를 사용해 사전 훈련했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="81zESWcpu0" dmcf-ptype="figure">
<p class="link_figure"><img alt="칩니모 개선 과정. (사진=엔비디아)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ZDNetKorea/20231101085707751ffqe.png" data-org-width="638" dmcf-mid="BzFgmCLZub" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ZDNetKorea/20231101085707751ffqe.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            칩니모 개선 과정. (사진=엔비디아)
           </figcaption>
</figure>
<p dmcf-pid="6U2OG5mB73" dmcf-ptype="general">이후 두번의 훈련을 통해 모델을 개선했다. 첫번째 훈련에서는 약 240억개 토큰이 있는 내부 설계 데이터를 사용했다. 그다음으로는 약 13만개의 대화와 설계 사례를 혼합해 모델을 개선했다. 이때 사용자 정의 및 배포를 위한 프레임워크 '엔비디아 니모'를 활용했다.</p>
<p dmcf-pid="PEh4igVs3F" dmcf-ptype="general">엔비디아 빌 댈리 수석 과학자는 "LLM을 반도체 설계의 복잡한 작업에 적용하는 중요한 첫걸음"이라며 "반도체 제작뿐 아니라 전문화된 분야에서도 내부 데이터를 사용해 유용한 생성형 AI 모델을 훈련할 수 있다는 점을 보여준 사례"라고 전했다.</p>
<p dmcf-pid="QrvPoj8Czt" dmcf-ptype="general">김미정 기자(notyetkim@zdnet.co.kr)</p>
</section>
</div></p></section></div><h6>[Source : 지디넷코리아]</h6></div>
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