
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
    <h3>'복귀 임박' 김희진, 복귀까지 1년 예상했지만, 빠른 회복세...어떻게 준비하고 있을까 [유진형의 현장 1mm]</h3><h6>유진형 기자  2023. 11. 1. 07:43</h6>
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
<section dmcf-sid="89tixdqkov">
<figure class="figure_frm origin_fig" dmcf-pid="6g6CwOiHcS" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101074307922gibd.jpg" data-org-width="640" dmcf-mid="9dnutplfkG" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101074307922gibd.jpg" width="658"/></p>
</figure>
<p dmcf-pid="P7GxfP0gNl" dmcf-ptype="general">[마이데일리 = 유진형 기자] IBK기업은행 에이스 김희진(32)은 지난 2월 무릎 수술을 받고 시즌 아웃됐다.</p>
<p dmcf-pid="QOg5WXwzkh" dmcf-ptype="general">고질적인 무릎 부상을 안고 있던 김희진은 지난 시즌 초반부터 무릎 통증을 느꼈다. 하지만 수술보다 재활을 통해 회복하려 노력했고 근력 보강과 관리를 받으면서 경기에 나섰다. 하지만 무릎 상태는 더 안 좋아졌고 부상 부위가 더 안좋아지는 것을 막기 위해 우측 무릎 반월상 연골판 수술을 받았다.</p>
<div class="video_frm" dmcf-pid="xIa1YZrqkC" dmcf-ptype="embed">
<div class="layer_vod">
<div class="vod_player">
<iframe allowfullscreen="" class="player_iframe" dmcf-mid="fXsJQezcjy" dmcf-mtype="video/youtube" frameborder="0" height="370" id="video@fXsJQezcjy" scrolling="no" src="https://www.youtube.com/embed/wiNNr-am3lo?origin=https://v.daum.net&amp;enablejsapi=1&amp;playsinline=1" width="100%"></iframe>
</div>
</div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="yzHM4QpaNI" dmcf-ptype="figure">
<p class="link_figure"><img alt="김희진이 경기 전 고무밴드를 이용해 수술한 오른쪽 무릎 근력 강화 운동을 하고 있다 / KOVO(한국배구연맹)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101074309266dzfk.jpg" data-org-width="640" dmcf-mid="2xQ5WXwzaY" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101074309266dzfk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김희진이 경기 전 고무밴드를 이용해 수술한 오른쪽 무릎 근력 강화 운동을 하고 있다 / KOVO(한국배구연맹)
           </figcaption>
</figure>
<p dmcf-pid="WzHM4QpaoO" dmcf-ptype="general">IBK기업은행은 김희진의 재활기간을 1년 이상 예상했다. 하지만 김희진의 회복 속도는 예상보다 빨랐고 지난달 24일 경기도 화성종합실내체육관에서 열린 '2023-2024시즌 도드람 V리그' 여자부, GS칼텍스와의 홈 경기에 잠시 모습을 드러냈다. 공격을 시도하지는 않았지만, 복귀 시점이 임박했음을 알리는 신호였다.</p>
<p dmcf-pid="YaPhrInXNs" dmcf-ptype="general">그렇다면 김희진은 복귀를 위해 어떤 훈련을 하고 있을까. 경기 전 김희진은 다른 선수들과는 다른 운동을 한다. 다른 선수보다 이른 시간 코트로 나와 트레이너와 함께 우측 무릎 근력 강화 훈련을 한다. 그녀는 코트에 누워 고무 밴드를 이용한다. 고무밴드는 라텍스나 고무로 만든 탄성 밴드로 근력을 키우는 데 효과적이다. 무리하지 않고 몸을 풀 수 있어 부상 예방과 재활 선수에게 효과적이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="GJ2rADMTam" dmcf-ptype="figure">
<p class="link_figure"><img alt="김희진이 경기 전 고무밴드를 이용해 수술한 오른쪽 무릎 근력 강화 운동을 하고 있다 / KOVO(한국배구연맹)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101074310488zmuy.jpg" data-org-width="640" dmcf-mid="Vw9XTGEuNW" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101074310488zmuy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김희진이 경기 전 고무밴드를 이용해 수술한 오른쪽 무릎 근력 강화 운동을 하고 있다 / KOVO(한국배구연맹)
           </figcaption>
</figure>
<p dmcf-pid="HnfskreWcr" dmcf-ptype="general">김희진은 개막 전 미디어데이에서 "올해 가기 전에 무조건 몸을 더 끌어올려서 복귀하는 게 목표입니다"라고 밝혔다. 하지만 김호철 감독은 조심스러운 입장이다. 김호철 감독은 김희진에 대해 "지금도 연습하고 있지만 확실히 본인이 뛸 수 있다는 자신이 생겼을 때 들어와야 하지 않을까 싶다. 무리해서 뛰다 다시 통증이 재발할 수 있다"라며 좀 더 지켜보겠다는 입장이다. 지난 두 경기에서 잠시 코트를 밟기는 했지만 "2라운드 때 확실히 투입할 수 있지 않을까 싶다"라며 현재 김희진 몸 상태를 전했다.</p>
<p dmcf-pid="X6uNigVsgw" dmcf-ptype="general">[우측 무릎 반월상 연골판 수술 후 오른쪽 무릎 근력 운동에 힘쓰고 있는 김희진 / KOVO(한국배구연맹)]</p>
</section>
</div></p></section></div><h6>[Source : 마이데일리]</h6></div>
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