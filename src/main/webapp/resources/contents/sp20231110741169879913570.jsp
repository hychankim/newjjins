
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
    <h3>'4년 1082억' FA 류현진이 고작 '1년 짜리'라니... 2024년은 증명의 시간이 된다</h3><h6>안호근 기자  2023. 11. 1. 07:41</h6>
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
<section dmcf-sid="pX9M4QpavC">
<div dmcf-pid="UAyFH1sblI" dmcf-ptype="general">
           [스타뉴스 | 안호근 기자] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="ucW3XtOKyO" dmcf-ptype="figure">
<p class="link_figure"><img alt="류현진. /AFPBBNews=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101074149086opeb.jpg" data-org-width="647" dmcf-mid="tU8WhTj3Sv" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101074149086opeb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            류현진. /AFPBBNews=뉴스1
           </figcaption>
</figure>
<div dmcf-pid="7kY0ZFI9Ts" dmcf-ptype="general">
           자유계약선수(FA) 신분이 된 류현진(36)의 거취에 대한 전망이 점점 구체화되고 있다.
          </div>
<p dmcf-pid="zm5z3uv8lm" dmcf-ptype="general">미국 스포츠전문매체 디 애슬레틱의 칼럼니스트인 짐 보든은 1일(한국시간) FA 시장 매물의 순위를 매겼다. 선수의 특징과 예상 구단, 계약 규모도 함께 예상했다.</p>
<p dmcf-pid="qs1q07T6Cr" dmcf-ptype="general">류현진은 35번째로 거론됐다. 눈길을 끄는 것은 보든이 워싱턴 내셔널스와 신시내티 레즈에서 단장직을 역임했다는 것이다. 단장의 시선에서 선수를 평가하는 시선을 읽어볼 수 있는 셈이다.</p>
<p dmcf-pid="BOtBpzyPlw" dmcf-ptype="general">가장 시선이 쏠리는 건 류현진의 계약 관련 부분이었다. 1년 인센티브 포함 800만 달러(108억 2400만 원)을 예상했다.</p>
<p dmcf-pid="bm5z3uv8SD" dmcf-ptype="general">류현진은 LA 다저스에서 맹활약하며 토론토 블루제이스와 4년 8000만 달러(1082억 원)에 대형 계약을 체결했다. 단순 계산으로 이를 연봉으로 환산하면 2000만 달러였던 셈인데 반토막이 난 꼴이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="Ks1q07T6WE" dmcf-ptype="figure">
<p class="link_figure"><img alt="류현진. /AFPBBNews=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101074150563nkep.jpg" data-org-width="647" dmcf-mid="FgFcoj8ChS" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101074150563nkep.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            류현진. /AFPBBNews=뉴스1
           </figcaption>
</figure>
<div dmcf-pid="9lp2zKHRhk" dmcf-ptype="general">
           류현진에 대한 평가가 나쁜 것만은 아니었다. 보든은 "류현진은 8월 1일 토미 존 수술을 받고 복귀해 총 11차례 선발 등판해 9경기에서 3실점 이하를 기록하는 등 남은 기간 동안 인상적인 활약을 펼쳤다"며 "6차례 선발에서 5이닝을 던졌고 한 번은 시즌 최다인 6이닝을 소화했다"고 말했다.
          </div>
<p dmcf-pid="2SUVq9XeWc" dmcf-ptype="general">이어 "전체적으로 평균자책점(ERA)은 3.46, 이닝당 출루허용(WHIP)은 1.288을 기록했다"며 "체인지업으론 피안타율 0.276, 커터로는 0.238을 기록했다"고 덧붙였다.</p>
<p dmcf-pid="VvufB2ZdWA" dmcf-ptype="general">그를 원할 구단으로는 토론토와 함께 미네소타 트윈스, 디트로이트 타이거스를 꼽았다. 미네소타는 아메리칸리그(AL) 중부지구 1위 팀이다. 디트로이트는 같은 지구 2위 팀.</p>
<p dmcf-pid="fdmyCvNFhj" dmcf-ptype="general">디트로이트는 100이닝 이상 소화한 투수가 단 3명에 불과했다. 이 가운데서도 10승 이상을 챙긴 건 에두아르도 로드리게스(13승 9패, ERA 3.30) 뿐이었다. 그러나 그마저도 옵트아웃 권한이 있어 FA 시장 진출 가능성을 배제할 수는 없다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="4JsWhTj3WN" dmcf-ptype="figure">
<p class="link_figure"><img alt="류현진. /AFPBBNews=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101074151926sder.jpg" data-org-width="647" dmcf-mid="3cMZyHD7Wl" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101074151926sder.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            류현진. /AFPBBNews=뉴스1
           </figcaption>
</figure>
<div dmcf-pid="8iOYlyA0Ta" dmcf-ptype="general">
           미네소타는 조금 상황이 낫다. 100이닝 이상 던진 투수는 5명이었고 준수한 5선발 체계를 갖췄다고 볼 수 있다. 다만 마에다 겐타와 소니 그레이가 나란히 FA 자격을 얻는다.
          </div>
<p dmcf-pid="67RNigVsCg" dmcf-ptype="general">두 팀 모두 1,2선발 급은 아니더라도 안정적으로 선발 로테이션을 돌 수 있는 베테랑급 투수가 필요한 상황이다. 물론 올 시즌 큰 부침을 겪은 '류현진 바라기' 알렉 마노아에 대한 확신을 갖지 못한다면 토론토 또한 류현진이 필요할 수 있다. 앞서 로스 앳킨스 토론토 단장 또한 류현진의 잔류 가능성을 암시하기도 했다.</p>
<p dmcf-pid="PzejnafOho" dmcf-ptype="general">보든은 "2024년엔 개선된 모습을 보여야 하지만 아마도 보장조건과 인센티브가 낮은 1년 계약을 바라보고 있을 것"이라고 말했다. 30대 후반을 향해가는 나이로 언제 에이징 커브가 찾아와도 이상하지 않을 시기이기 때문에 납득이 가지 않는 것은 아니다.</p>
<p dmcf-pid="QqdALN4IWL" dmcf-ptype="general">류현진은 앞서 귀국하며 한화행에 대한 힌트를 건넸다. 한화에서 현역 생활을 마무리한다는 데에는 여전히 동의했지만 빅리그 잔류의지에 대해서도 명확히 했다.</p>
<p dmcf-pid="xAyFH1sbSn" dmcf-ptype="general">아직은 MLB에서 더 보여줄 게 있다고 생각하는 류현진이다. 올 시즌이 부상 우려를 털어내고 성공적인 복귀를 알린 한해였다면 2024 시즌은 '코리안 몬스터'가 여전히 건재하다는 걸 증명해야 하는 숙제를 안고 준비할 전망이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="yUxgdL9rTi" dmcf-ptype="figure">
<p class="link_figure"><img alt="류현진. /AFPBBNews=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101074153226ttks.jpg" data-org-width="647" dmcf-mid="0ScCwOiHSh" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101074153226ttks.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            류현진. /AFPBBNews=뉴스1
           </figcaption>
</figure>
<p dmcf-pid="WuMaJo2mhJ" dmcf-ptype="general">안호근 기자 oranc317@mtstarnews.com</p>
</section>
</div></p></section></div><h6>[Source : 스타뉴스]</h6></div>
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