
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
    <h3>김민재, AFC 국제선수상 수상…손흥민 이어 한국 선수 두 번째</h3><h6>최송아  2023. 11. 1. 06:03</h6>
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
<section dmcf-sid="UUgcLyA0pp">
<figure class="figure_frm origin_fig" dmcf-pid="u4slr0hVp0" dmcf-ptype="figure">
<p class="link_figure"><img alt="축구 팬 향해 인사하는 김민재 (수원=연합뉴스) 김도훈 기자 = 17일 경기도 수원월드컵경기장에서 열린 축구대표팀 한국과 베트남의 친선경기가 끝난 뒤 김민재가 팬들을 향해 인사하고 있다. 2023.10.17 superdoo82@yna.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101060306549duna.jpg" data-org-width="1200" dmcf-mid="QYVP9A6h3P" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101060306549duna.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            축구 팬 향해 인사하는 김민재 (수원=연합뉴스) 김도훈 기자 = 17일 경기도 수원월드컵경기장에서 열린 축구대표팀 한국과 베트남의 친선경기가 끝난 뒤 김민재가 팬들을 향해 인사하고 있다. 2023.10.17 superdoo82@yna.co.kr
           </figcaption>
</figure>
<p dmcf-pid="78OSmplfz3" dmcf-ptype="general">(서울=연합뉴스) 최송아 기자 = 아시아 최고의 수비수 김민재(26·바이에른 뮌헨)가 아시아축구연맹(AFC) 연간 시상식에서 처음으로 '올해의 국제선수상'을 받았다.</p>
<p dmcf-pid="zLHtYf1iUF" dmcf-ptype="general">김민재는 1일(한국시간) 카타르 도하의 카타르 내셔널 컨벤션센터에서 개최된 2022 AFC 연간 시상식에서 올해의 국제선수상 주인공으로 발표됐다.</p>
<p dmcf-pid="qoXFG4tn7t" dmcf-ptype="general">국제선수상은 자국 리그를 떠나 해외 무대에서 뛰는 AFC 가맹국 선수 중 빼어난 기량을 발휘한 이에게 주는 상으로, 김민재는 한국 선수로는 두 번째로 이 상을 받았다. 이전까진 손흥민(토트넘)만 총 세 차례(2015년·2017년·2019년) 수상한 바 있다.</p>
<p dmcf-pid="BgZ3H8FL31" dmcf-ptype="general">김민재는 튀르키예 페네르바체에서 맹활약하다가 2022-2023시즌 이탈리아 나폴리로 옮겨 팀이 33년 만에 세리에A 우승을 차지하고 사상 처음으로 유럽축구연맹(UEFA) 챔피언스리그 8강에 진입하는 데 핵심 역할을 했다.</p>
<p dmcf-pid="bzjDaGEuF5" dmcf-ptype="general">이후엔 독일은 물론 유럽 축구를 통틀어서도 최고의 명문 클럽으로 꼽히는 바이에른 뮌헨 유니폼을 입었고, 곧장 주전 센터백으로 자리잡았다.</p>
<p dmcf-pid="KqAwNHD77Z" dmcf-ptype="general">국가대표팀에선 한국이 2022 카타르 월드컵에서 16강에 오르는 데 큰 힘을 보탠 그는 다른 후보인 미토마 가오루(일본·브라이턴), 메디 타레미(이란·포르투)를 제치고 국제선수상을 거머쥐었다.</p>
<p dmcf-pid="9BcrjXwz3X" dmcf-ptype="general">김민재는 전날 열린 세계 축구 최고 권위의 시상식 발롱도르에선 아시아 수비수로는 처음으로 후보에 이름을 올려 투표에서 22위에 오르기도 했다. 22위는 지난해 손흥민의 11위에 이은 아시아 선수 역대 공동 2위에 해당한다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="2KEsc5mB0H" dmcf-ptype="figure">
<p class="link_figure"><img alt="카타르 도하에서 열린 2022 AFC 연간 시상식 모습 [AFP=연합뉴스]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101060306727jhyn.jpg" data-org-width="1200" dmcf-mid="yVfQ2cPlu8" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101060306727jhyn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            카타르 도하에서 열린 2022 AFC 연간 시상식 모습 [AFP=연합뉴스]
           </figcaption>
</figure>
<p dmcf-pid="V9DOk1sbzG" dmcf-ptype="general">한편 한국은 이날 AFC 시상식의 다른 부문에선 수상자를 내지 못했다.</p>
<p dmcf-pid="f2wIEtOKUY" dmcf-ptype="general">올해의 남자 선수는 사우디아라비아의 살렘 다우사리(알힐랄), 여자 선수로는 호주의 샘 커(첼시)가 선정됐다.</p>
<p dmcf-pid="48OSmplf0W" dmcf-ptype="general">카타르 월드컵 조별리그에서 사우디아라비아가 아르헨티나를 잡을 때 결승골을 터뜨렸던 다우사리는 소속팀 알힐랄에선 2021-2022시즌 리그 우승과 2022 국제축구연맹(FIFA) 클럽 월드컵, AFC 챔피언스리그 결승 진출 등에 이바지했다.</p>
<p dmcf-pid="86IvsUS4Fy" dmcf-ptype="general">커는 첼시에서 2022-2023시즌 잉글랜드 여자 슈퍼리그와 여자 FA컵 우승을 이끌었고, 올여름 여자 월드컵에선 호주 선수 A매치 최다 득점자로 올라선 뒤 현재는 총 68골을 기록 중이다.</p>
<p dmcf-pid="6IbfqgVspT" dmcf-ptype="general">올해 20세 이하(U-20) 월드컵에서 브론즈볼을 받은 이승원(강원)이 후보에 올랐던 올해의 남자 유스 선수 부문에선 일본의 마쓰키 구류(FC도쿄)가 수상자로 결정됐고, 여자 유스 선수상도 일본의 하마노 마이카(첼시)가 뽑혔다.</p>
<p dmcf-pid="PCK4BafOzv" dmcf-ptype="general">올해의 남자 감독은 일본 국가대표팀의 모리야스 하지메, 여자 감독은 중국 여자 대표팀의 칭샤수이에게 돌아갔다.</p>
<p dmcf-pid="Qh98bN4IFS" dmcf-ptype="general">songa@yna.co.kr</p>
<p dmcf-pid="yPCTOuv87h" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
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