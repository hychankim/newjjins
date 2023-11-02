
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
    <h3>'이강인 경쟁자' 17세 초신성 MF, 프랑스 대표팀 깜짝 승선…유망주 쏟아진다</h3><h6>김현기 기자  2023. 11. 1. 07:40</h6>
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
<section dmcf-sid="xLvXTGEu0o">
<figure class="figure_frm origin_fig" dmcf-pid="yNYtG5mBFL" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101074053939jgak.jpg" data-org-width="500" dmcf-mid="8dIjnafOuj" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101074053939jgak.jpg" width="658"/></p>
</figure>
<p dmcf-pid="WjGFH1sbzn" dmcf-ptype="general">(엑스포츠뉴스 김현기 기자) 프랑스 최고 명문 파리 생제르맹(PSG)에서 이강인과 호흡하는 17세 미드필더가 지난해 카타르 월드컵 준우승팀 프랑스 대표팀에 깜짝 승선할 예정이다.</p>
<p dmcf-pid="Ywt7FUS4Fi" dmcf-ptype="general">유럽축구연맹(UEFA) 챔피언스리그를 통해 발군의 기량을 과시한 터라 벌써부터 그의 활약에 기대가 모아진다.</p>
<p dmcf-pid="GrFz3uv8FJ" dmcf-ptype="general">프랑스 유력지 '레키프'는 1일 종족골 부상을 당한 오렐리앙 추아메니 대신 17세 워렌 자이르-에메리가 프랑스 대표팀에 들어갈 예정이라고 밝혔다. 레알 마드리드에서 뛰는 추아메니가 지난달 29일 끝난 FC바르셀로나와의 '엘 클라시코'에서 부상을 입어 몇 주간 다칠 것이란 얘기다. 추아메니는 왼발 두번째 종족골 피로 골절인 것으로 드러났다.</p>
<p dmcf-pid="Hm3q07T60d" dmcf-ptype="general">프랑스는 오는 19일 아프리카와 인접한 소국 지브롤터, 22일 그리스와 2024년 독일 유럽축구선수권대회(유로 2024) 예선을 치른다. 프랑스는 이미 본선행을 확정지은 상태가 두 나라와의 대결을 사실상 친선 경기처럼 치르는데 추아메니 빠진 곳에 자이르-에메리를 투입해 테스트하겠다는 게 디디에 데샹 프랑스 대표팀 감독의 생각이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="XVAmcwRy3e" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101074055361gjgj.jpg" data-org-width="500" dmcf-mid="6ZlGSWcpUN" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101074055361gjgj.jpg" width="658"/></p>
</figure>
<p dmcf-pid="ZfcskreWpR" dmcf-ptype="general">2006년 3월8일생으로 이제 17세 8개월이 조금 안 된 자이르-에메리는 한국 선수들로 따지면 고등학교 2학년이다.</p>
<p dmcf-pid="54kOEmdYUM" dmcf-ptype="general">하지만 나이를 초월하는 엄청난 발전 가능성으로 벌써부터 유럽 무대에서 주목을 받는 중이다. 특히 지난달 26일 열린 UEFA 챔피언스리그 조별리그 F조 3차전 AC밀란과의 대결에서 결정적인 어시스트를 2개나 뽑아내며 PSG 3-0 완승에 기여했고 경기 직후엔 최우수선수에 수여하는 '맨 오브 더 매치(Man of the match)'에 선정됐다.</p>
<p dmcf-pid="1PwhrInX0x" dmcf-ptype="general">또 영국 유력지 가디언에서 2006년생 중 가장 재능 넘치는 선수로 인정받기도 했다. PSG에서도 중앙 미드필더를 맡고 있는데 지난 시즌까진 26경기 중 18경기를 교체로 들어가는, 잠재력을 테스트받는 수준이었으나 루이스 엔리케 감독이 부임한 2023/24시즌엔 리그1 9경기와 UEFA 챔피언스리그 3경기 등 공식전 12경기 중 11경기를 선발로 뛰는 그야말로 핵심 미드필더가 됐다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="tQrlmCLZpQ" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101074056638kbfk.jpg" data-org-width="500" dmcf-mid="PtnALN4I0a" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101074056638kbfk.jpg" width="658"/></p>
</figure>
<p dmcf-pid="FD1utplf0P" dmcf-ptype="general">자이르-에메리는 이강인과도 호흡하고 있다. 이강인은 아직까진 PSG에서 측면 윙어로 우스만 뎀벨레와 경쟁하는 상황인데 그러다보니 자이르-에메리와는 경쟁보다는 협력하는 모습이 많다.</p>
<p dmcf-pid="3wt7FUS476" dmcf-ptype="general">다만 엔리케 감독이 이강인의 주포지션을 미드필더로 삼고 있어 이강인이 중원에 오면 자이르-에메리, 그리고 우루과이 대표인 마누엘 우가르테와 경쟁할 수도 있다.</p>
<p dmcf-pid="0rFz3uv878" dmcf-ptype="general">17세 신성의 대표팀 승선은 프랑스 축구에 잠재력 넘치는 선수들이 얼마나 많은가를 알려주는 징표도 된다. 같은 포지션의 세계적인 선수인 폴 포그바가 도핑 양성으로 선수 생활 중단 위기를 맞은 가운데 자이르-에메리의 승선으로 프랑스 대표팀은 자연스럽게 세대교체를 진행하는 그림을 만들었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="plzVq9Xe34" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101074058139nidc.jpg" data-org-width="500" dmcf-mid="QH2QV63oug" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101074058139nidc.jpg" width="658"/></p>
</figure>
<p dmcf-pid="USqfB2ZdUf" dmcf-ptype="general">사진=연합뉴스</p>
<p dmcf-pid="uvB4bV5J0V" dmcf-ptype="general">김현기 기자 spitfire@xportsnews.com </p>
</section>
</div></p></section></div><h6>[Source : 엑스포츠뉴스]</h6></div>
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