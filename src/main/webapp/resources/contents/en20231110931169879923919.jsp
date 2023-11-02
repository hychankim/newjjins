
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
    <h3>BTS 정국 참여 '투 머치', 빌보드 싱글 차트 44위</h3><h6>최재서  2023. 11. 1. 09:31</h6>
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
<section dmcf-sid="Q1rYRibD38">
<figure class="figure_frm origin_fig" dmcf-pid="xYAl8xUN34" dmcf-ptype="figure">
<p class="link_figure"><img alt="'투 머치' [빅히트뮤직 제공. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101093128435kjag.jpg" data-org-width="1200" dmcf-mid="6fiwB2ZdzP" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101093128435kjag.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            '투 머치' [빅히트뮤직 제공. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="yeu6SWcpzf" dmcf-ptype="general">(서울=연합뉴스) 최재서 기자 = 그룹 방탄소년단(BTS)의 정국이 피처링한 더 키드 라로이의 신곡이 미국 빌보드 메인 싱글 차트 '핫 100' 44위에 올랐다.</p>
<p dmcf-pid="Wd7PvYkU0V" dmcf-ptype="general">31일(현지시간) 공개된 최신 차트에 따르면 정국과 더 키드 라로이·센트럴 시가 협업한 '투 머치'(TOO MUCH)는 44위로 '핫 100'에 처음 진입했다.</p>
<p dmcf-pid="YJzQTGEuz2" dmcf-ptype="general">'투 머치'는 '글로벌 200'과 '글로벌'(미국 제외) 차트에서도 각각 11위, 10위를 기록했다. </p>
<p dmcf-pid="G45brInXF9" dmcf-ptype="general">정국의 솔로곡 '3D'는 '핫 100'에서 75위를 기록해 4주 연속으로 진입했고, '글로벌 200'에서도 8위를 차지했다.</p>
<p dmcf-pid="H81KmCLZ7K" dmcf-ptype="general">또 다른 솔로곡 '세븐'(Seven)은 '글로벌 200' 6위, '글로벌'(미국 제외) 2위에 올랐다.</p>
<p dmcf-pid="X6t9sho57b" dmcf-ptype="general">방탄소년단 뷔의 솔로 앨범 '레이오버'(Layover)는 빌보드 메인 앨범 차트 '빌보드 200'에서 160위에 오르며 7주 연속 차트에 들었다. </p>
<p dmcf-pid="ZFsHdL9r3B" dmcf-ptype="general">이 앨범의 타이틀곡 '슬로 댄싱'(Slow Dancing)은 '글로벌 200' 54위, '글로벌'(미국 제외) 30위에 올랐다.</p>
<p dmcf-pid="53OXJo2m0q" dmcf-ptype="general">방탄소년단 지민의 솔로 앨범 타이틀곡 '라이크 크레이지'(Like Crazy)는 '글로벌 200'에서 99위, '글로벌'(미국 제외)에서 59위로 집계됐다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="1Sos94tn7z" dmcf-ptype="figure">
<p class="link_figure"><img alt="뉴진스 [어도어 제공. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101093128707ccwc.jpg" data-org-width="1200" dmcf-mid="PsT0NkQS76" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101093128707ccwc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            뉴진스 [어도어 제공. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="tvgO28FL07" dmcf-ptype="general">그룹 뉴진스는 미니 2집 '겟 업'(Get Up)으로 '빌보드 200' 98위에 올라 14주 연속 차트에 머물렀다.</p>
<p dmcf-pid="FTaIV63ouu" dmcf-ptype="general">'겟 업'의 타이틀곡 '슈퍼 샤이'(Super Shy)는 '글로벌 200'에서 56위, '글로벌'(미국 제외)에서 38위였다.</p>
<p dmcf-pid="3qT0NkQS7U" dmcf-ptype="general">그룹 투모로우바이투게더(TXT)도 정규 3집 '이름의 장: 프리폴'(FREEFALL)로 '빌보드 200' 19위를 차지했다.</p>
<p dmcf-pid="0BypjExvpp" dmcf-ptype="general">블랙핑크 제니의 '유 &amp; 미'(You &amp; Me)는 '글로벌 200'에서 20위를 기록했다. 아이브의 '배디'(Baddie), 세븐틴의 '음악의 신'도 같은 차트 66위와 67위에 각각 올랐다.</p>
<p dmcf-pid="pbWUADMTp0" dmcf-ptype="general">acui721@yna.co.kr</p>
<p dmcf-pid="uultoj8CuF" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
</section>
</div></p></section></div><h6>[Source : 연합뉴스]</h6></div>
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