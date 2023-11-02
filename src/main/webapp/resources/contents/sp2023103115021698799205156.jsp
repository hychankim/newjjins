
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
    <h3>[리포트]"나도 한번 강남 건물주"...'빌딩앤파이터' 리뷰</h3><h6>최종봉  2023. 10. 31. 15:02</h6>
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
<section dmcf-sid="QWlm6ZrqGg">
<figure class="figure_frm origin_fig" dmcf-pid="xYSsP5mBGo" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031150241842mpfg.jpg" data-org-width="770" dmcf-mid="VAox5kQSGk" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031150241842mpfg.jpg" width="658"/></p>
</figure>
<div dmcf-pid="yeP2TL9rtL" dmcf-ptype="general">
            에이스톰이 개발하고 넥슨에서 서비스하는 위치기반 액션RPG '빌딩앤파이터'는 "대한민국에 있는 수많은 빌딩은 도대체 누가 가지고 있는 걸까?"는 호기심에 출발했다.
          </div>
<p dmcf-pid="WdQVyo2mZn" dmcf-ptype="general">본 게임에서는 대한민국의 전 전역이 무대가 된다. 종로나 강남처럼 서울의 도심지는 물론 전국의 공원, 건물, 랜드마크 등을 다른 유저와 경쟁하며 뺏고 뺏기는 재미를 만나볼 수 있다.</p>
<div dmcf-pid="YfbUmQpaXi" dmcf-ptype="general">
           기본적인 진행은 액션을 기반으로 한다. '최강의군단'과 '나이트워커'에서 느낄 수 있었던 완성도 높은 액션은 '빌딩앤파이터'에서도 이어진다. 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="G4KusxUNHJ" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031150243770oxbz.jpg" data-org-width="550" dmcf-mid="flcipsJGtc" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031150243770oxbz.jpg" width="658"/></p>
</figure>
<div dmcf-pid="H897OMujtd" dmcf-ptype="general">
            쌍검을 사용하는 근접형 딜러 'B', 올라운더 근접 격투 캐릭터 '올가', 총기류를 활용하는 원거리 형 '유나' 셋 중의 하나를 선택해 간단한 조작만으로도 격투게임과 같은 콤보를 이어갈 수 있다.
          </div>
<div dmcf-pid="XtHvJUS4te" dmcf-ptype="general">
           캐릭터가 성장함에 따라 '전직'을 거치면 직업마다 특화된 공격 스타일이 더해진다. 아직은 3가지 전직만이 마련됐고 조금 더 특화된 스타일이 부족하지만 추후 업데이트를 통해 해소되길 기대한다. 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="ZFXTiuv8tR" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031150245147mtwc.jpg" data-org-width="550" dmcf-mid="4cYIxtOK5A" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031150245147mtwc.jpg" width="658"/></p>
</figure>
<div dmcf-pid="5lsk2WcpZM" dmcf-ptype="general">
            직접 플레이하는 캐릭터 외에도 전투를 도와줄 '부하'가 존재한다.
          </div>
<p dmcf-pid="1SOEVYkUGx" dmcf-ptype="general">부하는 마치 격투 게임의 스트라이커 시스템처럼 잠깐 등장해 공격을 펼치고 퇴장하는 '어썰트' 타입부터 함께 전투를 펼치는 '뱅가드' 타입 등 플레이어의 전투 스타일에 따라 자유롭게 세팅할 수 있다.</p>
<p dmcf-pid="tvIDfGEu1Q" dmcf-ptype="general">격투 게임을 즐겨하며 컨트롤에 자신 있는 유저라면 콤보 도중에 '어썰트' 타입의 부화를 스트라이커로 불러 공격을 끊임없이 이어가는 것도 가능하다.</p>
<div dmcf-pid="Fz0Zj9Xe1P" dmcf-ptype="general">
           만약 컨트롤 요소에 특별히 자신이 없다면 자동 전투 역시 가능하며 수동 조작에 비해 경험치 보너스를 얻을 수는 없지만 플레이어 못지않게 매끄럽게 콤보를 이어간다. 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="3qp5A2ZdX6" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031150246739swqo.jpg" data-org-width="550" dmcf-mid="8BBvJUS45j" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031150246739swqo.jpg" width="658"/></p>
</figure>
<div dmcf-pid="0BU1cV5Jt8" dmcf-ptype="general">
            '빌딩앤파이터'의 핵심인 빌딩 공성전은 깊이 있는 액션을 바탕으로 하는 땅따먹기로 진행된다.
          </div>
<p dmcf-pid="pp1YoqWQG4" dmcf-ptype="general">처음에는 자신의 본진을 선택해서 인근의 빌딩을 두고 경쟁하지만 스토리가 진행됨에 따라 종로에도 거점이 마련되는 등 점차 전장이 확대된다.</p>
<div dmcf-pid="UUtGgBYx5f" dmcf-ptype="general">
           전장이 확대되기는 하지만 다른 위치기반 게임보다 플레이어의 이동을 강제하지는 않으며 위치에 상관없이 자신의 영역 근처라면 언제든 공성전을 벌일 수 있다. 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="uuFHabGMHV" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031150247948gwvt.jpg" data-org-width="550" dmcf-mid="6cLqCezc5N" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031150247948gwvt.jpg" width="658"/></p>
</figure>
<div dmcf-pid="7897OMuj52" dmcf-ptype="general">
            게임 시스템 대부분이 위치에 상관없이 진행되기는 하지만 대신 직접 이동했을 때의 보상 시스템도 일부 마련됐다.
          </div>
<p dmcf-pid="z62zIR7A59" dmcf-ptype="general">'스캐너' 모드를 사용해 자신의 주변에 랜덤하게 등장하는 아이템은 직접 이동해서 얻어야 하거나 내가 소유한 빌딩에 직접 이동해 '도장'을 찍으면 공성과 수성 효율이 유리해진다.</p>
<p dmcf-pid="qPVqCezc1K" dmcf-ptype="general">위치기반 게임에서 오는 강제 이동의 부담을 다소 느슨한 형태로 구현한 셈이다.</p>
<div dmcf-pid="BgJQZcPlZb" dmcf-ptype="general">
           깊이 있는 액션을 가상 세계가 아닌 현실 속 지역을 무대로 펼친다는 독특한 아이디어는 제법 잘 어울린다. 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="baix5kQSGB" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031150249219ttxr.jpg" data-org-width="550" dmcf-mid="PiR8GN4I1a" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031150249219ttxr.jpg" width="658"/></p>
</figure>
<div dmcf-pid="Kqp5A2ZdGq" dmcf-ptype="general">
            액션과 시스템의 상호작용은 신선하지만, 아쉬운 포인트는 스토리다. '빌딩앤파이터'의 스토리라인은 에이스톰의 전작 '최강의군단'에서 이어지며 많은 설정과 등장인물을 채용했기에 '빌딩앤파이터'를 처음 접했다면 갑작스런 스토리 전개와 새로운 인물의 등장에 크게 흥미를 느끼기 어렵다.
          </div>
<p dmcf-pid="9BU1cV5JXz" dmcf-ptype="general">그 외에는 현실에서 꿈꾸기 어려웠던 강남의 건물을 나도 한번 가져보는 재미를 느낄 수 있었으며 국내에서 시도가 드물었던 첫 위치기반 게임이라는 점에서 앞으로의 발전 가능성을 엿볼 수 있다.<br/>최종봉 konako12@fomos.co.kr<br/>[게임&amp;게이머, 문화를 전합니다. 포모스게임│무단 전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : 포모스]</h6></div>
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