
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
    <h3>오타니 구체적인 몸값 나왔다, "10년 $4억7700+인센티브=$5억+알파" 전직 단장 예측</h3><h6>노재형  2023. 11. 1. 05:29</h6>
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
<section dmcf-sid="2iA5aGEuOc">
<figure class="figure_frm origin_fig" dmcf-pid="f6JvRCLZrj" dmcf-ptype="figure">
<p class="link_figure"><img alt="LA 에인절스 오타니 쇼헤이가 지난 10월 1일(한국시각) 올해 구단 MVP에 선정된 뒤 트로피를 들고 포즈를 취하고 있다. AP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101052916490ucdf.jpg" data-org-width="1200" dmcf-mid="B8xI6reWIw" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101052916490ucdf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LA 에인절스 오타니 쇼헤이가 지난 10월 1일(한국시각) 올해 구단 MVP에 선정된 뒤 트로피를 들고 포즈를 취하고 있다. AP연합뉴스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="4PiTeho5sN" dmcf-ptype="figure">
<p class="link_figure"><img alt="오타니 쇼헤이는 지난 9월 팔꿈치 수술을 받아 내년에는 마운드에 오르지 못한다. AP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101052917023kkso.jpg" data-org-width="1200" dmcf-mid="bujZgYkUID" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101052917023kkso.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            오타니 쇼헤이는 지난 9월 팔꿈치 수술을 받아 내년에는 마운드에 오르지 못한다. AP연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="8PiTeho5Ea" dmcf-ptype="general"> [스포츠조선 노재형 기자]오타니 쇼헤이(29)의 FA 계약 규모가 5억달러에 달할 것이라는 전망이 연일 쏟아지고 있다. </p>
<p dmcf-pid="6Qnydlg1mg" dmcf-ptype="general">이번에는 유력 스포츠매체 디 애슬레틱이 오타니의 FA 몸값을 인센티브를 포함해 '5억달러 이상'으로 추정했다. </p>
<p dmcf-pid="PxLWJSatIo" dmcf-ptype="general">이 매체 칼럼니스트로 1990~2000년대에 걸쳐 신시내티 레즈와 워싱턴 내셔널스 단장을 지낸 짐 보든은 1일(한국시각) '2023~2024년 FA 톱40' 코너에서 오타니를 1위에 올려 놓으며 '10년간 보장액 4억7700만달러에 성적에 따라 보너스를 받는 형식'으로 계약할 것으로 내다봤다. </p>
<p dmcf-pid="Q2xI6reWwL" dmcf-ptype="general">보든은 특히 오타니 영입에 나설 구단으로 LA 다저스, 텍사스 레인저스, 시애틀 매리너스, 뉴욕 메츠, 보스턴 레드삭스, 샌디에이고 파드리스, 샌프란시스코 자이언츠, 시카고 컵스, 필라델피아 필리스, 토론토 블루제이스 순으로 10팀을 꼽았다. 서부지구 5팀, 동부지구 4팀, 중부지구 1팀이다. </p>
<p dmcf-pid="xVMCPmdYwn" dmcf-ptype="general">이어 보든은 보너스에 대해 '투구이닝에 따른 것으로 조건을 모두 충족할 경우 총액 규모가 5억달러 이상으로 늘어날 수 있다'고 전했다. </p>
<p dmcf-pid="yIWfvKHRmi" dmcf-ptype="general">인센티브를 설정하는 것은 오타니가 지난 9월 팔꿈치 수술을 받았기 때문이다. 사실상 생애 두 번째 토미존 서저리로 오타니는 내년에는 마운드에 설 수 없다. 오로지 타자로만 출전하게 된다. 2025년에는 투수로 복귀가 가능해 투타 겸업을 재개할 수 있다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="WFqaunKwrJ" dmcf-ptype="figure">
<p class="link_figure"><img alt="오타니는 올시즌 44홈런을 터뜨리며 AL 홈런왕에 올랐다. AFP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101052917422nflg.jpg" data-org-width="1200" dmcf-mid="KFG8y2ZdOE" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101052917422nflg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            오타니는 올시즌 44홈런을 터뜨리며 AL 홈런왕에 올랐다. AFP연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="Y3BN7L9rwd" dmcf-ptype="general"> 다시 말해 수술 후 재활을 마친 뒤 투수로 재기에 성공할 지 확신할 수 없으니 구단은 리스크를 줄이고, 오타니는 의욕을 가질 수 있도록 인센티브 조항을 설정할 것이라는 얘기다. </p>
<p dmcf-pid="G0bjzo2mIe" dmcf-ptype="general">보든은 '오타니는 최근 메이저리그 역사상 가장 위대한 시즌을 보냈다. 물론 건강한 오타니는 중심타선을 맡을 묵직한 방망이와 선발 로테이션 앞을 책임지는 에이스로 손색없다'면서 '오른쪽 팔꿈치 수술을 받아 2024년에는 투수로는 던질 수 없지만 에이전트 네즈 발레로에 따르면 내년 개막전에 지명타자로 준비할 수 있다'며 팔꿈치 수술 후 상황을 설명했다. </p>
<p dmcf-pid="HPiTeho5DR" dmcf-ptype="general">오타니는 2021년부터 올해까지 3년간 투수와 타자로 각각 최정상급 실력을 보유했음을 증명했다. 2021년에는 만장일치로 AL MVP에 올랐고, 올해 생애 두 번째 MVP가 유력하다. 그러나 올시즌 막판 받은 팔꿈치 수술이 협상의 변수로 등장했다는 얘기다. </p>
<p dmcf-pid="XQnydlg1wM" dmcf-ptype="general">보든은 '구단들은 복잡한 계약 방식을 제시할 것이다. 인센티브와 성적에 따른 보너스, 투수로 완벽하게 돌아오지 못할 경우 구단이 스스로를 보호하기 위해 행사할 수 있는 옵트아웃 조항 등을 담을 수 있다'고 설명했다. </p>
<p dmcf-pid="ZxLWJSatwx" dmcf-ptype="general">하지만 그는 '그러나 실수하지 말라(But make no mistakes). 그는 지금까지 없던 선수이기 때문에 야구 역사상 가장 비싼 가격에 계약할 것'이라고 덧붙였다. 오타니 쟁탈전이 뜨겁게 펼쳐질 것이기 때문에 재정적 준비를 단단히 하라는 조언이나 다름없다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="50bjzo2mEQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="시장 분위기는 오타니가 5억달러 계약을 할 수 있는 쪽으로 흐르고 있다. AP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101052918145hqjh.jpg" data-org-width="1200" dmcf-mid="90qaunKwwk" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101052918145hqjh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            시장 분위기는 오타니가 5억달러 계약을 할 수 있는 쪽으로 흐르고 있다. AP연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="1pKAqgVsmP" dmcf-ptype="general"> 보든은 오타니에 이어 야마모토 요시노부, 조던 몽고메리, 애런 놀라, 블레이크 스넬 순으로 2~5위를 선정한 뒤 코디 벨린저와 맷 채프먼을 6,7위에 올려놓았다. 오타니를 제외하면 '톱5' 중 4명이 선발투수다. </p>
<p dmcf-pid="tU9cBafOE6" dmcf-ptype="general">앞서 블리처리포트는 지난 30일 'FA 톱10'을 선정하면서 오타니의 FA 계약을 10년 5억2000만달러로 예측한 바 있다. 유력 행선지로는 다저스를 거론했다. </p>
<p dmcf-pid="Fu2kbN4IE8" dmcf-ptype="general">블리처리포트 역시 '10년간 3억5000만달러를 보장해주고, 계약기간에 따라 투구이닝 당 10만달러를 인센티브로 제공하면, 평균자책점 타이틀 자격이 주어지는, 즉 최소 160이닝을 던질 경우 연간 1600만달러를 확보하게 된다'며 인센티브 조항을 거론했다. </p>
<p dmcf-pid="32xI6reWE4" dmcf-ptype="general">두 매체의 주장대로 이런 기조가 이어진다면 '최소 5억달러가 협상의 출발점'이라는 뉴욕포스트 칼럼니스트 존 헤이먼의 예상이 현실이 될 가능성이 매우 크다. <br/>노재형 기자 jhno@sportschosun.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠조선]</h6></div>
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