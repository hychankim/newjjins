
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
    <h3>가장 치열한 '게임대상' 대상 수상 경쟁 벌어진다</h3><h6>이원희  2023. 10. 31. 19:05</h6>
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
<section dmcf-sid="qCiOeXwzd2">
<p dmcf-pid="BFs1wKHRe9" dmcf-ptype="general"> 지금까지 이보다 더 치열했던 적이 없다. 어렵지 않게 대상 수상작을 예상할 수 있었던 예년과 달리 올해 '대한민국 게임대상'은 누가 대상을 받을지 쉽게 짐작하기 어려울 정도로 쟁쟁한 후보작들이 경쟁을 펼치고 있다.</p>
<p dmcf-pid="bTaSLFI9JK" dmcf-ptype="general">◆데이브 더 다이버, 넥슨의 새로운 시도 결실 맺을까?</p>
<figure class="figure_frm origin_fig" dmcf-pid="KulpI4tnLb" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031190543345qgnd.jpg" data-org-width="1200" dmcf-mid="pQ0PtafOd6" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031190543345qgnd.jpg" width="658"/></p>
</figure>
<div dmcf-pid="9Sohi1sbdB" dmcf-ptype="general">
           넥슨이 서브 브랜드 민트로켓의 첫 타이틀로 준비한 '데이브 더 다이버(이하 데이브)'는 평단의 높은 평가와 함께 흥행에도 성공하며 올 한 해 동안 큰 화제를 모은 바 있다. 
          </div>
<p dmcf-pid="2ByzSQpaiq" dmcf-ptype="general">낮에는 스쿠버다이브를 통한 심해 탐험과 낚시를, 저녁에는 초밥집 경영에 나서는 어드벤처 및 타이쿤 복합 게임인 '데이브'는 국산 게임 최초로 메타크리틱 평점 90점(PC버전 기준)을 기록했으며 글로벌 200만 장 판매에 성공, 손익분기점을 일찌감치 넘어서며 상업적으로도 의미있는 성과를 냈다. 거기에 최근 들어서는 닌텐도 스위치 버전을 출시, 한국과 미국, 일본 등 주요 국가 닌텐도 e숍 판매 순위 상위권에 오르며 흥행 행진을 이어가고 있다. </p>
<p dmcf-pid="V1rZEBYxez" dmcf-ptype="general">'데이브'는 소규모 인원으로 출발한 프로젝트임에도 완성도 높은 게임성을 바탕으로 평단과 이용자의 호평을 동시에 이끌어냈으며, 기대 이상의 상업적인 성과까지 이끌어내 이번 '게임대상'서 유력 대상 후보로 떠오르고 있다.</p>
<p dmcf-pid="fulpI4tnd7" dmcf-ptype="general">넥슨 또한 내심 '데이브'의 대상 수상을 바라고 있다. 지난해 네오플의 '던파 모바일' 대상 수상에 이어 2년 연속 최고 상을 받겠다는 것. '데이브'가 대상을 받는다면 넥슨의 새로운 시도가 옳은 선택이었음을 다시 한 번 증명하는 계기가 될 것이다.</p>
<p dmcf-pid="4LbizwRyJu" dmcf-ptype="general">◆국산 본격 소울라이크 'P의 거짓', 대상 넘본다</p>
<p dmcf-pid="8Uh0Of1iLU" dmcf-ptype="general">네오위즈의 소울라이크 신작 'P의 거짓' 또한 이번 '2023년 대한민국 게임대상'의 강력한 대상 후보 중 하나로 꼽히고 있다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="6mRwQWcpLp" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031190543796merj.jpg" data-org-width="800" dmcf-mid="U7rZEBYxJ8" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031190543796merj.jpg" width="658"/></p>
</figure>
<div dmcf-pid="Pc8jVho5n0" dmcf-ptype="general">
           지난해 '지스타'에 출품돼 많은 관람객들의 관심을 모았던 'P의 거짓'은 지난 9월19일 정식 출시 후 판매량 100만 장을 돌파했다. 출시와 동시에 엑스박스 게임패스에 입점해 상대적으로 엑스박스 버전 판매량이 저조할 수밖에 없었던 점을 감안하면 훌륭한 초반 성과라 할 수 있다.
          </div>
<p dmcf-pid="Qc8jVho5e3" dmcf-ptype="general">'P의 거짓'은 메타크리틱 평점 또한 80점이라는 준수한 점수를 받았다. 무엇보다 소울라이크 장르 마니아들로부터 합격점을 받은 점이 높게 평가받고 있다. '다크소울'이나 '엘든링' 등 소울라이크 명작들을 두루 섭렵한 게이머들도 'P의 거짓'에 후한 평가를 내리고 있다.</p>
<p dmcf-pid="xtm5DbGMnF" dmcf-ptype="general">한국 개발사들이 공략에 어려움을 겪었던 글로벌 콘솔 시장을 제대로 개척했다는 점에서 가산점이 주어진다면 'P의 거짓'이 이번 '게임대상' 시상식에서 최고 영예의 대상을 받을 가능성이 충분하다. 장르와 플랫폼 다변화의 선두주자 'P의 거짓'이 이번 '게임대상'에서 어떤 상을 받을지 많은 관심이 쏠리고 있다.</p>
<p dmcf-pid="yRUx3j8Cnt" dmcf-ptype="general">◆모바일 흥행작 '나이트크로우'-'니케', 대상 레이스 다크호스 되나</p>
<p dmcf-pid="Wd7RpcPln1" dmcf-ptype="general">모바일게임 흥행작인 위메이드의 MMORPG '나이트크로우'와 시프트업이 개발하고 레벨 인피니트가 서비스하는 미소녀 건슈팅 액션 '승리의 여신: 니케(이하 니케)'도 이번 '게임대상' 대상 수상 경쟁에서 다크호스로 지목되고 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="YfZ2GJBEi5" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031190544046vgwh.jpg" data-org-width="1280" dmcf-mid="71WqvxUNef" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031190544046vgwh.jpg" width="658"/></p>
</figure>
<div dmcf-pid="G5wXkqWQJZ" dmcf-ptype="general">
           먼저 '나이트크로우'는 언리얼 엔진5를 기반으로 제작돼 한 차원 높은 그래픽을 앞세워 출시 이후 장기간 국내 구글 플레이 매출 1위 자리를 차지한 바 있다. 엔씨소프트의 '리니지M'에게 다시 1위 자리를 내주기는 했지만 여전히 매출 순위 최상위권을 유지하고 있다.
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="HIJsRHD7MX" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031190544525jhnh.jpg" data-org-width="1200" dmcf-mid="zLAyaplfLV" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031190544525jhnh.jpg" width="658"/></p>
</figure>
<div dmcf-pid="X0IFm2ZdLH" dmcf-ptype="general">
           지난해 11월 출시된 '니케' 또한 매력적인 미소녀 캐릭터 일러스트를 앞세워 서브컬처 게임으로는 이례적으로 국내 구글 매출 순위 1위에 오르는 등 많은 사랑을 받아왔다. 또한, 서브컬처 게임 종주국인 일본서도 구글 매출 1위에 오르는 등 해외서도 높은 인기를 얻었다. 최근 들어서는 순위가 하락했지만 주요 업데이트 후에는 여전히 차트 역주행에 나서며 매출 순위 상위권에 이름을 올리며 여전한 인기를 과시하고 있다.
          </div>
<p dmcf-pid="ZZDHczyPJG" dmcf-ptype="general">'데이브'와 'P의 거짓'에 '나이트크로우'와 '니케'까지. 다른 해에 출시됐다면 대상 수상 가능성이 훨씬 높았을 우수 게임들이 모두 몰린 올해 '대한민국 게임대상' 대상 수상작을 예측하기 쉽지 않은 상황이다. 가장 치열한 경쟁 속에 최고 영예인 대상의 주인공이 누가 될지 많은 이들의 관심이 쏠리고 있다.</p>
<p dmcf-pid="5qT7lP0gnY" dmcf-ptype="general">한편, '2023 대한민국 게임대상' 시상식은 오는 11월15일 부산 벡스코 컨벤션홀에서 진행된다.</p>
<p dmcf-pid="1Q361gVsJW" dmcf-ptype="general">이원희 기자 (cleanrap@dailygame.co.kr)</p>
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