
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
    <h3>[ACE] 건강하게 돌아온 박지수의 목표, ‘통합 우승 + MVP 탈환’</h3><h6>박종호  2023. 11. 1. 09:10</h6>
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
<section dmcf-sid="W9w1ZFI9Io">
<figure class="figure_frm origin_fig" dmcf-pid="Yg58fP0gsL" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/basketkorea/20231101091004650kcry.jpg" data-org-width="800" dmcf-mid="yf164QpaIg" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/basketkorea/20231101091004650kcry.jpg" width="658"/></p>
</figure>
<div dmcf-pid="Ga164QpaDn" dmcf-ptype="general">
<p>팀의 운명을 짊어져야 하는 선수가 있다. 그게 에이스다.<br/><br/>프로 스포츠 선수들 간의 역량 차이는 크지 않다. 누군가는 ‘종이 한 장’ 차이라고 표현한다. 하지만 그 종이 한 장의 차이가 승부를 가른다. 그 미세함의 차이가 한 시즌을 좌우한다.<br/><br/>‘ACE’는 승부의 중심에 선다. 매 경기에 어떤 영향력을 미치는지 평가받고, 영향력 때문에 많은 이들의 입에 오르내린다. 어떤 경기에서는 환호를 받고, 어떤 경기에서는 비판을 견뎌야 한다. 이로 인해, ‘ACE’가 받는 중압감은 상상 이상으로 크다.<br/><br/>WKBL 6개 구단 모두 승부를 결정하는 ‘ACE’를 보유하고 있다. 농구가 5명의 합심을 중요하게 여기는 종목이라고는 하나, ‘ACE’의 역량이 분명 중요하다. 2023~2024시즌 개막 전 각 구단의 ‘ACE’를 다루는 것도 이 때문이다. (단, 구단별 ‘ACE’ 선정은 기자의 개인적 의견임을 전제한다)</p>
<p><br/><strong><span>[박지수 2022~2023시즌 기록]</span><br/>1. 2022~2023시즌 시즌 정규리그 : 9경기 평균 23분 13초, 13.7점 8.1리바운드 2.7어시스트</strong><br/><br/>박지수(196cm, C)는 WKBL을 넘어 대한민국을 대표하는 선수다. 큰 키와 뛰어난 스킬을 갖췄기 때문. 데뷔 시즌부터 평균 10.4점 10.3리바운드 2.8어시스트를 기록했다. 이후에도 성장을 이어갔고 KB를 강팀으로 만들었다. <br/><br/>하지만 지난 2022~2023시즌은 박지수에게 잊고 싶은 시즌이었다. 공황장애로 비시즌 훈련부터 팀에 합류하지 못했다. 정규 시즌 초반에도 모습을 드러내지 못했던 박지수다. 박지수가 빠진 KB는 시즌 초반 연패를 벗어나지 못했다. 첫 13경기에서 2승 11패를 기록했다. <br/><br/>박지수는 3라운드 부천 하나원큐전에서 복귀전을 치렀다. 많은 시간을 뛴 것은 아니었지만, 팀에 안정감을 더했다. 이후 KB는 박지수 합류 효과에 힘입어 연승을 기록. 플레이오프 진출의 희망을 살렸다. <br/><br/>그러나 박지수는 시즌 끝까지 KB와 함께하지 못했다. 손가락 부상으로 시즌을 마무리한 것. KB는 상승세를 이어가지 못했고 10승 20패로 시즌을 마무리했다. <br/><br/>다소 아쉬운 시즌을 보낸 KB와 박지수였다. 그런만큼 각오도 남달랐다. 수술을 성공적으로 마친 박지수는 건강하게 비시즌을 소화했다. 100%의 몸 상태는 아니었지만, 아시안 컵과 아시안 게임을 통해 본인의 존재감을 과시했다. KB와 함께한 박신자컵에서도 엄청난 활약을 이어갔다. <br/><br/>박지수 역시 출정식을 통해 “지난 시즌과 다른 모습을 보여드리고 싶다. 일단은 건강해야 한다. 가장 큰 목표는 전 경기 출장이다. 그러면서 팬분들에게 즐거움을 선사하고 싶다. 가장 큰 즐거움은 승리다. (웃음) 목표를 위해 최선을 다하고 있다. 다음 시즌에는 통합 우승을 이루고 싶다”라고 이야기했다.<br/><br/>계속해 “건강하게 뛰면서 개인상을 다시 회수하고 싶다. (웃음) 기억에 남는 시즌으로 만들고 싶다. 아직은 부족한 것이 많다. 맞추는 과정이다. 충분히 그런 시즌을 보낼 수 있을 것 같다”라고 덧붙였다.<br/><br/>박지수는 WKBL 개막 미디어데이에서 진행한 MVP 후보 예상 투표에서 1위를 차지했다. 지난 시즌 MVP를 수상한 김단비(180cm, F) 역시 “다음 시즌 가장 큰 MVP 라이벌은 당연히 (박)지수다. 몇 년간 지수가 MVP를 탔다. MVP 자리를 지키기보다는 지수가 안주하지 않게 괴롭히려고 한다. 그러면서 지수가 더 강력한 한국의 보물이 되도록 노력할 것이다”라며 이를 인정했다. <br/><br/>과연 박지수가 차기 시즌 건강을 유지하여 통합 우승과 MVP 탈환이라는 목표를 모두 이룰 수 있을지 주목된다. <br/><br/>사진 제공 = WKBL</p>
<p> </p>
</div>
</section>
</div></p></section></div><h6>[Source : 바스켓코리아]</h6></div>
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