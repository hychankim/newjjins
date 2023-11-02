
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
    <h3>'김연경+옐레나 쌍포' 흥국생명, GS칼텍스에 시즌 첫 패 안기고 선두 도약</h3><h6>권혁준 기자  2023. 10. 31. 22:21</h6>
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
<section dmcf-sid="QLxW5o2mzu">
<figure class="figure_frm origin_fig" dmcf-pid="xCEqVho5zU" dmcf-ptype="figure">
<p class="link_figure"><img alt="여자 프로배구 흥국생명 선수들. /뉴스1 DB ⓒ News1 김진환 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/NEWS1/20231031222140575xhvf.jpg" data-org-width="1400" dmcf-mid="6gzDI4tnzz" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/NEWS1/20231031222140575xhvf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            여자 프로배구 흥국생명 선수들. /뉴스1 DB ⓒ News1 김진환 기자
           </figcaption>
</figure>
<p dmcf-pid="yfzDI4tnup" dmcf-ptype="general">(서울=뉴스1) 권혁준 기자 = 김연경과 옐레나 므라제노비치의 쌍포를 앞세운 여자 프로배구 흥국생명이 GS칼텍스에 시즌 첫 패배를 안겼다.</p>
<p dmcf-pid="WZvQJ5mBz0" dmcf-ptype="general">흥국생명은 31일 서울 중구 장충체육관에서 열린 도드람 2023-24 V리그 여자부 GS칼텍스와의 경기에서 세트 스코어 3-0(25-22 26-24 25-23)으로 완승을 거뒀다.</p>
<p dmcf-pid="Y5Txi1sbF3" dmcf-ptype="general">앞선 경기에서 정관장에 패해 연승이 끊겼던 흥국생명은 4승1패(승점12)가 되며 현대건설(3승2패·승점 10)을 따돌리고 리그 선두가 됐다.</p>
<p dmcf-pid="Gu5LA7T6pF" dmcf-ptype="general">3연승을 달리던 GS칼텍스는 시즌 첫 패배를 당했다. 승점 8점으로 흥국생명, 현대건설에 이은 3위.</p>
<p dmcf-pid="H71oczyPpt" dmcf-ptype="general">흥국생명은 외국인선수 옐레나가 19점, 김연경이 18점을 기록하면서 팀 공격을 이끌었다.</p>
<p dmcf-pid="XztgkqWQu1" dmcf-ptype="general">GS칼텍스는 지젤 실바가 19점, 강소휘가 14점을 냈지만 팀 패배를 막지 못했다.</p>
<p dmcf-pid="ZKpAr9Xe35" dmcf-ptype="general">1세트 22-22까지 접전을 벌이던 흥국생명은 막판 집중력을 발휘했다. 옐레나와 김미연이 연속 공격을 성공해 세트포인트를 잡았고, 이어진 상황에선 리베로 도수빈의 디그가 그대로 GS칼텍스 코트에 떨어지면서 승리를 확정했다.</p>
<p dmcf-pid="59Ucm2ZdUZ" dmcf-ptype="general">2세트에서는 듀스 접전이 벌어졌다. 하지만 24-24 상황에서 김연경이 시간차 공격으로 세트포인트를 잡았고, 실바의 백어택을 레이나 토코쿠가 가로막으며 승부를 갈랐다.</p>
<p dmcf-pid="12uksV5J0X" dmcf-ptype="general">3세트 역시 막판까지 접전이 이어졌다. 그러나 김연경과 옐레나, 쌍포를 앞세워 리드를 이어가던 흥국생명은 GS칼텍스의 추격을 뿌리치고 25-23으로 승리하며 경기를 마무리했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="td8SGJBE0H" dmcf-ptype="figure">
<p class="link_figure"><img alt="OK금융그룹 레오. /뉴스1 DB ⓒ News1 김영운 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/NEWS1/20231031222142336qswb.jpg" data-org-width="1400" dmcf-mid="PTNpBmdYp7" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/NEWS1/20231031222142336qswb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            OK금융그룹 레오. /뉴스1 DB ⓒ News1 김영운 기자
           </figcaption>
</figure>
<p dmcf-pid="FJ6vHibDFG" dmcf-ptype="general">안산상록수체육관에서 열린 남자부 경기에선 OK금융그룹이 현대캐피탈에 세트스코어 3-2(22-25 25-22 20-25 27-25 17-15)로 이겼다.</p>
<p dmcf-pid="3iPTXnKw7Y" dmcf-ptype="general">OK금융그룹은 3승1패(승점 7)가 돼 3위를 마크했다.</p>
<p dmcf-pid="0MVCyR7A0W" dmcf-ptype="general">반면 현대캐피탈은 개막 5연패 수렁에 빠졌다.</p>
<p dmcf-pid="pRfhWezcFy" dmcf-ptype="general">OK금융은 외국인선수 레오나르도 레이바 마르티네스(등록명 레오)가 30점을 올려 승리의 주역이 됐다. 레오는 역대 통산 4510점으로 박철우(한국전력)에 이어 두 번째로 개인 공격 4500점을 넘겼다.</p>
<p dmcf-pid="Ue4lYdqk0T" dmcf-ptype="general">현대캐피탈은 아흐메드 아크바이리가 25점을 기록했지만 팀 패배를 막지 못했다.</p>
<p dmcf-pid="uKpAr9Xeuv" dmcf-ptype="general">세트스코어 2-2로 맞선 5세트, 마지막까지 듀스 접전이 벌어진 가운데 OK금융이 웃었다.</p>
<p dmcf-pid="79Ucm2ZdzS" dmcf-ptype="general">OK금융은 15-15에서 현대캐피탈의 범실로 매치포인트를 잡았고 계속된 상황에서 현대캐피탈 세터 이현승이 또 한 번 범실을 기록하며 승리를 확정했다.</p>
<p dmcf-pid="z2uksV5Jul" dmcf-ptype="general">starburyny@news1.kr </p>
</section>
</div></p></section></div><h6>[Source : 뉴스1]</h6></div>
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