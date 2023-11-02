
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
    <h3>“디지털 전환 등 노동력 덜 쓰는 산업구조로 재편해야”[창간 32주년 특집]</h3><h6>전세원 기자  2023. 11. 1. 09:09</h6>
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
<section dmcf-sid="UujU07T6lA">
<figure class="s_img figure_frm origin_fig" dmcf-pid="uatgLN4Ihj" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090909718kdqh.jpg" data-org-width="200" dmcf-mid="p0pANkQSTc" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090909718kdqh.jpg" width="200"/></p>
</figure>
<p dmcf-pid="7NFaoj8CSN" dmcf-ptype="general">지난해 한국의 1인당 국민총소득(GNI)은 3만2661달러로, 20년 만에 대만에 추월당했다. 한국 경제의 펀더멘털(기초체력)이 급격히 나빠지면서 지난해 우리나라의 명목 국내총생산(GDP) 순위도 1년 전보다 3계단이나 추락한 13위에 그쳤다. 급속도로 둔화하는 잠재성장률을 끌어올리기 위해 연구·개발(R&amp;D) 투자를 확장해 산업 전반에 걸쳐 최첨단 기술을 접목할 필요가 있다는 목소리가 커지고 있다.</p>
<p dmcf-pid="zj3NgA6hva" dmcf-ptype="general">주원(사진) 현대경제연구원 경제연구실장은 1일 문화일보와의 인터뷰에서 우리나라의 1인당 GNI가 경제협력개발기구(OECD) 평균을 넘어서지 못하고 있다고 우려했다. </p>
<p dmcf-pid="qkUcjExvSg" dmcf-ptype="general">국제통화기금(IMF)에 따르면 우리나라의 1인당 GNI는 28위 일본(3만4358달러), 29위 이탈리아(3만3739달러)에 이어 3만3591달러로 30위다. 주 실장은 “세계 GDP에서 한국 경제가 차지하는 비중은 1.7%로 2018년(2.0%)을 정점으로 계속 떨어지고 있다”면서 “이는 ‘한강의 기적’이 한계치에 임박했다는 것을 의미하며, 세계 경제 비중 2%도 안 되는 경제 규모와 OECD 평균에 미치지 못하는 소득 수준은 우리가 극복해야 할 목표”라고 밝혔다.</p>
<p dmcf-pid="BEukADMTTo" dmcf-ptype="general">한국 경제가 세계 경제에서 차지하는 영향이 미비한 이유는 급속도로 꺼져가는 성장엔진에 있다.</p>
<p dmcf-pid="bYxWTGEuSL" dmcf-ptype="general">주 실장은 “생산가능인구가 줄어들고 있는 상황에서 잠재성장률을 높이려면 디지털 전환 등 노동력을 덜 쓰는 산업구조로 재편하는 노력이 필요하다”면서 “기술·개발과 신산업 분야에서 발전을 촉진할 수 있도록 관련 분야에 투자를 많이 해야 하는데 정부가 R&amp;D 예산을 삭감한 점이 향후 마이너스 요인이 될 수 있는 만큼 앞으로는 정부와 기업에서 R&amp;D에 각별히 신경을 써야 한다”고 조언했다.</p>
<p dmcf-pid="KGMYyHD7ln" dmcf-ptype="general">지난 60여 년간 눈부신 경제성장의 핵심이었던 수출 주도 경제성장 전략에서 벗어나 내수 중심의 경제성장도 필요하다고 주 실장은 강조했다. 주 실장은 “미국의 경우 민간 소비가 전체 GDP의 70% 내외를 차지할 정도로 내수 의존도가 매우 높은데 대규모의 내수 시장이 있다면 세계 경제가 좋든 나쁘든 굴곡 없이 스스로 성장 동력을 확보할 수도 있다”면서 “반면에 우리나라는 명목 GDP 대비 민간 소비의 비중이 1980년 62.7%에서 1990년 50.2%, 2015년 이후에는 50%를 넘어서지 못하고 있다”고 말했다.</p>
<p dmcf-pid="9HRGWXwzTi" dmcf-ptype="general">주 실장은 한국 경제가 도약하기 위해서는 노동·자본 등의 양적 생산요소 확충과 반도체 외에도 수출 주력 품목의 다변화를 주문했다. </p>
<p dmcf-pid="2ujU07T6WJ" dmcf-ptype="general">주 실장은 “경제의 외부 충격에 대한 내성을 강화하기 위해 내수 시장을 키워야 하지만, 내수 시장을 아무리 키워도 해외시장 규모와는 상대가 되지 않는 탓에 최근 부상하는 K-콘텐츠 등 고부가 서비스 제품으로도 수출 대상을 적극적으로 확대해야 한다”면서 “최근 미·중 갈등에 따른 글로벌 공급망 재편에 대응해 사양 산업과 유망 산업을 명확히 가려내는 등 우리 산업구조를 바꾸려는 움직임이 필요하다”고 말했다.</p>
<p dmcf-pid="V7AupzyPWd" dmcf-ptype="general">전세원 기자 jsw@munhwa.com</p>
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