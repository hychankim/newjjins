
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
    <h3>"'미들블로커'로 인정받겠다"…한국민의 남다른 각오 [인터뷰]</h3><h6>최원영 기자  2023. 11. 1. 06:45</h6>
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
<section dmcf-sid="qq4vc5mB75">
<figure class="figure_frm origin_fig" dmcf-pid="BQnFlBYx0Z" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101064504574tvjc.jpg" data-org-width="1000" dmcf-mid="ZtFjQsJG3B" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101064504574tvjc.jpg" width="658"/></p>
</figure>
<p dmcf-pid="bxL3SbGMzX" dmcf-ptype="general">(엑스포츠뉴스 수원, 최원영 기자) 과감한 결단이었다. '신의 한 수'로 만들고자 한다.</p>
<p dmcf-pid="KNr2tMuj7H" dmcf-ptype="general">남자프로배구 KB손해보험 한국민은 본래 아포짓 스파이커였다. 인하대를 거쳐 2018~2019시즌 1라운드 4순위로 입단 후 줄곧 아포짓으로 뛰었다. 외국인선수와 포지션이 겹쳐 주전으로 발돋움하진 못했다. 웜업존에 머무는 시간이 더 길었다. 지난 시즌 변화가 생겼다. 종종 미들블로커로 나섰다. 올 시즌 미들블로커로 완전히 포지션을 바꿨다.</p>
<p dmcf-pid="9jmVFR7A7G" dmcf-ptype="general">31일 선수단 숙소인 KB손해보험 인재니움수원에서 만난 한국민은 "지난 시즌 경험을 통해 마음을 굳혔다. 프로에서 살아남으려면 변화가 필요하다고 생각했다"며 "팀에서 먼저 권유해 주셨고 나도 가능성이 있다고 판단했다"고 밝혔다.</p>
<p dmcf-pid="2Asf3ezcUY" dmcf-ptype="general">비시즌 쉼 없이 노력했다. 한국민은 "블로킹에 신경을 많이 썼다. 미들블로커는 모든 공격수를 견제해야 한다. 다소 어색해 연습량을 늘리려 했다"고 운을 띄웠다. 그는 "(후인정) 감독님, 코치님들께서 여러 조언을 해주셨다. 블로킹 손 모양, 이동하는 스텝 등을 세세히 알려주셨다"며 "감독님께서 자세부터 잘 잡고, 사이드 공격수와 빈 틈 없이 블로킹 벽을 세우면 된다고 말씀해 주셨다. 손 모양을 교정하는 데 공을 들였다"고 설명했다.</p>
<p dmcf-pid="VKPWDFI90W" dmcf-ptype="general">팀 내 선배들 도움도 받았다. 한국민은 "미들블로커 (김)홍정이 형이 같이 훈련하며 많은 이야기를 해줬다. 모든 공격을 다 잡으려 하지 말고 한 가지를 정해놓고 거기에 집중하라고 했다"며 "세터 (황)승빈이 형도 훈련 중 내가 정신 못 차리면 쓴소리를 해준다. 대신 경기장에선 실수하더라도 다 괜찮다고, 잘했다고 칭찬해 준다. 좋은 형이다"고 전했다.</p>
<p dmcf-pid="f9QYw3C20y" dmcf-ptype="general">리그 대표 미들블로커인 베테랑 신영석(한국전력)의 플레이도 참고했다. 한국민은 "남자배구 전체 미들블로커 중 가장 잘하시는 것 같다. 실력이나 기록 면에서 정말 대단한 선배라 생각한다"며 "볼 때마다 너무 잘하셔서 신기하다. 배울 점이 많다"고 말했다.</p>
<p dmcf-pid="42xGr0hV7T" dmcf-ptype="general">새 포지션에 무서운 속도로 적응했다. 팀이 치른 4경기에 모두 선발 출전해 블로킹 13개, 서브 2개 포함 39득점(공격성공률 63.16%)을 올렸다. 리그 블로킹 공동 3위(세트당 0.722개), 속공 7위(공격성공률 65.71%)에 당당히 이름을 올렸다.</p>
<p dmcf-pid="8fRXsUS40v" dmcf-ptype="general">한국민은 "경기에 꾸준히 나갈 수 있어 좋다. 부담감이 크지만 그만큼 열심히 훈련하려 한다. 동기부여 요인으로 삼고 있다"며 "아직 많이 부족하다. 내 경기 영상이나 다른 팀 주요 미들블로커들의 플레이를 열심히 본다. 상황마다 어떻게 대처해야 하는지, 움직임을 어떻게 보완해야 하는지 등을 공부하고 있다"고 귀띔했다. 그는 "팀에 피해를 주면 안 된다. 팬분들에게도 실망감을 드리지 않으려 한다. 대신 경기 중에는 긍정적인 생각만 한다"고 덧붙였다.</p>
<p dmcf-pid="64eZOuv83S" dmcf-ptype="general">포지션 전향 후 첫 시즌이기에 각오가 남다르다. 한국민은 "'왜 포지션 바꿨냐', '그냥 자리 채우러 들어간 것 아니냐'라는 말은 듣고 싶지 않다. 미들블로커로서 인정받고 싶다"며 "내가 선택한 길이니 잘 해내야 한다. 더 많은 것을 보여드리려 노력하겠다"고 목소리를 높였다.</p>
<p dmcf-pid="P8d5I7T63l" dmcf-ptype="general">이어 "항상 현재에 만족하지 않고 발전을 꿈꾸는 선수가 되려 한다. 팀에 보탬이 될 수 있도록 잘하겠다"고 강조했다.</p>
<p dmcf-pid="QxL3SbGM3h" dmcf-ptype="general">아포짓 스파이커에 대한 미련은 없다. 단, 팀이 원한다면 변신할 생각이다. 한국민은 "비예나나 (손)준영이가 힘들어할 경우, 팀에서 주문한다면 언제든 바로 아포짓으로 들어갈 준비를 할 것이다. 현재 아포짓 훈련은 하지 않고 있지만 오랜 기간 해온 포지션이라 자신 있다"고 미소 지었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="xMo0vKHRuC" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101064505892tkcp.jpg" data-org-width="1000" dmcf-mid="1cmVFR7A3z" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101064505892tkcp.jpg" width="658"/></p>
</figure>
<p dmcf-pid="yWtNPmdYuI" dmcf-ptype="general">사진=수원, 최원영 기자 / KOVO</p>
<p dmcf-pid="W6J1CzyP3O" dmcf-ptype="general">최원영 기자 yeong@xportsnews.com </p>
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