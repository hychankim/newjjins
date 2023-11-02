
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
    <h3>여자축구 오늘 운명의 한중전…페어·천가람, 파리올림픽 가는길 밝힌다</h3><h6>이규원 기자  2023. 11. 1. 06:35</h6>
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
<section dmcf-sid="KT2NDFI9Z4">
<figure class="figure_frm origin_fig" data-idxno="244592" data-type="photo" dmcf-pid="2CqnjXwztV" dmcf-ptype="figure">
<p class="link_figure"><img alt="여자축구 대표팀이 11월 1일 중국을 상대로 2024 파리 올림픽 아시아 2차 예선 조별리그 B조 최종전을 치른다. [대한축구협회 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101063506437tvtf.jpg" data-org-width="720" dmcf-mid="BHk3zo2mt6" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101063506437tvtf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            여자축구 대표팀이 11월 1일 중국을 상대로 2024 파리 올림픽 아시아 2차 예선 조별리그 B조 최종전을 치른다. [대한축구협회 제공]
           </figcaption>
</figure>
<p dmcf-pid="flboc5mBY9" dmcf-ptype="general">(MHN스포츠 이규원 기자) '죽음의 조'로 불리는 B조에서 선두를 달리며 예상 밖 선전을 펼치고 있는 한국 여자축구 대표팀이 '만리장성'을 넘어 2024 파리올림픽 가는길을 밝힌다.</p>
<p dmcf-pid="4v9aEtOKZK" dmcf-ptype="general">콜린 벨 감독이 이끄는 한국 여자 축구 대표팀이 11월 1일 오후 8시 35분(이하 한국시간) 중국 푸젠성의 샤먼 이그렛 스타디움에서 중국을 상대로 2024 파리 올림픽 아시아 2차 예선 조별리그 B조 최종전을 치른다.</p>
<p dmcf-pid="8T2NDFI9tb" dmcf-ptype="general">한국은 태국과 조별리그 1차전에서 케이시 유진 페어와 천가람(KSPO)이 나란히 해트트릭을 기록하는 '화력쇼'를 펼친 끝에 10-1 대승을 거두며 대회를 기분 좋게 시작한데 이어 '최대 고비'로 여겨진 북한과 2차전에서는 탄탄한 수비로 0-0 무승부를 일궈내며 귀중한 승점 1을 챙겼다.</p>
<p dmcf-pid="6yVjw3C2tB" dmcf-ptype="general">현재 한국(승점 4·골 득실 +9)은 북한(승점 4·골 득실 +1)과 승점은 같지만, 골 득실에서 앞선 1위다.</p>
<p dmcf-pid="PmUeoWcpXq" dmcf-ptype="general">북한에 이어 중국이 3위(승점 3·골 득실 +2), 태국이 최하위(승점 0·골 득실 -12)다.</p>
<p dmcf-pid="QsudgYkU1z" dmcf-ptype="general">한국은 중국전만 잘 넘기면 내년 2월 치러지는 4강 토너먼트에 진출한다.</p>
<p dmcf-pid="xO7JaGEut7" dmcf-ptype="general">12개국이 3개 조로 나뉘어 조별리그를 치르는 2차 예선은 각 조 1위 팀, 그리고 2위 팀 중 성적이 좋은 한 팀이 4강 토너먼트에 나서는 방식으로 진행된다.</p>
<p dmcf-pid="yH6EOuv8tu" dmcf-ptype="general">4강전에서 승리한 두 팀 모두 올림픽 본선에 나간다.</p>
<p dmcf-pid="WXPDI7T61U" dmcf-ptype="general">국제축구연맹(FIFA) 랭킹에서 한국(20위)은 중국(15위)보다 5계단 아래에 있다.</p>
<p dmcf-pid="YZQwCzyPHp" dmcf-ptype="general">상대 전적에서도 5승 7무 29패로 열세에 놓여 어려운 승부가 예상된다.</p>
<p dmcf-pid="GO7JaGEu10" dmcf-ptype="general">최근 승리는 무려 8년 전 동아시안컵(1-0 승)에서 거둔 것이다. 이후 중국을 상대로 9경기(3무 6패) 연속 무승을 기록했다.</p>
<figure class="figure_frm origin_fig" data-idxno="244593" data-type="photo" dmcf-pid="XCqnjXwzZF" dmcf-ptype="figure">
<p class="link_figure"><img alt="벨 감독이 선수들과 손을 마주치고 있다. [대한축구협회 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101063507659afjq.jpg" data-org-width="720" dmcf-mid="bETBfExvG8" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101063507659afjq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            벨 감독이 선수들과 손을 마주치고 있다. [대한축구협회 제공]
           </figcaption>
</figure>
<p dmcf-pid="5UnlYf1iG1" dmcf-ptype="general">다만, 최근 경기 내용을 놓고 보면 양 팀 사이에 전적만큼의 큰 격차는 없어 보인다.</p>
<p dmcf-pid="1uLSG4tnH5" dmcf-ptype="general">지난해 2월 인도에서 열린 여자 아시안컵 결승 맞대결에서 한국은 2-3으로 아깝게 역전패해 준우승했다. 전반전 먼저 2골을 넣고도 후반전 3골을 얻어맞고 졌다.</p>
<p dmcf-pid="ttRsSbGMHZ" dmcf-ptype="general">그해 7월 일본에서 치러진 동아시안컵에서는 중국과 대등한 경기를 펼친 끝에 1-1 무승부를 거뒀다. 이 경기에서도 선제골은 한국의 차지였다.</p>
<p dmcf-pid="FFeOvKHRGX" dmcf-ptype="general">태극전사들이 태국전에서 과시한 '막강 화력', 그리고 북한전에서 보여준 튼실한 수비를 중국전에서 모두 보여준다면 중국전 승리를 기대해볼 만하다.</p>
<p dmcf-pid="33dIT9XeGH" dmcf-ptype="general">한국의 중국전 세부 전략은 앞서 오후 4시 30분 시작하는 북한-태국 경기 결과에 따라 달라질 수 있다.</p>
<p dmcf-pid="02kX3ezc5G" dmcf-ptype="general">이번 대회에서 드러난 전력을 보면 북한이 태국에 질 가능성은 희박해 보인다.</p>
<p dmcf-pid="pVEZ0dqktY" dmcf-ptype="general">북한이 승리한다면 한국은 중국에 반드시 승리해야 골득실을 가려 조 1위를 기대할 수 있다. 이 경우 북한이 태국을 상대로 몇 골 차 승리를 거두느냐가 중요해질 전망이다.</p>
<p dmcf-pid="UfD5pJBEtW" dmcf-ptype="general">한국이 중국과 비기면 북한에 이어 조 2위가 된다. A, C조 2위 팀과 승점, 골득실 등 성적을 비교해 수위에 오르면 4강에 진출한다.</p>
<p dmcf-pid="uiTBfExvty" dmcf-ptype="general">만약 한국이 중국에 진다면 조 3위로 내려앉아 곧바로 탈락한다.</p>
<p dmcf-pid="7nyb4DMT5T" dmcf-ptype="general">가능성은 작아 보이지만, 북한이 태국과 비긴다면 한국의 4강 진출 도전은 한결 쉬워진다.</p>
<p dmcf-pid="zLWK8wRyHv" dmcf-ptype="general">한국은 중국과 비기기만 해도 골 득실에서 북한에 앞서기 때문에 조 1위로 4강에 오르게 된다.</p>
<p dmcf-pid="quLSG4tnHS" dmcf-ptype="general">한국이 중국에 지면 곧바로 탈락하게 되는 건 북한이 태국과의 경기에서 이기나 비기나 똑같다.</p>
</section>
</div></p></section></div><h6>[Source : MHN스포츠]</h6></div>
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