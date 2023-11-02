
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
    <h3>국민 10명 중 6명 게임 즐겨...모바일 줄고 PC·콘솔 이용 늘어</h3><h6>강미화  2023. 10. 31. 16:05</h6>
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
<section dmcf-sid="Ynh2CezcXT">
<figure class="figure_frm origin_fig" dmcf-pid="GpMvxtOK5v" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031160549559jehz.png" data-org-width="701" dmcf-mid="y1mqrP0gtW" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031160549559jehz.png" width="658"/></p>
</figure>
<div dmcf-pid="HO3LFwRyXS" dmcf-ptype="general">
            코로나 엔데믹 이후, 게임을 가볍게 즐기는 이용자들은 이탈했지만, 헤비유저(Heavy User)는 유지됐다.
          </div>
<p dmcf-pid="XI0o3reWGl" dmcf-ptype="general">한국콘텐츠진흥원(이하 콘진원)이 발간한 '2023 게임 이용자 실태조사'에 따르면 최근 1년간 국민의 62.9%가 게임을 이용한 것으로 나타났다. 전년 대비 11.5%p 감소한 수치다.</p>
<p dmcf-pid="ZCpg0mdYth" dmcf-ptype="general">게임 이용률이 하락한 배경으로는 코로나19 엔데믹으로 인한 야외활동 증가 등을 꼽을 수 있다.</p>
<div dmcf-pid="5KoZLzyPXC" dmcf-ptype="general">
           조사 대상자 1만 명 중 모바일 게임 이용률은 2022년 62.6%에서 2023년 53.2%로 9.4%p 감소해 게임 분야 중 가장 큰 감소폭을 기록했다. 반면, 콘솔 게임 이용률은 2022년 13.3%에서 2023년 15.1%로 1.8%p 상승했다. 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="19g5oqWQGI" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031160551034fwbb.png" data-org-width="703" dmcf-mid="WWjFNKHR5y" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031160551034fwbb.png" width="658"/></p>
</figure>
<div dmcf-pid="t2a1gBYxHO" dmcf-ptype="general">
            게임 이용자(6292명)의 게임 분야별 이용률(중복응답)은 모든 분야에서 상승했다. 특히 PC게임 상승률이 6.8%p로 가장 높았고, 콘솔 게임 6.2%p, 아케이드 게임 2.4%p, 모바일 게임 0.4%p 순으로 이어졌다. 게임 이용률은 모바일 게임이 84.6%, PC 게임 61%, 콘솔게임 24.1%, 아케이드 게임 11.8% 순이다. 
          </div>
<p dmcf-pid="FpMvxtOKYs" dmcf-ptype="general">또한 게임 이용자의 게임 이용 시간을 살펴본 결과, 하루 게임 이용시간은 전년 대비 주중 27분(132분→159분), 주말 32분(209분→241분) 상승했다.</p>
<p dmcf-pid="3URTMFI9Hm" dmcf-ptype="general">게임 분야별 지출 비용도 모바일 게임을 제외하면 증가 추세다. 지출 비용의 중앙값을 전년과 비교했을 때, PC 게임 월평균 지출 비용은 2만 원으로 전년 대비 2배로 늘었고, 콘솔 게임 타이틀 연평균 구매 비용은 8만 원으로 167%(3만 원) 늘었다. 아케이드 게임 월 평균 지출 비용은 5000원으로 전년(833원) 대비 6배 이상 큰 폭으로 늘었다.</p>
<p dmcf-pid="0ueyR3C2Zr" dmcf-ptype="general">전체 게임 이용률은 하락했으나 게임 이용 시간과 지출 비용은 상승한 것으로 집계되면서 헤비유저층을 확인할 수 있었다.</p>
<p dmcf-pid="pueyR3C2Hw" dmcf-ptype="general">이번 조사에서는 작년 성희롱, 성차별 문항을 확대해 사이버폭력 경험 문항으로 개선했다. 전체 게임 이용자 중 56.2%가 게임 내 사이버폭력을 경험했다고 응답했다. 언어폭력(83.9%)이 가장 높았으며 스토킹(57.2%), 명예훼손(39.3%), 성폭력(39.1%), 따돌림(36.1%), 갈취(26.5%), 신상정보 유출(24.5%) 순으로 나타났다.</p>
<p dmcf-pid="U7dWe0hVYD" dmcf-ptype="general">콘진원은 이러한 조사 결과를 바탕으로 게임 이용자 및 게임 업계 종사자 대상 인식개선 프로그램을 진행하며 사이버폭력 근절에 지속적인 노력을 기울일 예정이다.</p>
<p dmcf-pid="uzJYdplf1E" dmcf-ptype="general">한편, 이번 조사는 게임산업 육성과 건강한 게임 이용 환경 조성을 위한 정책 수립의 기초자료로 활용할 목적으로 6월 8일부터 한 달간 전국 만 10세 이상 64세 이하 1만 명의 '게임 이용 실태 및 현황'과 '게임에 대한 인식'에 대해 조사했으며, 온라인 조사와 개별 면접조사를 병행했다.</p>
<p dmcf-pid="7t6C8Xwztk" dmcf-ptype="general">강미화 redigo@fomos.co.kr<br/>[게임&amp;게이머, 문화를 전합니다. 포모스게임│무단 전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : 포모스]</h6></div>
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