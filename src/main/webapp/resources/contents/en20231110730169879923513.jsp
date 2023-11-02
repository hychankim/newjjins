
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
    <h3>김미려 "둘째 子, 콜라겐 결핍증…내 탓 같아 죄책감" 눈물 (금쪽상담소)[전일야화]</h3><h6>김나연 기자  2023. 11. 1. 07:30</h6>
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
<section dmcf-sid="2c0zISatp1">
<figure class="figure_frm origin_fig" dmcf-pid="V6CTigVs75" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101073028384ormo.jpg" data-org-width="1253" dmcf-mid="bfWZjExvu3" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101073028384ormo.jpg" width="658"/></p>
</figure>
<p dmcf-pid="fUak28FLzZ" dmcf-ptype="general">(엑스포츠뉴스 김나연 기자) '오은영의 금쪽 상담소' 김미려가 희귀병을 겪은 둘째 아들 사연을 전했다.</p>
<p dmcf-pid="4uNEV63opX" dmcf-ptype="general">지난달 31일 방송된 채널A '오은영의 금쪽 상담소'(이하 '금쪽 상담소')에서는 개그우먼 김미려, 배우 정성윤 부부의 고민이 공개됐다.</p>
<p dmcf-pid="87jDfP0g3H" dmcf-ptype="general">이날 정성윤과 김미려는 태어나자마자 '콜라겐 결핍증'이 걸렸던 둘째 아들로 인해 힘들었던 당시를 고백했다.</p>
<p dmcf-pid="6dWZjExvUG" dmcf-ptype="general">김미려는 "낳자마자 촉이 왔다. 왜 이렇게 턱이 작지. 그래서 검색을 해봤다. 그때 우리 아이가 '콜라겐 결핍'일 수도 있겠구나 싶었다"고 말했다.</p>
<p dmcf-pid="PJY5ADMTpY" dmcf-ptype="general">이어 "조리원에도 못 있었다. 다른 아이 울음소리가 들려서. '우리 아이는 없는데 왜 내가 울음소리를 들어야지' 하면서"라며 울먹였다.</p>
<p dmcf-pid="QiG1cwRy7W" dmcf-ptype="general">김미려는 "출산 후 아이 케어를 받으러 가던 중 아이가 턱이 작으니까 숨을 못 쉬는 거다. 분유를 먹이는데 기도 쪽으로 넘어갔다. 큰 병원에 가보셔야 할 것 같다고 하시더라. 출산 후 자유에 들떠있었는데 내 탓 같고 죄책감이 느껴졌다. 근데 슬퍼만 할 수가 없는 게 첫째가 있으니까. 병원 나오자마자 바로 일 시작하고"라며 눈물을 흘렸다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="xxSYoj8CUy" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101073029718sgvm.jpg" data-org-width="1253" dmcf-mid="KJkm6MujFF" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101073029718sgvm.jpg" width="658"/></p>
</figure>
<p dmcf-pid="yy6RtplfzT" dmcf-ptype="general">이를 들은 오은영은 "피부 속에 단단하게 결합돼 있는 콜라겐이 부족하면 피부가 늘어난다. 신체 곳곳에 콜라겐 성분이 있다. 완치의 개념은 없다. 유전 질환이기에 콜라겐 결핍으로 2차 문제가 생기지 않도록 의학적 도움을 받는 게 중요하다. 심장 판막에 영향을 주게 되면 심장에 문제가 생기고 대동맥이 유지되는 데에도 콜라겐이 영향을 주는데 부족하면 문제가 생길 수 있다"고 설명했다.</p>
<p dmcf-pid="WWPeFUS40v" dmcf-ptype="general">정성윤은 힘든 과정을 극복한 방법에 대해 "혼자였다면 절망에 빠져 있었을 거다. 아내가 절망 안에서 기운을 내는 스타일이다. 주변을 긍정적으로 변하게 하는 좋은 능력이 있다. 그거 보고 극복했다"고 말했다.</p>
<p dmcf-pid="Ypgc94tn7S" dmcf-ptype="general">김미려는 "오로지 아이들만 보고 견뎠다. 아픈 것 인정하고 잊고 나아갔다"고 말했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="GUak28FLul" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101073031709lrbk.jpg" data-org-width="1253" dmcf-mid="9cPeFUS47t" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101073031709lrbk.jpg" width="658"/></p>
</figure>
<p dmcf-pid="HuNEV63oFh" dmcf-ptype="general">오은영은 김미려 부부의 위기 대처법에 차이가 있다고 설명했다. 그는 "미려 씨는 높은 자아 강도가 중요한 분이다. 반면 인간이라면 느끼는 좌절, 어려움을 부인하는 면이 있다. 장점도 있지만 힘들어하는 자신을 부정한다"고 밝혔다.</p>
<p dmcf-pid="X8IvJo2mFC" dmcf-ptype="general">이어 "성윤 씨는 생각을 통해 정리하시는 분이다. 생각을 많이 하시고 차분하시고 신중하시다. 무언가를 결정할 때 다양한 가능성을 고려하니까 결정을 잘 못 하고 쉽게 엄두를 못 내고 시작을 선뜻 못 하는 면이 있다. 새로운 도전을 할 때 긴장도 하고 불안이 높아질 수 있고 걱정을 사서 하기도 한다. 육아할 때 힘드셨을 거다. 육아는 늘 새로운 문제를 시시각각 직면해야 하니까"라고 덧붙였다.</p>
<p dmcf-pid="Z6CTigVs7I" dmcf-ptype="general">사진=채널A 방송화면</p>
<p dmcf-pid="5PhynafOzO" dmcf-ptype="general">김나연 기자 letter99@xportsnews.com </p>
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