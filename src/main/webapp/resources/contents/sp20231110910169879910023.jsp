
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
    <h3>호날두와 비교되는 메시의 인성…메시는 마지막까지 ‘리스펙트’</h3><h6>김환 기자  2023. 11. 1. 09:10</h6>
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
<section dmcf-sid="4ucmwOiH5s">
<figure class="figure_frm origin_fig" dmcf-pid="8eGt53C25m" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101091004603ljwd.jpg" data-org-width="600" dmcf-mid="2HBLigVsXC" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101091004603ljwd.jpg" width="658"/></p>
</figure>
<div dmcf-pid="6dHF10hVXr" dmcf-ptype="general">
<p>[포포투=김환]</p>
<br/>
<p>리오넬 메시는 마지막까지 크리스티아누 호날두를 존중했다.</p>
<br/>
<p>메시가 자신의 8번째 발롱도르를 수상했다. 발롱도르를 주관하는 ‘프랑스 풋볼’은 지난달 31일(한국시간) 메시가 2023 발롱도르의 주인공이 됐다고 발표했다. 엘링 홀란드와 킬리안 음바페가 마지막까지 메시와 경쟁했지만, 지난해 열린 2022 국제축구연맹(FIFA) 카타르 월드컵에서 우승을 차지한 메시를 넘지는 못했다.</p>
<br/>
<p>이번 수상으로 전무후무한 기록을 보유하게 됐다. 이미 7개의 발롱도르를 보유해 라이벌인 호날두(5회 수상)를 뛰어넘었던 메시는 호날두와의 차이를 더욱 벌렸다. 메시와 호날두는 2000년대 후반부터 2010년대 내내 라이벌 관계를 구축했으나, 결국 메시가 이 구도를 깨고 역대 최고의 선수, ‘GOAT(Greatest Of All Times)’로 등극했다.</p>
<br/>
<p>메시는 마지막까지 호날두를 존중했다. 스페인 ‘문도 데포르티보’는 “메시는 호날두와의 라이벌 관계를 애틋하게 기억했고, 둘의 경쟁이 축구의 수준을 최대치로 끌어올렸다고 말했다”라며 메시가 발롱도르를 수상한 뒤 진행한 인터뷰 내용을 전했다.</p>
<br/>
<p>메시는 “(호날두와의 경쟁은) 아주 멋진 경쟁이었다. 우리는 경쟁을 하며 서로를 먹여살렸다. 호날두는 항상 모든 점에서 이기고 싶어했다. 이는 우리와 팬들에게 좋은 시간이었다. 우리는 10년, 15년 동안 정상에 머물렀다. 이는 정말 어려운 일이었다. 축구를 즐기는 모든 이들에게 환상적이고 좋은 추억이었을 거다”라고 말했다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="PPvHYZrqHw" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101091006094ypxk.jpg" data-org-width="600" dmcf-mid="VdxidL9r5I" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101091006094ypxk.jpg" width="658"/></p>
</figure>
<div dmcf-pid="QQTXG5mBYD" dmcf-ptype="general">
<p>마지막까지 호날두를 향해 존중을 보여준 메시다. 메시는 이번 발언으로 다시 한번 호날두와 비교되고 있다. 같은 날 호날두는 메시의 발롱도르 수상을 비판하는 게시글에 동조했다.</p>
<br/>
<p>스페인 매체 ‘아스’의 토마스 론체로는 메시의 발롱도르 수상이 확정된 이후 “우리가 이미 알고 있는 일이 벌어졌다. 그들이 또 메시에게 발롱도르를 줬다. 메시는 월드컵에서 우승했지만 6골을 페널티킥으로 넣었다. 월드컵은 10개월 전에 열렸다. 메시의 발롱도르 수상은 5회에 그쳐야 했다. 메시는 사비 에르난데스, 안드레스 이니에스타가 받았어야 할 발롱도르를 대신 받았다. 로베르트 레반도프스키는 한 시즌에 6개의 트로피를 들어올렸고, 홀란드는 모든 대회에서 득점왕이 됐다”라며 메시의 발롱도르 수상을 비판했다.</p>
<br/>
<p>호날두는 SNS에 올라온 이 게시글에 눈물을 흘리며 웃는 이모티콘을 활용해 댓글을 달았다. 2년 전에도 호날두는 발롱도르 후보들과 자신의 업적을 비교하는 게시글에 ‘Factos(진실)’라는 댓글을 쓴 바 있다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="xa3zuBYxGE" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101091007404zjmg.jpg" data-org-width="600" dmcf-mid="ftW5XtOKtO" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101091007404zjmg.jpg" width="658"/></p>
</figure>
<div dmcf-pid="y3aEcwRytk" dmcf-ptype="general">
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