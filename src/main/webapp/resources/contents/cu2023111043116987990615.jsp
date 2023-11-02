
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
    <h3>[느린 풍경] 물길 따라 철길 따라… 두 바퀴에 가을의 서정을 싣고</h3><h6>최흥수  2023. 11. 1. 04:31</h6>
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
<section dmcf-sid="qKzAZP0gYz">
<blockquote class="pretip_frm" dmcf-pid="BKzAZP0g57" dmcf-ptype="pre">
           편집자주
           <br/>느린 만큼 보이는 사람, 마을, 자연. 매주 수요일 여행 감성을 자극하는 풍경을 찾아갑니다. 
          </blockquote>
<figure class="figure_frm origin_fig" dmcf-pid="KUFnT9XeXU" dmcf-ptype="figure">
<p class="link_figure"><img alt="남양주와 양평을 잇는 북한강철교 위로 자전거가 달리고 있다. 강 건너 운길산이 울긋불긋 단풍으로 물들고 있다. 경의중앙선 팔당역에서 신원역까지 남한강자전거길은 중앙선 폐선을 정비한 길이다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043158647xzip.jpg" data-org-width="640" dmcf-mid="fIKk1xUN5a" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043158647xzip.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            남양주와 양평을 잇는 북한강철교 위로 자전거가 달리고 있다. 강 건너 운길산이 울긋불긋 단풍으로 물들고 있다. 경의중앙선 팔당역에서 신원역까지 남한강자전거길은 중앙선 폐선을 정비한 길이다.
           </figcaption>
</figure>
<p dmcf-pid="9u3Ly2Zdtp" dmcf-ptype="general">경기 남양주 팔당역에서 양평 신원역까지 중앙선 폐선로를 활용한 자전거길은 충주까지 이어지는 ‘한강종주자전거길’에서 가장 아름다운 구간으로 꼽힌다. 남한강자전거길이라고도 부르는 이 길은 큰 오르막과 내리막 없이 말끔하게 포장돼 있고, 녹슨 기찻길과 추억의 간이역도 남아 있다. 자전거길에서 조금 벗어나면 그윽한 강변마을에 역사 속 큰 족적을 남긴 인물과 만난다. 한 폭의 수채화처럼 눈부신 가을의 서정으로 달리는 길이다. </p>
<div class="video_frm" dmcf-pid="270oWV5Jt0" dmcf-ptype="embed">
<div class="layer_vod">
<div class="vod_player">
<iframe allowfullscreen="" class="player_iframe" dmcf-mid="7AhoWV5J1B" dmcf-mtype="video/youtube" frameborder="0" height="370" id="video@7AhoWV5J1B" scrolling="no" src="https://www.youtube.com/embed/cAmBol57Wbs?origin=https://v.daum.net&amp;enablejsapi=1&amp;playsinline=1" width="100%"></iframe>
</div>
</div>
</div>
<hr class="line_divider" dmcf-pid="feQlBafOXF" dmcf-ptype="line"/>
<h3 dmcf-pid="4dxSbN4IHt" dmcf-ptype="h3">허름한 간이역과 가을 서정 다산유적지</h3>
<p dmcf-pid="8mEUivNF11" dmcf-ptype="general">자전거가 없는 이들도 걱정할 필요가 없다. 수도권 전철 경의중앙선 팔당역, 운길산역, 양수역, 신원역 주변에 대여소가 있기 때문이다. 팔당역은 남한강을 거슬러 오르는 자전거길의 실질적인 출발점이다. 역 광장 오른편에 위치한 대여소에서 자전거를 빌렸다. 일반 자전거 기준 1시간 5,000원, 2시간 9,000원, 종일권 1만3,000원이다. 팔당역에서 신원역까지는 약 16km, 평시 자전거를 즐겨 타는 이들에겐 쉬운 거리지만, 잠깐 빌려 타는 여행객에게 왕복 32km는 부담스럽다. 이럴 경우 팔당역에서 빌려 신원역에 반납해도 된다. 추가 요금은 없다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="6sDunTj3Z5" dmcf-ptype="figure">
<p class="link_figure"><img alt="팔당역과 능내역 사이 자전거길의 봉안터널." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043200039addy.jpg" data-org-width="640" dmcf-mid="4X6EtMujYg" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043200039addy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            팔당역과 능내역 사이 자전거길의 봉안터널.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="QdxSbN4IXX" dmcf-ptype="figure">
<p class="link_figure"><img alt="터널을 통과할 때면 옛 선로를 활용한 길이라는 사실이 더욱 실감 난다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043201572ocmg.jpg" data-org-width="640" dmcf-mid="8WFQsUS4Xo" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043201572ocmg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            터널을 통과할 때면 옛 선로를 활용한 길이라는 사실이 더욱 실감 난다.
           </figcaption>
</figure>
<p dmcf-pid="xJMvKj8CHH" dmcf-ptype="general">팔당역에서 양평 방향으로 조금 이동해 전철 아래 굴다리를 통과하면 바로 자전거길이 시작된다. 폐선로에 닿기까지 짧은 오르막을 제외하면 거의 평지다. 2008년 경의중앙선 복선전철이 개통된 후 폐쇄된 선로는 2011년 자전거길로 부활했다. 산비탈 중턱으로 이어지는 길 오른편으로 팔당댐을 통과한 강물이 아찔하게 내려다보인다. 강 언저리 날카롭게 돌출한 바위에 가마우지며 왜가리가 먹이를 기다리며 쉬고 있다. </p>
<p dmcf-pid="y01JSbGMGG" dmcf-ptype="general">자전거길에는 일정한 간격으로 쉼터가 조성돼 있다. 남양주 구간엔 쉼터마다 다산 정약용의 글귀가 새겨져 있다. 팔당댐 인근 쉼터에는 “모래톱 길은 청노새가 가고, 아이 종은 거문고를 안고 따르네. 유난히 속기(俗氣) 없는 나그네, 아마도 해금강을 향해 가나 봐”라는 시판이 세워져 있다. 그 옛날 이곳 한강에도 해금강에 비견할 곱고 눈부신 모래사장이 이어졌던 모양이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="WptivKHRYY" dmcf-ptype="figure">
<p class="link_figure"><img alt="남한강자전거길 주변의 단풍이 곱게 물들었다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043202928ryjs.jpg" data-org-width="640" dmcf-mid="6rAr0dqkYL" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043202928ryjs.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            남한강자전거길 주변의 단풍이 곱게 물들었다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="GqUaG4tnYy" dmcf-ptype="figure">
<p class="link_figure"><img alt="능내역 인근 '이근호 손편지 정원' 쉼터의 조형물." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043204304olnd.jpg" data-org-width="640" dmcf-mid="Pk5pJSatZn" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043204304olnd.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            능내역 인근 '이근호 손편지 정원' 쉼터의 조형물.
           </figcaption>
</figure>
<p dmcf-pid="Xb7jX63oYv" dmcf-ptype="general">봉안터널을 통과하면 우측으로 발갛게 물들어가는 단풍나무 몇 그루가 반기고, 그 너머로 잔잔한 팔당호가 넓게 펼쳐진다. 호숫가에 대형 카페가 자리 잡았고, 바로 앞에 ‘이근호 손편지 정원’이라는 작은 공원도 있다. 쇠로 만든 조각품 끝에 고요한 호수와 팔당댐이 걸린다. </p>
<p dmcf-pid="ZM6Czo2mGS" dmcf-ptype="general">조금만 더 가면 중앙선 선로 이설과 함께 문을 닫은 능내역이 있다. 능내역은 1956년 처음부터 역무원이 없는 간이역으로 영업을 시작했다. 1967년 보통역으로 승격했지만 1993년 다시 간이역으로 격하됐고 2008년 결국 문을 닫았다. </p>
<p dmcf-pid="5RPhqgVsXl" dmcf-ptype="general">서울을 오가는 주민들이 이용했던 역 내부는 당시를 추억하는 작은 전시실로 꾸며졌지만, 이제 그마저도 빛바랜 과거사로 돌아가는 듯하다. 낡은 간판을 단 외벽은 담쟁이넝쿨이 덮었고, 전시실 불도 꺼져 있다. 외벽에 걸어 놓은 흑백사진 밑에 ‘설레는 날, 너의 곁에’라는 글귀가 붙어 있는데 한 귀퉁이가 떨어져 설렘보다 애잔함이 묻어난다. 역 주변에 일부 보존한 선로만이 옛날 기차가 다니던 곳이라는 걸 상기할 뿐이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="1eQlBafOYh" dmcf-ptype="figure">
<p class="link_figure"><img alt="기차가 다니지 않는 능내역 외벽이 담쟁이넝쿨로 덮여 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043205650ieog.jpg" data-org-width="640" dmcf-mid="QKksUibDZi" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043205650ieog.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            기차가 다니지 않는 능내역 외벽이 담쟁이넝쿨로 덮여 있다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="FQ4OunKwXI" dmcf-ptype="figure">
<p class="link_figure"><img alt="능내역 외벽에 기차가 다니던 시절 추억의 사진이 걸려 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043207024dibj.jpg" data-org-width="640" dmcf-mid="xQ4ehqWQXJ" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043207024dibj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            능내역 외벽에 기차가 다니던 시절 추억의 사진이 걸려 있다.
           </figcaption>
</figure>
<p dmcf-pid="3x8I7L9rXO" dmcf-ptype="general">능내역에서 약 1.6km 떨어진 곳에 정약용 유적지가 있다. 다산 정약용이 태어난 곳이자 전남 강진에서 긴 유배생활을 마치고 돌아와 머물던 고향 마을로 그의 생가와 묘, 기념관과 실학박물관 등이 함께 있다. </p>
<p dmcf-pid="0qUaG4tn5s" dmcf-ptype="general">강가에 위치한 마을로 가자면 ‘마재’라는 얕은 언덕을 넘는다. 말을 타고 넘어가던 고개라는 뜻이다. 소설가 김훈은 장편소설 ‘흑산’에서 정씨 가문의 고향 마재마을을 아름답게 묘사하고 있다. “강원도 산협을 돌아 나온 북한강과 충주, 여주, 이천의 넓은 들을 지나온 남한강이 마재에서 만났다. 강들은 서로 스미듯이 합쳐져서 물이 날뛰지 않았다. 물은 넓고 깊었으나 사람의 마을을 어려워하듯이 조용히 흘렀고 들에 넘치지 않았다.” </p>
<figure class="figure_frm origin_fig" dmcf-pid="pBuNH8FL5m" dmcf-ptype="figure">
<p class="link_figure"><img alt="정약용유적지에 그의 생가인 여유당이 복원돼 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043208557uodn.jpg" data-org-width="640" dmcf-mid="yUZUivNF1d" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043208557uodn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            정약용유적지에 그의 생가인 여유당이 복원돼 있다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="u2Bk1xUNYw" dmcf-ptype="figure">
<p class="link_figure"><img alt="정약용유적지 인근 생태공원이 가을 색으로 곱게 물들고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043209980qfmp.jpg" data-org-width="640" dmcf-mid="WTb6r0hVYe" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043209980qfmp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            정약용유적지 인근 생태공원이 가을 색으로 곱게 물들고 있다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="zfKDFR7A1E" dmcf-ptype="figure">
<p class="link_figure"><img alt="정약용유적지 인근 생태공원 산책로가 노란 국화로 장식돼 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043211351pwka.jpg" data-org-width="640" dmcf-mid="Y7MpJSatGR" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043211351pwka.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            정약용유적지 인근 생태공원 산책로가 노란 국화로 장식돼 있다.
           </figcaption>
</figure>
<p dmcf-pid="BylVk1sbZc" dmcf-ptype="general">그의 표현대로 유적지와 팔당호 사이에 조성한 생태공원은 푸근하기 그지없다. 이미 잎이 떨어진 커다란 백합나무 아래 벤치에선 여행객이 보따리를 풀어헤치고 소풍을 즐기고 있고, 막 울긋불긋 단풍이 든 키 작은 나무 아래서 담소를 즐기는 이들도 보인다. 버드나무와 등나무는 아직 녹색이 덜 빠진 상태다. 호수를 향해 놓은 벤치에 앉아 가을날의 서정에 하염없이 빠져들거나 국화 화분으로 장식된 산책로를 느긋하게 거닐어도 좋겠다. </p>
<hr class="line_divider" dmcf-pid="bWSfEtOKGA" dmcf-ptype="line"/>
<h3 dmcf-pid="K5GxOuv8Gj" dmcf-ptype="h3">북한강 남한강 물길 끌어안은 두물머리</h3>
<p dmcf-pid="91HMI7T6ZN" dmcf-ptype="general">다시 자전거길로 돌아와 능내역에서 양평 쪽으로 조금 더 가면 조동마을이다. 쉼터에 새소리에 반해 터를 잡은 마을이라는 안내판이 세워져 있다. 선로는 사라졌지만 자전거길 양쪽으로 자란 벚나무가 터널을 이루고 있어 기차를 타고 지나는 듯한 느낌은 그대로다. </p>
<p dmcf-pid="2tXRCzyPGa" dmcf-ptype="general">조동마을을 따라 북한강을 살짝 거슬러 오르던 길은 북한강철교에서 다시 양평 방향으로 틀어진다. 남양주시와 양평군을 잇는 길이 500m 북한강철교는 동양 최초로 능형마름모꼴 트러스를 얹어 조형미가 뛰어나다는 평을 받는다. 1939년 완공해 한국전쟁 초기 두 차례 파괴되는 곡절을 겪었고 1952년 2월 다시 복구했다. 녹슬고 거칠지만 오래된 구조물 특유의 부드러움이 묻어 난다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="VNLX6reWYg" dmcf-ptype="figure">
<p class="link_figure"><img alt="자전거 여행자들이 북한강철교 위를 달리고 있다. 녹슨 트러스가 오래된 구조물의 푸근함을 풍긴다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043212666goez.jpg" data-org-width="640" dmcf-mid="GwVX6reWYM" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043212666goez.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            자전거 여행자들이 북한강철교 위를 달리고 있다. 녹슨 트러스가 오래된 구조물의 푸근함을 풍긴다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="4Ag5QsJGHL" dmcf-ptype="figure">
<p class="link_figure"><img alt="자전거 여행자들이 북한강철교 위를 달리고 있다. 강 건너 남양주 운길산이 울긋불긋 단풍으로 물들고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043214081mktw.jpg" data-org-width="640" dmcf-mid="Ht81xOiHZx" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043214081mktw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            자전거 여행자들이 북한강철교 위를 달리고 있다. 강 건너 남양주 운길산이 울긋불긋 단풍으로 물들고 있다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="6XWPmplfHi" dmcf-ptype="figure">
<p class="link_figure"><img alt="옛 중앙선 북한강철교는 자전거길로 이용되고, 새로 놓은 양수철교에는 수도권전철과 중앙선 열차가 다닌다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043215793vlrs.jpg" data-org-width="640" dmcf-mid="XHuWVkQSGQ" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043215793vlrs.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            옛 중앙선 북한강철교는 자전거길로 이용되고, 새로 놓은 양수철교에는 수도권전철과 중앙선 열차가 다닌다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Q5GxOuv8Yd" dmcf-ptype="figure">
<p class="link_figure"><img alt="자전거 여행자가 북한강철교를 지나 양수역 방면으로 달리고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043217207qlyp.jpg" data-org-width="640" dmcf-mid="ZQCaG4tn1P" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043217207qlyp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            자전거 여행자가 북한강철교를 지나 양수역 방면으로 달리고 있다.
           </figcaption>
</figure>
<p dmcf-pid="xUFnT9XeGe" dmcf-ptype="general">쌩쌩 내달리던 자전거 여행자도 이 다리에선 잠시 페달을 쉬고 한없이 넓고 푸른 강물에 젖는다. 바로 옆 새로 놓인 양수철교 위로는 용문(지평)까지 운행하는 전철, 강릉과 안동을 오가는 고속열차와 화물 열차가 수시로 오가고 있다. 다리를 건너 양평 쪽에서 되돌아보면 단풍으로 물든 운길산의 모습이 한 폭의 산수화다. </p>
<p dmcf-pid="yAg5QsJG5R" dmcf-ptype="general">자전거길 전 구간에는 보행자용 길이 따로 있어 안심하고 걸을 수 있는 구조다. 특히 북한강철교를 걸어서 건너는 여행자가 많은 편이다. 운길산역에서 양수역까지는 2km가 조금 넘는다. 걷기에 부담 없는 거리다. </p>
<p dmcf-pid="Wca1xOiH5M" dmcf-ptype="general">북한강철교를 건너 바로 오른쪽으로 빠지면 ‘수풀로 양수리’라는 수변공원이다. 아파트가 들어서기로 예정돼 있던 땅을 환경부에서 매입해 공원으로 꾸몄다. 정부는 대개 보존보다 개발을 우선시할 거라는 편견을 깬 현장이다. 철교 아래에는 다리가 놓이기 전 북한강을 건너던 두 나루에 관한 안내판이 세워져 있다. 남양주시 조안면 고랭이마을과 양평군 양서면 돌떼미마을을 잇던 나루로, 각각 마을 이름을 따 ‘고랭이나루’ ‘돌떼미나루’로 불렀다고 한다. 양평과 서울을 잇는 최단거리 뱃길이었다. </p>
<p dmcf-pid="YQ4OunKw1x" dmcf-ptype="general">북한강과 남한강 두 강줄기 사이에 형성된 작은 섬을 흔히 두물머리 혹은 양수리라 부르는데, 두물머리나루가 있던 곳은 섬 남쪽 끝이다. 서울이 아니라 경기 광주로 오가는 나루터였다. 돌떼미나루에서 약 2km로 걸으면 30분, 자전거로는 채 10분이 안 걸린다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Gx8I7L9r1Q" dmcf-ptype="figure">
<p class="link_figure"><img alt="북한강(왼쪽)과 남한강이 합류하는 양평군 양서면 두물머리." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043218525ecee.jpg" data-org-width="640" dmcf-mid="5eQDFR7At6" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043218525ecee.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            북한강(왼쪽)과 남한강이 합류하는 양평군 양서면 두물머리.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="X2Bk1xUN16" dmcf-ptype="figure">
<p class="link_figure"><img alt="외국인까지 즐겨 찾는 두물머리에 가을이 곱게 내려앉았다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043219984brnj.jpg" data-org-width="640" dmcf-mid="1kPEtMujZ8" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043219984brnj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            외국인까지 즐겨 찾는 두물머리에 가을이 곱게 내려앉았다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="5fKDFR7AG4" dmcf-ptype="figure">
<p class="link_figure"><img alt="두물머리는 경관이 빼어나 수도권 주민뿐만 아니라 외국인도 많이 찾아오는 명소가 됐다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043221556pdmr.jpg" data-org-width="640" dmcf-mid="txS7LyA0Z4" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043221556pdmr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            두물머리는 경관이 빼어나 수도권 주민뿐만 아니라 외국인도 많이 찾아오는 명소가 됐다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="t1HMI7T6ZV" dmcf-ptype="figure">
<p class="link_figure"><img alt="두물머리 앞 팔당호 수면에 햇볕이 반짝거리고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043222969zkfb.jpg" data-org-width="640" dmcf-mid="F5oT9A6hXf" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043222969zkfb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            두물머리 앞 팔당호 수면에 햇볕이 반짝거리고 있다.
           </figcaption>
</figure>
<p dmcf-pid="FtXRCzyPH2" dmcf-ptype="general">현재 두물머리는 공원으로 조성돼 수도권 주민뿐만 아니라 외국인도 즐겨 찾는 명소가 됐다. 물가에 바짝 붙어 뿌리내린 나무일수록 단풍 빛깔이 곱다. 400년 된 커다란 느티나무를 시작으로 키 큰 메타세쿼이아와 사진틀 모양의 조형물이 눈부신 가을 풍경을 빚는다. 섬의 가장 끝자락에 ‘두물경’ 표지석이 세워져 있다. ‘아침에는 북한강 물안개에 할머니 뵙고, 저녁에는 남한강 잔물결에 삼촌들 만나고.’ 경치만 좋은 게 아니라 이웃과 정을 나누며 살아가는 주민들의 일상이 시로 새겨져 있다. </p>
<p dmcf-pid="3giG4DMTG9" dmcf-ptype="general">양수역에서 신원역까지 자전거길은 5개의 터널을 통과하며 거의 일직선으로 연결된다. 터널을 지날 때마다 우측으로 6번 국도 교량 아래로 시원하게 호수가 펼쳐진다. 신원역을 코앞에 둔 마지막 쉼터에는 초가지붕 정자가 강을 바라보고 있다. ‘월계주막’ 자리라는 표시다. 관동대로와 남한강 물길을 통해 한양으로 오가던 관원과 길손이 쉬어 가던 곳이었다. </p>
<p dmcf-pid="0anH8wRyGK" dmcf-ptype="general">신원역에서 500m 떨어진 곳에 몽양 여운형(1886~1947)을 기리는 몽양기념관이 있다. 안으로 들어서면 천장에서 늘어진 휘장이 그가 어떤 인물인지 요약하고 있다. 일곱 남매의 아버지, 조선을 사랑한 독립운동가, 계몽을 실천한 기독교 선교사, 여행을 사랑했던 모험가, 동양 평화를 주창한 선각자, 세계로 나아간 조선의 혁명가, 한국 체육의 초석을 놓은 스포츠맨. 어느 것 하나 쉽지 않은 역할이다. 대한민국 임시정부에 몸담았던 몽양은 광복 후 건국준비위원회 위원장에 취임해 좌우익 합작을 추진하다 1947년 암살당했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="pNLX6reW1b" dmcf-ptype="figure">
<p class="link_figure"><img alt="남한강자전거길 양수역~신원역 구간에는 5개 터널이 연속적으로 이어진다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043224312jiba.jpg" data-org-width="640" dmcf-mid="376DFR7A5V" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043224312jiba.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            남한강자전거길 양수역~신원역 구간에는 5개 터널이 연속적으로 이어진다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="uylVk1sbYq" dmcf-ptype="figure">
<p class="link_figure"><img alt="신원역 인근 월계주막 자리에 초가 쉼터가 조성돼 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043226298cudm.jpg" data-org-width="640" dmcf-mid="0WldlBYxZ2" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043226298cudm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            신원역 인근 월계주막 자리에 초가 쉼터가 조성돼 있다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="zSNtMInX57" dmcf-ptype="figure">
<p class="link_figure"><img alt="몽양기념관 앞 은행나무가 노랗게 물들었다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043227655mkqc.jpg" data-org-width="640" dmcf-mid="pqkVk1sbY9" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043227655mkqc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            몽양기념관 앞 은행나무가 노랗게 물들었다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Bhg5QsJG1U" dmcf-ptype="figure">
<p class="link_figure"><img alt="몽양기념관 입구의 동상." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043229089bsoc.jpg" data-org-width="640" dmcf-mid="ULfYfExvGK" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043229089bsoc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            몽양기념관 입구의 동상.
           </figcaption>
</figure>
<p dmcf-pid="bla1xOiHXp" dmcf-ptype="general">기념관으로 오르는 길목에 ‘묘골애오와공원’이 보인다. 묘골은 그가 태어난 마을이고, 애오와(愛吾窩)는 ‘나의 사랑하는 집’이라는 뜻으로 그의 친필에서 따왔다. ‘여운형 어록길’에는 ‘이 땅에 합리적이고 이상적인 낙원을 건설’하고자 했던 그의 절절한 연설문이 새겨져 있다. </p>
<p dmcf-pid="KSNtMInX50" dmcf-ptype="general">팔당역에서 빌린 자전거를 신원역에 반납하며 여행을 마무리한다. 주차장 옆 자전거 거치대에 자물쇠를 채우고, 빌릴 때 받은 전화번호로 알려주면 끝이다. 서울로 돌아오는 전철의 배차 간격은 약 20분, 기다림조차 여유로운 여행이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="9pSfEtOK53" dmcf-ptype="figure">
<p class="link_figure"><img alt="수도권전철 경의중앙선 팔당역~신원역 구간 자전거길. 그래픽=송정근 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hankooki/20231101043230429srcz.jpg" data-org-width="640" dmcf-mid="uXP0dlg11b" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hankooki/20231101043230429srcz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            수도권전철 경의중앙선 팔당역~신원역 구간 자전거길. 그래픽=송정근 기자
           </figcaption>
</figure>
<p dmcf-pid="VuT8w3C25t" dmcf-ptype="general">남양주·양평=글·사진 최흥수 기자 choissoo@hankookilbo.com</p>
</section>
</div></p></section></div><h6>[Source : 한국일보]</h6></div>
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