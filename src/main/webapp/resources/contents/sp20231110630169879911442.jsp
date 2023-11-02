
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
    <h3>항상 상식을 깼던 SSG, 새 감독도 파격적인 인물일까[초점]</h3><h6>이정철 기자  2023. 11. 1. 06:30</h6>
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
<section dmcf-sid="uDJZ4DMTvl">
<div dmcf-pid="7L4l7L9rCh" dmcf-ptype="general">
<p>[스포츠한국 이정철 기자] SSG 랜더스가 3년간 동행했던 김원형 감독을 전격 경질했다. 이제 새 사령탑에 대한 궁금증이 커지고 있다.</p>
</div>
<div dmcf-pid="zK1ovKHRWC" dmcf-ptype="general">
<p>SSG는 지난달 31일 "김원형 감독과 계약을 해지했다"고 밝혔다. 이로써 SSG는 김원형 감독 체제를 마무리하게 됐다.</p>
</div>
<div dmcf-pid="q9tgT9XeTI" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051265" data-type="photo" dmcf-pid="B2Fay2ZdTO" dmcf-ptype="figure">
<p class="link_figure"><img alt="김원형 감독. ⓒ연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101063012616klxl.jpg" data-org-width="500" dmcf-mid="0XD9aGEuWT" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101063012616klxl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김원형 감독. ⓒ연합뉴스
           </figcaption>
</figure>
<div dmcf-pid="btl6EtOKSs" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="KFSPDFI9Cm" dmcf-ptype="general">
<p>김원형 감독은 2021시즌부터 2023시즌까지 3시즌 동안 SSG 지휘봉을 잡았다. 지난해 정규리그에서 첫경기부터 마지막 경기까지 1위를 지키는 '와이어 투 와이어 우승'을 이끌며 지도력을 인정받았다. '와이어 투 와이어 우승'은 KBO리그 최초 기록이었다</p>
</div>
<div dmcf-pid="93vQw3C2Wr" dmcf-ptype="general">
<p>이에 SSG는 지난해 한국시리즈를 앞두고 김원형 감독에게 3년 계약을 선물하며 힘을 실어줬다. 김원형 감독은 이후 한국시리즈 우승까지 완성하며 구단의 신뢰에 보답했다.</p>
</div>
<div dmcf-pid="20Txr0hVCw" dmcf-ptype="general">
<p>디펜딩챔피언 SSG는 2023시즌 정규리그 3위를 기록했다. 하지만 준플레이오프에서 NC 다이노스에게 3패로 무너지며 다소 아쉽게 시즌을 마무리했다. 특히 세대교체를 이루지 못하며 시즌 막판 버거운 모습을 보였다. SSG는 시즌 종료 후, 김원형 감독과의 결별을 선택했다.</p>
</div>
<div dmcf-pid="Vxqw1xUNTD" dmcf-ptype="general">
<p>김원형 감독을 경질한 것은 굉장히 파격적인 선택이었다. 지난해 '와이어 투 와이어 우승'이라는 새 역사를 작성했고 통합우승도 달성했다. 올 시즌도 지난해 성적에 못 미치는 결과였지만 3위는 분명 호성적이었다. 계약기간이 2년이나 남은 상황에서 지난해 우승, 올해 가을야구에 진출한 사령탑을 경질하는 것은 이례적이다.</p>
</div>
<div dmcf-pid="fMBrtMujhE" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051266" data-type="photo" dmcf-pid="4RbmFR7Alk" dmcf-ptype="figure">
<p class="link_figure"><img alt="추신수. ⓒ연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101063014285utha.jpg" data-org-width="499" dmcf-mid="pqTeOuv8Wv" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101063014285utha.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            추신수. ⓒ연합뉴스
           </figcaption>
</figure>
<div dmcf-pid="88UcH8FLlc" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="66ukX63oyA" dmcf-ptype="general">
<p>사실 SSG는 창단부터 파격적인 행보를 여러차례 보여줬다. 메이저리그 레전드였던 추신수를 영입한 것이 신호탄이었다. 박종훈, 문승원, 한유섬 등 FA 자격을 눈앞에 둔 선수들을 장기계약으로 묶었다. 2022시즌을 앞두고는 메이저리그에서 2년 동안 선발투수로 경쟁력을 보였던 김광현까지 품었다. 불가능이라 생각했던 일들을 현실로 만들었고 통합우승까지 완성시켰다.</p>
</div>
<div dmcf-pid="PP7EZP0gCj" dmcf-ptype="general">
<p>이 뿐만이 아니다. 2023시즌을 앞두고 김성용 신임 단장을 임명했다. '우승 단장'이었던 류선규 단장을 일선에서 물러나게 한 것은 큰 사건이었다. 이번엔 세대교체를 명분으로 '우승 감독'까지 교체했다.</p>
</div>
<div dmcf-pid="Qg6vqgVsWN" dmcf-ptype="general">
<p>파격적인 행보가 지속적으로 이어지다보니 차기 사령탑에 대한 관심도 증폭되고 있다. 급기야 일각에서는 '추신수 감독설'까지 등장했다. 그동안 예상하기 힘들었던 인물이 깜짝 취임할 수 있다는 의견들이 힘을 얻고 있는 상황이다.</p>
</div>
<div dmcf-pid="xaPTBafOWa" dmcf-ptype="general">
<p>팀 창단부터 메이저리그에서 잔뼈가 굵은 선수들을 영입해 놀라움을 안겼던 SSG. 청라돔 시대를 천명하더니 우승팀 단장, 감독까지 교체했다. 새 사령탑은 누가될까. 늘 파격적이었던 SSG의 '사령탑 찾기' 행보가 주목된다.</p>
</div>
<div dmcf-pid="y3vQw3C2Tg" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051267" data-type="photo" dmcf-pid="W2Fay2Zdho" dmcf-ptype="figure">
<p class="link_figure"><img alt="SSG 정용진 구단주. ⓒ스포츠코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101063015537yrcc.jpg" data-org-width="540" dmcf-mid="UHzD5QpahS" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101063015537yrcc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            SSG 정용진 구단주. ⓒ스포츠코리아
           </figcaption>
</figure>
<div dmcf-pid="YV3NWV5JhL" dmcf-ptype="general">
<div>
</div>
<p> </p>
<p>스포츠한국 이정철 기자 2jch422@sportshankook.co.kr</p>
</div>
</section>
</div></p></section></div><h6>[Source : 스포츠한국]</h6></div>
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