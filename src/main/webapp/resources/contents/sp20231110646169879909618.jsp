
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
    <h3>김민재, 아시아 최고의 해외 선수 등극…발롱도르 22위 이어 겹경사</h3><h6>김환 기자  2023. 11. 1. 06:46</h6>
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
<section dmcf-sid="KLCljXwzGb">
<figure class="figure_frm origin_fig" dmcf-pid="9Kno4DMT5B" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064624348ydtm.jpg" data-org-width="600" dmcf-mid="ugGzG4tn14" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064624348ydtm.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="29Lg8wRy1q" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=포포투" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064625967iyxk.jpg" data-org-width="600" dmcf-mid="7aQjQsJGtf" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064625967iyxk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=포포투
           </figcaption>
</figure>
<div dmcf-pid="VOt3SbGM5z" dmcf-ptype="general">
<p>[포포투=김환]</p>
<br/>
<p>김민재가 아시아축구연맹(AFC)이 선정한 최고의 해외 선수가 됐다.</p>
<br/>
<p>AFC는 1일(이하 한국시간) 공식 홈페이지를 통해 “김민재가 카타르 도하에서 열린 2022 AFC 연례 시상식에서 해외에서 뛰는 최고의 아시아 선수상을 수상했다. 김민재는 나폴리에서 두각을 나타내며 클럽을 1990년 이후 첫 우승으로 이끌었다”라고 발표했다.</p>
<br/>
<p>이어 AFC는 “김민재는 손흥민(2015, 2017, 2019)에 이어 한국 선수로는 두 번째로 이 상을 받았다. 김민재의 주가는 그가 베이징 궈안에서 튀르키예 리그의 페네르바체로 이적한 뒤 크게 올랐다. 그가 뛰어난 모습을 보여주자 나폴리는 김민재를 영입하기로 결정했다. 김민재는 나폴리가 유럽축구연맹(UEFA) 챔피언스리그(UCL) 8강에 오르는 과정에서 대단한 활약을 펼쳤고, 팀이 16경기 무실점을 유지하는 데 공헌했다. 33경기에서 2골 2도움을 기록해 나폴리가 33년 만에 우승을 차지하는 과정에 힘을 보탰다”라며 김민재에 대해 설명했다.</p>
<br/>
<p>또한 “김민재는 한국이 10회 연속 월드컵 본선에 진출하는 데 중요한 역할을 했다. 그는 2022 국제축구연맹(FIFA) 카타르 월드컵 기간 동안 한국이 치른 4경기 중 3경기에 출전했다. 김민재는 이번 시즌을 앞두고 독일 분데스리가의 거함인 바이에른 뮌헨으로 이적했고, 2023 발롱도르 후보에 오른 유일한 아시아 선수였다”라고 덧붙였다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="fIF0vKHR57" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=발롱도르" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064627370pfxq.jpg" data-org-width="600" dmcf-mid="zrBRBafO1V" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064627370pfxq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=발롱도르
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="4C3pT9XeHu" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064629083mgvw.jpg" data-org-width="600" dmcf-mid="qp3Uy2ZdZ2" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064629083mgvw.jpg" width="658"/></p>
</figure>
<div dmcf-pid="80Pxzo2mtU" dmcf-ptype="general">
<p>김민재는 지난달 초 공개된 발롱도르 최종 후보 30인에 이름을 올렸다. 아시아 선수로는 유일한 후보였다. 설기현, 박지성, 손흥민에 이어 한국 선수가 발롱도르 후보에 포함된 것은 김민재가 네 번째다. 김민재는 지난달 31일 진행된 발롱도르 시상식에서 최종 22위를 차지했다. 한국 선수가 발롱도르에서 기록한 가장 높은 순위는 손흥민이 달성한 11위다. 당시 손흥민은 프리미어리그(PL)에서 23골을 터트리며 득점왕을 차지한 공로를 인정받았다.</p>
<br/>
<p>무엇보다 김민재가 이번 발롱도르 최종 후보에 포함된 수비수들 중 가장 높은 순위를 기록했다는 게 고무적이다. 김민재는 함께 선정된 후벵 디아스, 요슈코 그바르디올 등 세계적인 센터백들을 제치고 수비수들 중 가장 높은 순위를 달성했다. 여기에 더해 AFC에서 선정한 올해의 해외 선수에도 당당히 올랐다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="6pQMqgVsHp" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064630590zufn.jpg" data-org-width="600" dmcf-mid="BVMdKj8CX9" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064630590zufn.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="PUxRBafOZ0" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064631801bxdz.jpg" data-org-width="600" dmcf-mid="bMCljXwz5K" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101064631801bxdz.jpg" width="658"/></p>
</figure>
<div dmcf-pid="QF46UibDX3" dmcf-ptype="general">
<br/>
<p>김환 기자 hwankim14@fourfourtwo.co.kr</p>
<p>ⓒ 포포투(https://www.fourfourtwo.co.kr) 무단전재 및 재배포금지</p>
</div>
</section>
</div></p></section></div><h6>[Source : 포포투]</h6></div>
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