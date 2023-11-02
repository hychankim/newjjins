
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
    <h3>‘오승환→류현진→이정후’ 토론토의 한국선수 사랑 계속될까, “외야에 진짜배기 추가할 기회”</h3><h6>길준영  2023. 11. 1. 05:30</h6>
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
<section dmcf-sid="BhEuw3C2Re">
<figure class="figure_frm origin_fig" dmcf-pid="bTmBOuv8RR" dmcf-ptype="figure">
<p class="link_figure"><img alt="키움 히어로즈 이정후. /OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101053016420grzn.jpg" data-org-width="530" dmcf-mid="pilSMInXiF" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101053016420grzn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            키움 히어로즈 이정후. /OSEN DB
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="KuZd1xUNMM" dmcf-ptype="figure">
<p class="link_figure"><img alt="키움 히어로즈 이정후. /OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101053017696mdex.jpg" data-org-width="530" dmcf-mid="ubjtjXwzMn" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101053017696mdex.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            키움 히어로즈 이정후. /OSEN DB
           </figcaption>
</figure>
<p dmcf-pid="9Swzmplfix" dmcf-ptype="general">[OSEN=길준영 기자] 토론토 블루제이스가 키움 히어로즈 이정후(25) 영입을 위해 움직일까. </p>
<p dmcf-pid="2BFL0dqkdQ" dmcf-ptype="general">미국매체 스포츠일러스트레이티드에서 운영하는 팬네이션은 지난 31일(한국시간) 토론토가 오프시즌 보강해야 할 포지션을 분석하면서 가장 먼저 외야수를 언급했다. 이정후도 유력한 후보 중 한 명으로 거론됐다. </p>
<p dmcf-pid="V1T6WV5JMP" dmcf-ptype="general">팬네이션은 “토론토는 조지 스프링어와 달튼 바쇼가 확실한 주전 외야수로 뛰고 있다. 하지만 이번 겨울 가장 급한 포지션은 올해 fWAR(팬그래프 기준 대체선수대비승리기여도) 2.2를 기록한 케빈 키어마이어가 FA가 되는 중견수다. 토론토는 바쇼를 중견수로 옮기고 새로운 좌익수를 영입하거나 바쇼를 좌익수로 계속 기용하고 대체 중견수를 찾을 수 있다”라고 토론토의 외야수 영입 필요성을 설명했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="fb3opJBEd6" dmcf-ptype="figure">
<p class="link_figure"><img alt="키움 히어로즈 이정후. /OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101053019190dazq.jpg" data-org-width="650" dmcf-mid="7wnGnTj3di" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101053019190dazq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            키움 히어로즈 이정후. /OSEN DB
           </figcaption>
</figure>
<p dmcf-pid="475JtMujR8" dmcf-ptype="general">“토론토가 새로운 중견수를 데려오기로 한다면 일단 키어마이어와 재결합 할 가능성이 가장 크다”라고 전망한 팬네이션은 “하지만 타격을 좀 더 보강하고 싶다면 좌익수 시장을 고려하는게 토론토 입장에서는 최선의 방법이다. 이번 FA 시장에서는 좌익수와 중견수 시장이 가장 좋다. 코디 벨린저(컵스)와 한국에서 오는 이정후를 제외하면 올스타급 선수가 많지는 않지만 외야진에 진짜배기 타자를 영입할 기회다”라고 강조했다. </p>
<p dmcf-pid="8oxvRCLZJ4" dmcf-ptype="general">KBO리그 통산 884경기 타율 3할4푼(3476타수 1181안타) 65홈런 515타점 OPS .898을 기록한 이정후는 지난 시즌 142경기 타율 3할4푼9리(553타수 193안타) 23홈런 113타점 OPS .996으로 커리어하이 시즌을 보내며 타격 5관왕(타율, 출루율, 장타율, 타점, 최다안타)과 리그 MVP를 석권했다. 시즌 종료 후 포스팅을 통한 메이저리그 진출을 선언한 올 시즌에는 부상으로 시즌을 일찍 마쳤지만 86경기 타율 3할1푼8리(330타수 105안타) 6홈런 45타점 OPS .861으로 괜찮은 성적을 거뒀다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="6uZd1xUNMf" dmcf-ptype="figure">
<p class="link_figure"><img alt="키움 히어로즈 이정후. /OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101053019435iwbe.jpg" data-org-width="650" dmcf-mid="zU5e5QpaJJ" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101053019435iwbe.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            키움 히어로즈 이정후. /OSEN DB
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Psj3c5mBRV" dmcf-ptype="figure">
<p class="link_figure"><img alt="키움 히어로즈 이정후. /OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101053020800wfbh.jpg" data-org-width="530" dmcf-mid="qlnXoWcpdd" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101053020800wfbh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            키움 히어로즈 이정후. /OSEN DB
           </figcaption>
</figure>
<p dmcf-pid="QknXoWcpn2" dmcf-ptype="general">토론토는 최근 한국인 선수를 적극적으로 영입하는 팀 중 하나다. 2018년에는 오승환을 1+1년 최대 750만 달러(약 101억원)에 데려왔고 2020년에는 류현진과 4년 8000만 달러(약 1080억원) 계약을 맺었다. 오승환은 시즌 중에 콜로라도로 트레이드 됐고 류현진은 올해를 마지막으로 4년 계약이 끝났지만 만약 이정후가 토론토와 계약하면 구단 역대 세 번째 한국인선수가 될 수 있다. </p>
<p dmcf-pid="xknXoWcpi9" dmcf-ptype="general">한국 최고의 타자로 꼽히는 이정후는 메이저리그에서도 많은 관심을 받고 있다. 샌프란시스코 피트 푸틸라 단장이 이정후의 시즌 최종전을 보기 위해 직접 서울 고척스카이돔을 방문했고 수 많은 메이저리그 스카우트들이 이정후를 보기 위해 시즌 내내 고척돔을 찾았다. 이정후는 메이저리그 공식매체 MLB.com에서 선정한 FA 랭킹에서도 전체 14위에 오르며 좋은 평가를 받았다. 외야수 중에서는 4위 벨린저와 11위 호르헤 솔레어(마이애미)에 이어서 3위를 기록했다. 샌프란시스코 외에도 다저스, 양키스, 샌디에이고 등 복수의 구단들이 이정후를 노리고 있다. </p>
<p dmcf-pid="yoxvRCLZeK" dmcf-ptype="general">외야수 보강이 절실한 토론토가 이정후 영입전에 뛰어든다면 이정후를 둘러싼 이번 스토브리그는 그 어느 때보다 뜨거울 전망이다. /fpdlsl72556@osen.co.kr</p>
</section>
</div></p></section></div><h6>[Source : OSEN]</h6></div>
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