
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
    <h3>TEX 비상, ‘옆구리 통증’ 가르시아 선발 제외 [WS4]</h3><h6>동아닷컴 조성운 기자  2023. 11. 1. 06:14</h6>
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
<section dmcf-sid="QdzxJSatmk">
<div dmcf-pid="xNfLjXwzEc" dmcf-ptype="general">
            [동아닷컴] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="y0C1pJBEIA" dmcf-ptype="figure">
<p class="link_figure"><img alt="아돌리스 가르시아. 사진=게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101061437272gykk.jpg" data-org-width="1200" dmcf-mid="6zOZ3ezcmD" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101061437272gykk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            아돌리스 가르시아. 사진=게티이미지코리아
           </figcaption>
</figure>
<div dmcf-pid="W7v0zo2mEj" dmcf-ptype="general">
           [동아닷컴]
          </div>
<p dmcf-pid="YzTpqgVswN" dmcf-ptype="general">역대 최초 포스트시즌 원정 9연승을 달리며 창단 첫 우승까지 2승만을 남긴 텍사스 레인저스에 비상이 걸렸다. 아돌리스 가르시아가 선발 명단에서 이탈했다.</p>
<p dmcf-pid="GqyUBafOsa" dmcf-ptype="general">텍사스는 1일(이하 한국시각) 미국 애리조나주 피닉스에 위치한 체이스 필드에서 애리조나 다이아몬드백스와 2023 월드시리즈 4차전을 가진다.</p>
<p dmcf-pid="HQ04xOiHDg" dmcf-ptype="general">앞서 텍사스는 홈에서 1승 1패를 나눠가진 뒤 지난달 31일 열린 애리조나 원정에서 승리했다. 이에 시리즈 2승 1패 리드.</p>
<p dmcf-pid="Xxp8MInXDo" dmcf-ptype="general">하지만 지난 3차전 경기 도중 가르시아가 왼쪽 옆구리 통증으로 이탈했고, 결국 4차전 선발 명단에서 제외됐다. </p>
<p dmcf-pid="ZMU6RCLZDL" dmcf-ptype="general">텍사스는 경기를 앞두고 발표한 선발 라인업에 가르시아 대신 트래비스 잰카스키를 9번, 우익수로 내세웠다. 잰카스키는 3차전에 가르시아를 대신한 선수.</p>
<p dmcf-pid="58t26reWwn" dmcf-ptype="general">이에 텍사스의 클린업 트리오는 지명타자 미치 가버-좌익수 에반 카터-3루수 조시 영으로 구성됐다. 또 1루수 나다니엘 로우가 6번을 맡는다.</p>
<p dmcf-pid="16FVPmdYsi" dmcf-ptype="general">가르시아는 지난 아메리칸리그 챔피언십시리즈(ALCS) 최우수선수(MVP)이자 월드시리즈 1차전 끝내기 홈런의 주인공. 대체가 어려운 선수.</p>
<figure class="figure_frm origin_fig" dmcf-pid="tP3fQsJGEJ" dmcf-ptype="figure">
<p class="link_figure"><img alt="아돌리스 가르시아. 사진=게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101061438702wbdw.jpg" data-org-width="1200" dmcf-mid="Po5K4DMTOE" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101061438702wbdw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            아돌리스 가르시아. 사진=게티이미지코리아
           </figcaption>
</figure>
<div dmcf-pid="F7v0zo2mId" dmcf-ptype="general">
           부상은 타격 도중 나왔다. 가르시아는 3차전 8회 타격 이후 곧바로 왼쪽 옆구리를 부여잡았다. 이후 8회 수비를 앞두고 잰카스키와 교체됐다.
          </div>
<p dmcf-pid="3zTpqgVsre" dmcf-ptype="general">포스트시즌 원정 9연승으로 기세를 올린 텍사스가 가르시아 부상이라는 악재를 극복하고 창단 첫 우승에 한 발 더 다가설 수 있을지 주목된다.</p>
<p dmcf-pid="0qyUBafOIR" dmcf-ptype="general">동아닷컴 조성운 기자 madduxly@donga.com</p>
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