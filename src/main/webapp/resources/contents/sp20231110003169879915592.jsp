
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
    <h3>코리안투어 최초 시즌 상금 '8억원' 돌파… 박상현 vs 한승수 "내가 먼저"</h3><h6>한종훈 기자  2023. 11. 1. 00:03</h6>
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
<section dmcf-sid="7Wa4Nuv8Vi">
<figure class="figure_frm origin_fig" dmcf-pid="zIDRw9Xe9J" dmcf-ptype="figure">
<p class="link_figure"><img alt="코리안투어 시즌 상금 순위 1위에 자리하고 있는 박상현. /사진= KPGA" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneyweek/20231101000309695qach.jpg" data-org-width="680" dmcf-mid="plmEGibDbo" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneyweek/20231101000309695qach.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            코리안투어 시즌 상금 순위 1위에 자리하고 있는 박상현. /사진= KPGA
           </figcaption>
</figure>
<div dmcf-pid="qtGDHnKw2d" dmcf-ptype="general">
           코리안투어 상금 랭킹 1위 박상현과 2위 한승수가 한 시즌 최초 상금 8억 돌파 선착 싸움을 시작한다. 
          </div>
<p dmcf-pid="BvOnI8FLKe" dmcf-ptype="general">코리안투어 골프존-도레이 오픈이 오는 2일부터 나흘 동안 경북 구미 골프존카운티 선산(파72)에서 열린다. 2023시즌 코리안투어는 이 대회를 포함해 LG 시그니처 플레이어스 챔피언십까지 2개 대회가 남았다.</p>
<p dmcf-pid="bU1OtN4I9R" dmcf-ptype="general">박상현과 한승수는 코리안투어 시즌 최다 상금 기록에 도전한다. 코리안투어 역대 한 시즌 최다 상금은 지난해 김영수가 기록한 7억9132만원이다. </p>
<p dmcf-pid="KlmJsf1ifM" dmcf-ptype="general">현재 박상현은 7억5473만원의 상금을 쌓아 상금순위 1위다. 박상현은 제네시스 챔피언십에서 우승을 포함해 14개 대회서 상금을 획득했다. </p>
<p dmcf-pid="9q0lpkQSVx" dmcf-ptype="general">골프존-도레이 오픈 우승 상금은 1억4000만원 준우승 상금은 7000만원 3위는 4200만원을 받는다. 박상현이 골프존-도레이 오픈에서 단독 3위 이상의 성적을 거둘 시 한 시즌 최다 상금을 경신한다. 또 코리안투어 사상 최초로 한 시즌 누적 상금 8억원도 넘어선다. </p>
<p dmcf-pid="25WkYJBE9Q" dmcf-ptype="general">상금순위 2위 한승수도 8억원 돌파가 가능하다. 7억2329만원의 시즌 상금을 기록 중인 한승수는 이 대회 정상에 오르면 8억6329만원이 된다. 우승하면 역대 한 시즌 최다 획득 상금 기록 수립과 누적 상금 8억원 돌파에 성공한다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="VBpSUExvKP" dmcf-ptype="figure">
<p class="link_figure"><img alt="코리안투어 제네시스 대상 포인트 1위 함정우. /사진= KPGA" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneyweek/20231101000311099snly.jpg" data-org-width="680" dmcf-mid="USvC3A6h9L" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneyweek/20231101000311099snly.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            코리안투어 제네시스 대상 포인트 1위 함정우. /사진= KPGA
           </figcaption>
</figure>
<div dmcf-pid="futIFj8Cf6" dmcf-ptype="general">
           시즌 막바지 제네시스 대상 경쟁도 뜨겁다. 함정우가 현재 5314.75점으로 제네시스 대상 포인트 1위를 달리고 있다. 그러나 상위권 선수들과 격차가 크지 않다. 
          </div>
<p dmcf-pid="4LRzeZrqB8" dmcf-ptype="general">함정우와 2위 이정환은 403.84포인트 3위 박상현과는 575.94포인트 4위 고군택과는 726.32포인트 차이다. 우승자에게는 제네시스 포인트 1,000포인트 준우승자에게는 600포인트가 주어진다. </p>
<p dmcf-pid="8U1OtN4IK4" dmcf-ptype="general">4위 고군택도 정상에 오르면 다른 선수들의 성적에 따라 제네시스 대상 포인트 1위로도 올라설 수 있다. 시즌 3승을 기록 중인 고군택은 지난 1992년 최상호 이후 31년 만에 코리안투어 시즌 4승 달성에도 도전한다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="6mcQkBYxKf" dmcf-ptype="figure">
<p class="link_figure"><img alt="지난해 골프존-도레이 오픈 우승자 박은신. /사진= KPGA" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneyweek/20231101000313341gweo.jpg" data-org-width="680" dmcf-mid="ukn9L3C2bn" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneyweek/20231101000313341gweo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            지난해 골프존-도레이 오픈 우승자 박은신. /사진= KPGA
           </figcaption>
</figure>
<div dmcf-pid="PcoVgplfKV" dmcf-ptype="general">
           '디펜딩 챔피언' 박은신은 타이틀 방어전을 치른다. 박은신은 지난해 최종합계 17언더파 271타로 '초대 챔피언'에 등극했다. 
          </div>
<p dmcf-pid="QcoVgplfq2" dmcf-ptype="general">박은신은 "스트로크 플레이 대회에서 첫 우승인 만큼 의미가 남다르다"면서 "타이틀 방어에 최선을 다할 것이다. 내 플레이에 집중한다면 좋은 결과 있을 것으로 기대한다"고 출사표를 던졌다.</p>
<p dmcf-pid="xtGDHnKwB9" dmcf-ptype="general">한종훈 기자 gosportsman@mt.co.kr<br/>&lt;저작권자 ⓒ '성공을 꿈꾸는 사람들의 경제 뉴스' 머니S, 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 머니S]</h6></div>
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