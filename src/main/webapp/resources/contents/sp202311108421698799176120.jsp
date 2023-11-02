
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
    <h3>흥국, 현대까지 잡은 '히잡' 쓴 메가…벌써 대전은 '인도네시아 메가 열풍'  [곽경훈의 현장]</h3><h6>곽경훈 기자  2023. 11. 1. 08:42</h6>
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
<section dmcf-sid="VpITG5mBgD">
<figure class="figure_frm origin_fig" dmcf-pid="ffX3uBYxNE" dmcf-ptype="figure">
<p class="link_figure"><img alt="정관장 메가가 자신을 응원해주는 팬들 앞에서 포즈를 취하고 있다 /한국배구연맹." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101084208175dhiq.jpg" data-org-width="640" dmcf-mid="ZOahTGEuaX" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101084208175dhiq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            정관장 메가가 자신을 응원해주는 팬들 앞에서 포즈를 취하고 있다 /한국배구연맹.
           </figcaption>
</figure>
<p dmcf-pid="4iz28xUNok" dmcf-ptype="general">[마이데일리 = 대전 곽경훈 기자] 아시아쿼터 선수 인도네시아 메가의 인기가 뜨겁다.</p>
<p dmcf-pid="8DPdLN4Ikc" dmcf-ptype="general">29일 대전 충무체육관에서 '2023~2024 도드람 V리그' 흥국생명-현대건설의 경기가 열렸다. 이날 충무체육관에는 2467명의 관중이 찾았다. 그중에서 약 70명 이상의 인도네시아 관중들이 눈에 띄었다. </p>
<p dmcf-pid="6fX3uBYxNA" dmcf-ptype="general">팬들은 메가를 응원하는 문구를 적은 응원 문구를 들고 정관장과 메가를 응원했다. 정관장 관계자도 메가를 응원하는 곳곳의 인도네시아 팬들을 보고 연신 미소를 지었다. </p>
<p dmcf-pid="P4Z07bGMaj" dmcf-ptype="general">메가는 26일 흥국생명과의 경기에서 팀 내 최다 31점을 기록하며 역전승을 만들었고, 현대건설과의 경기에서도 양 팀 최다 득점인 22점을 올리며 팀의 연승을 이끌었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Q61Uq9XegN" dmcf-ptype="figure">
<p class="link_figure"><img alt="정관장 메가가 22득점을 올리며 팀 승리를 이끌었다 / 한국배구연맹." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101084209746mvhw.jpg" data-org-width="640" dmcf-mid="5K0nacPlNH" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101084209746mvhw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            정관장 메가가 22득점을 올리며 팀 승리를 이끌었다 / 한국배구연맹.
           </figcaption>
</figure>
<p dmcf-pid="xM0q94tnaa" dmcf-ptype="general">메가는 1세트 6점, 2세트 9득점 득점을 올렸다. 메가는 승부처에서 확실한 해결사 역할을 했다. 1세트 24-22에서 강스파이크로 세트를 끝냈고, 2세트 1점 차 리드에서 연속 득점을 올리며 분위기를 가져왔다. 3세트에서도 7득점을 올리며 완벽한 모습을 보였다.</p>
<p dmcf-pid="y85pzKHRNg" dmcf-ptype="general">흥국생명과의 경기에서 역전승을 만든 메가는 감격의 눈물을 흘리기도 했다. 메가는 “훈련이 힘들어 많이 울었다. 수치로 표현할 수 없지만 처음 시작할 때 놀랄 정도로 훈련량이 많았다. 매일 그렇게 훈련하면서 이제는 익숙해지긴 했다. 연습을 많이 하면서 수비도 좋아진 것 같다”고 이야기를 했었다. 그 후 히잡을 쓴 메가에 대한 관심을 높아졌고 팬들이 많이 생기는 계기가 되었다.  </p>
<p dmcf-pid="WQF7bV5Jko" dmcf-ptype="general">경기 승리  후 메가는 경기장 곳곳을 돌아 다니며 자신을 응원하는 인도네시아 팬들과 한국 팬들에게 두 손을 모아 인사를 하며 친절한 모습을 보였다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Yc4MJo2mkL" dmcf-ptype="figure">
<p class="link_figure"><img alt="자신을 응원해준 팬들에게 감사의 인사를 전하는 정관장 메가 / 한국배구연맹." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101084211149msxu.jpg" data-org-width="640" dmcf-mid="Bz6OlyA0jO" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101084211149msxu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            자신을 응원해준 팬들에게 감사의 인사를 전하는 정관장 메가 / 한국배구연맹.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="GhiNkreWAn" dmcf-ptype="figure">
<p class="link_figure"><img alt="경기장에서 열정적인 응원을 펼치는 인도네시아 팬들/ 한국배구연맹." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101084212432vttn.jpg" data-org-width="640" dmcf-mid="bawUq9Xeos" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101084212432vttn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            경기장에서 열정적인 응원을 펼치는 인도네시아 팬들/ 한국배구연맹.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="HduKfP0gki" dmcf-ptype="figure">
<p class="link_figure"><img alt="경기에서 승리한 메가가 팬들을 배경으로 포즈를 취하고 있다 /한국배구연맹." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101084214190uczi.jpg" data-org-width="640" dmcf-mid="KOl7bV5Jcm" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101084214190uczi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            경기에서 승리한 메가가 팬들을 배경으로 포즈를 취하고 있다 /한국배구연맹.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Xob4QezcjJ" dmcf-ptype="figure">
<p class="link_figure"><img alt="메가가 자신을 연호하는 팬들에게 인사를 하고 있다 / 한국배구연맹." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101084216028oiqy.jpg" data-org-width="640" dmcf-mid="9yY94QpaAr" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101084216028oiqy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            메가가 자신을 연호하는 팬들에게 인사를 하고 있다 / 한국배구연맹.
           </figcaption>
</figure>
<p dmcf-pid="ZnqV6MujAd" dmcf-ptype="general">그리고는 손글씨로 자신을 응원하는 팬들과 함께 기념촬영을 하는 모습도 드러냈다. 경기장 이곳 저곳에서 메가를 부르는 목소리가 들리자 메가는 행복한 미소를 지으며 팬들에게 인사하기 바빴다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="5LBfPR7Aoe" dmcf-ptype="figure">
<p class="link_figure"><img alt="메가를 연호하는 인도네시아 팬들 / 한국배구연맹." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101084217320btyc.jpg" data-org-width="640" dmcf-mid="2dG28xUNcw" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101084217320btyc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            메가를 연호하는 인도네시아 팬들 / 한국배구연맹.
           </figcaption>
</figure>
<p dmcf-pid="1jVQenKwjR" dmcf-ptype="general">한편 흥국과 현대건설을 연달아 잡은 정관장은 오는 2일 대전에서 4연패에 빠진 도로공사를 상대로 3연승에 도전한다.</p>
</section>
</div></p></section></div><h6>[Source : 마이데일리]</h6></div>
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