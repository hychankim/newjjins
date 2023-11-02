
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
    <h3>흥국생명, GS 개막 무패 깼다…현대캐피탈 개막 5연패 수렁(종합)</h3><h6>박대로 기자  2023. 10. 31. 22:05</h6>
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
<section dmcf-sid="PWrNI4tnVY">
<figure class="figure_frm origin_fig" dmcf-pid="QsgRA7T6fW" dmcf-ptype="figure">
<p class="link_figure"><img alt="[서울=뉴시스]김연경 이원정. 2023.10.31. (사진=한국배구연맹 제공)  *재판매 및 DB 금지" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/newsis/20231031220537811vdho.jpg" data-org-width="720" dmcf-mid="8iFYUkQSVH" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/newsis/20231031220537811vdho.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [서울=뉴시스]김연경 이원정. 2023.10.31. (사진=한국배구연맹 제공) *재판매 및 DB 금지
           </figcaption>
</figure>
<p dmcf-pid="xd2u8vNFVy" dmcf-ptype="general">[서울=뉴시스] 박대로 기자 = 프로배구 여자부 흥국생명이 개막 무패를 달리던 GS칼텍스를 무너뜨렸다. 남자부 현대캐피탈은 개막 5연패 수렁에 빠졌다.</p>
<p dmcf-pid="yrLxNUS4BT" dmcf-ptype="general">흥국생명은 31일 서울 장충체육관에서 열린 도드람 2023~2024 V-리그 여자부 원정 경기에서 GS칼텍스를 세트 스코어 3-0(25-22 26-24 25-23)으로 격파했다.</p>
<p dmcf-pid="W1lwyR7Abv" dmcf-ptype="general">직전 경기에서 정관장에 일격을 당했던 흥국생명은 4승1패 승점 12점으로 현대건설(3승2패 승점 10점)을 끌어내리고 리그 1위로 뛰어올랐다.</p>
<p dmcf-pid="YYmjC8FLfS" dmcf-ptype="general">3연승을 달리던 GS칼텍스는 시즌 첫 패배를 당했다. 3승1패 승점 8점을 기록했다. 세트득실률에서 앞선 정관장에 3위를 내주고 4위로 떨어졌다.</p>
<p dmcf-pid="GUYCZL9rBl" dmcf-ptype="general">흥국생명 옐레나가 19점을 올려 승리를 이끌었다. 승부처마다 결정적인 점수를 낸 김연경이 17점을 올렸다. 레이나가 8점을 보탰다.</p>
<p dmcf-pid="HWrNI4tnbh" dmcf-ptype="general">GS칼텍스에서는 지젤 실바가 19점, 강소휘가 14점을 냈지만 패배를 막지 못했다.</p>
<p dmcf-pid="XGsAh63oVC" dmcf-ptype="general">1세트 내내 일진일퇴 접전이 이어졌다. 22-22 동점에서 옐레나가 오픈 공격을 성공시켰다. 김미연이 쳐내기에 성공해 흥국생명이 세트 포인트를 땄다. 흥국생명 리베로 도수빈의 디그가 그대로 GS칼텍스 코트에 떨어지면서 흥국생명이 1세트를 챙겼다.</p>
<p dmcf-pid="Z5hDTMujKI" dmcf-ptype="general">2세트 초반 흥국생명이 앞서 나갔다. 지젤 실바의 백어택 라인오버 범실에 이어 김연경이 서브 득점을 올리며 흥국생명이 치고 나갔다. 그러자 GS칼텍스 실바가 연속 득점으로 11-10으로 경기를 뒤집었다.</p>
<p dmcf-pid="5e9U4Sat9O" dmcf-ptype="general">23-23 동점에서 김연경이 오픈 공격을 성공시켜 세트 포인트를 땄다. 강소휘가 쳐내기로 듀스를 만들었다. 김연경이 시간 차 공격으로 다시 세트 포인트를 냈고 실바의 백어택을 레이나가 가로막으며 2세트를 끝냈다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="1ifzPyA0Vs" dmcf-ptype="figure">
<p class="link_figure"><img alt="[서울=뉴시스]현대캐피탈 이현승. 2023.10.31. (사진=한국배구연맹 제공)  *재판매 및 DB 금지" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/newsis/20231031220537958fhlt.jpg" data-org-width="720" dmcf-mid="6NztKOiH9G" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/newsis/20231031220537958fhlt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [서울=뉴시스]현대캐피탈 이현승. 2023.10.31. (사진=한국배구연맹 제공) *재판매 및 DB 금지
           </figcaption>
</figure>
<p dmcf-pid="tsgRA7T62m" dmcf-ptype="general">3세트 초반 김연경과 옐레나 쌍포가 터지면서 흥국생명이 앞서 나갔다. 막바지에 몰린 GS칼텍스는 오세연과 강소휘의 연속 블로킹으로 한때 역전에 성공했다. 흥국생명은 김미연의 디그와 옐레나의 공격으로 다시 앞섰다. 끈질긴 수비에 세트 막판 레이나의 속공까지 더한 흥국생명이 서울 원정에서 완승을 거뒀다.</p>
<p dmcf-pid="FYmjC8FLbr" dmcf-ptype="general">같은 시간 안산상록수체육관에서 열린 남자부 OK금융그룹-현대캐피탈전에서는 홈팀 OK금융이 세트 스코어 3-2(22-25 25-22 20-25 27-25 17-15)로 이겼다.</p>
<p dmcf-pid="3aQ9eXwzKw" dmcf-ptype="general">개막 2연승 후 직전 경기 삼성화재전에서 패했던 OK금융은 반등에 성공했다. 3승1패 승점 7점으로 대한항공을 4위로 끌어내리고 3위로 올라섰다.</p>
<p dmcf-pid="0kd8LFI9BD" dmcf-ptype="general">현대캐피탈은 개막 5연패 수렁에 빠졌다. 5전 5패 승점 2점을 딴 현대캐피탈은 최하위인 리그 7위에 머물렀다.</p>
<p dmcf-pid="pARfi1sbVE" dmcf-ptype="general">OK금융 레오가 백어택 10개와 서브 에이스 4개 포함 30점을 올려 승리를 이끌었다. 송희채가 17점, 신호진이 9점, 바야르사이한이 7점을 올렸다.</p>
<p dmcf-pid="UwnQaplffk" dmcf-ptype="general">현대캐피탈 아흐메드가 백어택 12개 포함 25점을 올렸지만 패배를 막지 못했다. 허수봉이 16점, 최민호와 전광인이 각각 13점, 페이창이 11점을 기록했다.</p>
<p dmcf-pid="ufpXzwRyVc" dmcf-ptype="general">한 세트씩 주고 받으며 마지막 5세트까지 갔다. 5세트에서도 듀스 접전이 이어졌다. 15-15에서 현대캐피탈 세터 이현승과 공격수 허수봉의 호흡이 맞지 않아 점수를 헌납했다. 이어 이현승이 또 토스 실수를 하면서 OK금융이 승리를 따냈다.</p>
<p dmcf-pid="7HOclP0gqA" dmcf-ptype="general"><span>☞공감언론 뉴시스</span> daero@newsis.com </p>
</section>
</div></p></section></div><h6>[Source : 뉴시스]</h6></div>
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