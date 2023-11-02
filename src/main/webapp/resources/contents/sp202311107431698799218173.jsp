
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
    <h3>[ATP] 흔들리는 '차세대 황제' 알카라스, 부상 이후 복귀전에서 패배</h3><h6>조영준 기자  2023. 11. 1. 07:43</h6>
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
<section dmcf-sid="uXWLUqWQv1">
<figure class="figure_frm origin_fig" dmcf-pid="7PfWnafOl5" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 2023 ATP 투어 파리 마스터스 단식 2회전에서 경기를 펼치는 카를로스 알카라스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074336498cflx.jpg" data-org-width="900" dmcf-mid="Ui7OPR7Avt" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074336498cflx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 2023 ATP 투어 파리 마스터스 단식 2회전에서 경기를 펼치는 카를로스 알카라스
           </figcaption>
</figure>
<p dmcf-pid="zHynpzyPSZ" dmcf-ptype="general">[스포티비뉴스=조영준 기자] 남자 테니스의 '차세대 황제'로 불리는 카를로스 알카라스(20, 스페인, 세계 랭킹 2위)가 부상 이후 복귀한 남자프로테니스(ATP) 투어 파리 마스터스 첫 경기에서 완패했다. </p>
<p dmcf-pid="qXWLUqWQWX" dmcf-ptype="general">알카라스는 1일(한국시간) 프랑스 파리에서 열린 ATP 투어 마스터스 1000시리즈 파리 마스터스 단식 2회전(32강)에서 로만 사피울린(26, 러시아, 세계 랭킹 45위)에게 0-2(3-6 4-6)로 졌다. </p>
<p dmcf-pid="BNLumCLZCH" dmcf-ptype="general">지난 7월 알카라스는 윔블던 결승전에서 노바크 조코비치(36, 세르비아, 세계 랭킹 1위)를 꺾고 우승을 차지했다. 그는 최고 권위 그랜드슬램 대회인 윔블던에서 조코비치를 누르고 새로운 황제로 떠올랐다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="0OwBuBYxTd" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 2023 ATP 투어 파리 마스터스 단식 2회전에서 경기를 펼치는 카를로스 알카라스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074931404kepo.jpg" data-org-width="900" dmcf-mid="tPoM6MujWn" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074931404kepo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 2023 ATP 투어 파리 마스터스 단식 2회전에서 경기를 펼치는 카를로스 알카라스
           </figcaption>
</figure>
<p dmcf-pid="prk707T6Ce" dmcf-ptype="general">그러나 ATP 투어 웨스턴 앤 서던 오픈 결승전에서는 혈투 끝에 조코비치에게 패하며 준우승에 그쳤다. 올해 마지막 그랜드슬램 대회인 US오픈에서는 4강에서 탈락했다. </p>
<p dmcf-pid="UmEzpzyPlR" dmcf-ptype="general">이후 알카라스는 왼쪽 발과 허리 등 각종 부상에 시달렸다. 지난달 중국오픈에 출전했지만 4강에서 떨어졌고 상하이 마스터스에서는 16강에서 고배를 마셨다. </p>
<p dmcf-pid="usDqUqWQhM" dmcf-ptype="general">투어 출전을 중단하고 치료와 재활에 들어간 알카라스는 이번 파리 마스터스에서 복귀하겠다는 뜻을 밝혔다. 2번 시드인 그는 1회전을 부전승으로 통과했다. </p>
<p dmcf-pid="75GeQezclx" dmcf-ptype="general">첫 경기인 2회전에서 세계 45위 사피울린을 만난 알카라스는 제 기량을 발휘하지 못하며 조기 탈락했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="z1HdxdqkTQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 2023 ATP 투어 파리 마스터스 단식 2회전을 마친 뒤 서로 격려하는 카를로스 알카라스(오른쪽)와 로만 사피울린" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074932786vawf.jpg" data-org-width="900" dmcf-mid="FoIkNkQSTi" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074932786vawf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 2023 ATP 투어 파리 마스터스 단식 2회전을 마친 뒤 서로 격려하는 카를로스 알카라스(오른쪽)와 로만 사피울린
           </figcaption>
</figure>
<p dmcf-pid="qtXJMJBEvP" dmcf-ptype="general">알카라스는 2년 연속 연말 세계 랭킹 1위에 도전하기 위해 이번 대회에 복귀했다. 올해 마지막 마스터스 1000시리즈인 파리 마스터스와 '왕중왕전'인 파이널스에서 우승할 경우 조코비치를 제치고 세계 1위를 탈환할 기회가 있었다. </p>
<p dmcf-pid="BvCfKf1iT6" dmcf-ptype="general">그러나 이번 대회 첫 경기에서 고배를 마시며 2년 연속 연말 세계 1위는 매우 어려워졌다. </p>
<p dmcf-pid="bTh494tnS8" dmcf-ptype="general">사피울린은 "카를로스(알카라스)에게 이겨서 기쁘다. 비록 그가 최고의 컨디션은 아니었지만 그를 이기기는 어렵다. 내가 해낼 수 있었다는 것이 정말 기뻤다"며 소감을 밝혔다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Kyl828FLW4" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 2023 ATP 투어 파리 마스터스 단식 2회전에서 카를로스 알카라스를 이긴 뒤 팔일 치켜올리며 기뻐하는 로만 사피울린" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074934093qbna.jpg" data-org-width="900" dmcf-mid="3xfCmCLZCJ" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074934093qbna.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 2023 ATP 투어 파리 마스터스 단식 2회전에서 카를로스 알카라스를 이긴 뒤 팔일 치켜올리며 기뻐하는 로만 사피울린
           </figcaption>
</figure>
<p dmcf-pid="970NLN4ICf" dmcf-ptype="general">알카라스를 잡은 사피울린은 카렌 하차노프(27, 러시아, 세계 랭킹 15위)와 8강 진출을 다툰다. </p>
<p dmcf-pid="2zpjoj8CWV" dmcf-ptype="general">1번 시드인 조코비치는 토마스 마르틴 에체베리(24, 아르헨티나, 세계 랭킹 31위)와 32강전을 치른다. </p>
<p dmcf-pid="VqUAgA6hh2" dmcf-ptype="general">한편 SPOTV ON과 스포츠 OTT 서비스인 SPOTV NOW는 ATP 투어 파리 마스터스 주요 경기를 위성 생중계한다. 또한 SPOTV ASIA(스포티비 아시아)에서도 생중계한다. 스포티비 아시아는 동남아 지역 13개국에 송출되는 채널로 테니스 그랜드슬램 대회인 윔블던과 US오픈, 남자프로테니스 ATP 투어, 모터사이클 레이싱 대회인 모토지피(GP), WTT(World Table Tennis) 탁구대회, BWF(세계배드민턴연맹) 배드민턴 대회 국제스포츠클라이밍(IFSC) 스포츠클라이밍 월드컵 등 다양한 콘텐츠를 제공 중이다.</p>
<p dmcf-pid="fyl828FLT9" dmcf-ptype="general">&lt;저작권자 ⓒ SPOTV NEWS. 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 스포티비뉴스]</h6></div>
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