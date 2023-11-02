
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
    <h3>'혼례대첩' 로운X조이현, '늙은 아씨들' 중매로 다시 엮였다[종합]</h3><h6>이혜미  2023. 10. 31. 23:05</h6>
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
<section dmcf-sid="XZpE7DMTVZ">
<figure class="figure_frm origin_fig" dmcf-pid="ZdauA7T69X" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/tvreport/20231031230505448mcqg.jpg" data-org-width="1000" dmcf-mid="6mT6lP0gbu" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/tvreport/20231031230505448mcqg.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="5rlxTMujVH" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/tvreport/20231031230506883nsvu.jpg" data-org-width="1000" dmcf-mid="PuhL5o2mqU" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/tvreport/20231031230506883nsvu.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="1y5aFN4IVG" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/tvreport/20231031230509053ninq.jpg" data-org-width="1000" dmcf-mid="Qio9m2ZdKp" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/tvreport/20231031230509053ninq.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="tokbwKHRVY" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/tvreport/20231031230511546vwfx.jpg" data-org-width="1000" dmcf-mid="xDb0aplfV0" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/tvreport/20231031230511546vwfx.jpg" width="658"/></p>
</figure>
<p dmcf-pid="FAmfI4tn9W" dmcf-ptype="general">[TV리포트=이혜미 기자] ‘혼례대첩’ 로운과 조이현이 ‘늙은 아씨들’ 중매로 다시 엮였다.</p>
<p dmcf-pid="3Nw2sV5J9y" dmcf-ptype="general">31일 KBS 2TV ‘혼례대첩’에선 맹 박사의 세 딸 혼인을 위해 손을 잡는 심정우(로운 분)와 정순덕(조이현 분)의 모습이 그려졌다.</p>
<p dmcf-pid="0EI6lP0gVT" dmcf-ptype="general">앞서 임금(조한철 분)은 세자의 혼인을 막을 명분을 제공했다는 죄로 부마 심정우에 사약을 내리려 한 바.</p>
<p dmcf-pid="p2QGRHD7Bv" dmcf-ptype="general">이날 임금은 마지막 기회를 주겠다며 세자를 혼인시킬 방법을 강구해내라 했고, 심정우는 “세자 저하를 혼인시킬 방법은 간단합니다. 원녀와 광부를 핑계 삼아 세자 저하의 혼인을 막았으니 원녀를 없애면 일이 해결될 듯 보입니다”라고 냉큼 말했다.</p>
<p dmcf-pid="UYtj0A6hVS" dmcf-ptype="general">이에 임금이 “선왕께서도 그 위에, 또 위에 선왕께서도 해결 못한 원녀와 광부 문제를 내가 해결하면 되는 거지?”라고 이죽거렸음에도 그는 “지금 당장 해결하지 못한다는 것은 조선 사람이면 모두 아는 것입니다. 고질적인 원녀 몇을 표본 삼아 광부들과 혼인시킨 후 조선에선 원녀 광부 문제에 관심이 있다고 선포하고 세자 저하의 혼인을 진행한다면 그 누구도 막지 못할 것입니다”라고 상세하게 덧붙였다.</p>
<p dmcf-pid="uPJtLFI9bl" dmcf-ptype="general">그 말에 임금은 “표본이 원녀라는 것이 너무 추상적이지 않느냐?”라며 의아해하면서도 심정우에게 맹 박사의 세 딸을 두 달 안에 혼인시키라는 미션을 내렸다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="7B4TPyA09h" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/tvreport/20231031230513226nezg.jpg" data-org-width="1000" dmcf-mid="yWpXdZrqq3" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/tvreport/20231031230513226nezg.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="zB4TPyA0fC" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/tvreport/20231031230515304miig.jpg" data-org-width="1000" dmcf-mid="WZQTPyA0bF" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/tvreport/20231031230515304miig.jpg" width="658"/></p>
</figure>
<p dmcf-pid="q3qsKOiHbI" dmcf-ptype="general">이에 심정우는 조선 최고의 중매쟁이 정순덕을 찾아 중매를 의뢰했다. 문제는 맹 박사의 세 딸이 ‘난공불락 아가씨들’로 통한다는 것. 이에 정순덕은 승부욕을 느끼면서도 심정우와 엮이고 싶지 않다는 마음으로 그의 의뢰를 거절했다.</p>
<p dmcf-pid="B6d1ntOKbO" dmcf-ptype="general">“객주 장사치들이 자네라면 할 수 있을 거라 하던데. 나는 어사고 이번 원녀 소탕은 어명으로 행하는 것이다”라는 심정우의 말엔 “원녀 소탕이요? 원녀가 무슨 산적입니까? 소탕하게. 저는 나리같이 생각하는 분의 중매 의뢰는 받지 않습니다”라고</p>
<figure class="figure_frm origin_fig" dmcf-pid="bAmfI4tnbs" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/tvreport/20231031230516648lnpc.jpg" data-org-width="1000" dmcf-mid="Y3TQvxUNqt" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/tvreport/20231031230516648lnpc.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="K4RZJ5mBVm" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/tvreport/20231031230518084esga.jpg" data-org-width="1000" dmcf-mid="G1JXdZrqb1" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/tvreport/20231031230518084esga.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="9egUjuv8br" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/tvreport/20231031230519583gogm.jpg" data-org-width="1000" dmcf-mid="H94TPyA025" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/tvreport/20231031230519583gogm.jpg" width="658"/></p>
</figure>
<p dmcf-pid="2nAqEBYxBw" dmcf-ptype="general">한편 이날 심정우는 맹 박사의 딸들을 찾아 결혼을 강요했으나 무시당한 바. 이 상황을 지켜보고 있던 맹 박사의 셋째 딸 맹삼순(정보민 분)은 직접 정순덕을 찾아 첫째 맹하나(정신혜 분)와 둘째 맹두리(박지원 분)의 중매를 의뢰했다. 맹삼순은 “내가 너무 혼인을 하고 싶어서 그래. 언니들이 시집을 가야 막내인 나도 혼인을 하지 않겠나. 내가 너무 답답하여 자네를 찾아온 거네”라고 말했다.</p>
<p dmcf-pid="VwhQvxUNqD" dmcf-ptype="general">극 말미엔 “늙은 아씨들 중매 설게요”라며 나선 정순덕과 놀란 심정우의 모습이 그려지며 한층 흥미진진한 전개를 예고했다.</p>
<p dmcf-pid="fAmfI4tnqE" dmcf-ptype="general">이혜미 기자 gpai@tvreport.co.kr / 사진 = ‘혼례대첩’ 방송화면 캡처</p>
</section>
</div></p></section></div><h6>[Source : TV리포트]</h6></div>
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