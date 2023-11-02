
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
    <h3>‘상금·대상 1위’ 이예원 굳히기?···임진희·박지영과 에쓰오일 챔피언십 샷 대결 관심 집중</h3><h6>이정호 기자  2023. 11. 1. 08:34</h6>
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
<section dmcf-sid="1CbMH1sbE2">
<figure class="figure_frm origin_fig" dmcf-pid="tQCZoj8Cm9" dmcf-ptype="figure">
<p class="link_figure"><img alt="이예원이 26일 제주 서귀포에 위치한 핀크스GC에서 열린 ‘SK네트웍스 서울경제 레이디스 클래식’ 1라운드 5번 홀에서 티샷하고 있다. 2023.10.26 KLPGA 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportskhan/20231101083406250zoad.jpg" data-org-width="700" dmcf-mid="Ztfitplfmf" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportskhan/20231101083406250zoad.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이예원이 26일 제주 서귀포에 위치한 핀크스GC에서 열린 ‘SK네트웍스 서울경제 레이디스 클래식’ 1라운드 5번 홀에서 티샷하고 있다. 2023.10.26 KLPGA 제공
           </figcaption>
</figure>
<p dmcf-pid="FDpfSWcprK" dmcf-ptype="general"><br/><br/>2023시즌 한국여자프로골프(KLPGA)는 2개 대회를 남기고 있다. 2일 제주시 애월읍 엘리시안 제주 골프장(파72)에서 개막하는 에쓰오일 챔피언십은 또하나의 중요한 승부처다. 나란히 시즌 3승을 올리고 있는 이예원, 임진희, 박지영의 타이틀 경쟁이 달아오른다.<br/><br/>이예원이 현재 상금과 대상 포인트 경쟁에서 유리한 상황이다. 이예원은 상금 순위 1위(13억2668만4197원), 대상 포인트 순위 1위(609점)를 달린다. 박지영은 상금 순위 2위(9억7247만9385원)에 올라 있다.<br/><br/>여기에 임진희까지 경쟁에 뛰어들었다. 지난 22일 끝난 상상인·한국경제TV 오픈에서 짜릿한 역전승을 일군 임진희는 상금 순위 3위(9억3386만548원), 대상 포인트 2위(558점)로 경쟁권에 올라섰다.<br/><br/>에쓰오일 챔피언십에는 총상금 9억원, 우승 상금 상금 1억6200만원, 우승 대상 포인트 60점이 걸려 있다. 이예원이 우승하면 개인 타이틀 경쟁에서 쐐기를 박을 수 있다. 임진희와 박지영에겐 이예원과 격차를 줄일 수 있는 마지막 기회다.<br/><br/></p>
<figure class="figure_frm origin_fig" dmcf-pid="3wU4vYkUsb" dmcf-ptype="figure">
<p class="link_figure"><img alt="31일 제주에 위치한 엘리시안제주CC에서 열린 ‘S-OIL 챔피언십 2023’ 공식포토콜에서 방신실, 황유민, 이소미, 이예원, 김민별, 박지영이 포즈를 취하고 있다. 2023.10.31 대회조직위원회 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportskhan/20231101083408012hnwc.jpg" data-org-width="700" dmcf-mid="5tVJ10hVDV" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportskhan/20231101083408012hnwc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            31일 제주에 위치한 엘리시안제주CC에서 열린 ‘S-OIL 챔피언십 2023’ 공식포토콜에서 방신실, 황유민, 이소미, 이예원, 김민별, 박지영이 포즈를 취하고 있다. 2023.10.31 대회조직위원회 제공
           </figcaption>
</figure>
<p dmcf-pid="0ru8TGEumB" dmcf-ptype="general"><br/><br/>제주도 대회는 궂은 날씨가 변수다. 지난주 끝난 SK네트웍스·서울경제 레이디스 클래식에서도 강한 바람으로 고전한 선수들이 많았다. 올 시즌 제주 대회에서만 2승을 거둔 이예원도 흔들렸다. 2라운드에서 강풍 때문에 규정 타수보다 5타를 더 치는 ‘퀸튜플보기’를 적어내는 등 공동 34위로 대회를 마감했다. 이예원은 “퍼트 감각은 괜찮지만 샷 감각이 좋은 편이 아니라 타이틀에 연연하면 좋은 플레이가 나오지 않을 것 같다”며 “내 플레이에만 집중하여 톱10 안에 들 수 있도록 하겠다”고 말했다.<br/><br/>박지영은 에쓰오일 챔피언십에서 강한 면모를 보인게 자신감의 근원이다. 2016년과 2021년에 우승했다. 박지영은 “이번 대회는 내가 2승을 기록했던 대회인 만큼 좋은 기억으로 가득하다. 그 기억과 기분을 십분 살릴 것“이라고 했다.<br/><br/>임진희는 상상인·한국경제TV 오픈 우승에 이어 지난주 SK네트웍스·서울경제 레이디스 클래식 공동 4위 등 상승세가 꾸준하다. 임진희는 “남은 두 개 대회에서 모두 대상 포인트를 받는 것이 목표다. 2주 연속 감이 좋은 편이기 때문에 일단 이번 대회부터 톱10에 들겠다”고 말했다.<br/><br/>지난해 2주 연속으로 열린 SK네트웍스·서울경제 레이디스 클래식, 에쓰오일 챔피언십을 잇달아 제패하며 디펜딩 챔피언 자격으로 이번 대회에 나서는 이소미도 우승 후보로 주목된다.<br/><br/>이정호 기자 alpha@kyunghyang.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠경향]</h6></div>
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