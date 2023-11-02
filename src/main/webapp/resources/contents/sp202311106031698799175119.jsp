
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
    <h3>3점슛 4.7개와 22.2%…해결사가 없는 정관장의 숙제</h3><h6>안양=CBS노컷뉴스 김동욱 기자  2023. 11. 1. 06:03</h6>
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
<section dmcf-sid="6heDaGEuju">
<figure class="figure_frm origin_fig" dmcf-pid="P3wGlBYxkU" dmcf-ptype="figure">
<p class="link_figure"><img alt="최성원. KBL 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/nocut/20231101060314492ehrm.jpg" data-org-width="710" dmcf-mid="4ujSmplfjz" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/nocut/20231101060314492ehrm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            최성원. KBL 제공
           </figcaption>
</figure>
<p dmcf-pid="Q9TU5Qpaap" dmcf-ptype="general">정관장은 2022-2023시즌 통합 챔피언에 오른 뒤 선수단이 확 달라졌다.</p>
<p dmcf-pid="xyLOk1sbk0" dmcf-ptype="general">양희종의 은퇴, 오세근과 문성곤의 FA 이적, 그리고 변준형의 군입대까지. 우승 주역들이 대부분 팀을 떠났다. 게다가 1옵션 외국인 선수 오마리 스펠맨은 체중 관리에 실패로 인한 부상 탓에 시즌 초반 결장 중이다.</p>
<p dmcf-pid="yd08bN4Ia3" dmcf-ptype="general">없는 살림으로 힘겹게 버티고 있다. 하지만 한계는 분명하다. 경기 초반을 잘 풀어가고도 후반 무너지고 있다. SK와 개막전, 현대모비스전 모두 초반 리드를 지키지 못한 채 역전패를 당했다.</p>
<p dmcf-pid="WRFfqgVsoF" dmcf-ptype="general">해결사의 부재다.</p>
<p dmcf-pid="YnuQ2cPlgt" dmcf-ptype="general">정관장 김상식 감독은 10월31일 현대모비스와 홈 경기에서 75대86으로 패한 뒤 공격에 대한 아쉬움을 전했다. 특히 외곽이 말을 듣지 않았다. 3경기에서 평균 4.7개를 성공해 10개 구단 중 가장 적은 3점슛을 기록 중이다. 성공률도 22.2% 최하위다.</p>
<p dmcf-pid="GpmXvKHRo1" dmcf-ptype="general">김상식 감독은 "3경기를 보면 공격 정체가 많다. 초반 잘 나가다가 마지막에 정체되면서 상대에게 득점을 허용한다. 앞으로 해결해야 할 숙제"라면서 "집중력인 것 같다. 슛을 너무 안 던지는 것도 있다. 자꾸 던져봐야 한다. 해결책을 찾아야 한다"고 강조했다.</p>
<p dmcf-pid="HOxcLyA0k5" dmcf-ptype="general">경험 부족이 크다. 다수의 선수들이 흔히 말하는 주전으로 뛴 경험이 부족하다. 결정적인 찬스에서 슛을 못 던지는 이유다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="XBl3H8FLoZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="오마리 스펠맨. KBL 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/nocut/20231101060316016rqya.jpg" data-org-width="710" dmcf-mid="8oTU5Qpag7" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/nocut/20231101060316016rqya.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            오마리 스펠맨. KBL 제공
           </figcaption>
</figure>
<p dmcf-pid="ZtEWCzyPAX" dmcf-ptype="general">여기에 스펠맨의 공백도 영향을 미쳤다.</p>
<p dmcf-pid="5tEWCzyPgH" dmcf-ptype="general">2옵션 외국인 선수 대릴 먼로는 영리하게 농구를 한다. 다만 폭발력은 떨어진다. 듀반 맥스웰도 먼로와 비슷한 스타일. 외국인 선수에게 상대 수비가 쏠리지 않으면서 국내 선수들의 외곽 찬스도 잘 나지 않는 상황이다.</p>
<p dmcf-pid="1WoIEtOKoG" dmcf-ptype="general">김상식 감독은 "스펠맨이 있을 때는 혼자서 3점이라든지, 여러 루트의 득점 능력이 있어서 국내 선수 외곽 찬스도 난다. 지금은 찬스가 안 난다"면서 "지금 외국인 선수들도 잘해주는데 아무래도 득점을 올려줘야 수비가 안으로 쏠리면서 밖에 찬스가 난다. 그게 조금 부족하다"고 설명했다.</p>
<p dmcf-pid="tqhFG4tnaY" dmcf-ptype="general">이어 "먼로도 리딩은 좋지만, 폭발적인 득점력은 없다. 1옵션 득점이 20~30점씩 나와야 그걸 막다가 수비가 안으로 몰려 외곽 찬스가 난다. 앞으로도 힘든 경기가 예상되지만, 잘 추슬러서 준비하겠다"고 덧붙였다.</p>
<div dmcf-pid="Fd08bN4IkW" dmcf-ptype="general">
<strong>※CBS노컷뉴스는 여러분의 제보로 함께 세상을 바꿉니다. 각종 비리와 부당대우, 사건사고와 미담 등 모든 얘깃거리를 알려주세요.</strong>
<ul>
<li><strong>이메일 :</strong><span><span>jebo@cbs.co.kr</span></span></li>
<li><strong>카카오톡 :</strong><span>@노컷뉴스</span></li>
<li><strong>사이트 :</strong><span>https://url.kr/b71afn</span></li>
</ul>
</div>
<p dmcf-pid="37I1WV5Jay" dmcf-ptype="general">안양=CBS노컷뉴스 김동욱 기자 grina@cbs.co.kr</p>
<p dmcf-pid="0VW7tMujaT" dmcf-ptype="general"><span>▶ 기자와 카톡 채팅하기</span><span>▶ 노컷뉴스 영상 구독하기</span> </p>
</section>
</div></p></section></div><h6>[Source : 노컷뉴스]</h6></div>
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