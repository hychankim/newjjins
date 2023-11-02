
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
    <h3>베베, '스우파2' 최종 우승…글로벌 춤 서열 1위 등극 [RE:TV]</h3><h6>박하나 기자  2023. 11. 1. 05:10</h6>
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
<section dmcf-sid="zCsYPmdY71">
<figure class="figure_frm origin_fig" dmcf-pid="qWvtJSat75" dmcf-ptype="figure">
<p class="link_figure"><img alt="Mnet '스트릿 우먼 파이터2' 캡처" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101051004677dids.jpg" data-org-width="570" dmcf-mid="1wSSVkQSuz" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101051004677dids.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            Mnet '스트릿 우먼 파이터2' 캡처
           </figcaption>
</figure>
<p dmcf-pid="BYTFivNFzZ" dmcf-ptype="general">(서울=뉴스1) 박하나 기자 = 베베(바다, 러셔, 태터, 키마, 민아, 채채, 소원)가 '스트릿 우먼 파이터2'에서 최종 우승을 차지했다.</p>
<p dmcf-pid="bGy3nTj3FX" dmcf-ptype="general">지난 31일 오후 10시에 방송된 Mnet 예능 프로그램 '스트릿 우먼 파이터2'(이하 '스우파2')에서는 최종 우승 크루를 가리는 파이널 생방송 무대가 펼쳐졌다.</p>
<p dmcf-pid="KDch9A6hUH" dmcf-ptype="general">8크루의 경쟁 끝에 원밀리언, 베베, 잼 리퍼블릭, 마네퀸이 파이널 생방송 무대에 진출하며 최종 우승팀을 가리기 위한 무대를 선사했다. 파이널 점수는 크루곡 퍼포먼스 투표 20%, 생방송 문자 투표 80%로 구성된다. 최종 우승 크루는 5000만 원의 우승 상금과 우승 크루 다이아링이 혜택으로 주어진다.</p>
<p dmcf-pid="9wkl2cPlzG" dmcf-ptype="general">파이널에는 모니카, 셔누와 함께 댄스 크루 킨자즈의 마이크 송이 스페셜 저지로 함께했다. 더불어 객석에서는 배우 남지현부터 그룹 제로베이스원, NCT 태용, 가수 김재환, 유주, 권진아, 코미디언 지상렬, 방송인 재재, 쇼트트랙선수 곽윤기, 배우 조승연, 김보성, '스개파2' 멤버 등이 참석해 댄서들을 위한 응원을 보냈다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="2rESVkQS3Y" dmcf-ptype="figure">
<p class="link_figure"><img alt="Mnet '스트릿 우먼 파이터2' 캡처" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101051006121uyfo.jpg" data-org-width="816" dmcf-mid="tnUfmplf77" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101051006121uyfo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            Mnet '스트릿 우먼 파이터2' 캡처
           </figcaption>
</figure>
<p dmcf-pid="VaLwunKw3W" dmcf-ptype="general">첫 번째 '글로벌 아티스트 미션'에서는 원밀리언이 아리아나 그란데, 베베가 리한나, 잼 리퍼블릭이 비욘세, 마네퀸이 레이디 가가의 명곡을 크루만의 색깔로 재해석한 무대를 선보였다.</p>
<p dmcf-pid="fNor7L9rpy" dmcf-ptype="general">두 번째 '엔딩 크레딧 미션'으로 4 크루의 마지막 무대가 펼쳐졌다. 원밀리언은 댄서들이 가지고 있는 원밀리언에 대한 편견으로 변방에서 시작했던 우리가 본연의 모습으로 지금 순간에 집중해 중심을 잡아가겠다는 의지를 담은 무대를 꾸몄다. 베베는 '준비된 자만이 어둠을 벗어날 수 있다'는 의미, 베베의 엔딩 크레딧은 'Ending'이 아닌 'And-ing'으로 우리의 춤은 계속된다는 의지를 표현했다.</p>
<p dmcf-pid="4jgmzo2m0T" dmcf-ptype="general">잼 리퍼블릭은 다양한 배경을 가진 댄서들이 성공이라는 공동 목표를 위해 하나로 뭉친 잼 리퍼블릭의 정체성과 경연 과정에서의 역경을 의지, 강인함, 끈기로 딛고 일어선 모습을 무대에 담았다. 마네퀸은 한국에서 볼 수 없는 라스베이거스 스타일의 쇼 콘셉트로 마네퀸이 가지고 있는 다양한 스타일의 움직임으로 즐겁고 행복한 '엔딩'과 '끝은 또 다른 시작, 막이 오르면 마네퀸의 진짜 쇼가 시작된다'는 뜻을 표현했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="842eT9Xe7v" dmcf-ptype="figure">
<p class="link_figure"><img alt="Mnet '스트릿 우먼 파이터2' 캡처" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101051007588uwau.jpg" data-org-width="570" dmcf-mid="7Jl5eho5pt" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101051007588uwau.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            Mnet '스트릿 우먼 파이터2' 캡처
           </figcaption>
</figure>
<p dmcf-pid="68Vdy2ZdFS" dmcf-ptype="general">최종 순위 결과, 베베가 우승의 영광을 안았다. 2위에 잼 리퍼블릭, 3위에 원밀리언, 4위에 마네퀸이 이름을 올렸다. 베베의 리더 바다는 "돌이켜보면 모든 무대가 소중했고, 영광이었다"라며 함께한 댄서, 제작진, 가족, 팬들에게 고마움을 전했다.</p>
<p dmcf-pid="P6fJWV5Jzl" dmcf-ptype="general">이날 미션 무대 외에도 원밀리언, 베베, 잼 리퍼블릭, 마네퀸이 함께한 오프닝 무대부터 딥앤댑, 레이디바운스, 츠바킬, 울플러까지 모두 함께한 계급 미션 스페셜 무대가 공개돼 화려한 볼거리를 제공했다.</p>
<p dmcf-pid="QvhZRCLZ0h" dmcf-ptype="general">한편, Mnet '스트릿 우먼 파이터2'는 글로벌 춤 서열 1위를 가리기 위한 여성 댄스 크루들의 리얼리티 서바이벌 프로그램이다.</p>
<p dmcf-pid="xTl5eho5UC" dmcf-ptype="general">hanappy@news1.kr </p>
</section>
</div></p></section></div><h6>[Source : 뉴스1]</h6></div>
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