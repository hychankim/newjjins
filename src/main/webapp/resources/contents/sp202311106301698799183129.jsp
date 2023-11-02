
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
    <h3>‘미들 블로커’도 거뜬했던 레이나 “감독님이 팀에 부족한 부분 메워달라고 주문했다”[현장인터뷰]</h3><h6>박준범  2023. 11. 1. 06:30</h6>
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
<section dmcf-sid="PxPY9A6hMy">
<figure class="figure_frm origin_fig" dmcf-pid="QLiFQsJGJT" dmcf-ptype="figure">
<p class="link_figure"><img alt="레이나(오른쪽). 제공 | 한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063011843khie.jpg" data-org-width="700" dmcf-mid="8h3cH8FLLY" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063011843khie.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            레이나(오른쪽). 제공 | 한국배구연맹
           </figcaption>
</figure>
<p dmcf-pid="xCO8k1sbev" dmcf-ptype="general"><br/> [스포츠서울 | 장충=박준범기자] “팀에 도움이 된 것 같아 기분이 좋다.”</p>
<p dmcf-pid="yXGnlBYxRS" dmcf-ptype="general">흥국생명은 31일 장충체육관에서 열린 도드람 2023~2024 V리그 여자부 GS칼텍스와 경기에서 세트 스코어 3-0(25-22 26-24 25-23)으로 완승했다. 직전 정관장에 당한 리버스 스윕 여파를 지우고 4승(1패)째를 챙겼다. 승점 12를 확보하며, 현대건설(승점 10)을 제치고 선두 자리에 올랐다.</p>
<p dmcf-pid="Wp3cH8FLJl" dmcf-ptype="general">레이나는 이날 아웃 사이드 히터가 아닌 미들 블로커로 출전했다. 8득점을 올렸는데, 2개의 블로킹을 기록했다. 공격 성공률도 75%나 됐다. 흥국생명 승리에 중요한 역할을 해낸 셈이다. 경기 후 레이나는 “GS칼텍스가 간단한 상대가 아니었다. 많은 연습을 했다. 1세트 원정이어서 긴장했지만 좋은 결과를 내서 기분이 좋다”고 말했다.</p>
<p dmcf-pid="Yzuw1xUNeh" dmcf-ptype="general">흥국생명은 미들 블로커 이주아와 김채연이 부상으로 빠져 있다. 아본단자 감독은 앞으로도 레이나를 미들 블로커로 기용할 수 있다고 말했다. 그는 “(레이나의 미들 블로커 기용은) 준비했던 부분이다. 레이나는 잠재력을 가진 선수지만 이를 발휘하는 데까지는 시간이 걸릴 것으로 보인다. 중요한 순간에 2개 블로킹을 해냈고 공격 성공률도 75%를 보였다”라며 “이주아와 김채연의 복귀 시점은 말씀드리기 어렵다. 김채연이 더 걸릴 것이다. 레이나를 기용하지 않을 이유가 없다”라며 설명했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="GP8ybN4ILC" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063012604piwa.jpg" data-org-width="700" dmcf-mid="6ZGnlBYxiW" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063012604piwa.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 한국배구연맹
           </figcaption>
</figure>
<p dmcf-pid="HF1NWV5JJI" dmcf-ptype="general"><br/> 레이나는 고등학생 시절 3개월 정도 미들 블로커 포지션을 소화한 적이 있다고 한다. 그는 “원래부터 아시아 쿼터니까 처음 들어가야 한다는 생각은 없었다. 안정적인 팀이라고 생각했다. 감독님으로부터 주문받은 건 팀의 부족한 점을 메울 수 있도록 하는 것이었다. 미들 블로커로 들어가게 됐지만 팀에 도움이 된 것 같아서 좋다”라고 강조했다.</p>
<p dmcf-pid="Xp3cH8FLRO" dmcf-ptype="general">일본 국적의 레이나는 과거 일본에서 활약한 바 있는 김연경의 도움을 받으며 V리그에 또 한국 생활에 적응해가고 있다. 레이나는 “(김연경과) 여러 가지 이야기한다”라며 “나는 경기에서 긴장하는 편이라 (동료들이) 긴장 안 해도 된다는 이야기를 많이 듣고 있다. 버스나 지하철도 탈 수 있게 돼 생활에 어려움은 없는 것 같다”라고 말했다.</p>
<p dmcf-pid="ZDkboWcpis" dmcf-ptype="general">beom2@sportsseoul.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠서울]</h6></div>
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