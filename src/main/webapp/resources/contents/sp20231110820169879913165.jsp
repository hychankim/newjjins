
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
    <h3>美언론 “류현진 FA 35위, 1년 8M+@ 계약 가능..TOR-DET-MIN에 적합”</h3><h6>안형준  2023. 11. 1. 08:20</h6>
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
<section dmcf-sid="W7XXKf1iLl">
<figure class="figure_frm origin_fig" dmcf-pid="YkJJmCLZeh" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsen/20231101082042923ccvr.jpg" data-org-width="1000" dmcf-mid="y3uuxdqkLS" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsen/20231101082042923ccvr.jpg" width="658"/></p>
</figure>
<p dmcf-pid="GxbbJo2mdC" dmcf-ptype="general"> [뉴스엔 안형준 기자]</p>
<p dmcf-pid="H9338xUNdI" dmcf-ptype="general">류현진이 FA 35위 평가를 받았다.</p>
<p dmcf-pid="XHIItplfdO" dmcf-ptype="general">디 애슬레틱의 짐 보우덴은 11월 1일(한국시간) 올겨울 FA 시장에 나설 'TOP 40' FA 명단을 추렸다.</p>
<p dmcf-pid="ZJffgA6hMs" dmcf-ptype="general">4년만에 다시 FA 시장으로 향하는 류현진도 명단에 포함됐다. 보우덴은 류현진을 40명 중 35위로 선정했다. </p>
<p dmcf-pid="5ONNSWcpnm" dmcf-ptype="general">보우덴은 "8월 토미존 수술에서 복귀한 류현진은 11번의 등판 중 9경기에서 3실점 이하를 기록하는 등 인상적인 모습을 보였다. 그 중 6번은 5이닝 투구였고 시즌 하이는 6이닝이었다. 평균자책점 3.46, WHIP(이닝 당 출루허용율) 1.29를 기록했으며 패스트볼 구속은 대부분 시속 87-89마일 정도였다. 체인지업의 피안타율은 0.276, 커터의 피안타율은 0.238이었다"고 류현진의 2023시즌을 돌아봤다.</p>
<p dmcf-pid="1whh3uv8dr" dmcf-ptype="general">보우덴은 "2024시즌 개선된 모습을 보일 필요가 있다. 류현진은 아마 보장 금액이 낮은 1년 계약을 맺을 것으로 보인다"며 류현진이 1년 800만 달러가 보장되고 인센티브가 추가되는 계약을 맺을 것으로 전망했다. 예상 행선지로는 현재 소속팀인 토론토 블루제이스를 비롯해 미네소타 트윈스, 디트로이트 타이거즈를 꼽았다. </p>
<p dmcf-pid="tkOO10hVMw" dmcf-ptype="general">높은 평가는 아니다. 류현진보다 순위가 높은 34명 중 21명이 투수였다. 굉장히 많은 선발투수들이 류현진보다 높은 순위에 이름을 올렸다.</p>
<p dmcf-pid="FEIItplfnD" dmcf-ptype="general">1위 오타니 쇼헤이를 비롯해 조던 몽고메리(3위), 애런 놀라(4위), 블레이크 스넬(5위), 클레이튼 커쇼(9위), 소니 그레이(10위), 에두아르도 로드리게스(11위, 옵트아웃 가능), 마이클 와카(12위), 루카스 지올리토(13위), 마커스 스트로먼(14위, 옵트아웃 가능), 세스 루고(15위), 카일 헨드릭스(29위), 웨이드 마일리(31위, 옵션 존재), 앤드류 히니(32위), 잭 플래허티(33위), 마에다 겐타(34위) 등이 류현진보다 높은 평가를 받았다.</p>
<p dmcf-pid="3YttfP0gME" dmcf-ptype="general">하지만 그렇다고 '혹평'을 받았다고 볼 수준은 아니다. 제임스 팩스턴(39위), 카일 깁슨(40위)이 류현진보다 낮은 평가를 받았고 루이스 세베리노, 노아 신더가드, 알렉스 우드, 프랭키 몬타스, 타일러 말레, 마이클 로렌젠, 브래드 켈러, 션 마네아(옵트아웃 가능), 크리스 플렉센, 잭 데이비스, 카를로스 카라스코, 마이크 클레빈저(옵션 존재), 맷 보이드 등은 아예 TOP 40 명단에 이름도 올리지 못했다. '특급 FA'는 아니지만 여전히 가치있는 선수라는 평가로 볼 수 있다.</p>
<p dmcf-pid="0svvUqWQek" dmcf-ptype="general">10월 중순 귀국한 류현진은 "아직 거취에 대해 뭐라 말할 수가 없다"면서도 "충분한 이야기가 있다면 메이저리그에 남는 것이 당연하다"고 KBO리그 복귀보다는 메이저리그 잔류에 우선순위를 두고 있음을 언급했다. 과연 류현진이 내년 시즌을 어디에서 맞이할지 주목된다.(자료사진=류현진)</p>
<p dmcf-pid="p5UUQezcnc" dmcf-ptype="general">뉴스엔 안형준 markaj@</p>
<p dmcf-pid="Urll07T6dA" dmcf-ptype="general">사진=ⓒ GettyImagesKorea</p>
<p dmcf-pid="u3qqenKwij" dmcf-ptype="general">기사제보 및 보도자료 newsen@newsen.com copyrightⓒ 뉴스엔. 무단전재 &amp; 재배포 금지 </p>
</section>
</div></p></section></div><h6>[Source : 뉴스엔]</h6></div>
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