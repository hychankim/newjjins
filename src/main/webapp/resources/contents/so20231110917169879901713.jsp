
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
    <h3>'표적 감사' 의혹 유병호 4차 소환 통보…"불응 시 절차대로"</h3><h6>전재훈 기자  2023. 11. 1. 09:17</h6>
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
<section dmcf-sid="QOpLH1sbVr">
<figure class="figure_frm origin_fig" dmcf-pid="xE5RvYkUqw" dmcf-ptype="figure">
<p class="link_figure"><img alt="[서울=뉴시스] 배훈식 기자 = 전현희 전 국민권익위원장에 대한 '표적 감사' 의혹을 받는 유병호 감사원 사무총장이 고위공직자범죄수사처(공수처)의 세 번째 출석 요구에 불응하면서 '부하 직원부터 조사하는 게 순서'라는 취지의 사유서를 제출했다. 공수처는 4차 출석 요구서를 보냈는데, 이마저 불응한다면 구속영장을 청구하겠단 방침이다. 사진은 유 사무총장이 지난 24일 오전 서울 종로구 정부서울청사에서 열린 국무회의에 참석하고 있는 모습. 2023.10.24. dahora83@newsis.com" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsis/20231101091757940xzrv.jpg" data-org-width="720" dmcf-mid="PdKk07T6Bm" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsis/20231101091757940xzrv.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [서울=뉴시스] 배훈식 기자 = 전현희 전 국민권익위원장에 대한 '표적 감사' 의혹을 받는 유병호 감사원 사무총장이 고위공직자범죄수사처(공수처)의 세 번째 출석 요구에 불응하면서 '부하 직원부터 조사하는 게 순서'라는 취지의 사유서를 제출했다. 공수처는 4차 출석 요구서를 보냈는데, 이마저 불응한다면 구속영장을 청구하겠단 방침이다. 사진은 유 사무총장이 지난 24일 오전 서울 종로구 정부서울청사에서 열린 국무회의에 참석하고 있는 모습. 2023.10.24. dahora83@newsis.com
           </figcaption>
</figure>
<p dmcf-pid="y7iW6MujVD" dmcf-ptype="general"><br/> [서울=뉴시스]전재훈 기자 = 전현희 전 국민권익위원장에 대한 '표적 감사' 의혹을 받는 유병호 감사원 사무총장이 고위공직자범죄수사처(공수처)의 세 번째 출석 요구에 불응하면서 '부하 직원부터 조사하는 게 순서'라는 취지의 사유서를 제출한 것으로 알려졌다.</p>
<p dmcf-pid="Wgy4sho52E" dmcf-ptype="general">공수처는 4차 출석 요구서를 보냈는데, 이마저 불응한다면 체포영장을 청구하겠다는 방침이다.</p>
<p dmcf-pid="YdCbkreW2k" dmcf-ptype="general">1일 뉴시스 취재에 따르면 공수처 특별수사본부(부장검사 이대환)는 전날 유 사무총장에게 4차 출석 요구서를 보냈다. </p>
<p dmcf-pid="Gil9DsJG2c" dmcf-ptype="general">공수처는 이번에도 출석하지 않는다면 강제로 구인하겠단 방침을 세웠다고 전해졌다. 수사기관은 통상 피의자가 정당한 사유 없이 3차례 이상 소환에 불응하면 체포영장을 청구한다.</p>
<p dmcf-pid="H1PIbV5JVA" dmcf-ptype="general">유 사무총장은 국정감사 준비 등을 이유로 두 차례 출석 요구에 응하지 않은 바 있다.</p>
<p dmcf-pid="XCugZFI9Kj" dmcf-ptype="general">이에 공수처는 세 번째 출석 요구서를 보냈고, 전날 조사를 진행할 계획이었다. 하지만 유 사무총장은 전날 조사의 순서를 지적하는 취지의 불출석 사유서를 제출한 채 조사에 응하지 않았다고 한다.</p>
<p dmcf-pid="ZZ8sq9XefN" dmcf-ptype="general">공수처는 감사원 사무처 직원들을 대상으로도 참고인 조사를 진행하려 했으나, 직원 대부분이 조사에 응하지 않는 상황인 것으로 전해졌다.</p>
<p dmcf-pid="5qLGQezcba" dmcf-ptype="general">공수처 관계자는 "독립적인 헌법기관에 있고, 전체적인 감사를 책임지는 지위에 있는 고위직이란 부분까지 고려해야 하는 부분이 있다"며 "(출석을 두고) 이야기는 오가고 있다"고 말했다. 강제수사 가능성을 두고는 "일반적인 수사 절차대로 하겠다"고 전날 밝혔다.</p>
<p dmcf-pid="1QruacPl9g" dmcf-ptype="general">공수처는 감사원이 전 전 위원장을 찍어내기 위한 목적으로 위법하게 특별감사에 나섰다는 의혹을 두고 수사 중이다. 이 사건으로 최재해 감사원장과 유 사무총장 등이 공수처에 고발된 상태다.</p>
<p dmcf-pid="tZ8sq9Xe9o" dmcf-ptype="general">공수처는 감사원이 전 전 위원장에 대한 감사보고서를 공개하는 과정에서 조은석 감사위원을 패싱했다는 의혹과 관련해 지난 17일 조 위원 사무실을 압수수색했다.</p>
<p dmcf-pid="F1PIbV5JfL" dmcf-ptype="general">권익위 관계자 A씨가 내부 자료를 불법 취득해 감사원에 제공했다는 의혹 및 감사원이 최초 제보자와 증인을 서로 다른 사람처럼 꾸몄다는 의혹도 수사 대상이다.</p>
<p dmcf-pid="30RSV63o9n" dmcf-ptype="general"><span>☞공감언론 뉴시스</span> kez@newsis.com </p>
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