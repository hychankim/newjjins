
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
    <h3>‘선발 보강 필수’ LA 다저스, 트레이드로 번스 노린다</h3><h6>동아닷컴 조성운 기자  2023. 11. 1. 06:45</h6>
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
<section dmcf-sid="39T6UibDIb">
<div dmcf-pid="0e3o4DMTwB" dmcf-ptype="general">
            [동아닷컴] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="pd0g8wRysq" dmcf-ptype="figure">
<p class="link_figure"><img alt="코빈 번스. 사진=게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101064550706chph.jpg" data-org-width="1200" dmcf-mid="tXS40dqkI9" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101064550706chph.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            코빈 번스. 사진=게티이미지코리아
           </figcaption>
</figure>
<div dmcf-pid="U3wzG4tnwz" dmcf-ptype="general">
           [동아닷컴]
          </div>
<p dmcf-pid="u0rqH8FLr7" dmcf-ptype="general">선발진의 공백을 뼈저리게 느낀 LA 다저스가 트레이드 시장에서 사이영상 수상 경력의 에이스급 투수를 영입하게 될까?</p>
<p dmcf-pid="7pmBX63oEu" dmcf-ptype="general">메이저리그 공식 홈페이지 MLB.com은 1일(한국시각) 이번 오프 시즌 중 LA 다저스의 선발진 보강에 대해 언급했다.</p>
<p dmcf-pid="zuOK5QpamU" dmcf-ptype="general">이는 자유계약(FA)시장에서의 계약이 아닌 트레이드를 통한 영입. 거론된 선수는 2년 전 내셔널리그 사이영상을 받은 코빈 번스(29)다.</p>
<p dmcf-pid="q7I91xUNIp" dmcf-ptype="general">LA 다저스는 현재 선발진 보강이 필요한 상태. 이번 내셔널리그 디비전시리즈(NLDS)에서 선발 마운드의 붕괴로 조기 탈락했다.</p>
<p dmcf-pid="BzC2tMujE0" dmcf-ptype="general">현재 LA 다저스는 오타니 쇼헤이 영입의 선두주자. 하지만 오타니의 영입이 2024시즌 선발진의 보강으로 이어지지는 않는다. 이는 오타니가 수술을 받았기 때문.</p>
<p dmcf-pid="bqhVFR7AI3" dmcf-ptype="general">또 LA 다저스가 오타니를 영입 외에 추가적인 큰 지출 대신 트레이드를 통해 선발진 보강을 노릴 것이라는 것. 오타니+정상급 선발투수와의 계약은 부담이 크다.</p>
<p dmcf-pid="K9T6UibDOF" dmcf-ptype="general">번스는 이번 시즌 밀워키 브루어스 소속으로 32경기에서 193 2/3이닝을 던지며, 10승 8패와 평균자책점 3.39르르 기록했다.</p>
<p dmcf-pid="92yPunKwOt" dmcf-ptype="general">사이영상 수상 시즌에 비해서는 성적이 떨어졌으나, 여전히 리그 에이스급 오른손 선발투수. 한 경기를 확실하게 책임질 수 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="2VWQ7L9rD1" dmcf-ptype="figure">
<p class="link_figure"><img alt="코빈 번스. 사진=게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101064552276mxll.jpg" data-org-width="1200" dmcf-mid="FznXsUS4sK" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101064552276mxll.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            코빈 번스. 사진=게티이미지코리아
           </figcaption>
</figure>
<div dmcf-pid="Vr6hNHD7O5" dmcf-ptype="general">
           또 번스는 2024시즌 이후 FA 자격을 얻을 뿐 아니라, 이번 시즌을 앞두고 밀워키와의 연봉 조정 때 불편한 심기를 나타냈다.
          </div>
<p dmcf-pid="fmPljXwzDZ" dmcf-ptype="general">즉 밀워키는 2024시즌 이후 FA 자격을 얻는 번스를 잡기 어려워졌기 때문에 트레이드 카드로 쓸 가능성도 충분히 있다.</p>
<p dmcf-pid="4sQSAZrqOX" dmcf-ptype="general">물론 밀워키는 에이스급에 어울리는 대가를, LA 다저스는 최소한의 출혈로 에이스급 투수 확보를 노릴 것이다. </p>
<p dmcf-pid="8CRyEtOKOH" dmcf-ptype="general">선발진 공백을 뼈저리게 느낀 LA 다저스. 트레이드 시장에 나올 수도 있는 번스를 확보해 달라진 모습을 보일 수 있을지 주목된다.</p>
<p dmcf-pid="6heWDFI9sG" dmcf-ptype="general">동아닷컴 조성운 기자 madduxly@donga.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠동아]</h6></div>
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