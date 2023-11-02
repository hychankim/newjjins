
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
    <h3>‘4전5기’최성원 프로당구 첫 우승</h3><h6>양형모 기자  2023. 11. 1. 05:30</h6>
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
<section dmcf-sid="8YkEKj8CDo">
<figure class="figure_frm origin_fig" dmcf-pid="6V51NHD7sL" dmcf-ptype="figure">
<p class="link_figure"><img alt="최성원이 30일 경기도 고양 킨텍스 PBA 스타디움에서 열린 2023∼24시즌 프로당구 5차전 ‘휴온스 PBA 챔피언십’ 결승에서 우승을 차지한 뒤 우승트로피와 우승상금 1억원을 들고 기뻐하고 있다.  사진제공 l PBA" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101053016518udis.jpg" data-org-width="572" dmcf-mid="4tQxH8FLsg" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101053016518udis.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            최성원이 30일 경기도 고양 킨텍스 PBA 스타디움에서 열린 2023∼24시즌 프로당구 5차전 ‘휴온스 PBA 챔피언십’ 결승에서 우승을 차지한 뒤 우승트로피와 우승상금 1억원을 들고 기뻐하고 있다. 사진제공 l PBA
           </figcaption>
</figure>
<div dmcf-pid="Pf1tjXwzDn" dmcf-ptype="general">
           마침내 최성원(46·휴온스)이 프로당구(PBA) 첫 우승컵을 들어올렸다.
          </div>
<p dmcf-pid="QUSvRCLZri" dmcf-ptype="general">‘한국 3쿠션 간판’ 최성원은 30일 경기도 고양 킨텍스 PBA 스타디움에서 열린 2023∼24시즌 프로당구 5차전 ‘휴온스 PBA 챔피언십’ 결승에서 팀 동료 하비에르 팔라존(35·스페인)을 세트 점수 4-1(15-1 15-9 9-15 15-8 15-1)로 꺾고 우승을 차지했다. </p>
<p dmcf-pid="xuvTeho5mJ" dmcf-ptype="general">최성원은 한국인 최초 3쿠션 세계선수권대회 우승, 3쿠션 월드컵 우승 등 10여 년간 아마추어 무대를 주름잡았다. 이후 프로 무대로 옮겨 5개 대회 만에 정상을 밟았다. 특히 최성원은 이번 우승으로 4개 대회 연속 1라운드 탈락이라는 불명예도 날려 보냈다. 또 상금 1억 원을 호주머니에 넣고 랭킹포인트 10만점도 얻어 시즌 잔류를 확정했다.</p>
<p dmcf-pid="ycPQG4tnEd" dmcf-ptype="general">이날 결승에서 최성원은 두 세트를 먼저 따내며 기세를 올렸다. 특히 1세트에서는 2이닝 째에 하이런 9점을 폭발하며 대승을 거두고 쾌조의 출발을 보였다. 결승 상대인 팔라존도 쉽게 물러서지 않았다. 3세트 초구에서 뱅크샷 두 방을 포함해 6점으로 출발한 팔라존은 5이닝 동안 공타 없이 6-4-1-3-1점을 차례로 득점하며 반격을 시작했다.</p>
<p dmcf-pid="WlgaunKwre" dmcf-ptype="general">승부처는 4세트였다.</p>
<p dmcf-pid="YSaN7L9rsR" dmcf-ptype="general">3세트 4이닝까지 7-8로 뒤졌던 최성원은 팔라손이 4이닝부터 연속 공타로 주줌한 사이 5이닝부터 연속 4-2-2점을 뽑아내 분위기를 되돌렸다. 팔부능선을 넘은 최성원은 이후 여세를 몰아 마지막 4세트도 3이닝에서만 하이런 12점을 몰아쳐 우승을 결정지었다.</p>
<p dmcf-pid="GvNjzo2mOM" dmcf-ptype="general">최성원은 우승 뒤 “그동안 승리가 한 번도 없어 마음고생이 정말 심했고, 자책도 많이 했다”면서 “이번 대회는 행운이 많이 따라 설움을 한 번에 털어버릴 수 있는 계기가 된 것 같다”고 말했다.</p>
<p dmcf-pid="HCLopJBEOx" dmcf-ptype="general">한편 대회 한 경기에서 가장 높은 애버리지를 기록한 선수에게 주어지는 특별상 ‘웰뱅톱랭킹’(상금 400만원)은 64강에서 PBA 역대 2위 기록인 애버리지 5.625를 기록한 스페인 출신 다비드 사파타(블루원리조트)가 수상했다. 대회 최초 한 세트 15점을 한 번에 달성하면 주어지는 ‘TS샴푸 퍼펙트큐’(상금 1000만원)는 128강 4세트에서 15점을 단번에 달성한 61세 최고령 최재동에게 돌아갔다.</p>
<p dmcf-pid="XhogUibDwQ" dmcf-ptype="general">양형모 기자 hmyang0307@donga.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠동아]</h6></div>
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