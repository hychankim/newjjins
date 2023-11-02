
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
    <h3>전기차 수요 주춤하자 리튬값 뚝, 中리튬업체 순익은 98%↓</h3><h6>김재현 전문위원  2023. 11. 1. 06:31</h6>
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
<section dmcf-sid="bB5RsUS4qA">
<p dmcf-pid="KZCboWcpBj" dmcf-ptype="general">중국 2위 리튬 생산업체의 3분기 순익이 리튬 가격 하락으로 97.9% 급감한 것으로 나타났다. 세계 1위 리튬 생산업체 주가도 52주 신저가를 기록하는 등 전기차 배터리의 주요 소재인 리튬에 대한 수요 둔화로 글로벌 리튬 업체가 동반 하락하고 있다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="9Y7ay2ZdVN" dmcf-ptype="figure">
<p class="link_figure"><img alt="간펑리튬 회사 전경/사진=간펑리튬 홈페이지" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneytoday/20231101063105663skje.jpg" data-org-width="1024" dmcf-mid="qktdI7T69k" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneytoday/20231101063105663skje.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            간펑리튬 회사 전경/사진=간펑리튬 홈페이지
           </figcaption>
</figure>
<p dmcf-pid="2TpLSbGM9a" dmcf-ptype="general">31일 증권시보, 차이신 등에 따르면 전날 중국 2위 리튬 생산업체 간펑리튬은 3분기 매출액이 작년 대비 42.8% 감소한 75억4000만위안(1조3600억원), 순이익은 97.9% 급감한 1억6000만위안(290억원)을 기록했다고 공시했다. 올해 1~3분기 간펑리튬의 순이익도 60억위안(1조800억원)으로 지난해 대비 약 60% 줄었다. </p>
<p dmcf-pid="VuPIpJBEBg" dmcf-ptype="general">중국 1위 리튬 생산업체 티엔치리튬의 실적도 악화됐다. 회사의 3분기 매출액은 전년 대비 17.1% 감소한 85억8000만위안(1조5400억원)을 기록했으며 순이익은 70.9% 쪼그라든 16억5000만위안(2970억원)에 그쳤다. 올해 1~3분기 누적 순이익도 작년의 반토막 수준인 81억위안(1조4600억원)에 불과했다.</p>
<p dmcf-pid="fHqjYf1ibo" dmcf-ptype="general">지난 30일 종가기준, 티엔치리튬 주가는 연초 대비 28.7% 하락한 55.9위안, 간펑리튬 주가는 연초 대비 34.6% 내린 45.73위안을 기록했다. </p>
<p dmcf-pid="4WugT9XefL" dmcf-ptype="general">리튬업체의 실적 악화는 올해 급락한 리튬 가격 영향이 크다. 한국자원정보서비스에 따르면 지난 2분기 반등했던 중국 탄산리튬 가격은 3분기에 ㎏당 303위안에서 153위안으로 약 50% 급락했다. 지난 10월 30일 탄산리튬 가격은 ㎏당 155.5위안으로 지난해 11월 기록한 최고가(581.5위안) 대비 73% 폭락했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="82iWKj8C2n" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneytoday/20231101063107118maga.jpg" data-org-width="560" dmcf-mid="BCHQw3C2qc" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneytoday/20231101063107118maga.jpg" width="658"/></p>
</figure>
<p dmcf-pid="604mFR7Abi" dmcf-ptype="general">지난 30일 미국 투자전문매체 배런스에 따르면 세계 최대 리튬 생산업체 앨버말(Albemarle)과 SQM, 리벤트(Livent) 주가가 이날 일제히 52주 신저가를 기록하는 등 글로벌 리튬 생산업체들의 하락세가 지속됐다. 전기차 수요 증가세 둔화, 리튬 공급 과잉으로 인한 리튬 가격 하락 등의 영향이다. </p>
<p dmcf-pid="PVnY9A6h2J" dmcf-ptype="general">리튬 가격 하락으로 티엔치리튬의 투자수익도 작년 대비 약 30% 감소한 10억6800만위안(1920억원)으로 줄었다. 티엔치리튬의 타법인 투자는 칠레 리튬 생산업체 SQM에 집중돼 있다. 2018년말 티엔치리튬은 SQM의 지분 22.2%를 인수했으며 현재 2대 주주다. SQM은 국내 LG에너지솔루션, SK온 등과 리튬 장기 공급 계약을 체결한 업체다. </p>
<p dmcf-pid="QbevqgVsqd" dmcf-ptype="general">한편 리튬 가격이 하락 추세에 진입하자 중국 리튬 생산업체들은 전방산업인 전기차 업체에 대한 투자를 늘리는 등 사업 다각화를 추진하고 있다. 지난 9월 간펑리튬은 중국 전기차업체 사이리스와 투자협정을 체결하면서 10억위안(1800억원)으로 사이리스 자회사의 지분 33.3%를 인수하기로 합의했다. </p>
<p dmcf-pid="xjl9aGEube" dmcf-ptype="general">티엔치리튬도 지난 7월 메르세데스 벤츠와 지리자동차가 공동 설립한 전기차 브랜드 스마트(Smart)에 1억5000만달러(2020억원)를 투자하기로 결정했다. </p>
<p dmcf-pid="yDW8k1sbfR" dmcf-ptype="general">31일 중국 선전거래소에서 간펑리튬은 3.2% 하락한 44.28위안, 티엔치리튬은 1.6% 내린 55위안에 거래를 마쳤다.</p>
<p dmcf-pid="WfLG2cPl2M" dmcf-ptype="general">김재현 전문위원 zorba00@mt.co.kr</p>
</section>
</div></p></section></div><h6>[Source : 머니투데이]</h6></div>
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