
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
    <h3>일본 ‘천재 바둑소녀’ 한국행…“한국에서 강해지고 싶다”</h3><h6>지종익  2023. 10. 31. 23:56</h6>
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
<section dmcf-sid="9q8Ogplfyd">
<div class="video_frm" dmcf-pid="257NQYkUve" dmcf-ptype="kakaotv">
<div class="layer_vod">
<div class="vod_player">
<iframe allowfullscreen="" class="player_iframe" dmcf-mid="bPhlAzyPSi" dmcf-mtype="video/kakaotv/owner" dmcf-poster-mid="KXIb5gVsyJ" frameborder="0" height="370" id="video@bPhlAzyPSi" poster="https://t1.daumcdn.net/news/202310/31/kbs/20231031235639684pwxq.jpg" scrolling="no" src="//tv.kakao.com/embed/player/cliplink/442133867?service=daum_news&amp;m_use_inline=true&amp;ios_allow_inline=true&amp;m_prevent_sdk_use=true&amp;wmode=opaque" width="100%"></iframe>
</div>
</div>
</div>
<p dmcf-pid="V1zjxGEuyR" dmcf-ptype="general"> [앵커]</p>
<p dmcf-pid="ftqAMHD7yM" dmcf-ptype="general">일본에서 천재 바둑소녀의 한국 이적 소식이 큰 화제가 되고 있습니다.</p>
<p dmcf-pid="4KQhj7T6Tx" dmcf-ptype="general">14살 나카무라 스미레가 그 주인공인데, 한국에서 더 성장해 국제무대에서 활약하고 싶다고, 포부를 밝혔습니다.</p>
<p dmcf-pid="89xlAzyPyQ" dmcf-ptype="general">일본 사회는 바둑 인재 유출을 우려하고 있습니다.</p>
<p dmcf-pid="62MScqWQTP" dmcf-ptype="general">도쿄 지종익 특파원 보도입니다.</p>
<p dmcf-pid="PB6IaUS4S6" dmcf-ptype="general">[리포트]</p>
<p dmcf-pid="QbPCNuv8W8" dmcf-ptype="general">올해 열 네살의 프로 바둑 기사, 나카무라 스미레가 기자회견장에 섰습니다.</p>
<p dmcf-pid="xjsqXL9rW4" dmcf-ptype="general">지난 8월 한국 기원에 낸 이적 신청이 받아들여지면서 입장을 밝히러 나온 겁니다.</p>
<p dmcf-pid="yp9DJ1sbhf" dmcf-ptype="general">[나카무라 스미레/일본 바둑 기사/14살 : "보다 높은 수준의 환경에서 공부하는 것이 지금의 저에게는 필요하다고 생각해서 이렇게 결단하게 됐습니다."]</p>
<p dmcf-pid="WU2witOKhV" dmcf-ptype="general">세 살 때 바둑을 시작한 스미레는 일곱 살에 한국으로 건너와 잠시 바둑 실력을 쌓았습니다.</p>
<p dmcf-pid="Yrvf0cPlC2" dmcf-ptype="general">스미레가 두각을 나타내자 일본 기원은 첫 영재 특별전형으로 입단시켰습니다.</p>
<p dmcf-pid="GmT4pkQSy9" dmcf-ptype="general">열 살의 나이에 일본 최연소 프로 기사가 된 겁니다.</p>
<p dmcf-pid="Hsy8UExvvK" dmcf-ptype="general">스미레는 결국 국제무대에서 훌륭한 기사로 성장할 수 있는 환경에서 배우고 싶다며 고심 끝에 다시 한국행을 선택했습니다.</p>
<p dmcf-pid="XPnGmV5Jyb" dmcf-ptype="general">[나카무라 스미레/일본 바둑 기사/14살 : "한국은 강한 기사가 많고, 대국 수도 많기 때문에, 항상 긴장감을 갖고 생활하면 더 강해질 수 있지 않을까 생각합니다."]</p>
<p dmcf-pid="ZQLHsf1iCB" dmcf-ptype="general">한 때 바둑 강국이었던 만큼 일본 언론들도 큰 관심을 나타내고 있습니다.</p>
<p dmcf-pid="5xoXO4tnSq" dmcf-ptype="general">마이니치신문은 스미레의 이적은 일본 바둑계의 큰 손실이라며 우려했습니다.</p>
<p dmcf-pid="1MgZI8FLhz" dmcf-ptype="general">NHK는 주요 뉴스에서 일본 바둑의 경쟁력이 약화됐다고 꼬집었습니다.</p>
<p dmcf-pid="t4dyDKHRS7" dmcf-ptype="general">[NHK 뉴스 : "이 국제기전에서는 과거 일본 기사의 우승도 있었지만, 그 후에는 중국과 한국이 각축을 벌이고 있습니다."]</p>
<p dmcf-pid="F8JWw9Xelu" dmcf-ptype="general">일본인 바둑 기사의 해외 이적은 이번이 처음입니다.</p>
<p dmcf-pid="36iYr2ZdCU" dmcf-ptype="general">천재 바둑 소녀의 한국행을 놓고 일본 사회에선 국제무대에서 뒤 쳐지고 있는 게 아니냐는 우려의 목소리가 커지고 있습니다.</p>
<p dmcf-pid="06iYr2Zdhp" dmcf-ptype="general">도쿄에서 KBS 뉴스 지종익입니다. </p>
<div dmcf-pid="pPnGmV5Jv0" dmcf-ptype="general">
           촬영:안병욱/영상편집:김인수/자료조사:문종원
           <br/>
<div>
<br/>■ 제보하기
            <br/>▷ 전화 : 02-781-1234, 4444
            <br/>▷ 이메일 : kbs1234@kbs.co.kr
            <br/>▷ 카카오톡 : 'KBS제보' 검색, 채널 추가
            <br/>▷ 카카오 '마이뷰', 유튜브에서 KBS뉴스를 구독해주세요!
           </div>
</div>
<p dmcf-pid="UQLHsf1il3" dmcf-ptype="general">지종익 기자 (jigu@kbs.co.kr)</p>
</section>
</div></p></section></div><h6>[Source : KBS]</h6></div>
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