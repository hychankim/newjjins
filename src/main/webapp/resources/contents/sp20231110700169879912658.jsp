
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
    <h3>‘158km’ 세이브왕, KS 앞두고 비밀무기 만들다…“삼진 비율이 확 올라갈거다”</h3><h6>한용섭  2023. 11. 1. 07:00</h6>
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
<section dmcf-sid="GmfuvKHRnl">
<figure class="figure_frm origin_fig" dmcf-pid="H6WsJSatih" dmcf-ptype="figure">
<p class="link_figure"><img alt="LG 고우석 / OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101070023438cxgf.jpg" data-org-width="650" dmcf-mid="QmBUSbGMiW" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101070023438cxgf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LG 고우석 / OSEN DB
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="X9hkQsJGiC" dmcf-ptype="figure">
<p class="link_figure"><img alt="LG 고우석 / OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101070024031uobi.jpg" data-org-width="650" dmcf-mid="xIEN4DMTMy" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101070024031uobi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LG 고우석 / OSEN DB
           </figcaption>
</figure>
<p dmcf-pid="Z9hkQsJGnI" dmcf-ptype="general">[OSEN=잠실, 한용섭 기자] LG 트윈스 강속구 마무리 투수 고우석이 또 한 단계 발전을 위해 도전한다. 포크볼 구종을 새로 익히고 있는데, 한국시리즈에서 회심의 무기로 던질 수도 있다. </p>
<p dmcf-pid="5kbFI7T6JO" dmcf-ptype="general">고우석은 지난 10월 29일 잠실구장에서 치른 청백전에서 포크볼을 선보였다. 고우석은 3-0으로 앞선 8회 청팀 투수로 등판해 3점을 허용하며 무승부로 경기가 끝났다. 컨디션 조절 차원에서 처음 등판한 청백전에서 장타를 많이 허용했다. </p>
<p dmcf-pid="1auXw3C2es" dmcf-ptype="general">고우석은 1사 후 홍창기를 볼넷으로 내보냈고, 박해민에게 우측 펜스를 원바운드로 맞는 3루타를 맞아 1점을 허용했다. 이어 김현수를 1루수 땅볼로 아웃을 잡으며 3루주자의 득점을 허용했다. </p>
<p dmcf-pid="tMXhoWcpem" dmcf-ptype="general">2아웃 주자 없는 상황에서 오스틴에게 좌중간 담장을 넘어가는 동점 솔로 홈런을 맞았다. 그런데 홈런을 맞은 공이 포크볼(146km)이었다. 비거리 129.3m의 대형 홈런이었다. 고우석은 직구와 커터,  커브를 던지는데 포크볼은 평소 던지지 않는 구종이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="FUDL9A6hLr" dmcf-ptype="figure">
<p class="link_figure"><img alt="LG 고우석 / OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101070025400ufat.jpg" data-org-width="650" dmcf-mid="yL5Yk1sbnT" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101070025400ufat.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LG 고우석 / OSEN DB
           </figcaption>
</figure>
<p dmcf-pid="3ydf1xUNJw" dmcf-ptype="general">염경엽 감독은 31일 잠실구장에서 고우석이 오스틴에게 홈런 맞은 포크볼에 대해 설명했다. 그는 “고우석이 새로운 구종으로 포크볼을 연습하고 있다. 내년도 있으니까, 준비하는 것이다”고 언급했다. </p>
<p dmcf-pid="0BOj8wRydD" dmcf-ptype="general">이어 “포크볼이 140km대로 떨어져야 한다. (146km) 너무 빨랐다. 포크볼 연습을 하는데, 스피드를 더 떨어뜨려야 한다고 얘기를 했다. 연습 때 143~144km 나오더라. 경기에서 세게 던지니까 146km까지 나왔다. 포크볼이 140km 정도 나와야 굉장히 효과적이 된다. 직구가 150km 넘으니까 구속 차이를 줘야 한다. 최대 관건은 포크볼 스피드를 139~141km대로 떨어뜨는 것이다. 그렇게 되면 한국시리즈에서도 던질 수 있을 것”이라고 설명했다. </p>
<p dmcf-pid="ppEnKj8CLE" dmcf-ptype="general">고우석은 155~158km까지 나오는 강속구와 140km 중반의 커터(슬라이더), 그리고 커브를 던진다. 변화구는 주로 커터를 많이 던진다. 그런데 스피드가 빨라 직구 타이밍에 맞기도 한다. 커브는 많이 던지지 않는 편이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="UfvwRCLZRk" dmcf-ptype="figure">
<p class="link_figure"><img alt="LG 고우석 / OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101070026565tjwm.jpg" data-org-width="650" dmcf-mid="Wm0Yk1sbev" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101070026565tjwm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LG 고우석 / OSEN DB
           </figcaption>
</figure>
<p dmcf-pid="uiFyAZrqJc" dmcf-ptype="general">염 감독은 "우석이는 오프스피드 공이 없다. 마무리들은 거의 빠른 공과 오프스피드 계열의 변화구를 던진다. 그런 투수들이 어느 리그나 성공을 하고 있다”며 “우석이가 그런 생각을 가졌다는 것만 해도 엄청난 발전이라고 본다. 어쨌든 한국시리즈에서 던질지 안 던질지는 모르겠지만, 내년 스프링캠프까지 연습하면 완전히 큰 무기가 될 수 있을 것이다”고 말했다. </p>
<p dmcf-pid="7pEnKj8CMA" dmcf-ptype="general">이어 "세이브 투수는 1사 3루에도 삼진으로 막을 수 있는 결정구를 꼭 하나를 갖고 있어야 최고의 세이브 투수라고 얘기할 수 있는 거니까. 1사 3루에서 2스트라이크만 잡으면, 벤치에서도 팬들도 ‘됐어’라고 생각하게 된다. 삼진 비율이 확 올라갈 것"이라고 덧붙였다. </p>
<p dmcf-pid="zuwo2cPlMj" dmcf-ptype="general">염 감독은 “우석이는 삼진 비율이 떨어지면 힘들다. 투구 수가 늘어난다. 보통 (1이닝) 20개다. 사실 우석이 공이면 15개면 끝내야 한다. 1이닝을 최소 15개로 끝낼 수 있는 가장 큰 장점을 갖고 있지 않나. 우리나라에서 최고의 빠른 볼을 던지는 세이브 투수가 오프스피드 계열의 공 하나만 확실한 것이 있으면 완전히 또 다른 투수가 된다”고 강조했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="qBOj8wRydN" dmcf-ptype="figure">
<p class="link_figure"><img alt="LG 고우석이 포수 박동원과 하이파이브를 나누고 있다. / OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101070027118pxoh.jpg" data-org-width="650" dmcf-mid="YQ0Yk1sbRS" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101070027118pxoh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LG 고우석이 포수 박동원과 하이파이브를 나누고 있다. / OSEN DB
           </figcaption>
</figure>
<p dmcf-pid="BcBtOuv8ia" dmcf-ptype="general">/orange@osen.co.kr</p>
</section>
</div></p></section></div><h6>[Source : OSEN]</h6></div>
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