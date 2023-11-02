
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
    <h3>케이시 유진 페어→천가람 무서운 막내 앞세운 벨호, '만리장성' 넘어야 '파리' 보인다</h3><h6>김가을  2023. 11. 1. 06:00</h6>
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
<section dmcf-sid="7jP27L9rIi">
<figure class="figure_frm origin_fig" dmcf-pid="qJKu1xUNwd" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진제공=대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060034419ldza.jpg" data-org-width="700" dmcf-mid="0hGSmplfIg" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060034419ldza.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진제공=대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="BqGSmplfse" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진제공=대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060034602aeyl.jpg" data-org-width="700" dmcf-mid="pvz3H8FLDo" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060034602aeyl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진제공=대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="bBHvsUS4mR" dmcf-ptype="general"> [스포츠조선 김가을 기자]파리로 가는 길, 거대한 '만리장성'을 넘어야 한다. 콜린 벨 감독이 이끄는 대한민국 여자축구 대표팀은 11월 1일 중국 푸젠성의 샤먼 이그렛 스타디움에서 중국과 2024년 파리올림픽 아시아 2차예선 조별리그 B조 최종전을 치른다.</p>
<p dmcf-pid="KbXTOuv8EM" dmcf-ptype="general">중국전은 이번 대회 최대 고비다. 이번 대회는 12개국이 3개조로 나뉘어 조별리그를 치른다. 각 조 1위 팀과 2위 팀 중 성적이 좋은 한 팀이 4강 토너먼트에 나서는 방식으로 진행된다. 4강전에서 승리한 두 팀이 올림픽 본선에 나간다. 한국은 중국전만 잘 넘기면 내년 2월 치러지는 4강 토너먼트에 진출한다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="9mixVkQSwx" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진제공=대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060034808cjoc.jpg" data-org-width="700" dmcf-mid="UdWhw3C2DL" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060034808cjoc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진제공=대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="2snMfExvwQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진제공=대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060035019rrpb.jpg" data-org-width="700" dmcf-mid="uVOEgYkUOn" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101060035019rrpb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진제공=대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="VOLR4DMTEP" dmcf-ptype="general"> 한국은 이번 대회 '죽음의 조'에 속했다는 평가를 받았다. 개최국 중국, 베일에 쌓인 북한, 다크호스 태국과 한 조에 묶였다. 앞선 두 경기에선 선전을 펼쳤다. 1차전에선 태국을 10대1로 제압했다. 2차전에선 북한과 0대0 무승부를 기록했다. 현재 한국(승점 4·골득실 +9)은 북한(승점 4·골득실 +1)과 승점은 같다. 골득실에서 앞선 1위다. 중국이 3위(승점 3·골득실 +2), 태국이 최하위(승점 0·골득실 -12)에 랭크돼 있다.</p>
<p dmcf-pid="fFhrjXwzE6" dmcf-ptype="general">중국전은 결코 쉽지 않은 도전이다. 한국은 국제축구연맹(FIFA) 랭킹 20위다. 중국(15위)보다 열세다. 상대 전적에서도 5승7무29패로 크게 밀린다. 가장 최근 승리는 2015년 8월 EAFF 동아시안컵 본선에서 기록한 1대0 승리다. 이후 중국을 상대로 3무6패로 승리가 없다. 다만, 최근 경기 내용에선 긍정적인 모습을 보이고 있다. 한국은 지난해 2월 아시안컵 결승에서 전반에 2골을 넣고 후반에 3골을 내줘 2대3으로 패했다. 그해 7월 동아시안컵에선 1대1 무승부를 기록했다.</p>
<p dmcf-pid="43lmAZrqI8" dmcf-ptype="general">'벨호'는 폭풍 성장한 '막내즈'의 활약을 믿는다. 2007년생 케이시 유진 페어와 2002년생 천가람은 태국과의 1차전에서 나란히 해트트릭을 달성했다. 이은영(2002년생)도 공격에서 힘을 보태고 있다. 2000년생 추효주는 이미 대표팀의 핵심 멤버다. 이들은 이번 대회 1, 2차전 모두 선발로 나서 한국의 승점 사냥에 앞장섰다.</p>
<p dmcf-pid="80Ssc5mBs4" dmcf-ptype="general">눈여겨볼 부분은 한국-중국전에 앞서 열리는 북한-태국과의 대결이다. 북한이 승리한다면 한국은 중국에 반드시 승리한 뒤 골득실을 가려 조 1위를 기대할 수 있다. 이 경우 북한이 태국을 상대로 몇 골차 승리를 거두느냐가 중요하다. 한국이 중국과 비기면 북한에 이어 조 2위가 된다. A, C조 2위 팀과 승점, 골득실차 등 성적을 비교해 4강에 진출할 수 있다. 다만, 한국이 중국에 패하면 조 3위로 내려앉아 곧바로 탈락한다. 뒤를 돌아볼 여유는 없다. <br/>김가을 기자 epi17@sportschosun.com</p>
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