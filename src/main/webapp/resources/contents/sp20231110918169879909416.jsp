
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
    <h3>'오만의 끝' 호날두 VAR로 득점취소한 심판 가리키며 교체 요구, 팬 "호날두만의 리그"</h3><h6>김진회  2023. 11. 1. 09:18</h6>
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
<section dmcf-sid="ZERW6MujD2">
<figure class="figure_frm origin_fig" dmcf-pid="FVr5Jo2mIN" dmcf-ptype="figure">
<p class="link_figure"><img alt="AFP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092235539voaw.jpg" data-org-width="1200" dmcf-mid="XSemB2ZdDE" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092235539voaw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            AFP연합뉴스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="3fm1igVsra" dmcf-ptype="figure">
<p class="link_figure"><img alt="AFP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092235764cmal.jpg" data-org-width="1200" dmcf-mid="ZQbnXtOKEk" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092235764cmal.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            AFP연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="FERW6MujrB" dmcf-ptype="general"> [스포츠조선 김진회 기자] 크리스티아누 호날두(38·알 나스르)가 '오만의 끝'을 보여줬다.</p>
<p dmcf-pid="3YDzjExvOq" dmcf-ptype="general">호날두는 1일(이하 한국시각) 사우디아라비아 리야드의 킹 사우드 대학 내 알 아왈 파크에서 열린 알 이티파크와의 2023~2024시즌 킹스컵 16강전에 선발 출전, 120분간 그라운드를 누비며 팀의 1대0 승리를 견인했다.</p>
<p dmcf-pid="0GwqADMTrz" dmcf-ptype="general">알 나스르는 0-0으로 돌입한 연장 후반 2분 사디오 마네의 결승골에 힘입어 8강행 티켓을 거머쥐었다.</p>
<p dmcf-pid="pHrBcwRyE7" dmcf-ptype="general">그런데 이날 호날두는 상식 밖의 행동을 보였다. 후반 17분 안데르손 탈리스카가 골망을 흔들었지만, VAR(비디오 판독)을 통해 오프사이드 위치에서 호날두가 득점에 관여했다는 장면이 포착됐다. 주심은 득점 취소 판정을 내렸다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="0UgS4Qparg" dmcf-ptype="figure">
<p class="link_figure"><img alt="AFP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092236039tavt.jpg" data-org-width="1200" dmcf-mid="5GbnXtOKwc" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092236039tavt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            AFP연합뉴스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="puav8xUNEo" dmcf-ptype="figure">
<p class="link_figure"><img alt="AFP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092236275hjzn.jpg" data-org-width="1200" dmcf-mid="1gEHRibDEA" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092236275hjzn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            AFP연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="7haFigVsOp" dmcf-ptype="general"> 그러자 호날두는 표정에 큰 변화는 없었지만, 심판을 가리키며 심판을 교체해야 한다는 행동을 보였다.</p>
<p dmcf-pid="z3l4sho5I0" dmcf-ptype="general">호날두의 존중이 없는 행동에 대해 팬들은 경악을 금치 못했다. 한 팬은 소셜미디어(SNS)를 통해 "호날두는 사우디리그를 가졌다"고 비꼬았다. 또 다른 팬은 "호날두만의 리그"라고 비난했다. 다른 팬은 "믿을 수 없다"고 했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="U5emB2ZdsL" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진출처=X" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092236743qyra.jpg" data-org-width="647" dmcf-mid="tLiI94tnrj" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101092236743qyra.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진출처=X
           </figcaption>
</figure>
<p dmcf-pid="Bpv6ISatIF" dmcf-ptype="general"> 호날두의 '안하무인'격 행동은 이번이 처음이 아니다. 지난 1월 알 나스르 유니폼을 입은 호날두가 지난해 6월 알 나스르 지휘봉을 잡았던 루디 가르시아 전 감독에게 소리를 지르며 결국 구단의 경질을 이끌어냈다. 호날두는 감독을 마음대로 경질시키더니 이젠 자신보다 12살이나 많은 감독대행에게까지 소리를 지르면서 화를 주체하지 못하는 모습도 보였다. 팀 코칭스태프에 대한 기본적인 예의가 상실된 모습이었다.</p>
<p dmcf-pid="uVr5Jo2mOn" dmcf-ptype="general">그라운드 안에서도 기행을 일삼았다. 볼경합 도중 상대 선수에게 헤드록을 걸고 넘어뜨리며 빈축을 산데 이어 경기 후 자신에게 야유를 퍼붓는 상대 팬들을 향해 사타구니에 손을 가져다 대는 외설적인 행동으로 중심에 섰다. 김진회 기자 manu35@sportschosun.com</p>
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