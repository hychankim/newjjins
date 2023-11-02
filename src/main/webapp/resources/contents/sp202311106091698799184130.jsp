
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
    <h3>'김연경-옐레나' 쌍포는 리그 무적 '최강 외인 실바 꺾으며 선두 등극'[장충 현장]</h3><h6>최문영  2023. 11. 1. 06:09</h6>
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
<section dmcf-sid="0nps7L9rIX">
<div dmcf-pid="UetD0dqkOG" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="uKlJT9XeIY" dmcf-ptype="figure">
<p class="link_figure"><img alt="흥국생명 김연경과 옐레나가 세트스코어 3대0 승리를 확정짓고 포효하고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060909547wvly.jpg" data-org-width="1120" dmcf-mid="1dKiy2Zdwt" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060909547wvly.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            흥국생명 김연경과 옐레나가 세트스코어 3대0 승리를 확정짓고 포효하고 있다.
           </figcaption>
</figure>
<p dmcf-pid="79Siy2ZdEW" dmcf-ptype="general"> 아무도 김연경과 옐레나의 쌍포를 당해낼 수 없었다. </p>
<p dmcf-pid="zfyoG4tnIy" dmcf-ptype="general">흥국생명 김연경이 리그 최정상급 외국인 GS칼텍스 실바를 누르고 '배구 여제'의 자존심을 지켰다. </p>
<p dmcf-pid="q4WgH8FLET" dmcf-ptype="general">흥국생명은 31일 서울 장충체육관에서 GS칼텍스와의 원정경기에서 세트스코어 3대0 (25-22 26-24 25-23)완승을 거뒀다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="B8YaX63owv" dmcf-ptype="figure">
<p class="link_figure"><img alt="흥국생명 김연경과  옐레나가 세트스코어 3대0 승리를 확정짓고 포효하고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060909816ievg.jpg" data-org-width="1200" dmcf-mid="t5Z9k1sbw1" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060909816ievg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            흥국생명 김연경과 옐레나가 세트스코어 3대0 승리를 확정짓고 포효하고 있다.
           </figcaption>
</figure>
<p dmcf-pid="bWn7gYkUrS" dmcf-ptype="general"> 직전 경기에서 정관장에 아쉽게 패했던 흥국생명은 4승1패 승점 12점으로 현대건설(3승2패 승점 10점)을 끌어내리고 리그 1위에 올라섰다. </p>
<p dmcf-pid="KYLzaGEuwl" dmcf-ptype="general">반면, 개막 후 전승을 기록한 GS는 첫 패배를 당했다. </p>
<p dmcf-pid="9GoqNHD7sh" dmcf-ptype="general">리그 선두를 노리는 강팀들의 승부만큼이나 득점 선두 실바와 토종 에이스 김연경의 불꽃 대결 역시 눈길을 끌었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="2tcVDFI9rC" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060910236yblu.jpg" data-org-width="1200" dmcf-mid="FEVY8wRyO5" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060910236yblu.jpg" width="658"/></p>
</figure>
<div dmcf-pid="VFkfw3C2mI" dmcf-ptype="general">
            1세트 내내 대등한 경기를 펼쳤다. 접전을 이루던 22-22 상황에서 흥국생명이 웃었다. 옐레나와 김미연의 퀵 오픈이 성공하고, 상대 범실이 이어지면서 세트를 따냈다. 
          </div>
<p dmcf-pid="f3E4r0hVmO" dmcf-ptype="general">2세트에는 김연경의 리시브가 돋보였다, 김연경은 팀이 뒤지고 있던 순간에 상대 에이스 실바의 공격을 연속으로 막아내며 역전의 발판을 만들었다. </p>
<p dmcf-pid="4Abv2cPlws" dmcf-ptype="general">3세트는 초반부터 김연경과 옐레나의 쌍포가 터지면서 흥국생명이 치고 나갔다. </p>
<p dmcf-pid="8cKTVkQSrm" dmcf-ptype="general">GS칼텍스는 오세연과 강소휘의 연속 블로킹으로 한때 역전에 성공했으나 흥국생명 김미연의 디그와 옐레나의 스파이크가 분위기를 다시 가져왔다. </p>
<p dmcf-pid="6k9yfExvIr" dmcf-ptype="general">흥국생명은 옐레나 (19득점) 와 김연경(17득점)이 36점을 합작하며 승리를 이끌었다. GS는 실바가 19득점, 강소휘가 14득점을 올리며 분전했지만 패배를 피할 수 없었다. 장충=최문영 기자 deer@sportschosun.com/2023.10.31/</p>
<figure class="figure_frm origin_fig" dmcf-pid="PwfG6reWww" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060910456lytf.jpg" data-org-width="1200" dmcf-mid="3OR3JSatDZ" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060910456lytf.jpg" width="658"/></p>
</figure>
</section>
</div></p></section></div><h6>[Source : 스포츠조선]</h6></div>
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