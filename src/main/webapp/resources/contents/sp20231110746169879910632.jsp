﻿
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
    <h3>‘발롱도르 22위→AFC 최고 해외 선수’ 김민재 겹경사</h3><h6>동아닷컴 조성운 기자  2023. 11. 1. 07:46</h6>
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
<section dmcf-sid="Qe3i07T6DK">
<div dmcf-pid="xd0npzyPwb" dmcf-ptype="general">
            [동아닷컴] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="yr6OPR7AOB" dmcf-ptype="figure">
<p class="link_figure"><img alt="김민재. 사진=AFC" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101074632304ihwa.jpg" data-org-width="647" dmcf-mid="41UPH1sbrf" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101074632304ihwa.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김민재. 사진=AFC
           </figcaption>
</figure>
<div dmcf-pid="WmPIQezcmq" dmcf-ptype="general">
           [동아닷컴]
          </div>
<p dmcf-pid="YtE0DsJGEz" dmcf-ptype="general">유럽 최고의 수비수로 거듭난 김민재(27, 바이에른 뮌헨)가 아시아축구연맹(AFC) 선정 최고의 해외 선수가 됐다.</p>
<p dmcf-pid="GFDpwOiHE7" dmcf-ptype="general">AFC는 1일(이하 한국시각) 공식 홈페이지를 통해 "김민재가 카타르 도하에서 열린 2022 AFC 시상식에서 최고의 해외 선수상을 수상했다“고 전했다.</p>
<p dmcf-pid="H3wUrInXIu" dmcf-ptype="general">또 AFC는 “김민재가 나폴리에서 놀라운 활약을 펼치며, 구단을 1990년 이후 33년 만에 첫 우승으로 이끌었다"고 발표했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="XXj1ADMTwU" dmcf-ptype="figure">
<p class="link_figure"><img alt="김민재. 사진=게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101074633670sqfj.jpg" data-org-width="1200" dmcf-mid="8kevdL9rDV" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101074633670sqfj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김민재. 사진=게티이미지코리아
           </figcaption>
</figure>
<div dmcf-pid="ZZAtcwRywp" dmcf-ptype="general">
           이는 한국 선수로는 4년 만의 수상. 앞서 손흥민이 지난 2015년, 2017년, 2019년에 이 상을 받은 바 있다. 선수로는 2번째, 횟수로는 4번째이다.
          </div>
<p dmcf-pid="55cFkreWw0" dmcf-ptype="general">김민재는 불과 2년 만에 튀르키예 페네르바체에서 이탈리아 세리에A 나폴리를 거쳐 현재는 독일 분데스리가 바이에른 뮌헨의 주전 센터백으로 활약 중이다.</p>
<p dmcf-pid="11k3EmdYE3" dmcf-ptype="general">특히 김민재는 지난달 31일 열린 발롱도르 시상식에서 22위로 수비수 중 가장 높은 자리에 위치했다. 이는 2019년 손흥민과 같은 순위다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="tbS2vYkUmF" dmcf-ptype="figure">
<p class="link_figure"><img alt="김민재. 사진=게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101074635206bctg.jpg" data-org-width="1200" dmcf-mid="6vRSenKws2" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101074635206bctg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김민재. 사진=게티이미지코리아
           </figcaption>
</figure>
<div dmcf-pid="FKvVTGEust" dmcf-ptype="general">
           김민재는 튀르키예를 거쳐 이탈리아, 독일 무대까지 밟으며 클럽 커리어를 발전시켰고, 한국 축구대표팀 소속으로도 2022 카타르 월드컵 16강을 이끌었다.
          </div>
<p dmcf-pid="39TfyHD7E1" dmcf-ptype="general">나폴리 소속으로 팀이 16경기 무실점을 기록하는데 큰 역할을 했고, 그 결과 팀은 33년 만에 세리에A 우승의 영광까지 누렸다.</p>
<p dmcf-pid="0e3i07T6s5" dmcf-ptype="general">이에 김민재는 발롱도르에서 22위에 올랐고, 이번 AFC 최고의 해외 선수상까지 수상했다. 김민재의 전성시대가 활짝 열린 것.</p>
<figure class="figure_frm origin_fig" dmcf-pid="pd0npzyPrZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="김민재. 사진=게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101074636471zqbf.jpg" data-org-width="1024" dmcf-mid="PX4m8xUNO9" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101074636471zqbf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김민재. 사진=게티이미지코리아
           </figcaption>
</figure>
<div dmcf-pid="U3wUrInXDX" dmcf-ptype="general">
           이제 김민재는 바이에른 뮌헨에서 리그 우승을 넘어 최대 트레블까지 노릴 전망. 바이에른 뮌헨은 그만한 힘을 가진 팀이다.
          </div>
<p dmcf-pid="u0rumCLZOH" dmcf-ptype="general">동아닷컴 조성운 기자 madduxly@donga.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠동아]</h6></div>
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