
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
    <h3>스위치 상륙한 '데이브'... 언제 어디서나 드넓은 바다로 '풍덩' [엑's 리뷰]</h3><h6>임재형 기자  2023. 10. 31. 17:04</h6>
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
<section dmcf-sid="9aHkLzyPU3">
<figure class="figure_frm origin_fig" dmcf-pid="2Pse4HD7zF" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170453339cjql.jpg" data-org-width="3840" dmcf-mid="0idgR3C23K" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170453339cjql.jpg" width="658"/></p>
</figure>
<p dmcf-pid="VQOd8XwzFt" dmcf-ptype="general"><br/> (엑스포츠뉴스 임재형 기자) 언제 어디서나 푸른 바다에서 특별한 모험을 떠날 수 있다면? 넥슨의 화제작 '데이브 더 다이버(이하 데이브)가 지난 26일 닌텐도 스위치 플랫폼에 상륙하면서 더 많은 글로벌 유저들을 맞이할 채비를 마쳤다. 지난 6월 스팀(Steam)을 통해 정식 출시된 '데이브'는 지난 9월 누적 판매량 200만 장을 돌파하면서 올해 한국 게임의 최대 화제작 중 하나로 떠오른 바 있다.</p>
<p dmcf-pid="fRhnQ1sb71" dmcf-ptype="general">'닌텐도 스위치'에 이식된 '데이브'는 어떨까. 휴대성이 강점인 '닌텐도 스위치'에 '데이브'가 합류했을때, 성공 가능성은 사실 매우 높았다. '데이브'는 이미 스팀 플랫폼의 휴대용 기기 '스팀 덱'에서 지난 7월 '가장 많이 플레이한 게임' 1위에 오른 바 있다. 실제로 '데이브'는 흡입력이 상당한 만큼, 이동 시간을 지루하지 않게 하는 최고의 선택일 수 있었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="4elLxtOKF5" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170454959hzna.jpg" data-org-width="822" dmcf-mid="pqLAiuv8ub" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170454959hzna.jpg" width="658"/></p>
</figure>
<p dmcf-pid="8dSoMFI9uZ" dmcf-ptype="general"><strong><br/> ▲'닌텐도 스위치' 압도적 휴대성 업었다... '데이브' 매력 듬뿍 발산</strong></p>
<p dmcf-pid="6tRUZcPlFX" dmcf-ptype="general">이번 '데이브'의 닌텐도 스위치 버전의 가장 큰 특징은 단연 압도적인 휴대성이다. 다운로드 콘텐츠 형태로 만나볼 수 있는 '데이브'는 시간, 장소 가리지 않고 원하는 시점에 매력적인 해양 어종 사냥과 일식당 '반쵸 스시' 운영을 이어갈 수 있다. 간혹 바쁜 일이 생기더라도 걱정 없다. 잠시 기기를 비활성화 해둔 뒤, 다시 실행하면 진행 과정에 차질 없이 게임을 계속 이어갈 수 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="PFeu5kQSzH" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170456928nqpm.jpg" data-org-width="884" dmcf-mid="U0WtWgVsuB" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170456928nqpm.jpg" width="658"/></p>
</figure>
<p dmcf-pid="Q3d71ExvuG" dmcf-ptype="general"><br/> 닌텐도 스위치의 아이덴티티 중 하나인 '조이콘'도 '데이브'의 매력 발산에 큰 도움을 준다. '데이브'에는 작살 사냥, 사격, 근접 무기 사용(이상 해양 탐사), 와사비 갈기, 녹차-맥주 따르기(이상 초밥집 운영) 등 정말 다양한 활동 또는 미니게임이 존재한다. '데이브'는 각 콘텐츠 별로 진동의 방식, 세기를 다르게 조절해 게이머의 조작감을 매우 높였다.</p>
<p dmcf-pid="xzg9UOiHFY" dmcf-ptype="general">닌텐도 스위치의 또다른 장점은 무엇인가. '독 모드'를 활용한 대형 화면 플레이도 닌텐도 스위치의 플레이 경험을 드높인다. 이동 시간 마음껏 즐겼던 '데이브'를 닌텐도 스위치와 함께 '독'에 꽂자, 또다른 세상이 펼쳐진다. 큰 화면에서 움직이는 캐릭터와 함께 해양 생물을 사냥하다 보니, 마치 수족관의 다양한 물고기를 바라보는 느낌이었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="yEFsA2ZdUW" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170458424hfni.jpg" data-org-width="858" dmcf-mid="uDhGhdqkFq" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170458424hfni.jpg" width="658"/></p>
</figure>
<p dmcf-pid="Wbjfzho50y" dmcf-ptype="general"><strong><br/> ▲'손이 얼얼한' QTE는 숙제... '데이브', 새 플랫폼과 함께 더욱 날아오르나</strong></p>
<p dmcf-pid="YKA4qlg13T" dmcf-ptype="general">다만 키보드 대신 휴대용 기기로 플레이하는 만큼 조작에 작은 어려움도 있었다. '데이브'의 강점중 하나는 QTE(퀵 타임 이벤트, 버튼 액션)로 구성된 미니 게임이다. 해양 탐사 도중 강한 물고기를 작살로 걸었거나, 맥주 따르기, 녹차 따르기, 와사비 갈기, 테이블 정리 등 플레이 곳곳에서 이용자의 재미를 더한다.</p>
<p dmcf-pid="G9c8BSatuv" dmcf-ptype="general">'데이브'가 파밍 도중 독, 수면, 마비, 전기 등 다양한 작살을 습득하게 되면 'A' 버튼 연타 대신 QTE가 다른 방식으로 변화한다. 이중 '독' '마비'는 조이콘의 L 스틱을 강하게 흔들어야 했기 때문에 사냥에 있어 어느정도 피로감이 쌓였다. 약간의 조작감 개선만 있다면 '닌텐도 스위치'로 향한 '데이브'의 강점은 더욱 늘어날 것으로 전망된다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="HfDQ9yA0uS" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170500333mdvb.jpg" data-org-width="919" dmcf-mid="K6ulw63o00" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/xportsnews/20231031170500333mdvb.jpg" width="658"/></p>
</figure>
<p dmcf-pid="X4wx2WcpUl" dmcf-ptype="general"><br/> 현재 '데이브'는 지난 9월 글로벌 누적 판매량 200만 장을 돌파한 열기를 '닌텐도 스위치' 플랫폼에서도 이어가고 있다. '데이브'는 현재 '닌텐도 e숍'에서 '수박 게임' '슈퍼 마리오브라더스 원더'에 이어 3위에 오르면서 게임의 강점을 새로운 플랫폼에서도 여실히 발휘하고 있다.</p>
<p dmcf-pid="Z8rMVYkUFh" dmcf-ptype="general">좋은 출발을 알린 만큼 '데이브'가 다시 한번 글로벌 콘솔 게임 시장에 눈도장을 찍을지 주목된다. '데이브'는 앞서 양대 게임 평론 사이트 ‘메타크리틱’ 및 ‘오픈크리틱’에서 평점 90점을 확보해 국내 게임 최초로 ‘Must Play’ 배지를 획득했다. 이 밖에도 오는 11월 개최되는 영국의 대표 게임 시상식 ‘골든 조이스틱 어워드 2023’에서 '올해의 PC 게임' 포함 총 3개 부문에 후보작으로 선정되며 글로벌 게이머들의 뜨거운 관심을 모으고 있다.</p>
<p dmcf-pid="5c1rNKHRzC" dmcf-ptype="general">사진=넥슨 제공, 엑스포츠뉴스 임재형 기자</p>
<p dmcf-pid="1ktmj9Xe3I" dmcf-ptype="general">임재형 기자 lisco@xportsnews.com </p>
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