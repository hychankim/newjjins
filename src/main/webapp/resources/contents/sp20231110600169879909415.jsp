
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
    <h3>‘ACL 향한 지름길’ FA컵 잡아라! 전북-인천, 제주-포항 4강 격돌…두 걸음 남았다!</h3><h6>남장현 기자  2023. 11. 1. 06:00</h6>
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
<section dmcf-sid="0JcU7L9rEN">
<figure class="figure_frm origin_fig" dmcf-pid="pQo1FR7ADa" dmcf-ptype="figure">
<p class="link_figure"><img alt="스포츠동아DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101060010229wfii.jpg" data-org-width="1200" dmcf-mid="3BrBKj8CDj" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101060010229wfii.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            스포츠동아DB
           </figcaption>
</figure>
<div dmcf-pid="Uxgt3ezcEg" dmcf-ptype="general">
           K리그1 챔피언은 울산 현대가 차지했지만, 또 하나의 트로피가 남아있다. 프로와 아마추어를 망라해 국내축구의 최강자를 가리는 FA컵이다. 2024~2025시즌 아시아축구연맹(AFC) 챔피언스리그 엘리트(ACLE)로 향하는 지름길이기도 하다.
          </div>
<p dmcf-pid="uMaF0dqkso" dmcf-ptype="general">AFC는 다음 시즌부터 상금을 늘리는 대신 규모를 압축해 특별함을 불어넣는 ACLE와 ACL2로 ACL을 개편하는데, K리그에선 1부 1·2위와 FA컵 우승팀이 ACLE, 1부 3위가 ACL2로 각각 향한다.</p>
<p dmcf-pid="7MaF0dqkOL" dmcf-ptype="general">올해 우승까지 두 걸음이 남았다. 1일 전북 현대와 인천 유나이티드가 전주월드컵경기장, 제주 유나이티드와 포항 스틸러스가 제주월드컵경기장에서 ‘2023 하나원큐 FA컵’ 4강전을 치른다. 승자끼리 4일 결승전을 치른다.</p>
<p dmcf-pid="zRN3pJBEEn" dmcf-ptype="general">대한축구협회는 당초 8월 준결승을 진행하려 했으나 새만금 세계스카우트잼버리 파행과 태풍 카눈 등의 외적 변수로 인해 연기하고, 홈&amp;어웨이로 계획했던 결승 방식까지 바꾸면서 비난을 샀다.</p>
<p dmcf-pid="qej0UibDri" dmcf-ptype="general">어찌됐든 ACLE라는 달콤한 선물은 그대로다. 마침 K리그1도 잠시 숨고르기에 들어가는 만큼 FA컵에만 집중할 수 있다. 각자가 나름의 이유로 우승 타이틀이 간절한 만큼 총력전이 예상된다.</p>
<p dmcf-pid="BS5iLyA0sJ" dmcf-ptype="general">K리그1 최다 우승(9회)을 자랑하지만 올 시즌 부침을 겪은 전북은 지난해에 이은 2연패로 명예회복을 노린다. ‘가문의 라이벌’ 울산이 리그 2연패 및 통산 4번째 우승에 성공한 반면 전북은 K리그1 4위에 머물고 있다. 2013년 K리그 승강제 도입 이후 최종 순위가 3위 아래로 내려간 적도 없는 전북이기에 지금의 상황은 많이 낯설다. 단 페트레스쿠 감독은 항저우아시안게임 금메달의 주역인 백승호, 송민규, 박진섭은 물론 문선민, 한교원 등 주축들을 총동원할 참이다.</p>
<p dmcf-pid="bv1noWcpDd" dmcf-ptype="general">올해 처음 ACL을 경험 중인 인천은 창단 첫 우승의 새 역사를 만들기 위해 FA컵을 겨냥하고 있다. 신진호, 델브리지 등 주축 일부가 부상으로 이탈했지만 최근 팀 페이스는 상당히 좋다. 특히 외국인선수들을 빼고 22세 이하(U-22) 자원들을 대거 투입하고도 28일 원정에서 광주FC를 2-0으로 완파해 자신감이 하늘을 찌른다.</p>
<p dmcf-pid="KTtLgYkUOe" dmcf-ptype="general">K리그1 역전 우승이 무산된 김기동 감독의 포항은 남은 시즌 목표가 분명해졌다. 지금의 리그 2위 수성과 함께 FA컵 우승이다. 28일 전북과 원정경기에 교체로 출전했던 제카, 고영준 등 주력들을 전원 FA컵 준결승에 투입할 전망이다.</p>
<p dmcf-pid="9IGRdlg1sR" dmcf-ptype="general">정조국 감독대행의 제주에도 FA컵은 자존심을 회복할 마지막 기회다. 파이널B(7~12위)로 내려앉은 가운데 FA컵은 유일하게 기댈 구석이기 때문이다. 제주의 마지막 FA컵 결승 진출은 준우승을 차지한 2004년이다.</p>
<p dmcf-pid="2CHeJSatIM" dmcf-ptype="general">남장현 기자 yoshike3@donga.com</p>
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