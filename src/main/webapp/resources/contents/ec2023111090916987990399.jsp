
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
    <h3>국가채무비율 2028년 58%… 비기축통화국 2번째로 높아[창간 32주년 특집]</h3><h6>전세원 기자  2023. 11. 1. 09:09</h6>
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
<section dmcf-sid="83SP8xUNSM">
<figure class="figure_frm origin_fig" dmcf-pid="62tgLN4IWx" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090911192gjme.jpg" data-org-width="650" dmcf-mid="4As2Kf1ilR" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090911192gjme.jpg" width="658"/></p>
</figure>
<p dmcf-pid="PVFaoj8CSQ" dmcf-ptype="general">우리나라의 국내총생산(GDP) 대비 국가채무 비율이 오는 2028년에는 58%에 육박해 비기축통화국 중 두 번째로 높아질 전망이다. 저출산 고령화와 잠재성장률 하락으로 재정지출 압박이 갈수록 커질 수밖에 없는 탓에 재정 건전성을 규율할 ‘재정준칙’ 도입이 시급하다는 목소리가 거세지고 있다.</p>
<p dmcf-pid="QbZnJo2myP" dmcf-ptype="general">1일 국제통화기금(IMF)과 관계부처 등에 따르면 IMF는 최근 발간한 ‘재정점검보고서’(Fiscal Monitor)에서 2028년 한국의 GDP 대비 일반정부 부채(D2) 비율이 57.9%가 될 것으로 내다봤다. 이는 비기축통화국 11개국 중 싱가포르(170.2%)에 이어 두 번째로 높다. </p>
<p dmcf-pid="xK5LigVsW6" dmcf-ptype="general">일반정부 부채는 국내에서 주로 쓰는 국가채무(D1, 중앙정부 및 지방정부의 회계·기금의 부채)에 비영리공공기관의 부채까지 포괄하는 더 넓은 의미의 정부 채무로, IMF와 경제협력개발기구(OECD) 등에서 각 나라의 부채를 비교할 때 주로 활용한다.</p>
<p dmcf-pid="ymn1ZFI9y8" dmcf-ptype="general">한국의 GDP 대비 일반정부 부채 비율은 지난 2014년 39.7%에서 2015년 40.8%로 40%를 넘어섰고, 2021년 51.3%로 50%를 처음 돌파했다. 이에 따라 비기축통화국 11개국 중 부채 비율은 2014년 8위에서 2015년 6위, 2021년 4위로 올라섰다. 비기축통화국은 IMF가 이번 보고서에서 선진국으로 분류한 37개국 중 달러·유로·엔 등을 보유하지 않은 국가를 말한다. 유로화를 쓰지만 유로존에 속하지 않은 안도라를 포함해 스웨덴·덴마크·아이슬란드·뉴질랜드·노르웨이 등 11개국이 해당한다.</p>
<p dmcf-pid="WUyMQezch4" dmcf-ptype="general">일반적으로 비기축통화국은 기축통화국에 비해 채권 등의 수요가 낮아서 재정 건전성 관리에 더 유의해야 한다. 2028년 한국의 부채 비율이 미국(137.5%)·영국(108.2%)·일본(252.8%) 등 대표 선진국인 주요 7개국(G7)의 평균치(134.3%)에 미치지 못할 것으로 전망되지만, 경계심을 가져야 한다는 지적이 나오는 이유다. </p>
<p dmcf-pid="YuWRxdqkvf" dmcf-ptype="general">특히 한국의 부채 비율의 증가 속도가 매우 빠르다는 게 문제다. 2014년 39.7%에서 2023년 54.3%(예상치)로 14.6%포인트 오르는데, 이는 싱가포르(70.2%포인트)에 이어 두 번째로 증가폭이 높다. 우리나라 부채 비율은 지난해 53.8%로 나머지 비기축통화국 10개국의 평균치(53.1%)를 사상 처음으로 넘어선 것으로 추정된다.</p>
<p dmcf-pid="G7YeMJBElV" dmcf-ptype="general">전임 문재인 정부의 방만한 재정 운용으로 중앙정부 채무는 올해 8월 말 기준 사상 처음 1100조 원을 돌파한 상황이다. 그러나 관리재정수지(나라 살림) 적자 폭을 GDP의 3% 이내로 관리하는 내용 등을 골자로 하는 재정준칙 법제화 법안(국가재정법 개정안)은 재정지출을 늘려 경기를 부양하려는 야당의 반대로 국회 문턱을 넘지 못하고 있다. </p>
<p dmcf-pid="HsLt53C2C2" dmcf-ptype="general">전세원 기자 jsw@munhwa.com</p>
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