
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
    <h3>'KPGA 프로골프 구단 리그' 우성종합건설, 2023 시즌 첫 승 달성… 랭킹 2계단 상승</h3><h6>김선영  2023. 10. 31. 15:14</h6>
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
<section dmcf-sid="qaGvOMujbA">
<figure class="figure_frm origin_fig" dmcf-pid="Bdlskf1iqj" dmcf-ptype="figure">
<p class="link_figure"><img alt="백송홀딩스-아시아드CC 부산오픈에서 우승한 우성종합건설 소속의 엄재웅 [KPGA 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/maniareport/20231031151459856tznm.jpg" data-org-width="540" dmcf-mid="7pcgdplffk" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/maniareport/20231031151459856tznm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            백송홀딩스-아시아드CC 부산오픈에서 우승한 우성종합건설 소속의 엄재웅 [KPGA 제공]
           </figcaption>
</figure>
<p dmcf-pid="bsUtGN4IbN" dmcf-ptype="general">우성종합건설이 2023 시즌 KPGA 코리안투어에서 첫 승을 달성했다.</p>
<p dmcf-pid="KI73XA6hBa" dmcf-ptype="general">우성종합건설 소속의 엄재웅은 지난 29일 종료된 ‘백송홀딩스-아시아드CC 부산오픈’에서 최종합계 15언더파 269타로 약 5년 1개월만에 통산 2승을 달성했다. </p>
<p dmcf-pid="9AZWhdqk9g" dmcf-ptype="general">2023 시즌 우성종합건설 소속 선수로서 들어올린 첫 우승컵이다.</p>
<p dmcf-pid="28wALzyP2o" dmcf-ptype="general">엄재웅의 우승에 힘입어 우성종합건설은 27,201.91포인트로 ‘KPGA 프로골프 구단 리그’ 구단 랭킹 7위에서 2계단 상승한 5위에 올랐다. </p>
<p dmcf-pid="VpJxfGEuKL" dmcf-ptype="general">‘백송홀딩스-아시아드CC 부산오픈’에는 엄재웅을 비롯해 강태영, 김재호, 이규민, 변진재지 총 5명의 우성종합건설 소속 선수가 출전했다. </p>
<p dmcf-pid="fMIwj9Xe2n" dmcf-ptype="general">이 중 엄재웅이 우승, 변진재가 공동 24위, 김재호가 공동 46위 등의 성적을 거두며 총 1,199포인트를 따냈다. </p>
<p dmcf-pid="44Djn7T6Vi" dmcf-ptype="general">한편 현재 ‘KPGA 프로골프 구단 리그’ 구단 랭킹 1위는 38,736.22포인트를 쌓은 CJ다. 2위와 3위는 각각 33,989.05포인트, 32,834.82포인트를 획득한 하나금융그룹과 우리금융그룹이다.</p>
<p dmcf-pid="8nTCw63oBJ" dmcf-ptype="general">4위는 금강주택이며 5위 우성종합 건설에 이어 team속초아이와 대보건설 ‘백송홀딩스-아시아드CC 부산오픈’ 종료 후 1계단씩 하락해 6위와 7위에 랭크됐다.</p>
<p dmcf-pid="6w3Zyo2m2d" dmcf-ptype="general">‘KPGA 프로골프 구단 리그’ 선수 랭킹 1위는 ‘현대해상 최경주 인비테이셔널’에서 우승컵을 들어올린 하나금융그룹의 함정우다. 함정우는 5319.75포인트를 획득했다.</p>
<p dmcf-pid="P4Djn7T6qe" dmcf-ptype="general">2위는 4935.91포인트를 쌓고 있는 team속초아이의 이정환이다. 이정환은 올 시즌 20개 대회서 준우승 3회 포함 TOP10에 9회나 진입하는 활약을 보이고 있다. 3위와 4위는 대보건설의 고군택, 하나금융그룹의 한승수다.</p>
<p dmcf-pid="Q6rcoqWQqR" dmcf-ptype="general">[김선영 마니아타임즈 기자 / scp2146@maniareport.com]</p>
<p dmcf-pid="xMIwj9XeBM" dmcf-ptype="general">기사제보 및 보도자료 report@maniareport.com</p>
</section>
</div></p></section></div><h6>[Source : 마니아타임즈]</h6></div>
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