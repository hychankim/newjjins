
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
    <h3>[단독] 비투비, 큐브와 완전체 재계약 미지수…계약금 60억설 난무</h3><h6>이세빈  2023. 11. 1. 06:00</h6>
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
<section dmcf-sid="q0i9VkQSaW">
<figure class="figure_frm origin_fig" dmcf-pid="BCBHZP0gNy" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=큐브 엔터테인먼트 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060014662thje.jpg" data-org-width="600" dmcf-mid="ziQuzo2mNY" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060014662thje.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=큐브 엔터테인먼트 제공
           </figcaption>
</figure>
<div dmcf-pid="b7g46reWkT" dmcf-ptype="general">
<br/>그룹 비투비와 소속사 큐브엔터테인먼트의 완전체 재계약이 미지수다.
           <br/>
<br/>31일 가요계 관계자들에 따르면 비투비와 큐브 엔터테인먼트(이하 큐브)는 두 번째 재계약 협의에서 합의점을 아직 찾지 못하고 있다. 멤버 6명 중 5명의 계약기간이 만료된 상황이지만 비투비 멤버들의 다음 행보는 아직 확정되지 않은 상황이다.
           <br/>
<br/>큐브 측은 멤버들과 마지막까지 가능성을 열어두고 협의에 나선다는 방침을 정한 것으로 알려졌다. 하지만 멤버들은 다른 기획사 이적 가능성도 염두에 두고 현재 복수의 기획사들과 접촉 중인 것으로 전해졌다.
           <br/>
<br/>비투비 멤버들은 새로운 소속사로 이적하더라도 그룹 활동을 이어가고 싶어하는 것으로 보인다. 관건은 계약금이 될 것으로 관측된다. 멤버들이 접촉한 기획사들에 단체 계약금으로 60억 원을 제시했다는 이야기까지 나오고 있다. 하지만 최근의 경기 상황을 감안하면 쉽지 않은 금액이라는 소리도 같이 들린다.
           <br/>
<br/>비투비는 서은광 이민혁 임현식 이창섭 프니엘 육성재가 멤버로 지난 2012년 데뷔했다. ‘두 번째 고백’, ‘집으로 가는 길’, ‘봄날의 기억’, ‘기도’, ‘그리워하다’, ‘너 없인 안 된다’ 등 다수의 히트곡을 발매하며 국내외 팬들의 사랑을 받았다. 지난 5월 열두 번째 미니 앨범 ‘윈드 앤드 위시’를 발매했다. 멤버들 개개인도 재능이 빼어난 그룹인데 특히 막내 육성재는 드라마 ‘도깨비’, ‘쌍갑포차’, ‘금수저’ 등을 통해 선보인 연기력, 예능 ‘집사부일체’, ‘정글의 법칙’ 등에서 뽐낸 예능감으로도 주가를 높였다. 
           <br/>
<br/>비투비는 지난 2018년 큐브와 한 차례 완전체 재계약을 체결했다. 그 동안 큐브의 간판 보이그룹으로도 입지를 다져왔다. 평소 비투비는 그룹, 멤버에 대한 남다른 애정을 드러내왔다. 최근 개최된 임현식 단독 콘서트에 멤버 전원이 게스트로 출연해 ‘그리워하다’, ‘우리들의 콘서트’를 열창하는 등 의리를 과시했을 정도로 멤버들 간 신뢰가 두텁다. 
           <br/>
<br/>이번 재계약 여부는 특히 그룹으로서 비투비의 존속여부와도 직결될 것으로 보여 더욱 관심이 쏠린다. 멤버들 각각 재능이 있는 터라 각기 다른 소속사에서 들어갈 경우 그룹 활동 가능성을 열어두더라도 개별 활동에 돌입하면 그룹활동을 위한 시간을 맞추기가 여간 어렵지 않을 것으로 보이기 때문이다.
           <br/>
<br/>비투비가 어떤 선택을 할지 지켜볼 일이다.
           <br/>
<br/>이세빈 기자 sebi0525@edaily.co.kr
          </div>
</section>
</div></p></section></div><h6>[Source : 일간스포츠]</h6></div>
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