
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
    <h3>그라비티, "역대 최다 출품작 선보인다...지스타 2023 타이틀 공개"</h3><h6>최종봉  2023. 10. 31. 15:50</h6>
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
<section dmcf-sid="VrHvuInXG8">
<figure class="figure_frm origin_fig" dmcf-pid="fO5Wqlg1X4" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031155031470qgvf.jpg" data-org-width="567" dmcf-mid="2F97R3C2X6" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031155031470qgvf.jpg" width="658"/></p>
</figure>
<div dmcf-pid="4I1YBSatZf" dmcf-ptype="general">
            그라비티가 오는 11월 부산 벡스코에서 펼쳐지는 국내 최대 게임쇼 '지스타 2023'의 출품작을 공개했다.
          </div>
<p dmcf-pid="8CtGbvNF5V" dmcf-ptype="general">이번 행사에서 그라비티는 역대 최대 수의 출품작을 선보이며 타이틀 시연 중심의 풍성한 볼거리와 즐길 거리로 부스를 가득 채울 준비를 하고 있다.</p>
<p dmcf-pid="6FfBJUS4H2" dmcf-ptype="general">이 중 모바일 또는 멀티플랫폼으로 즐길 수 있는 타이틀은 라그나로크 비긴즈, 뮈렌: 천년의 여정, 라그몬 마블, 이상한 나라의 라그나로크, 프로젝트 RO 버티컹(가칭), 라그나로크 20 히어로즈, 라그나로크V: 부활, 퍼즐앤드래곤 8종이다.</p>
<p dmcf-pid="P34biuv8Z9" dmcf-ptype="general"><strong>■ 횡스크롤 즐기는 멀티플랫폼 MMORPG '라그나로크 비긴즈'</strong></p>
<p dmcf-pid="Q08Kn7T6ZK" dmcf-ptype="general">2023년 하반기 라그나로크 심포니 타이틀 3악장을 장식하는 게임으로 라그나로크 온라인 이야기로부터 100년 전에 펼쳐지는 스토리를 메인으로 담았다.</p>
<p dmcf-pid="x2nMD8FLXb" dmcf-ptype="general">귀엽고 아기자기한 라그나로크 IP에 횡스크롤 플레이, 논타겟팅 전투로 캐릭터를 조작하며 육성하는 재미를 느낄 수 있다.</p>
<p dmcf-pid="yO5Wqlg11B" dmcf-ptype="general">라그나로크 비긴즈는 11월 1일 국내 2차 CBT를 앞두고 있다.</p>
<p dmcf-pid="WI1YBSatXq" dmcf-ptype="general"><strong>■ 스토리가 돋보이는 미소녀 수집형 RPG '뮈렌: 천년의 여정'</strong></p>
<p dmcf-pid="YREaSibD1z" dmcf-ptype="general">뮈렌: 천년의 여정은 방대한 세계관을 바탕으로 깊이 있는 스토리를 경험할 수 있으며 고퀄리티의 일러스트와 애니메이션풍 3D 그래픽을 담았다.</p>
<p dmcf-pid="GeDNvnKwY7" dmcf-ptype="general">다양한 매력과 스킬을 가진 캐릭터를 수집하고 파티를 구성해 메인 스테이지, 보스전, 여정 등 콘텐츠를 즐길 수 있다.</p>
<p dmcf-pid="HdwjTL9rGu" dmcf-ptype="general"><strong>■ 캐주얼 보드게임 '라그몬 마블'</strong></p>
<p dmcf-pid="XoIDHj8CZU" dmcf-ptype="general">라그몬 마블은 3D의 귀엽고 동글동글한 라그나로크 몬스터즈 캐릭터를 사용해 보드판에서 실시간 대전을 펼치는 보드게임이다.</p>
<p dmcf-pid="ZgCwXA6h5p" dmcf-ptype="general">캐릭터 레벨을 올리면 다양한 클래스로 전직이 가능하며 보유 스킬에 따라 4개의 캐릭터를 하나의 파티로 묶어 클래식 모드, 스피드 모드, 개인전, 팀전 등 여러 모드로 플레이할 수 있다.</p>
<p dmcf-pid="5ahrZcPlG0" dmcf-ptype="general"><strong>■ 힐링 타이쿤 '이상한 나라의 라그나로크'</strong></p>
<p dmcf-pid="1oIDHj8Ct3" dmcf-ptype="general">라그나로크 세계관 및 몬스터를 기반으로 한 최초의 힐링 타이쿤 게임으로 이그드라실을 성장시켜 몬스터의 섬 원더랜드를 확장해나갈 수 있다.</p>
<p dmcf-pid="tgCwXA6htF" dmcf-ptype="general">섬을 키워 여러 몬스터를 수집할 수 있으며 젤리빈 목마, 냥냥 낚시터 등 다양한 건물도 설치하면 색다른 행동을 하는 몬스터의 모습도 관찰 가능하다.</p>
<p dmcf-pid="FahrZcPl1t" dmcf-ptype="general"><strong>■ 간편하게 즐기는 방치형 H5 MMORPG 'RO 버티컬(가칭)'</strong></p>
<p dmcf-pid="3Nlm5kQSt1" dmcf-ptype="general">RO 버티컬은 오딘에 의해 검과 마법의 환상 세계에서 추방당한 바포메트와 이를 추종하는 몬스터들을 물리쳐 나가는 게임이다.</p>
<p dmcf-pid="0EWh0mdYY5" dmcf-ptype="general">귀여운 라그나로크 IP 그래픽을 바탕으로 방치형 장르의 특징을 담아 시간과 장소에 구애받지 않고 간편하게 조작해 게임을 즐길 수 있다.</p>
<p dmcf-pid="pDYlpsJGYZ" dmcf-ptype="general">이 외에도 그라비티는 멀티플랫폼 MMORPG '라그나로크V: 부활', 레트로 RPG '라그나로크 20 히어로즈', 모바일 액션 퍼즐게임 '퍼즐앤드래곤'도 지스타 현장 부스에서 만날 수 있다.<br/>최종봉 konako12@fomos.co.kr<br/>[게임&amp;게이머, 문화를 전합니다. 포모스게임│무단 전재 및 재배포 금지]</p>
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