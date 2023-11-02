
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
    <h3>'CY 수상자' 바우어가 日 야구계에 미친 영향…"시스템 바꾸고, 본받아야" 목소리 높인 원로들</h3><h6>박승환 기자  2023. 11. 1. 05:27</h6>
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
<section dmcf-sid="9pgeG4tnkp">
<figure class="figure_frm origin_fig" dmcf-pid="2YQ2Ouv8g0" dmcf-ptype="figure">
<p class="link_figure"><img alt="요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052707819dynj.jpg" data-org-width="640" dmcf-mid="uqhS6reWob" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052707819dynj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="VqcL1xUNg3" dmcf-ptype="figure">
<p class="link_figure"><img alt="요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052708444ecnp.jpg" data-org-width="640" dmcf-mid="7L5toWcpjB" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052708444ecnp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스
           </figcaption>
</figure>
<p dmcf-pid="fy6KmplfcF" dmcf-ptype="general">[마이데일리 = 박승환 기자] "바우어를 본받아야 한다"</p>
<p dmcf-pid="49wN0dqkct" dmcf-ptype="general">일본 '사와무라상 선정위원회'는 지난달 30일(이하 한국시각) 일본 도쿄 소재의 한 호텔에서 2023시즌 사와무라상 수상자를 발표했다. 5명으로 구성된 사와무라상 선정위원회의 선택은 야마모토 요시노부였다.</p>
<p dmcf-pid="83LMWV5Jg1" dmcf-ptype="general">야마모토는 일본프로야구를 대표하는 '에이스' 투수로 올 시즌 모든 일정이 끝난 뒤 메이저리그에 진출할 예정. 야마모토는 지난 2021년 26경기에 등판해 193⅔이닝을 소화하며 206탈삼진, 18승 5패 승률 0.783 평균자책점 1.39로 활약하며 생애 첫 사와무라상을 손에 넣었다. 그리고 이듬해 26경기에서 193이닝 동안 205탈삼진을 기록, 15승 5패 승률 0.750 평균자책점 1.68을 기록했고, 2년 연속 최고의 투수로 우뚝섰다.</p>
<p dmcf-pid="62rjpJBEg5" dmcf-ptype="general">지난 2년 동안 '압권'의 활약을 펼친 야마모토는 올해도 좋은 흐름을 이어갔다. 야마모토는 지난 2년과 달리 23경기 밖에 등판하지 못했다. 그러나 164이닝을 소화하며 164탈삼진을 솎아냈고, 16승 6패 승률 0.727 평균자책점 1.21의 우수한 성적을 거둔 끝에 3년 연속 수상을 이뤄냈다. 이는 1956~1958년 고쿠테츠 스왈로스(現 야쿠르트 스왈로스)에서 뛰었던 카네다 마사이치 이후 65년 만에 역대 두 번째였다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="PBkotMujAZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052708703dets.jpg" data-org-width="640" dmcf-mid="zHvs9A6hAq" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052708703dets.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="QNtYRCLZkX" dmcf-ptype="figure">
<p class="link_figure"><img alt="요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052709036upoh.jpg" data-org-width="640" dmcf-mid="q9ZTQsJGoz" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052709036upoh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스
           </figcaption>
</figure>
<p dmcf-pid="xqcL1xUNAH" dmcf-ptype="general">야마모토와 사와무라상을 놓고 경쟁을 펼쳤던 선수는 2020년 내셔널리그 '사이영상'을 품에 안았던 트레버 바우어였다. 올 시즌에 앞서 요코하마 DeNA 베이스타스와 계약을 맺은 바우어는 19경기에 등판해 130⅔이닝을 소화하며 130탈삼진을 기록, 10승 4패 평균자책점 2.76의 성적을 남겼다. 엄격한 사와무라상 수상 조건에는 한참을 미치지 못했지만, 바우어의 올 시즌 활약은 분명 인상적이었다.</p>
<p dmcf-pid="yVmAUibDoG" dmcf-ptype="general">바우어는 일본 입성 첫 경기에서 히로시마 도요 카프를 상대로 7이닝 1실점(1자책)으로 역투하며 데뷔 첫 승을 손에 넣었다. 하지만 두 번째 등판인 요미우리 자이언츠와 맞대결에서 6이닝 7실점(6자책), 세 번째 등판에서 다시 만난 히로시마를 상대로 2이닝 7실점(7자책)으로 잇따라 무너진 끝에 2군으로 강등되는 아픔을 맛봤다. 바우어는 2군에서 열흘 동안 머물고 돌아온 5월 27일 주니치 드래건스를 상대로 6이닝 2실점(2자책)을 기록하며 제 궤도에 올라섰다.</p>
<p dmcf-pid="WqcL1xUNgY" dmcf-ptype="general">약 열흘 간의 짧은 '조정'을 거쳐 5월말 1군으로 복귀한 뒤 바우어의 기세는 정말 무서울 정도였다. 바우어는 6월 교류전이 시작된 후 4경기에 등판해 4승을 수확, 평균자책점 2.08로 활약한 끝에 첫 월간 MVP 타이틀을 손에 넣었다. 이는 시작에 불과했다. 바우어는 7월에도 좋은 투구를 이어갔고, 8월에는 6경기에 등판해 3승 1패 평균자책점 1.67로 6월보다 더 좋은 성적을 거둔 끝에 두 번째 월간 MVP를 수상했다.</p>
<p dmcf-pid="YqcL1xUNjW" dmcf-ptype="general">시즌 시작부터 어깨 부상으로 '삐끗'했던 바우어는 시즌을 마무리 하는 과정도 아쉬웠는데, 바우어는 지난 8월 30일 한신 타이거즈와 맞대결에서 3루수와 투수 사이로 향하는 타구를 처리하는 과정에서 우측 장요근 원위부 손상 진단을 받으면서 더이상 마운드에 오르지 못하고 정규시즌 일정을 마쳤다. 바우어는 재활 끝에 포스트시즌 무대에는 나설 수 있는 몸 상태까지 만들었지만, 요코하마 DeNA의 가을야구 일정이 너무나도 빨리 끝나게 되면서 올해 10승 4패 평균자책점 2.76으로 시즌을 마치게 됐다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="GNtYRCLZjy" dmcf-ptype="figure">
<p class="link_figure"><img alt="요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052709260aejt.jpg" data-org-width="640" dmcf-mid="B0TO2cPlk7" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052709260aejt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스 SNS
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="HiGl8wRycT" dmcf-ptype="figure">
<p class="link_figure"><img alt="요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052710618cuxg.jpg" data-org-width="640" dmcf-mid="bL1WMInXou" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052710618cuxg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            요코하마 DeNA 베이스타스 트레버 바우어./요코하마 DeNA 베이스타스 SNS
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="XLXvPmdYcv" dmcf-ptype="figure">
<p class="link_figure"><img alt="요미우리 자이언츠 감독 시절의 호리우치 츠네오./게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101052711878phsw.jpg" data-org-width="640" dmcf-mid="K1P9sUS4AU" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101052711878phsw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            요미우리 자이언츠 감독 시절의 호리우치 츠네오./게티이미지코리아
           </figcaption>
</figure>
<p dmcf-pid="ZPhwBafONS" dmcf-ptype="general">성적에는 드러나지 않지만, 바우어의 임팩트는 어마어마했다. 이는 바우어의 등판 간격과 투구수, 투구 이닝을 보면 알 수 있다. 일본의 경우 1990년대부터 6인 선발 로테이션 도입, 지금까지도 이를 유지하고 있다. 따라서 선발 로테이션에 포함된 선수의 경우 일주일에 한차례 등판하는 것이 고작이다. 하지만 바우어는 조금 달랐다. 메이저리그 시절과 마찬가지로 '4일 휴식' 로테이션을 소화했다.</p>
<p dmcf-pid="53LMWV5Jcl" dmcf-ptype="general">바우어는 지난 6월 3일 세이부 라이온스와 교류전을 시작으로 8월 25일 주니치전까지 4일 휴식 로테이션을 돌면서 14경기 연속 투구수 100구 이상을 기록했다. 14경기에서의 총 투구수는 1601구, 경기당 114.4구를 던졌다. 사이영상 수상자의 위엄이라고 볼 수 있지만, 괴물 같은 체력과 '헌신'을 했다고 볼 수 있다. 이를 일본프로야구 '원로'들도 모르지 않았다. 오히려 바우어의 이러한 점을 본받아야 한다고 목소리를 높였다.</p>
<p dmcf-pid="1SfqDFI9jh" dmcf-ptype="general">일본 '닛칸 스포츠'에 따르면 호리우치 츠네오 선정위원장은 "100구에서 교체하는 것은 미국에서 160여 경기를 4일 휴식 로테이션을 도는 것에 걸맞은 좋은 시스템이다. 반면 일본은 일주일에 한차례 나오면서 100구를 던진다. 이래선 승리를 따낼 수 있는 투수들도 이길 수 없다. 나는 바우어가 던지는 방법에 찬성한다. 이렇게 던져야 20승 투수가 탄생할 수 있다. 많이 이기기 위해서는 많이 던져야 한다. 바우어를 본받았으면 좋겠다"고 소신을 밝혔다.</p>
<p dmcf-pid="t7jiZP0gjC" dmcf-ptype="general">히라마츠 마사지 위원 또한 "바우어는 매우 강력한 피칭을 하는 선수로 좋은 예가 될 수 있는 투수"라며 "6일 휴식 로테이션, 100구 전후, 6~7회 교체라는 시스템을 바꿔가는 지도자, 감독, 코치가 나타나기를 바란다. '아직 던질 수 있다'는 생각이 들 때 시스템에 맞춰 투수를 바꾼다. 그렇기 때문에 야구가 후반부에 지루하다. 이를 뒤집는 팀이 나왔으면 좋겠다"고 강조했다.</p>
<p dmcf-pid="FFnxy2ZdgI" dmcf-ptype="general">선수층이 탄탄하기 때문에 6인 로테이션을 꾸릴 수 있는 일본. 하지만 한 시대를 풍미했던 '원로'들은 선수들이 더욱 경쟁하고 발전하기 위해서는 변화가 필요하다는 생각을 갖고 있고, 목소리를 냈다. 그리고 대표적인 예로 거론된 인물이 바우어였다. 바우어가 일본프로야구계에 변화를 불러일으킬 만한 좋은 영향력을 끼치고 있는 것은 분명해 보인다. </p>
</section>
</div></p></section></div><h6>[Source : 마이데일리]</h6></div>
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