
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
    <h3>엄재웅 앞세운 우성종합건설, 시즌 첫 우승…KPGA 구단 랭킹 2계단 상승</h3><h6>강명주 기자  2023. 11. 1. 08:09</h6>
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
<section dmcf-sid="0OA0TGEulK">
<div dmcf-pid="pratlyA0Cb" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="312785" data-type="photo" dmcf-pid="UmNFSWcpCB" dmcf-ptype="figure">
<p class="link_figure"><img alt="2023년 한국프로골프(KPGA) 코리안투어 백송홀딩스·아시아드CC 부산오픈 우승을 차지한 엄재웅 프로. 사진제공=KPGA" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/golfhankook/20231101080913963feuz.jpg" data-org-width="600" dmcf-mid="3FmBZFI9v9" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/golfhankook/20231101080913963feuz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2023년 한국프로골프(KPGA) 코리안투어 백송홀딩스·아시아드CC 부산오픈 우승을 차지한 엄재웅 프로. 사진제공=KPGA
           </figcaption>
</figure>
<div dmcf-pid="uZS4pzyPhq" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="75v8UqWQTz" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="z1T6uBYxS7" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="qSwzH1sbSu" dmcf-ptype="general">
<p>[골프한국 강명주 기자] 엄재웅(33)의 우승에 힘입은 우성종합건설이 2023시즌 한국프로골프(KPGA) 코리안투어 구단 랭킹에서 순위를 끌어올렸다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="BvrqXtOKhU" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="bTmBZFI9Tp" dmcf-ptype="general">
<p>엄재웅은 10월 29일 끝난 백송홀딩스-아시아드CC 부산오픈에서 최종합계 15언더파 269타를 쳐 약 5년 1개월 만에 코리안투어 통산 2승을 달성했다. 우성종합건설 소속 선수로서 들어올린 올시즌 첫 우승컵이다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="KuZd94tny0" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="975J28FLv3" dmcf-ptype="general">
<p>이 대회에는 엄재웅을 비롯해 강태영(25), 김재호(41), 이규민(23), 변진재(34)까지 총 5명의 우성종합건설 소속 선수가 출전했다. 이 중 엄재웅이 우승, 변진재가 공동 24위, 김재호가 공동 46위 등의 성적을 거두며 총 1,199포인트를 따냈다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="2vrqXtOKyF" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="VTmBZFI9ht" dmcf-ptype="general">
<p>이를 보탠 우성종합건설은 2만7,201.91포인트를 쌓아 KPGA 프로골프 구단 리그 구단 랭킹 7위에서 5위로 올라섰다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="fysb53C2v1" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="49paPR7Al5" dmcf-ptype="general">
<p>현재 38,736.22포인트인 CJ가 1위를 질주하는 가운데, 2위와 3위에는 하나금융그룹(3만3,989.05포인트)과 우리금융그룹(3만2,834.82포인트)이 추격하고 있다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="82UNQezcvZ" dmcf-ptype="general">
<p>그 뒤로 4위 금강주택, 5위 우성종합건설에 이어 team속초아이와 대보건설이 6위와 7위에 랭크됐다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="6VujxdqklX" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="PpHRbV5JhH" dmcf-ptype="general">
<p>KPGA 프로골프 구단 리그 선수 랭킹 1위는 현대해상 최경주 인비테이셔널에서 우승한 하나금융그룹의 함정우(29)다. 2위는 team속초아이의 이정환(32)이다. 3위와 4위는 대보건설의 고군택(24), 하나금융그룹의 한승수(37)다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="QUXeKf1ilG" dmcf-ptype="general">
<p>/골프한국 www.golfhankook.com /뉴스팀 ghk@golfhankook.com<br/>  </p>
</div>
</section>
</div></p></section></div><h6>[Source : 골프한국]</h6></div>
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