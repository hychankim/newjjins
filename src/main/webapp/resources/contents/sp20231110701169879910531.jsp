
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
    <h3>살라는 울었고, KDB는 싸웠다…두 슈퍼스타의 흑역사 시절</h3><h6>김환 기자  2023. 11. 1. 07:01</h6>
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
<section dmcf-sid="U75nKj8CYr">
<figure class="figure_frm origin_fig" dmcf-pid="u1TQpJBEtw" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101070150743mnyo.png" data-org-width="600" dmcf-mid="3A71sUS4ZO" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101070150743mnyo.png" width="658"/></p>
</figure>
<div dmcf-pid="7tyxUibDGD" dmcf-ptype="general">
<p>[포포투=김환]</p>
<br/>
<p>케빈 더 브라위너와 모하메드 살라는 첼시에서 힘든 시기를 보냈다.</p>
<br/>
<p>과거 첼시에서 뛰었던 존 오비 미켈은 최근 자신이 운영하는 팟캐스트인 ‘오비 원’에서 첼시 시절 지켜본 더 브라위너와 살라에 대해 입을 열었다. 더 브라위너와 살라는 현재 맨체스터 시티와 리버풀에서 각 팀의 에이스로 뛰고 있지만, 과거 첼시 소속으로 한 차례 프리미어리그(PL)에서 실패했다는 공통점이 있다.</p>
<br/>
<p>미켈은 우선 더 브라위너에 대해 “더 브라위너는 당시 최고의 선수가 아니었다. 그는 경기를 많이 뛰지 않았기 때문에 항상 고개를 숙이고 있고, 화가 나 있었다. 마치 놀이터에 있지만 아무도 그와 놀고 싶어하지 않는 어린아이 같았다”라며 더 브라위너를 봤을 때를 회상했다.</p>
<br/>
<p>이어 “사무엘 에투와 더 브라위너가 싸웠을 때가 생각난다. 더 브라위너는 에투가 훈련에서 노력하지 않았다는 이유로 싸움을 벌였다”라며 더 브라위너가 첼시에서 뛰던 에투와 불화가 있었다고 말했다.</p>
<br/>
<p>살라도 첼시에서 어려움을 겪었다. 미켈에 의하면 살라는 당시 첼시의 감독이던 조세 무리뉴 감독으로부터 지적을 받아 눈물을 흘렸다. 미켈은 “무리뉴 감독은 선수가 누구인지 중요하지 않다. 그는 열심히 하지 않는 선수라면 누구라도 지적한다. 무리뉴 감독은 하프타임에 살라에게 가서 뭐라고 했고, 살라는 눈물을 흘렸다”라고 했다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="zFWMunKw1E" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101070152291syhx.jpg" data-org-width="600" dmcf-mid="0ElwRCLZYs" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101070152291syhx.jpg" width="658"/></p>
</figure>
<div dmcf-pid="q8qDMInXZk" dmcf-ptype="general">
<p>더 브라위너와 살라는 결국 첼시를 떠났다. 더 브라위너는 독일 분데스리가의 볼프스부르크로 향했다. 이후 더 브라위너는 분데스리가 최고의 미드필더가 되어 맨시티를 통해 PL에 돌아왔고, 지금 모두가 아는 월드 클래스 미드필더가 됐다. 첼시 시절을 말끔히 잊은 더 브라위너는 무리뉴 감독이 아닌 펩 과르디올라 감독과 함께 PL에서만 5회 우승을 차지했다.</p>
<br/>
<p>살라도 첼시를 떠난 이후 탄탄대로를 걸었다. 이탈리아 세리에A AS 로마로 이적한 살라는 2017년 리버풀에 입단해 위르겐 클롭 감독 아래에서 세계 최고의 측면 공격수로 성장했다. 그동안 살라는 PL 우승과 유럽축구연맹(UEFA) 챔피언스리그(UCL) 우승을 경험했고, PL에서 세 차례나 득점왕을 수상했다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="B6BwRCLZ5c" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101070153528cymz.jpg" data-org-width="600" dmcf-mid="p8Gezo2mXm" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101070153528cymz.jpg" width="658"/></p>
</figure>
<div dmcf-pid="bAJXw3C25A" dmcf-ptype="general">
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