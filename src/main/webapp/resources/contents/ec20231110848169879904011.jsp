
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
    <h3>"비트코인, 2025년까지 4~5배 폭등"...대형 이벤트 임박</h3><h6>홍성진  2023. 11. 1. 08:48</h6>
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
<section dmcf-sid="ZUWQigVssi">
<p dmcf-pid="5wiH3uv8sJ" dmcf-ptype="general">[한국경제TV 홍성진 외신캐스터]<br/></p>
<figure class="figure_frm origin_fig" dmcf-pid="1rnX07T6wd" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/kedtv/20231101084857482wuvq.jpg" data-org-width="540" dmcf-mid="XZBEISatIn" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/kedtv/20231101084857482wuvq.jpg" width="658"/></p>
</figure>
<p dmcf-pid="thj3q9Xere" dmcf-ptype="general">비트코인 가격이 2025년까지 약 5배 가까이 폭등할 것이란 전망이 나왔다.</p>
<p dmcf-pid="FlA0B2ZdER" dmcf-ptype="general">31일(현지시간) 비즈니스 인사이더에 따르면 투자은행 번스타인은 비트코인 가격이 반감기와 현물 ETF 승인 호재에 힘입어 2025년 중반까지 15만 달러를 돌파할 것으로 예상했다.</p>
<p dmcf-pid="3Qzcsho5EM" dmcf-ptype="general">이날 고탐 추가니 번스타인 글로벌 디지털 수석 전략가는 투자 보고서를 통해 비트코인 반감기 이벤트가 가격 상승의 원동력으로 작용할 것이라고 강조했다. 비트코인 반감기는 약 4년을 주기로 전체 발행량이 제한된 비트코인의 채굴 보상이 절반으로 줄어드는 현상을 뜻한다.</p>
<p dmcf-pid="0xqkOlg1sx" dmcf-ptype="general">그는 "역사적으로 비트코인 가격이 반감기를 거치며 큰 폭의 상승랠리를 기록했다"면서 "내년 4월로 예정된 비트코인 반감기 이벤트가 암호화폐 시장에 큰 호재로 작용할 것"이라고 밝혔다.</p>
<p dmcf-pid="pMBEISatDQ" dmcf-ptype="general">이어 비트코인의 공급량이 제한되는 과정에서 희소성은 반대로 높아질 것이라며 "암호화폐 채굴자들도 향후 비트코인 가격 상승세를 예측하기 때문에 축적된 토큰을 팔지 않고 있다"고 설명했다.</p>
<p dmcf-pid="URbDCvNFDP" dmcf-ptype="general">또한 지난 12개월 동안 비트코인 토큰 가운데 약 70%가 팔리지 않은 점을 지적하며 "투자자들이 우리만큼 비트코인을 좋아하지 않을 수 있지만 반감기를 계기로 비트코인 가격 사이클이 상당한 전환점을 맞게 될 것"이라고 강조했다.</p>
<p dmcf-pid="uJ2mSWcps6" dmcf-ptype="general">한편 고탐 추가니 전략가는 비트코인 현물 ETF 승인 소식도 시장에 대형 호재로 작용할 것으로 분석했다.</p>
<p dmcf-pid="7iVsvYkUs8" dmcf-ptype="general">그는 미국 증권거래위원회(SEC)의 비트코인 현물 ETF 승인이 암호화폐 시장의 분수령이 될 것이라며 "올해 말에서 내년 1분기 사이 SEC가 비트코인 현물 ETF를 승인할 것으로 기대된다"고 밝혔다.</p>
<p dmcf-pid="znfOTGEuO4" dmcf-ptype="general">이어 "반감기 이후부터 ETF를 통한 비트코인 현물 수요가 채굴자 판매를 약 6~7배 앞설 것으로 예상한다"면서 "비트코인 ETF가 2028년까지 시장에서 유통되는 비트코인 현물의 약 9~10% 수준에 달할 것"이라고 전했다.</p>
<p dmcf-pid="qhj3q9Xewf" dmcf-ptype="general">번스타인은 비트코인의 가격이 반감기와 현물 ETF 승인 호재에 힘입어 2025년 중반까지 현재 가격보다 약 337% 높은 15만 달러에 이를 것으로 내다봤다.</p>
<p dmcf-pid="BlA0B2ZdsV" dmcf-ptype="general">이날 비트코인 가격은 오전 8시 35분(한국시간) 코인데스크 기준 전일 대비 0.36% 상승한 34,607.38달러에 거래되고 있다.</p>
<p dmcf-pid="bScpbV5Jw2" dmcf-ptype="general">(사진=비즈니스 인사이더) <br/>홍성진외신캐스터 </p>
</section>
</div></p></section></div><h6>[Source : 한국경제TV]</h6></div>
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