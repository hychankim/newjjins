
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
    <h3>과학계 ‘R&D예산 삭감’ 반발에… 정부 “낭비 제거한 것”[창간 32주년 특집]</h3><h6>노성열 기자  2023. 11. 1. 09:04</h6>
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
<section dmcf-sid="Q16428FLh5">
<figure class="figure_frm origin_fig" dmcf-pid="xY9bzKHRhZ" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090441687bbel.jpg" data-org-width="650" dmcf-mid="P7aoigVsS1" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090441687bbel.jpg" width="658"/></p>
</figure>
<p dmcf-pid="yRsrEmdYCX" dmcf-ptype="general">내년도 국가 연구·개발(R&amp;D) 예산이 이례적으로 15%가량 삭감되자 과학계 반발이 이어지고 있다. 연구자들이 모인 학회는 물론, 이공계 학생들까지 반대 대열에 합류하자 정부는 국회 예산 심의 과정에서 일부 조정할 뜻을 보이고 있다. 하지만 그동안 증액 일변도의 ‘군살’을 빼고 선택과 집중을 통해 미래 경쟁력 강화에 초점을 맞추었다는 기본 입장에는 변함이 없다. </p>
<p dmcf-pid="WeOmDsJGCH" dmcf-ptype="general">1일 과학기술정보통신부와 학계에 따르면 전국공공연구노동조합, 전국과학기술연구전문노동조합 등 과학기술 관련 9개 단체와 카이스트 등 9개 대학·대학원 학생회는 지난 9월 대전 연구개발특구에서 ‘국가 과학기술 바로 세우기 과학기술계 연대회의’를 열고 삭감 예산의 원상 회복과 과학기술계에 대한 ‘카르텔’ 표현에 대한 사과를 요구했다(사진). 과학기술계에서 정부 정책에 대한 조직적인 집단반발은 거의 처음 있는 일이다. 기획재정부가 발표한 내년도 정부 예산안에 따르면 과기정통부의 주요 R&amp;D 예산은 올해보다 13.9%(3조4000억 원) 줄었다. 여기에 이공계 대학 지원금 등 기재부가 간접 지원하는 일반 R&amp;D 예산까지 합치면 감소율은 16.6%(5조2000억 원)로 더 커진다. 정부 R&amp;D 예산이 줄어든 건 1991년 이래 최초다. 연대회의는 “정부출연연구기관의 주요 사업비는 거의 30% 가까이 확 줄었다”며 “현장과의 소통도 없이 ‘정부 R&amp;D 제도혁신’이란 명목으로 일방적인 구조조정을 예고했다. 이는 과학기술을 무시하고 연구 현장을 파괴하는 행위”라고 비판했다. 또 대통령이 말한 ‘카르텔’ 표현에 대해서도 정부에 사과를 요구했다. 한국 과학기술계가 이례적인 집단행동에 나서자 저명한 국제학술지 ‘사이언스’도 지난 9월 19일 한국발 R&amp;D 예산 삭감 소동을 기사로 다루었다.</p>
<p dmcf-pid="YJCOrInXSG" dmcf-ptype="general">이에 대해 과기정통부는 실질 감축 비율은 16.6%(5조2000억 원)가 아닌 10.9%(3조4000억 원)고, ‘R&amp;D다운 R&amp;D, 선도형 R&amp;D’로 전환을 위한 구조개혁 차원의 조정이었다고 해명했다. 과거 몇 년 동안 정부 R&amp;D 예산은 10조 원 이상 가파르게 증가해왔으며, 예산 급증 과정에서 발생한 비효율과 낭비 요인을 제거할 필요가 생겼다는 것이다. 과기정통부 관계자는 “세계 최고 수준의 R&amp;D, 세계 최고 연구기관과의 전략적 글로벌 협력 등을 통해 미래 인재를 육성하는 데 집중하겠다는 뜻”이라고 말했다. 이 관계자는 “소액의 토막 예산으로 실질 연구성과 창출을 기대하기 어렵던 R&amp;D 사업 파편화를 해소하고, 온정주의에 기운 현행 평가제도 역시 개선해야 한다”면서 “디지털 기반의 R&amp;D 관리 체계로 전환해 신뢰성과 집행의 투명성을 높이겠다”고 강조했다. </p>
<p dmcf-pid="GihImCLZCY" dmcf-ptype="general">노성열 기자 nosr@munhwa.com</p>
</section>
</div></p></section></div><h6>[Source : 문화일보]</h6></div>
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