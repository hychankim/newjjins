
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
    <h3>LEC, 9년 만에 롤드컵 8강 진출 실패하며 '최악 부진'</h3><h6>강윤식  2023. 10. 31. 20:15</h6>
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
<section dmcf-sid="Zi9xGJBEnx">
<figure class="figure_frm origin_fig" dmcf-pid="5LVRXnKwMQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="LEC의 마지막 희망이었던 G2마저 녹아웃 스테이지 진출에 실패했다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031201507735bnzi.jpg" data-org-width="1900" dmcf-mid="XN3bOf1idM" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031201507735bnzi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LEC의 마지막 희망이었던 G2마저 녹아웃 스테이지 진출에 실패했다.
           </figcaption>
</figure>
<div dmcf-pid="1jPnFN4IiP" dmcf-ptype="general">
            LEC가 이번 2023 LoL 월드 챔피언십에서 최악의 성적표를 받아 들었다. 네 팀이 스위스 스테이지 출전했지만, 단 한 팀도 녹아웃 스테이지에 오르지 못했다. LEC 팀이 단 한 팀도 롤드컵 토너먼트에 오르지 못한 것은 지난 2014년 대회 이후 9년 만이다.
          </div>
<p dmcf-pid="tSjsflg1i6" dmcf-ptype="general">LEC는 그동안 LCK, LPL에 이은 메이저 지역 3위라는 평가를 들어왔다. 이뿐 아니라 LCK가 한창 부진했던 2018, 2019년에는 G2 e스포츠, 프나틱 등을 앞세워 2위 지역이라는 평가를 받아왔을 정도로 강한 모습을 보여왔다. 실제로 그동안 꾸준히 롤드컵 녹아웃 스테이지 진출 팀을 배출했을 만큼 롤드컵 성적으로 이를 증명해 왔다.</p>
<p dmcf-pid="FVtqm2ZdL8" dmcf-ptype="general">하지만 이번 월즈에서는 달랐다. 스위스 스테이지가 진행되는 와중에도 좀처럼 경기력을 끌어올리지 못했고, 결국 지난 2014년 대회 이후 9년 만에 단 한 팀도 녹아웃 스테이지에 올리지 못했다. LCK 팀이 단 한 팀도 4강에 들지 못한 가운데, G2의 4강, 프나틱의 준우승 등으로 소위 '2부 리그'로 올라섰던 대회가 한국에서 열린 2018 월즈라는 측면에서 본다면, 다시 한국에서 열린 2023 월즈에서의 부진은 더욱 뼈아프게 다가온다.</p>
<p dmcf-pid="3fFBsV5JL4" dmcf-ptype="general">네 팀 중 팀 BDS는 이른바 '가다세올'을 플레이한 '아담' 아담 마나네로 플레이-인 스테이지 최고의 인기 팀으로 올라섰다. 하지만 스위스 스테이지에서는 다른 지역의 강팀들과 확연한 기량 차이를 보였다. 매드 라이온즈의 경우에는 이번에도 국제전에서의 약점을 극복하지 못했다.</p>
<p dmcf-pid="0uytNUS4Mf" dmcf-ptype="general">프나틱은 마지막 최종전까지 대회를 끌고 갔고, 웨이보 게이밍을 상대로도 먼저 한 세트를 따내는 등 분전했지만, 결국 극복하지 못한 라인전 체급, 그리고 2, 3세트에서의 연이어 나온 밴픽 이슈로 인해 탈락의 고배를 맛봤다. 유일한 희망이었던 G2 e스포츠 역시 독감 등의 이슈가 겹치면서 초반의 기세를 마지막까지 잇지 못하고 녹아웃 스테이지에서 대회를 마무리했다.</p>
<p dmcf-pid="pZsyeXwzeV" dmcf-ptype="general">이렇다 보니 LEC는 타 메이저 지역 간의 상대 전적에서도 철저하게 밀렸다. 격차가 있다는 평가를 받긴 하지만, LPL 팀을 상대로 매치 1승 6패의 성적은 분명 아쉬움을 남긴다. 무엇보다도 라이벌 지역이자, 한 수 아래로 여기던 LCS를 상대로 매치 1승 2패를 기록한 것은 뼈아프다. 특히 스위스 스테이지 4라운드에서 G2가 NRG에게 당한 0대2 패배는 오랜 LEC 팬들에게는 충격적인 결과일 수밖에 없었다. </p>
<p dmcf-pid="U21zr9Xei2" dmcf-ptype="general">2023년 들어 LEC는 윈터 스플릿을 도입하는 등 포맷에 변화를 가져갔다. 하지만 이런 상황에서 LEC는 이미 앞선 미드 시즌 인비테이셔널(MSI)에서도 부진한 모습을 보였다. 이에 더해 이번 롤드컵에서도 연이어 좋지 않은 성적을 남긴 것이다. 그런 만큼 올 시즌 가져간 포맷 변경 역시 다시 한번 도마 위에 오를 것으로 보인다.</p>
<p dmcf-pid="uofeZL9rM9" dmcf-ptype="general">강윤식 기자 (skywalker@dailyesports.com)</p>
</section>
</div></p></section></div><h6>[Source : 데일리e스포츠]</h6></div>
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