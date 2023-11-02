
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
    <h3>김민별 ‘장타 루키 삼총사’ 중 가장 먼저 세계50위 진입 … 황유민 56위, 방신실 61위</h3><h6> 2023. 10. 31. 14:09</h6>
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
<section dmcf-sid="XUQGtf1iJv">
<figure class="figure_frm origin_fig" dmcf-pid="Z38yZ9XeJS" dmcf-ptype="figure">
<p class="link_figure"><img alt="김민별. &lt;사진 KLPGA 제공&gt;" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/mk/20231031140902237ocff.jpg" data-org-width="700" dmcf-mid="W4h4MExvMY" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/mk/20231031140902237ocff.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김민별. &lt;사진 KLPGA 제공&gt;
           </figcaption>
</figure>
<div dmcf-pid="5Bd1UQpaRl" dmcf-ptype="general">
           세계랭킹 ‘톱10’이 요동쳤다. 이번 주 세계랭킹 10위 이내 선수들 중 순위 변화가 없는 건 2명 뿐이었다. 7위 김효주와 8위 찰리 헐이 지난 주 순위를 그대로 지켰을 뿐 한국 시간으로 10월의 마지막 날 세계랭킹 ‘톱10’ 중 8명의 이름이 바꼈다.
          </div>
<p dmcf-pid="12L0qezcnh" dmcf-ptype="general">일단 1위와 2위가 바뀌었다. 2위였던 인뤄닝(중국)이 1위로 올라섰고 1위였던 릴리아 부(미국)가 2위로 내려갔다. 셀린 부티에(프랑스)가 5위에서 3위로 2계단 뛰어 올랐고 고진영이 한 계단 밑인 4위로 하락했다. 1계단 뛴 넬리 코다(미국)가 5위, 2계단 하락한 이민지가 6위, 9계단을 껑충 뛴 아타야 티띠꾼(태국)이 9위 그리고 리디아 고가 지난 주 보다 1계단 밑인 10위로 물러났다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="tdrVQcPldC" dmcf-ptype="figure">
<p class="link_figure"><img alt="황유민. &lt;사진 KLPGA 제공&gt;" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/mk/20231031140903480bmzi.jpg" data-org-width="700" dmcf-mid="YZ8lYqWQeW" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/mk/20231031140903480bmzi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            황유민. &lt;사진 KLPGA 제공&gt;
           </figcaption>
</figure>
<div dmcf-pid="FQcBfgVseI" dmcf-ptype="general">
           지난 주 SK네트웍스·서울경제 레이디스 클래식에서 30개월 만에 우승을 신고한 박현경도 8계단 오른 60위로 올라섰다.
          </div>
<p dmcf-pid="3zRZ063odO" dmcf-ptype="general">올해 내내 화제를 모으고 있는 ‘장타 신인 삼총사’ 중에서는 김민별이 가장 먼저 50위 이내 진입에 성공했다. 순위는 4계단을 올라 정확히 50위가 됐다.</p>
<p dmcf-pid="0bJtuxUNRs" dmcf-ptype="general">황유민이 1계단 뛴 56위에, 또 방신실은 2계단 뛴 61위에 자리했다.</p>
<p dmcf-pid="pCFArXwzdm" dmcf-ptype="general">한국여자프로골프(KLPGA) 투어 선수들은 대부분 4월 세계랭킹에서 가장 낮은 순위를 기록한다. 미국과 일본 투어가 먼저 시작하고 한국은 4월이 돼서야 시즌에 돌입하기 때문이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="Uh3cmZrqnr" dmcf-ptype="figure">
<p class="link_figure"><img alt="방신실. &lt;사진 KLPGA 제공&gt;" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/mk/20231031140904845dlse.jpg" data-org-width="700" dmcf-mid="HJvRLInXeT" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/mk/20231031140904845dlse.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            방신실. &lt;사진 KLPGA 제공&gt;
           </figcaption>
</figure>
<div dmcf-pid="uWzml0hVew" dmcf-ptype="general">
           시기는 조금씩 다르지만 KLPGA 투어 ‘루키 장타 삼총사’인 황유민, 김민별, 방신실도 4월 가장 낮은 순위를 기록했다. 방신실이 740위로 가장 낮았고 김민별 737위 그리고 지난 해 프로 대회에 이따금 출전했던 황유민은 314위로 셋 중 가장 높은 순위를 기록했다.
          </div>
<p dmcf-pid="7drVQcPlJD" dmcf-ptype="general">이제 김민별이 처음 50위 안으로 진입했고 조만간 황유민과 방신실도 50위 내로 들어올 것으로 예상돼 세 선수 간 ‘세계랭킹 올리기’ 경쟁도 흥미롭게 진행될 전망이다.</p>
<p dmcf-pid="znO8RDMTME" dmcf-ptype="general">오태식기자(ots@mk.co.kr)</p>
</section>
</div></p></section></div><h6>[Source : 매일경제]</h6></div>
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