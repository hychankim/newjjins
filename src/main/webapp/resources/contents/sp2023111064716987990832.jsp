
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
    <h3>"최고의 선물은 '국제선' 티켓" 전북·인천, 제주·포항→FA컵 결승행, 두 팀만 생존</h3><h6>김성원  2023. 11. 1. 06:47</h6>
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
<section dmcf-sid="UsJdKj8Csk">
<figure class="figure_frm origin_fig" dmcf-pid="7j840dqkOA" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101064746425xheh.jpg" data-org-width="1200" dmcf-mid="FukcMInXsr" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101064746425xheh.jpg" width="658"/></p>
</figure>
<div dmcf-pid="zA68pJBEOj" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="qcP6UibDON" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101064746647cgca.jpg" data-org-width="1200" dmcf-mid="38bBX63oDw" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101064746647cgca.jpg" width="658"/></p>
</figure>
<div dmcf-pid="BibBX63oEa" dmcf-ptype="general">
<div>
             [스포츠조선 김성원 기자]K리그1의 정상 혈투가 일찌감치 막을 내렸다. 울산 현대가 창단 후 첫 2연패의 위업을 달성했다. K리그1은 여전히 3라운드가 남았다. '윗물'인 파이널A의 또 다른 전장은 아시아챔피언스리그(ACL) 티켓 전쟁이다.
           </div>
</div>
<p dmcf-pid="bnKbZP0gIg" dmcf-ptype="general">ACL은 2024~2025시즌 새롭게 재편된다. ACL 엘리트(ACLE)와 ACL2, 두 개의 대회로 분리된다. K리그의 경우 ACLE에는 2.5장이 배정될 것으로 보인다. K리그1 챔피언 울산이 이미 한 장의 티켓을 거머쥐었다. 또 한 장의 주인이 가려진다. '저비용-고효율'의 토너먼트 대회인 FA컵이다. FA컵 우승컵의 향방에 따라 K리그1은 4위팀까지 ACL2에 출전할 수 있다.</p>
<p dmcf-pid="KL9K5QpaIo" dmcf-ptype="general">프로와 아마추어를 총망라해 '왕중왕'을 가리는 FA컵의 종착역이 목전이다. 정상을 향한 마지막 혈투가 불을 뿜는다. 새만금 잼버리 K-POP 콘서트 이슈와 태풍 '카눈'으로 연기된 4강전이 1일 열린다. 이변은 없었다. 최상위 K리그1 4개팀이 살아남았다. 디펜딩챔피언 전북 현대를 비롯해 포항 스틸러스, 인천 유나이티드, 제주 유나이티드가 무대에 오른다. 전북은 이날 오후 7시 전주월드컵경기장에서 인천과 결승행 티켓을 놓고 단판 승부를 펼친다. 제주는 오후 7시30분 제주월드컵경기장에서 포항과 격돌한다.</p>
<p dmcf-pid="9KHGr0hVEL" dmcf-ptype="general">4개팀 중 K리그1 순위는 포항이 가장 높다. 승점 60점으로 2위다. 전북과 인천이 4위(승점 53)와 5위(승점 52) 그리고 유일하게 파이널B에 포진한 제주가 9위(승점 39)에 위치해 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="29XHmplfOn" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101064747032wkls.jpg" data-org-width="1200" dmcf-mid="0slhNHD7ID" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101064747032wkls.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="V2ZXsUS4Ii" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101064747228cuyw.jpg" data-org-width="1200" dmcf-mid="pUsmnTj3sE" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101064747228cuyw.jpg" width="658"/></p>
</figure>
<div dmcf-pid="fIni2cPlDJ" dmcf-ptype="general">
            수원 삼성과 함께 FA컵 통산 최다 우승(5회)에 빛나는 전북은 마지막 자존심을 걸었다. K리그1에서 울산과 우승을 다툴 것으로 전망됐지만 혹독한 시즌을 보냈다. 4위는 전북과 어울리지 않는 위치다. 전북은 올 시즌 인천과 3차례 맞붙어 2승1무로 우세하다. 특히 홈에선 2전 전승을 거뒀다.
          </div>
<p dmcf-pid="4CLnVkQSmd" dmcf-ptype="general">하지만 창단 후 첫 FA컵 우승을 꿈꾸는 인천은 만만한 상대가 아니다. 신진호 이명주 델브리지가 부상으로 출전할 수 없지만 분위기는 나쁘지 않다. FA컵 4강을 대비, 지난 주말 '젊은피'들을 내세워 광주FC를 2대0으로 꺾고 바람을 탔다. 무고사, 제르소, 에르난데스 등 외국인 공격수들도 건재하다. 인천은 2015년 구단 사상 처음으로 FA컵 결승에 올랐지만 FC서울에 패해 우승을 놓쳤다.</p>
<p dmcf-pid="8hoLfExvEe" dmcf-ptype="general">울산 추격에 실패한 포항과 제주도 FA컵이 유일한 희망이다. 포항은 오베르단과 완델손의 부상 이탈이 뼈아프다. 최근 K리그1 5경기에서 4무1패로 부진하다. 하지만 FA컵은 포기할 수 없다. 2013년 이후 10년 만의 정상을 노크한다.</p>
<p dmcf-pid="6plhNHD7DR" dmcf-ptype="general">8강에서 승부차기 끝에 '절대 1강' 울산을 꺾고 4강에 오른 제주도 배수진을 쳤다. 파이널 라운드에서 연패를 끊고 1승1무를 기록, 예열은 마쳤다. 올 시즌 상대전적에선 2승1패로 포항이 우세하다. 하지만 제주는 홈에서는 포항에 승리했다. 2004년 전신인 부천SK 시절 피날레 무대에 오른 제주는 19년 만의 결승행에 도전한다. </p>
<p dmcf-pid="PUSljXwzDM" dmcf-ptype="general">인천, 전북, 제주, 포항, 4개팀 중 2개팀만 생존한다. 대망의 FA컵 결승전은 사흘 후인 4일 열린다. 홈 앤드 어웨이가 아닌 단판 승부로 챔피언이 결정된다. <br/>김성원 기자 newsme@sportschosun.com</p>
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