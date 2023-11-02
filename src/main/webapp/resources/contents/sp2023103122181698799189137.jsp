
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
    <h3>현대캐피탈, 풀세트 접전 끝에 ‘또’ 졌다…“범실 줄이고, 힘 빼야”[스경X현장]</h3><h6>김하진 기자  2023. 10. 31. 22:18</h6>
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
<section dmcf-sid="QdMqntOKOI">
<figure class="figure_frm origin_fig" dmcf-pid="xNo4czyPEO" dmcf-ptype="figure">
<p class="link_figure"><img alt="31일 OK금융그룹전에서 패배 후 좌절하는 현대캐피탈 선수들. KOVO 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/sportskhan/20231031221852404waxn.jpg" data-org-width="700" dmcf-mid="P3RBLFI9IC" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/sportskhan/20231031221852404waxn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            31일 OK금융그룹전에서 패배 후 좌절하는 현대캐피탈 선수들. KOVO 제공
           </figcaption>
</figure>
<p dmcf-pid="y0thuExvss" dmcf-ptype="general"><br/><br/>프로배구 남자부 현대캐피탈이 시즌 첫 승을 눈 앞에서 놓쳤다.<br/><br/>현대캐피탈은 31일 경기도 안산 상록수체육관에서 열린 2023~2023 도드람 V리그 남자부 OK금융그룹과의 경기에서 풀세트 접전 끝에 2-3(25-22 22-25 25-20 25-27 15-17)으로 패했다.<br/><br/>이로써 현대캐피탈은 개막 이후 5경기 연속 승리의 기쁨을 누리지 못했다. 7개 구단 중 최하위에 자리하고 있다.<br/><br/>어느 정도 예견된 시즌을 맞이했지만 상상 이상으로 부진하고 있다. 지난 시즌 현대캐피탈에서 뛰었던 오레올이 튀르키예로 떠났고 전광인은 부상 여파로 제 컨디션으로 뛸 수가 없다.<br/><br/>이런 팀 사정 탓에 허수봉이 미들블로커, 아웃사이드 히터, 아포짓까지 포지션을 옮겨다녀야한다. 하지만 빈 자리는 쉽게 채워지지 않고 있다.<br/><br/>이날 경기를 앞두고 최태웅 현대캐피탈 감독은 “아웃사이드 히터로 고정하고 쓰겠다”라고 선언했다. 하지만 그럼에도 또 다시 패배하고 말았다. 허수봉은 16점으로 활약했지만 팀의 패배로 웃지 못했다. 아흐메드가 팀 내 최다 득점인 25점을 기록했으나 경기 막판 집중력의 차이로 아쉬운 패배를 맞이했다.<br/><br/>경기 후 최태웅 감독은 나름대로 희망을 찾으려고 했다. 최 감독은 “마지막까지 최선을 다한 것, 그리고 허수봉이 아웃사이드 히터에서 활약이 괜찮았다는 것까지 많은 소득이 있었던 것 같다”고 했다.<br/><br/>허수봉에 대해서는 “리시브가 괜찮았다. 블로킹은 못 미쳤지만 이제 ‘할 수 있겠구나’라는 생각을 가지게 됐다”고 긍정적으로 바라보려고 했다.<br/><br/>현대캐피탈로서는 가장 아쉬운 순간은 4세트였다. 세트스코어 2-1로 앞선 상황에서 4세트를 접전 끝에 내준 것이다. 25-25 매치포인트에서 이현승이 블로킹에 실패했고 아흐메드의 백어택을 바야르사이한의 블로킹에 가로막히면서 승부는 5세트까지 이어지게 됐다.<br/><br/>이날 현대캐피탈의 범실은 40개로 OK금융그룹이 기록한 28개의 범실을 훨씬 뛰어넘는 수치를 기록했다. 5세트에서도 15-15 듀스 접전에서 세터 이현승과 허수봉의 호흡이 맞지 않아 점수를 내줬고 이현승의 토스 실수가 나오면서 승리를 내줬다. 이현승은 경기 후 아쉬움의 눈물을 흘리기도 했다.<br/><br/>최 감독은 “오늘도 혼냈다”라며 “토스 범실에 대해서 혼낸 게 아니라 자신있는 행동을 해놓고 눈물로 핑계를 대는 모습이 보여서 울지 말라고 했다”고 말했다.<br/><br/>현대캐피탈은 이제 다음 경기에서 첫 승리를 노린다. 11월4일 홈구장인 천안유관순체육관에서 KB손해보험을 맞이한다. 최 감독은 “조금 더 부드럽게 선수들이 움직일 수 있게끔 힘이 좀 빠져야할 것 같다. 그래서 스피드가 나야할 것 같다. 범실이 조금 줄었으면 좋겠다”라고 바람을 표했다.<br/><br/>안산 | 김하진 기자 hjkim@kyunghyang.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠경향]</h6></div>
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