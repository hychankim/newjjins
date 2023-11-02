
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
    <h3>은돔벨레, 햄버거 주문하다 감독과 언쟁까지 벌였다...'체중 감량' 없인 출전 기회 없어</h3><h6>유지선 기자  2023. 11. 1. 09:31</h6>
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
<section dmcf-sid="tHA7kreWCw">
<div dmcf-pid="Fyg0NkQSyD" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="122356" data-type="photo" dmcf-pid="3WapjExvSE" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/besteleven/20231101093148777zjzt.jpg" data-org-width="640" dmcf-mid="1HapjExvCr" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/besteleven/20231101093148777zjzt.jpg" width="658"/></p>
</figure>
<div dmcf-pid="0fHiZFI9yk" dmcf-ptype="general">
<div>
</div>
<p>(베스트 일레븐)</p>
</div>
<p dmcf-pid="p4Xn53C2hc" dmcf-ptype="general"><span>탕귀 은돔벨레<span lang="EN-US"><span>(</span></span>갈라타사라이<span lang="EN-US"><span>)</span></span>가 자기 관리에 소홀해 감독의 눈 밖에 났다<span lang="EN-US"><span>. </span></span>이번에는 햄버거가 발단이 됐다<span lang="EN-US"><span>. </span></span></span></p>
<p dmcf-pid="U8ZL10hVCA" dmcf-ptype="general"><span>영국 <span lang="EN-US"><span>'</span></span>데일리 메일<span lang="EN-US"><span>'</span></span>은 <span lang="EN-US"><span>1</span></span>일<span lang="EN-US"><span>(</span></span>이하 한국시간<span lang="EN-US"><span>) </span></span>튀르키예 매체의 보도를 인용해 <span lang="EN-US"><span>"</span></span>은돔벨레가 바이에른 뮌헨전 패배 후 호텔에서 햄버거를 주문했다<span lang="EN-US"><span>. </span></span>이 사실을 알게 된 오칸 부루크 감독이 그에게 화를 냈고<span lang="EN-US"><span>, </span></span>은돔벨레는 부르크 감독과 언쟁을 벌였다<span lang="EN-US"><span>"</span></span>라고 보도했다<span lang="EN-US"><span>. </span></span></span></p>
<p dmcf-pid="uYNUADMTWj" dmcf-ptype="general"><span>은돔벨레는 과거 토트넘 홋스퍼로 이적할 당시에 역대 최고 이적료를 세우는 등 기대를 한 몸에 받았다<span lang="EN-US"><span>. </span></span>그러나 타고난 재능만큼 노력이 따라오지 않았다<span lang="EN-US"><span>. </span></span>은돔벨레는 과거에도 불성실한 태도로 여러 차례 논란이 된 바 있다<span lang="EN-US"><span>. </span></span></span></p>
<p dmcf-pid="7GjucwRySN" dmcf-ptype="general"><span><span lang="EN-US"><span>'</span></span>데일리 메일<span lang="EN-US"><span>'</span></span>은 <span lang="EN-US"><span>"</span></span>은돔벨레는 갈라타사라이에 합류할 때부터 과체중 상태였고<span lang="EN-US"><span>, </span></span>부루크 감독은 이에 불만을 가졌었다<span lang="EN-US"><span>. </span></span>구단 차원에서 은돔벨레에게 컨디션 향상을 위해 다이어트 계획을 잘 이행해달란 지시가 내려졌었다<span lang="EN-US"><span>"</span></span>라면서 <span lang="EN-US"><span>"</span></span>은돔벨레는 향후 <span lang="EN-US"><span>75kg</span></span>까지 감량하지 않으면 출전 기회를 얻지 못할 것<span lang="EN-US"><span>"</span></span>이라고 덧붙였다<span lang="EN-US"><span>. </span></span></span></p>
<p dmcf-pid="zgbs94tnCa" dmcf-ptype="general"><span>은돈벨레는 지난 여름 토트넘을 떠나 갈라타사라이로 임대 이적했다<span lang="EN-US"><span>. </span></span>엔제 포스테코글루 감독 체제에서 설 자리를 잃은 까닭이다<span lang="EN-US"><span>. </span></span>그러나 갈라타사라이에서도 방황하고 있다<span lang="EN-US"><span>. </span></span>은돔벨레는 갈라타사라이 유니폼을 입고 이번 시즌 총 <span lang="EN-US"><span>7</span></span>경기에 출전했지만<span lang="EN-US"><span>, </span></span>그 중 선발로 나선 건 리그 <span lang="EN-US"><span>1</span></span>경기에 불과하다<span lang="EN-US"><span>. </span></span></span></p>
<p dmcf-pid="qaKO28FLyg" dmcf-ptype="general">글=유지선 기자(jisun22811@soccerbest11.co.kr)<br/> 사진=ⓒgettyImages/게티이미지코리아(무단 전재 및 재배포 금지)</p>
<p dmcf-pid="BN9IV63oho" dmcf-ptype="general">축구 미디어 국가대표 - 베스트 일레븐 &amp; 베스트 일레븐 닷컴<br/> 저작권자 ⓒ(주)베스트 일레븐. 무단 전재/재배포 금지-www.besteleven.com</p>
</section>
</div></p></section></div><h6>[Source : 베스트일레븐]</h6></div>
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