
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
    <h3>독일 언론 “백승호 분데스리가 팀과 이미 접촉” [아시안게임 그 후]</h3><h6>강대호 MK스포츠 기자(dogma01@maekyung.com)  2023. 11. 1. 08:03</h6>
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
<section dmcf-sid="KUuNRibD1b">
<p dmcf-pid="9xMvwOiH5B" dmcf-ptype="general">백승호(26·전북 현대)가 제19회 중국 항저우아시안게임 금메달을 발판으로 유럽축구연맹(UEFA) 리그랭킹 4위 독일 무대로 떠날 가능성이 현지로부터 제기됐다.</p>
<p dmcf-pid="1Eu7G5mBtT" dmcf-ptype="general">독일 매체 ‘SVD뉴스’ 및 ‘푸스발 트란스퍼스’는 “다름슈타트가 백승호 복귀에 관심이 있다. 마인츠 역시 (선수 거취에) 주의를 기울이는 중”이라고 보도했다.</p>
<p dmcf-pid="VDw7ZFI9Gz" dmcf-ptype="general">다름슈타트와 마인츠 둘 다 2023-24 독일 분데스리가(1부리그)에 속한 팀이다. ‘SVD뉴스’는 다름슈타트 소식, ‘푸스발 트란스퍼스’는 축구 이적시장 근황을 전문적으로 다룬다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="tatFSWcp5v" dmcf-ptype="figure">
<p class="link_figure"><img alt="백승호가 2019-20 독일프로축구 2부리그 인터뷰 도중 웃고 있다. 사진=다름슈타트 공식 영상 화면" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101080904926xojo.png" data-org-width="640" dmcf-mid="X8JeKf1iHY" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101080904926xojo.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            백승호가 2019-20 독일프로축구 2부리그 인터뷰 도중 웃고 있다. 사진=다름슈타트 공식 영상 화면
           </figcaption>
</figure>
<div dmcf-pid="VHlVEmdY1p" dmcf-ptype="general">
           두 매체는 “백승호와 전북 현대의 계약은 올해 12월이면 끝난다. 이미 다름슈타트와는 접촉이 이뤄졌다. 양측은 다시 함께 일하는 것에 대한 흥미를 서로 확인했다”며 덧붙였다.
          </div>
<p dmcf-pid="8MRTrInX1U" dmcf-ptype="general">백승호는 ▲바르셀로나 ▲페랄라다 ▲지로나(이상 스페인) ▲다름슈타트 소속으로 ▲2016~2019년 스페인 3부리그 57경기 2득점 ▲2019년 스페인 1부리그 3경기 ▲2019~2021년 독일 2부리그 41경기 2득점 6도움을 기록한 유럽파 출신이다.</p>
<p dmcf-pid="6ReymCLZXp" dmcf-ptype="general">2023년 12월4일~2025년 6월3일 국군체육부대(상무) 제2경기대 남자축구선수로 국방의 의무를 이행할 예정이었다가 항저우아시안게임 우승을 통해 ‘병역특례’로 불리는 체육요원 편입 기준을 만족했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="3eWYrInXHl" dmcf-ptype="figure">
<p class="link_figure"><img alt="백승호가 제19회 중국 항저우아시안게임 남자대표팀 금메달 환영 행사에서 선수단 주장 자격으로 발언하고 있다. 사진=대한축구협회 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101080906314gtog.png" data-org-width="640" dmcf-mid="ZcinfP0g1W" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101080906314gtog.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            백승호가 제19회 중국 항저우아시안게임 남자대표팀 금메달 환영 행사에서 선수단 주장 자격으로 발언하고 있다. 사진=대한축구협회 제공
           </figcaption>
</figure>
<div dmcf-pid="QaNtTGEut3" dmcf-ptype="general">
           항저우아시안게임 국가대표팀 주장 백승호는 수비형/중앙/공격형 미드필더를 오가는 전천후 중원자원으로서 대회 7경기에 모두 나와 3골을 넣었다. 평균 74.3분을 뛰면서 90분당 0.52득점으로 활약했다.
          </div>
<p dmcf-pid="xNjFyHD75F" dmcf-ptype="general">2022 국제축구연맹(FIFA) 카타르월드컵 16강 브라질전(1-4패) 만회골 및 2023 K리그1 5월의 선수상 역시 빼놓을 수 없다. 유럽리그랭킹 2위 스페인 라리가 출전을 경험한 한국인 7명 중 하나이기도 하다.</p>
<p dmcf-pid="y0pgxdqkHt" dmcf-ptype="general">백승호는 이번 시즌 한국프로축구 1부리그 경기 MVP 선정 횟수가 4번째로 많다. 명실상부한 K리그 정상급 미드필더로서 2024년 1월 이적시장을 통한 유럽 재도전이 무르익는 분위기다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="07AcRibDZh" dmcf-ptype="figure">
<p class="link_figure"><img alt="전북 현대 부주장 백승호가 울산 현대와 2023 K리그1 경기 종료 후 원정 응원단에 감사를 표하고 있다. 사진=한국프로축구연맹 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101080907699brin.png" data-org-width="640" dmcf-mid="5f48UqWQ1y" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101080907699brin.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            전북 현대 부주장 백승호가 울산 현대와 2023 K리그1 경기 종료 후 원정 응원단에 감사를 표하고 있다. 사진=한국프로축구연맹 제공
           </figcaption>
</figure>
<div dmcf-pid="YzqcJo2m55" dmcf-ptype="general">
           [강대호 MK스포츠 기자]
          </div>
<p dmcf-pid="GqBkigVstZ" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : MK스포츠]</h6></div>
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