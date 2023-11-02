
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
    <h3>면역력 떨어지는 환절기…'통증 끝판왕' 대상포진 주의보</h3><h6>백영미 기자  2023. 11. 1. 08:01</h6>
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
<section dmcf-sid="6D647bGMBu">
<figure class="figure_frm origin_fig" dmcf-pid="P0srgA6hVU" dmcf-ptype="figure">
<p class="link_figure"><img alt="[성남=뉴시스]﻿﻿일교차가 큰 환절기 열이 나고 으슬으슬 춥고 몸 구석구석이 쑤시면 대부분 감기 몸살을 의심한다. 하지만 감기 증상과 함께 통증까지 동반한다면 '대상포진'이 아닌지 의심해 볼 필요가 있다. 경기 성남시 중원구보건소 간호사가 한 시민에게 대상포진 예방 접종을 하고 있다. (사진= 뉴시스DB) 2021.02.24. photo@newsis.com." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsis/20231101080105537nbgh.jpg" data-org-width="640" dmcf-mid="86Bz53C297" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsis/20231101080105537nbgh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [성남=뉴시스]﻿﻿일교차가 큰 환절기 열이 나고 으슬으슬 춥고 몸 구석구석이 쑤시면 대부분 감기 몸살을 의심한다. 하지만 감기 증상과 함께 통증까지 동반한다면 '대상포진'이 아닌지 의심해 볼 필요가 있다. 경기 성남시 중원구보건소 간호사가 한 시민에게 대상포진 예방 접종을 하고 있다. (사진= 뉴시스DB) 2021.02.24. photo@newsis.com.
           </figcaption>
</figure>
<p dmcf-pid="QlidfP0gqp" dmcf-ptype="general">[서울=뉴시스] 백영미 기자 = 일교차가 큰 환절기 열이 나고 으슬으슬 춥고 몸 구석구석이 쑤시면 대부분 감기 몸살을 의심한다. 하지만 감기 증상과 함께 통증까지 동반한다면 '대상포진'이 아닌지 의심해 볼 필요가 있다. </p>
<p dmcf-pid="xD647bGM90" dmcf-ptype="general">1일 건강보험심사평가원에 따르면 2021년 기준 72만5831명의 대상포진 환자가 병원을 찾았다. 여성이 약 61%로, 남성보다 2배 가까이 많다. 연령별로는 면역력이 떨어지는 50~60대가 전체 환자의 46%로, 가장 많다. </p>
<p dmcf-pid="yTon6Muj93" dmcf-ptype="general">대상포진은 어릴 적 감염됐던 수두 바이러스가 특정한 신경에 장기간 잠복해 있다가 면역력이 떨어지면 다시 증식해 발생한다. 몸 한쪽에 띠처럼 수포가 올라오며 산통보다 극심한 통증과 다양한 합병증을 야기할 수 있다.</p>
<p dmcf-pid="WxF1vYkUKF" dmcf-ptype="general">최영준 강북삼성병원 피부과 교수는 "초기에는 감기 몸살과 유사한 증상과 함께 피로감, 발열, 신체 특정 부위 통증을 동반하고 약 일주일 뒤 수두 바이러스가 침범한 신경절(신경세포체 집합)을 따라 붉은 피부 발진이 띠처럼 나타난다"면서 "피부 발진은 물집으로 변하는데, 물집도 한 줄로 분포한다"고 말했다.</p>
<p dmcf-pid="YD647bGMqt" dmcf-ptype="general">환자들이 호소하는 대상포진 통증은 ▲칼에 베인 것처럼 쓰라리다 ▲화끈거리고 뻐근하고 저리다 ▲옷깃만 스쳐도 자지러지게 아프다 ▲콕콕 쑤신다 ▲가렵다 등 발생 부위에 따라 다양하다.</p>
<p dmcf-pid="GALi8xUNb1" dmcf-ptype="general">대상포진이 의심되면 가능한 빨리 통증 등 증상을 완화하고 합병증 위험을 줄여야 한다. 피부 발진 등 증상이 확인된 후 3일 내 항바이러스 치료제를 투여하는 것이 중요하다. 항바이러스제를 투여하면 피부 병변과 통증이 줄어든다. </p>
<p dmcf-pid="HaJeV63o25" dmcf-ptype="general">보통 대상포진에 따른 피부 발진은 2~3주, 통증은 1~3개월 내 회복된다. 통증이 극심하거나 고령자인 경우 입원 치료를 고려할 수 있다. 통증이 심하면 수면 장애, 피로, 우울증을 야기할 수 있어 진통제를 사용할 수도 있다. 대상포진은 치료 후 피부 흉터 관리도 중요하다. 띠 모양의 붉은색 피부 발진이 수두와 비슷한 물집으로 변했다가 딱지가 가라앉으면서 흉터가 남을 수 있다. </p>
<p dmcf-pid="Xlmwoj8C9Z" dmcf-ptype="general">대상포진은 초기에 적절히 치료하지 못하면 바이러스가 침범한 부위에 따라 폐렴, 소변 장애, 얼굴 마비, 실명 등 합병증이 남을 수 있다. 대표적인 합병증은 대상포진 통증이 치료를 해도 잘 낫지 않고 한 달 이상 지속되는 '대상포진 후 신경통'이다. </p>
<p dmcf-pid="ZkgLPR7AqX" dmcf-ptype="general">최 교수는 "대상포진 환자의 10~40%까지 발생하는 것으로 보고되고 있다"면서 "환자의 상태에 따라 신경 차단술, 교감신경 차단술, 박동성 고주파 시술 등 신경 치료가 필요할 수도 있다"고 말했다.</p>
<p dmcf-pid="5WhIADMTqH" dmcf-ptype="general">대상포진을 예방하려면 평소 신체 면역력이 떨어지지 않도록 건강 관리에 힘써야 한다. 50세 이상은 대상포진 예방 접종이 권고된다. 최근 대상포진을 앓았다면 대상포진 급성기 증상이 지난 6개월~1년 뒤 예방 접종이 권장된다. </p>
<p dmcf-pid="1ALi8xUN2G" dmcf-ptype="general">최 교수는 "대상포진은 빠른 진단과 신속한 항바이러스제 투여, 통증 조절, 신경 주변 염증 회복 촉진 등과 함께 1주일 이상의 휴식이 매우 중요하다"면서 "수두 바이러스의 재활성화를 막기 위해 스트레스와 과로를 줄이고 균형 잡힌 식사와 적절한 운동으로 면역력을 관리해야 한다"고 강조했다.</p>
<p dmcf-pid="tcon6MujqY" dmcf-ptype="general"><span>☞공감언론 뉴시스</span> positive100@newsis.com </p>
</section>
</div></p></section></div><h6>[Source : 뉴시스]</h6></div>
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