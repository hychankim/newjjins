
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
    <h3>[이·팔 전쟁] 키프로스 "가자지구 잇는 해상 구호 통로 만들자"</h3><h6>김정은  2023. 11. 1. 08:46</h6>
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
<section dmcf-sid="bXjGOlg1pI">
<figure class="figure_frm origin_fig" dmcf-pid="KWcXCvNF7O" dmcf-ptype="figure">
<p class="link_figure"><img alt="2018년 촬영된 키프로스 리마솔 항구. 
[AP 연합뉴스 자료사진. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101084638373hbax.jpg" data-org-width="1200" dmcf-mid="Blzn8xUNpC" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101084638373hbax.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2018년 촬영된 키프로스 리마솔 항구. [AP 연합뉴스 자료사진. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="9YkZhTj3Us" dmcf-ptype="general">(서울=연합뉴스) 김정은 기자 = 인도주의 위기가 닥친 가자지구에서 가장 가까운 유럽연합(EU) 회원국인 키프로스가 자국에서 가자지구로 구호품을 보내는 해상 통로를 만드는 방안을 모색하고 있다.</p>
<p dmcf-pid="2GE5lyA0pm" dmcf-ptype="general">31일(현지시간) AFP, AP 통신 등에 따르면 최근 열린 EU 정상회의에서 이 같은 해상 통로 구축 방안을 제안한 니코스 크리스토두리데스 키프로스 대통령은 이날 이 문제에 대해 베냐민 네타냐후 이스라엘 총리와도 논의했다고 말했다. </p>
<p dmcf-pid="VyAHISatzr" dmcf-ptype="general">크리스토두리데스 대통령은 "키프로스는 키프로스 섬 항구들에서 가자로 구호품을 수송하는 해상 통로를 구축하는 데 기여할 준비가 돼 있다"고 밝혔다.</p>
<p dmcf-pid="fWcXCvNFFw" dmcf-ptype="general">그는 "나는 이스라엘 총리와 전화로 오랜 대화를 나눴고 이날 밤 이 제안이 이행될 수 있는지 보기 위해 (에마뉘엘 마크롱) 프랑스 대통령과도 통화할 것"이라고 말했다. </p>
<p dmcf-pid="4YkZhTj30D" dmcf-ptype="general">그는 "우리는 세부 내용에 대해 대화하고 있으며 곧 이행 단계로 나아갈 수 있기를 바란다"고 덧붙였다.</p>
<p dmcf-pid="8qW93uv87E" dmcf-ptype="general">한 고위 관리는 네타냐후 총리가 이 같은 구상에 반대하지 않았다고 전했다.</p>
<p dmcf-pid="6BY207T6pk" dmcf-ptype="general">이 관리는 아일랜드, 스페인, 프랑스 등 다수 EU 회원국은 물론 이집트, 바레인, 쿠웨이트 등 아랍권 국가들도 이 제안을 지지하고 있으며, 미국과 요르단강 서안 팔레스타인 당국에도 이번 제안에 대해 알렸다고 덧붙였다.</p>
<p dmcf-pid="P1s0WXwzuc" dmcf-ptype="general">키프로스의 제안은 구호품의 가자지구 반입을 위한 군사작전의 '인도주의적 일시 중지'가 이뤄지는 동안 대량의 구호품이 계속해서 수송되는 상황을 전제로 한다고 AP통신은 설명했다.</p>
<p dmcf-pid="QtOpYZrqzA" dmcf-ptype="general">또 해상 통로 운영과 보안 등 해상 통로 작동 방식에 대한 세부 내용에 대해서도 합의가 필요하다. </p>
<p dmcf-pid="xFIUG5mBzj" dmcf-ptype="general">소식통에 따르면 이스라엘이 가장 중요시하는 것은 구호품에 하마스가 무기화할 수 있는 품목이 포함되지 않는 것이다. 이스라엘은 또 컨테이너가 리마솔 항구 등 키프로스에서 출발하기 전에 수송 물자를 검사하기를 원하고 있다.</p>
<p dmcf-pid="yCLvDsJGzN" dmcf-ptype="general">키프로스는 EU 회원국 가운데 가자지구에서 가장 가까이에 있는 국가로, 가자지구에서 북서쪽으로 370km가량 거리에 있다. </p>
<p dmcf-pid="WhoTwOiHza" dmcf-ptype="general">키프로스는 자국은 가자지구와 가깝고 주변 아랍 국가, 이스라엘과 우호적인 외교 관계에 있어 구호품 수송을 위한 기착지로 이상적이라고 강조하고 있다. </p>
<p dmcf-pid="YlgyrInX3g" dmcf-ptype="general">지난 7일 하마스의 기습 공격에 대응해 이스라엘이 가자지구를 전면 봉쇄하고 보복 공습을 이어가면서 가자지구에서는 민간인 인명 피해가 커지고 있고 주민들은 물과 식량, 의약품, 연료 부족에 시달리고 있다.</p>
<p dmcf-pid="Go2jRibDUo" dmcf-ptype="general">가자지구의 인도적 위기에 대한 국제사회의 우려가 커지면서 지난 21일부터 이집트를 통해 구호품이 일부 반입되고 있지만 필요한 양을 고려하면 턱없이 부족한 수준이라는 지적이 나온다.</p>
<p dmcf-pid="HgVAenKw0L" dmcf-ptype="general">이에 따라 인도주의적 접근을 위한 휴전 또는 군사작전의 일시 중지를 촉구하는 목소리도 커지고 있다. </p>
<p dmcf-pid="XafcdL9r7n" dmcf-ptype="general">kje@yna.co.kr</p>
<p dmcf-pid="5GE5lyA07J" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
</section>
</div></p></section></div><h6>[Source : 연합뉴스]</h6></div>
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