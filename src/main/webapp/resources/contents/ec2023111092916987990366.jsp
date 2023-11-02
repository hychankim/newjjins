
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
    <h3>엔달러 151엔 돌파, 日 "10월 시장개입 없었다" 실적 '0' 확인</h3><h6>김경민  2023. 11. 1. 09:29</h6>
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
<section dmcf-sid="6JhAigVs7p">
<figure class="figure_frm origin_fig" dmcf-pid="PFxB3uv830" dmcf-ptype="figure">
<p class="link_figure"><img alt="일본 엔과 미국 달러" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fnnewsi/20231101092914462zvjh.jpg" data-org-width="800" dmcf-mid="8NywacPl7U" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fnnewsi/20231101092914462zvjh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            일본 엔과 미국 달러
           </figcaption>
</figure>
<div dmcf-pid="Q7ifzKHR33" dmcf-ptype="general">
<br/>【도쿄=김경민 특파원】 엔화 가치가 또 다시 최저치를 갱신했다. 엔저(엔화 가치 하락)가 연일 역대 최저점을 갈아치우고 있는 가운데 일본은 최근 한달간 시장 개입을 하지 않은 것으로 나타났다. 
          </div>
<p dmcf-pid="xwtSrInXuF" dmcf-ptype="general">1일 글로벌 외환시장에 따르면 10월 31일(현지시간) 뉴욕 외환시장에서 1달러당 엔화 환율은 전날 대비 1.7% 하락한 151.56엔까지 떨어졌다. 이는 2022년 10월 21일 이후 최저를 나타냈다. 이날 오전 9시 기준 현재는 151.26엔 선에서 거래되고 있다. </p>
<p dmcf-pid="yKaQ94tn0t" dmcf-ptype="general">일본은행은 전날 금융정책결정회의에서 단기 금리를 마이너스(-) 0.1%로 유지했고, 장기 금리(10년물)의 상한인 1%를 초과하는 것을 허용한다고 발표했다. 하지만 시장에서는 불충분한 조치로 받아들여 엔·달러 환율은 수정 전 149엔에서 151엔으로 급락했다. </p>
<p dmcf-pid="WoTDgA6h01" dmcf-ptype="general">아울러 일본 재무성은 일본 정부·일본은행에 의한 9월 28일~10월 27일의 외환 개입 실적이 제로였다고 밝혔다. </p>
<p dmcf-pid="YkZCEmdY75" dmcf-ptype="general">외환시장에서는 10월 3일 한 때 엔·달러 환율이 150엔대까지 떨어졌다가 147엔대까지 급등한 바 있다. 이때 시장에서는 일본 정부와 일본은행이 개입했다는 관측이 나왔는데 이를 공식적으로 부인한 것이다. </p>
<p dmcf-pid="GxmoMJBE3Z" dmcf-ptype="general">간다 마사토 재무성 재무관은 엔화가 급등한 다음 날인 4일 환율 개입 여부에 대해 "코멘트를 자제하겠다"고 말해 시장의 의심을 키웠다. </p>
<p dmcf-pid="HTn4q9Xe7X" dmcf-ptype="general">지난달 26일도 1달러=150엔대 후반까지 내린 후에 급속히 엔이 매입돼 149엔대 후반까지 엔고가 진행되기도 했다. </p>
<p dmcf-pid="Xhe9UqWQ0H" dmcf-ptype="general">니혼게이자이신문(닛케이)는 "이번에 1달러=150엔 대에서도 일본 정부와 일본은행이 개입하지 않았던 것으로 판명됐다"며 "앞으로 시장의 경계감이 느슨해져 (추가) 엔저가 진행될 가능성이 있다"고 분석했다. </p>
<p dmcf-pid="ZBlcnafO3G" dmcf-ptype="general">일본은 급격한 엔저와 달러 상승을 억제하기 위해 지난해 9~10월 엔 매수·달러 매도의 환율 개입을 단행했으며 이후 지금까지 시장 개입을 하지 않았다. 지난해 9월 일본이 공식적으로 외환시장 개입에 나섰을 때의 엔·달러 환율은 145.9엔이었다. </p>
<p dmcf-pid="5CRKpzyP0Y" dmcf-ptype="general">재무성은 이전부터 "수준 자체가 기준이 아니라 변동성의 문제일 뿐"이라며 가격 변동이 과도한지 여부에 따라 외환 개입 여부를 결정하는 입장을 보이고 있다.</p>
</section>
</div></p></section></div><h6>[Source : 파이낸셜뉴스]</h6></div>
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