
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
    <h3>타이거 우즈 설계한 코스에서 PGA투어 대회 처음 열려…이경훈 출격</h3><h6>권준혁 기자  2023. 11. 1. 06:35</h6>
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
<section dmcf-sid="GAtmlBYxlJ">
<div dmcf-pid="HaZDI7T6Cd" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="312782" data-type="photo" dmcf-pid="XN5wCzyPye" dmcf-ptype="figure">
<p class="link_figure"><img alt="2023년 미국프로골프(PGA) 투어 월드와이드 테크놀로지 챔피언십이 열리는 엘카르도날 골프코스를 설계한 타이거 우즈. 사진제공=ⓒAFPBBNews = News1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/golfhankook/20231101063521263mhmx.jpg" data-org-width="600" dmcf-mid="YH7SG4tnhi" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/golfhankook/20231101063521263mhmx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2023년 미국프로골프(PGA) 투어 월드와이드 테크놀로지 챔피언십이 열리는 엘카르도날 골프코스를 설계한 타이거 우즈. 사진제공=ⓒAFPBBNews = News1
           </figcaption>
</figure>
<div dmcf-pid="Zj1rhqWQSR" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="5vVX3ezclM" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="1TfZ0dqkvx" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="twUhWV5JTQ" dmcf-ptype="general">
<p>[골프한국 권준혁 기자] 미국프로골프(PGA) 투어 일반 대회가 해마다 다른 골프장에서 개최되는 경우는 많지 않다. 물론 4개의 메이저 대회 중 마스터스를 제외한 3개 대회, 캐나다 내셔널 타이틀 대회인 캐나다 오픈, 그리고 BMW 챔피언십은 여러 곳의 대회장이 돌아가며 열리기도 한다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="FrulYf1iyP" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="3m7SG4tnv6" dmcf-ptype="general">
<p>이번 주 PGA 투어 월드와이드 테크놀로지 챔피언십(총상금 820만달러)은 새로운 코스인 멕시코 북서부의 바하 칼리포니아 반도의 디아만테 카보산루카스에 위치한 엘카르도날 골프코스(파72·7,452야드)에서 열린다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="0ZMpBafOT8" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="p5RUbN4Iy4" dmcf-ptype="general">
<p>지난 2014년 문을 연 엘카르도날은 '골프 황제' 타이거 우즈(미국)와 그의 코스설계 회사인 TGR디자인이 합작한 첫 코스로 유명하다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="U1euKj8Chf" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="um7SG4tnSV" dmcf-ptype="general">
<p>엘카르도날 골프코스는 우즈가 어려서 많이 플레이 했던 남부 캘리포니아 지역의 골프장과 많이 닮았다는 평가다. 또 PGA 투어는 "태평양의 아름다운 전경이 펼쳐지는 이 코스는 선수들이 매 홀 다양한 공략을 시도해 볼 수 있도록 설계되었다"고 전한 바 있다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="7szvH8FLh2" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="zOqTX63oy9" dmcf-ptype="general">
<p>우즈가 설계한 코스에서 PGA 투어 대회가 열리는 것도 처음이다. 우즈는 코스 웹사이트에서 "골프 선수들이 생각하고 선택하도록 설계했다"며 "모든 홀을 플레이하는 방법은 다양할 것이다"고 밝혔다. 그러면서 "어프로치의 앵글이 매우 중요하며, 고려해야 할 샷의 종류를 좌우할 것이다"고 언급했다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="qUoK8wRyWK" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="Bug96reWhb" dmcf-ptype="general">
<p>이번 시즌 멕시코에서 개최되는 PGA 투어는 세 번째다. 지난해 11월 멕시코 엘카멜레온 골프클럽에서 진행된 월드와이드 테크놀로지 챔피언십에선 러셀 헨리(미국)가 우승을 차지했고, 올해 4월 멕시코 비단타 바야르타에서 열린 멕시코 오픈에서는 토니 피나우(미국)가 정상을 밟았다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="b7a2PmdYTB" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="KXx0qgVshq" dmcf-ptype="general">
<p>현재 출전이 확정된 한국 선수는 세계랭킹 62위 이경훈(32)뿐이다. 작년 11월에 다른 코스에서 열린 이 대회에선 공동 42위를 기록했다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="9ZMpBafOlz" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="25RUbN4IT7" dmcf-ptype="general">
<p>세계랭킹이 가장 높은 선수는 16위인 캐머런 영(미국)이고, 페덱스컵 랭킹 최상위 선수는 공동 18위인 루카스 글로버(미국)다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="VBA4MInXTu" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="fbc8RCLZWU" dmcf-ptype="general">
<p>PGA 투어는 우승후보를 예측한 파워랭킹 1위에 사히스 티갈라(미국)를 올렸고, 라이더컵에서 선전한 루트비히 아베리(스웨덴)가 2위에 자리했다. 3~4위에는 글로버, 영이 위치했다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="4Kk6eho5hp" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="8zNVQsJGS0" dmcf-ptype="general">
<p>직전 대회인 조조 챔피언십에서 공동 4위로 마친 이시카와 료(일본)도 파워랭킹 8위로 언급됐다.<br/> /골프한국 www.golfhankook.com /뉴스팀 golf@golfhankook.com</p>
</div>
</section>
</div></p></section></div><h6>[Source : 골프한국]</h6></div>
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