
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
    <h3>신세경, 남장여자 도전…조정석과 ‘세작, 매혹된 자들’ 출연[공식]</h3><h6>황혜진  2023. 11. 1. 08:07</h6>
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
<section dmcf-sid="WBpIacPlnU">
<figure class="figure_frm origin_fig" dmcf-pid="YM4ZISatnp" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=왼쪽 위부터 시계 방향/조정석, 신세경, 박예영, 이신영/각 소속사 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsen/20231101080722569fjpf.jpg" data-org-width="650" dmcf-mid="ytwQzKHRdu" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsen/20231101080722569fjpf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=왼쪽 위부터 시계 방향/조정석, 신세경, 박예영, 이신영/각 소속사 제공
           </figcaption>
</figure>
<p dmcf-pid="GwjV3uv8J0" dmcf-ptype="general"> [뉴스엔 황혜진 기자]</p>
<p dmcf-pid="HcKWwOiHJ3" dmcf-ptype="general">배우 조정석, 신세경 등 배우들이 tvN 2024 첫 포문을 열 기대작 ‘세작, 매혹된 자들’ 출연을 확정했다. </p>
<p dmcf-pid="Xk9YrInXLF" dmcf-ptype="general">2024년 1월 첫 방송 예정인 tvN ‘세작, 매혹된 자들’(극본 김선덕/연출 조남국/제작 씨제스) 측은 11월 1일 “조정석, 신세경, 이신영, 박예영이 ‘세작, 매혹된 자들’에 출연을 확정했다”고 밝혔다. </p>
<p dmcf-pid="ZjBTEmdYMt" dmcf-ptype="general">‘세작, 매혹된 자들’은 높은 자리에 있지만 마음은 비천한 임금 이인(조정석)과 그에게 복수를 꿈꿨으나 빠져들게 된 강희수(신세경)의 잔혹한 운명을 그린 이야기를 담은 드라마. 드라마 ‘모범형사’, ‘언터처블’ 등을 통해 탄탄한 연출력을 인정받은 조남국 감독과 ‘왕이 된 남자’로 tvN표 웰메이드 사극 신화를 시작한 김선덕 작가가 의기투합했다.</p>
<p dmcf-pid="5vduYZrqe1" dmcf-ptype="general">조정석은 한없이 강하지만 애처로운 사내이자 임금인 ‘이인’ 역을 맡았다. 자신을 아껴주는 형 이선의 신하로서 충심을 다해 살겠노라 다짐하며 청나라에 인질이 돼 끌려갔지만 어느새 충심은 역심으로 비춰졌고 형마저 자신을 증오하게 된다. 고통 속에 빠져 있던 순간, ‘이름 모를 내기 바둑꾼’을 만나 마음을 온전히 빼앗겨 버린다. </p>
<p dmcf-pid="1DVHsho5d5" dmcf-ptype="general">조정석은 드라마 ‘슬기로운 의사생활’, ‘질투의 화신’, ‘오 나의 귀신님’, ‘녹두꽃’ 등으로 인정받은 탁월한 연기력을 바탕으로 멜로부터 코믹, 사극까지 아우르는 믿고 보는 배우로 손꼽힌다. 조정석이 압도적인 카리스마를 지닌 ‘임금 이인’을 통해 보여줄 또 다른 레전드 열연에 관심이 고조된다.</p>
<p dmcf-pid="tGob53C2iZ" dmcf-ptype="general">신세경은 임금의 심장으로 스며드는 여인이자 복수를 꿈꾸는 세작(細作: 신분을 감추고 비밀이나 상황을 몰래 알아내어 정보를 제공하는 첩자) 강희수 역을 맡았다. 강희수는 ‘이름 모를 내기 바둑꾼’으로 명성을 떨치던 중 진한대군 이인을 만나게 되며 속수무책으로 그에게 빠져들지만 운명의 소용돌이에 얽혀 세작으로 변모하게 된다. 신세경은 드라마 ‘런온’, ‘신입사관 구해령’, ‘흑기사’, ‘육룡이 나르샤’ 등 수많은 흥행작을 통해 폭넓은 연기 스펙트럼을 자랑한 바. 신세경이 남장여자에 도전해 보여줄 연기 변신에도 기대가 상승한다.</p>
<p dmcf-pid="Fk9YrInXeX" dmcf-ptype="general">이신영은 이인을 견제하는 외척 병조판서 김종배의 아들 김명하 역을 맡았다. 사서삼경을 통달한 사대부면서 활쏘기와 검술까지 능해 문무를 겸비했다는 말이 딱 어울리는 잘난 사내. 흠모하는 강희수에게 마음을 계속 거절당하자 돌이킬 수 없는 선택을 하고 만다. 드라마 ‘사랑의 불시착’, ‘낮과 밤’, ‘낭만닥터 김사부 3’와 영화 ‘리바운드’ 등을 통해 배우로서의 입지를 굳건히 넓히고 있는 이신영이 첫 사극에서 보여줄 활약에 기대가 높아진다.</p>
<p dmcf-pid="35jV3uv8JH" dmcf-ptype="general">박예영은 두 임금을 모시는 비밀에 둘러싸인 지밀상궁 동상궁으로 분한다. 중궁전보다 더 웃전이라고 생각할 정도로 궁중 실세이며 오랫동안 이인의 마음을 갈구해 왔다. 박예영은 드라마 ‘안나’, ‘아무것도 하고 싶지 않아’, ‘어비스’, ‘영혼수선공’, ‘갯마을 차차차’ 등에서 개성 강한 연기력을 선보인 바. 그가 사극에서는 또 어떤 매력을 펼칠지 관심을 높인다. </p>
<p dmcf-pid="0lRpyHD7dG" dmcf-ptype="general">(사진=각 소속사 제공)</p>
<p dmcf-pid="pSeUWXwzMY" dmcf-ptype="general">뉴스엔 황혜진 blossom@</p>
<p dmcf-pid="Utc4pzyPiW" dmcf-ptype="general">기사제보 및 보도자료 newsen@newsen.com copyrightⓒ 뉴스엔. 무단전재 &amp; 재배포 금지 </p>
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