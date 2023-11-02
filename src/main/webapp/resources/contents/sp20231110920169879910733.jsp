
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
    <h3>맨유 텐 하흐, 최악 성적에도 “죄송할 것 없다”</h3><h6>김재민  2023. 11. 1. 09:20</h6>
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
<section dmcf-sid="8eXJG5mBRH">
<figure class="figure_frm origin_fig" dmcf-pid="6LFg10hVeG" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsen/20231101092055687ugyh.jpg" data-org-width="594" dmcf-mid="4Js9rInXnX" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsen/20231101092055687ugyh.jpg" width="658"/></p>
</figure>
<p dmcf-pid="Pr9sbV5JRY" dmcf-ptype="general"> [뉴스엔 김재민 기자]</p>
<p dmcf-pid="Qm2OKf1iLW" dmcf-ptype="general">텐 하흐 감독이 최악의 부진에도 믿음을 잃지 않았다.</p>
<p dmcf-pid="x6TQSWcpiy" dmcf-ptype="general">맨체스터 유나이티드는 리그 10경기 5승 5패 승점 15점으로 리그 8위에 그치고 있다. 지난 10월 30일(이하 한국시간) 열린 리그 10라운드 맨체스터 시티와의 라이벌전에서는 안방에서 0-3 완패를 당했다.</p>
<p dmcf-pid="yvxyPR7AeT" dmcf-ptype="general">맨유는 이미 챔피언스리그에서도 조별리그 3경기 중 2패를 떠안아 16강 진출 가능성도 불확실한 상태다.</p>
<p dmcf-pid="WYdHRibDMv" dmcf-ptype="general">맨유가 개막 후 첫 공식전 15경기 안에 7패 이상을 기록한 것은 무려 1972-1973시즌이 이후 처음이다. 당시 감독이었던 프랭크 오'파렐은 이후 성적 부진으로 경질됐다.</p>
<p dmcf-pid="YPyxvYkUnS" dmcf-ptype="general">지난 시즌 프리미어리그 3위와 카라바오컵 우승으로 데뷔 시즌을 성공적으로 마쳤던 텐 하흐 감독은 새 시즌 개막 3개월 만에 경질 압박을 받고 있다.</p>
<p dmcf-pid="GMGeWXwzJl" dmcf-ptype="general">영국 'BBC'가 1일 텐 하흐 감독이 뉴캐슬 유나이티드와의 카라바오컵 경기를 앞두고 진행한 기자회견 인터뷰를 전했다.</p>
<p dmcf-pid="HEBwzKHRih" dmcf-ptype="general">텐 하흐 감독은 "죄송함을 느껴야 할 부분은 없다"며 "나는 우리 선수들을 계속 믿는다"고 말했다.</p>
<p dmcf-pid="XDbrq9XeeC" dmcf-ptype="general">최근 지도력에 물음표가 따르고 있는 상황에 텐 하흐 감독은 "맨유에서는 모든 경기가 큰 부담이다. 이 구단과 관련한 모든 사람들에게서 압박이 있지만 그 요구와 기준은 우리가 직면해야 할 도전이다"고 답했다.</p>
<p dmcf-pid="ZvxyPR7ARI" dmcf-ptype="general">이어 그는 "시즌 시작이 우리가 바라던 것은 아니었지만, 우리는 올바른 방향으로 나아갈 재능과 태도를 지녔다고 확신한다"며 "우리가 진정한 모습을 보여주는 건 시간 문제다. 그 때가 올 것이라 확신한다"며 믿음을 보였다.</p>
<p dmcf-pid="5nto53C2eO" dmcf-ptype="general">맨유는 오는 2일 뉴캐슬 유나이티드를 상대로 카라바오컵 4라운드 경기를 치른다.(자료사진=에릭 텐 하흐 감독)</p>
<p dmcf-pid="1NUA07T6is" dmcf-ptype="general">뉴스엔 김재민 jm@</p>
<p dmcf-pid="tg0NFUS4dm" dmcf-ptype="general">사진=ⓒ GettyImagesKorea</p>
<p dmcf-pid="FczEuBYxJr" dmcf-ptype="general">기사제보 및 보도자료 newsen@newsen.com copyrightⓒ 뉴스엔. 무단전재 &amp; 재배포 금지 </p>
</section>
</div></p></section></div><h6>[Source : 뉴스엔]</h6></div>
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