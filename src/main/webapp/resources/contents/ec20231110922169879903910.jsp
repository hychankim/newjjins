
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
    <h3>'수출 5.1% ↑' 13개월 만에 플러스…올해 최대 실적</h3><h6>세종=주상돈  2023. 11. 1. 09:22</h6>
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
<section dmcf-sid="5Ro4ISatpE">
<p dmcf-pid="16dKwOiHFk" dmcf-ptype="general">지난달 수출이 올해 최대 실적을 달성하며 13개월 만에 플러스 전환했다. 무역수지도 5개월 연속 흑자를 기록했다. 수출 증가와 무역흑자를 동시에 달성한 것은 지난해 2월 이후 20개월 만이다.</p>
<p dmcf-pid="tzVFLN4I0c" dmcf-ptype="general">1일 산업통상자원부에 따르면 10월 수출액은 전년 대비 5.1% 증가한 550억9000만달러를 기록하며 지난해 10월부터 1년간 이어진 마이너스 고리를 끊고 플러스 전환에 성공했다.</p>
<p dmcf-pid="Fqf3oj8CpA" dmcf-ptype="general">조업일수를 고려한 일평균 수출액도 26억2000만달러로 올해 최고치였던 9월 실적을 한 달 만에 재경신했다. 수출물량도 14.2% 늘며 2개월 연속 플러스를 기록했다.</p>
<p dmcf-pid="3OTkUqWQ0j" dmcf-ptype="general">우리 주력 수출품목인 자동차(19.8%)는 16개월 연속, 일반기계(10.4%)는 7개월 연속, 가전(5.8%)은 5개월 연속, 선박(101.4%)·디스플레이(15.5%)는 3개월 연속 수출이 증가했다.</p>
<p dmcf-pid="0vXsbV5J7N" dmcf-ptype="general">우리 4대 수출품목 중 하나인 석유제품(18.0%)도 제품가격 상승과 휘발유·경유 등의 견조한 수요증가에 힘입어 8개월 만에 수출 플러스로 전환했다. 석유제품?선박?디스플레이?무선통신기기 등 4개 품목 수출은 올해 최대 실적을 기록했다.</p>
<p dmcf-pid="pMLfOlg1za" dmcf-ptype="general">최대 수출품목인 반도체 수출은 지난해 8월 이후 가장 낮은 감소율(-3.1%)을 기록하며 개선 흐름을 이어나갔다. 석유화학도 올해 최저 감소율(-3.2%)을 보이며 지난달에 이어 한 자릿수 감소율을 이어갔다.</p>
<p dmcf-pid="Uda6hTj3ug" dmcf-ptype="general">지난달 주요 9대 수출시장 중 6개 시장에서 수출 플러스를 달성했다. 대(對)미국 수출(101억달러)은 역대 10월 중 가장 많은 실적이다. 특히 전기차 수출은 9월까지 실적(40억달러)이 이미 지난해 전체(37억달러)를 넘어섰다. 10월에도 역대 10월 중 최고치를 기록했다. 대아세안 수출(106억달러)도 선박·석유제품 등 주요품목 수출이 많이 증가하며 13개월 만에 플러스로 전환됐다. 최대 수출시장인 대중국 수출은 110억달러를 기록하며 3개월 연속 100억 달러 이상의 실적을 이어갔다.</p>
<p dmcf-pid="uOTkUqWQFo" dmcf-ptype="general">10월 수입은 원유(0.1%)가 플러스를 기록한 가운데 가스(-54.3%), 석탄(-26.1%) 등 에너지 수입이 감소(-22.6%)함에 따라 전년동기 대비 9.7% 줄었다.</p>
<p dmcf-pid="7TZOKf1izL" dmcf-ptype="general">지난달 무역수지는 16억4000만달러를 기록하며 올해 6월부터 5개월 연속 흑자기조를 이어갔다. 이에 따라 20개월 만에 수출 플러스와 무역수지 흑자를 동시 달성했다.</p>
<div dmcf-pid="zAmnXtOKzn" dmcf-ptype="general">
<p>방문규 산업부 장관은 "우리 수출이 세계적 고금리 기조, 미·중 경쟁과 공급망 재편, 이스라엘-하마스 사태, 고유가 등 어려운 대외여건에도 불구하고 무역수지 흑자를 유지하며 플러스 전환에 성공했다"며 "우리 수출이 골든크로스를 지나서 연말까지 우상향 모멘텀을 지속 이어나갈 수 있도록 총력 대응하겠다"고 말했다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="qJNPlyA0zi" dmcf-ptype="figure">
<p class="link_figure"><img alt="평택항에 화물컨테이너가 쌓여 있다. [항공촬영협조=서울경찰청 항공대, 조종사: 경위 신승호-경위 박지환, 승무원: 경위 박상진] 사진=강진형 기자aymsdream@" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/akn/20231101092213484yhoa.jpg" data-org-width="400" dmcf-mid="ZlkRyHD7FD" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/akn/20231101092213484yhoa.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            평택항에 화물컨테이너가 쌓여 있다. [항공촬영협조=서울경찰청 항공대, 조종사: 경위 신승호-경위 박지환, 승무원: 경위 박상진] 사진=강진형 기자aymsdream@
           </figcaption>
</figure>
<p dmcf-pid="Bqf3oj8CpJ" dmcf-ptype="general">세종=주상돈 기자 don@asiae.co.kr</p>
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