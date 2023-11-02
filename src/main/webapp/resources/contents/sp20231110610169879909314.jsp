
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
    <h3>K리그1 4위 전북과 5위 인천…ACL 향한 열망, FA컵 결승 진출은 누구보다 간절하다</h3><h6>정다워  2023. 11. 1. 06:10</h6>
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
<section dmcf-sid="f0zctMujRb">
<figure class="figure_frm origin_fig" dmcf-pid="4NEuoWcpJB" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101061006154spqi.jpg" data-org-width="700" dmcf-mid="29FLYf1in9" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101061006154spqi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="8NEuoWcpMq" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="6jD7gYkUnz" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101061006716fxex.jpg" data-org-width="700" dmcf-mid="VXUNZP0gMK" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101061006716fxex.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="P50gH8FLM7" dmcf-ptype="general"><br/> [스포츠서울 | 정다워기자] 전북 현대와 인천 유나이티드 모두 물러설 수 없다.</p>
<p dmcf-pid="QWZdvKHRiu" dmcf-ptype="general">전북과 인천은 1일 전주월드컵경기장에서 2023 하나원큐 FA컵 준결승전을 치른다. 결승, 그리고 우승으로 가기 위해 물러설 수 없는 한 판이다.</p>
<p dmcf-pid="xG1iy2ZdRU" dmcf-ptype="general">전북과 인천 모두 간절하다. 우승 트로피를 향한 열망 자체도 크지만, 현재 K리그1에서의 순위를 고려하면 FA컵 우승은 더 필요하다. 전북은 4위, 인천은 5위에 자리하고 있다. 현재 순위라면 두 팀 모두 2024~2025시즌 아시아축구연맹 챔피언스리그(ACL)에 나가지 못한다.</p>
<p dmcf-pid="y26hbN4IJp" dmcf-ptype="general">다음 시즌에는 K리그1, FA컵 우승팀이 ACL엘리트로 직행한다. K리그1 2위는 ACL엘리트 플레이오프로 향할 가능성이 크다. 3위는 유럽의 유로파리그에 해당하는 ACL2에 출전할 것으로 보인다. FA컵 우승팀이 ACL2로 향하고 K리그1 상위 세 팀이 ACL엘리트로 가는 안을 놓고 대한축구협회와 한국프로축구연맹이 논의 중이지만 2024~2025시즌에는 기존 안대로 갈 가능성이 큰 것으로 알려졌다. FA컵을 품으면 다음시즌에도 ACL엘리트 무대를 누빌 수 있다. 전북은 ACL에 못 나가는 그림을 상상하기 어렵다. 인천도 올해 아시아 무대의 맛을 봤다. 다시는 놓치고 싶지 않은 기회다.</p>
<p dmcf-pid="WXFLYf1ii0" dmcf-ptype="general">K리그1은 이제 3라운드를 남겨놓고 있다. 전북은 승점 53으로 2위 포항 스틸러스(60점), 3위 광주FC(57점)에 각각 7점, 4점 뒤진다. 아직 광주와의 맞대결이 남아 있긴 하지만 역전을 장담할 수 없다. 52점으로 전북의 뒤를 쫓는 인천 사정도 다르지 않다. ACL로 가기 위해 가장 빠르고 안전한 길은 FA컵에서 우승하는 것에 있다. 두 팀 모두 물러설 수 없는 이유다.</p>
<p dmcf-pid="Yslfw3C2e3" dmcf-ptype="general">전북은 지난달 25일 라이언 시티와의 ACL 조별리그, 그리고 28일 포항과의 K리그1 경기에서 폭넓은 로테이션을 실시했다. 베스트11에서 골키퍼 김정훈과 레프트백 김진수를 제외한 나머지 9명을 모두 바꿨다. FA컵에 힘을 주기 위한 결정이었다.</p>
<p dmcf-pid="GFuj5QpaJF" dmcf-ptype="general">인천도 마찬가지였다. 난적 광주와의 경기에서 인천은 22세 이하 선수 11명을 엔트리에 넣었다. 선발로도 7명을 투입했다. 그러고도 2-0 승리하며 로테이션 작전을 성공시켰다. 팀 전력의 핵심인 무고사, 제르소, 음포쿠, 에르난데스 등이 모두 휴식을 취했다. 전북에 비해 스쿼드가 두껍지 않지만, 체력적으로 보면 유불리를 따지기 어려운 긍정적인 상황을 스스로 만든 셈이다.</p>
<p dmcf-pid="HHtnWV5JRt" dmcf-ptype="general">weo@sportsseoul.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠서울]</h6></div>
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