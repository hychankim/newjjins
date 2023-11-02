
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
    <h3>박보영·연우진·김영대·표예진 온다…‘개그콘서트’의 부활 [오늘의 프리뷰]</h3><h6>손진아 MK스포츠 기자(jinaaa@mkculture.com)  2023. 11. 1. 07:03</h6>
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
<section dmcf-sid="8zCibN4IHn">
<p dmcf-pid="6gqTjXwzHi" dmcf-ptype="general">바쁘게 돌아가는 연예계에서 오늘도 다양한 작품이 소개되고 새롭게 돌아오는 아티스트가 대중 앞에 서는 가운데, 오늘의 주요 일정을 알아본다.</p>
<div dmcf-pid="PaByAZrqYJ" dmcf-ptype="general">
<div>
<strong>믿고 보는 따뜻한 배우들의 조합</strong>
</div>11월 1일 오전 넷플릭스 시리즈 ‘정신병동에도 아침이 와요’ 제작발표회가 열린다. 자리에는 배우 박보영, 연우진, 장동윤, 이정은, 이재규 감독이 참석한다.
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="QzCibN4I5d" dmcf-ptype="figure">
<p class="link_figure"><img alt="11월 1일 오전 넷플릭스 시리즈 ‘정신병동에도 아침이 와요’ 제작발표회가 열린다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101070305080niqw.jpg" data-org-width="500" dmcf-mid="9n0bG4tn1N" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101070305080niqw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            11월 1일 오전 넷플릭스 시리즈 ‘정신병동에도 아침이 와요’ 제작발표회가 열린다.
           </figcaption>
</figure>
<div dmcf-pid="xqhnKj8C1e" dmcf-ptype="general">
           ‘정신병동에도 아침이 와요’는 정신건강의학과 근무를 처음 하게 된 간호사 다은이 정신병동 안에서 만나는 세상과 마음 시린 사람들의 다양한 이야기를 그린 넷플릭스 시리즈로, 동명 웹툰이 원작이다. 넷플릭스 시리즈 ‘지금 우리 학교는’, 영화 ‘완벽한 타인’ 등으로 섬세한 연출을 선보여 온 이재규 감독과 드라마 ‘힙하게’, ‘눈이 부시게’ 등을 통해 폭넓은 공감대를 쌓아온 이남규 작가가 의기투합한 작품이다.
          </div>
<div dmcf-pid="yVWj8wRyYR" dmcf-ptype="general">
<div>
<strong>김영대·표예진의 만남</strong>
</div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="WfYA6reWHM" dmcf-ptype="figure">
<p class="link_figure"><img alt="ENA 수목드라마 ‘낮에 뜨는 달’이 이날 제작발표회를 개최한다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101070306480kkly.jpg" data-org-width="500" dmcf-mid="2heafExvYa" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101070306480kkly.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ENA 수목드라마 ‘낮에 뜨는 달’이 이날 제작발표회를 개최한다.
           </figcaption>
</figure>
<div dmcf-pid="YBlL9A6htx" dmcf-ptype="general">
           ENA 수목드라마 ‘낮에 뜨는 달’이 이날 제작발표회를 개최하는 가운데, 표민수 감독, 김영대, 표예진, 온주완, 정웅인이 참석해 다양한 이야기를 전한다.
          </div>
<p dmcf-pid="GbSo2cPlHQ" dmcf-ptype="general">‘낮에 뜨는 달’은 사랑하는 연인에게 살해당한 뒤 시간이 멈춰버린 남자와 전생의 기억을 잃고 한없이 흘러가버린 여자의 위험하고 애틋한 환생 로맨스 드라마다. 배우 김영대는 자타 공인 대한민국 톱스타 한준오 역과 가야를 멸하는 데 앞장선 백전백승의 신라 대장군 도하 역을, 표예진은 소방 구조 대원 출신 보디가드 강영화 역과 홀로 살아남은 대가야 귀족 한리타 역을 통해 1인 2역 연기를 선보인다.</p>
<div dmcf-pid="HbSo2cPl1P" dmcf-ptype="general">
<div>
<strong>위클리의 유쾌한 ‘일탈’</strong>
</div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="XKvgVkQSt6" dmcf-ptype="figure">
<p class="link_figure"><img alt="위클리가 컴백 쇼케이스를 열고 새로운 앨범에 관한 이야기를 전한다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101070307697avpf.jpg" data-org-width="500" dmcf-mid="VT7SaGEuYg" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101070307697avpf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            위클리가 컴백 쇼케이스를 열고 새로운 앨범에 관한 이야기를 전한다.
           </figcaption>
</figure>
<div dmcf-pid="Z9TafExvG8" dmcf-ptype="general">
           위클리의 미니 5집 ‘컬러라이즈’ 11월 1일 오후 6시 주요 음원 사이트 등지를 통해 공개된다. 이에 앞서 위클리는 컴백 쇼케이스를 열고 새로운 앨범에 관한 이야기를 전한다.
          </div>
<p dmcf-pid="5kVXw3C2H4" dmcf-ptype="general">위클리의 미니 5집 ‘컬러라이즈’는 ‘Color’ 그리고 ‘Rise’를 합친 말로 가요계를 위클리의 색으로 물들이고 더 비상할 것이라는 당찬 포부를 담은 앨범이다. 타이틀곡으로 낙점된 위클리의 ‘VROOM VROOM(브룸 브룸)’ 뮤직비디오는 이채연, 트와이스, 아이유 등 정상급 아티스트와 호흡을 맞춘 나이브 프로덕션이 메가폰을 잡아 위클리의 성장기를 세련된 영상미로 그려낸다. 또한, ‘스우파’의 주역 라치카가 퍼포먼스 디렉터를 맡는 등 K팝 씬의 주축을 이루는 초호화 라인업이 총출동한다.</p>
<div dmcf-pid="1EfZr0hVGf" dmcf-ptype="general">
<div>
<strong>록킹돌 로아, 강렬 카리스마로 돌아온다</strong>
</div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="taByAZrq5V" dmcf-ptype="figure">
<p class="link_figure"><img alt="록킹돌 로아도 이날 오후 오프라인 미디어 쇼케이스를 열고 컴백한다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101070308924qgyg.jpg" data-org-width="500" dmcf-mid="fyd7T9XeXo" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101070308924qgyg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            록킹돌 로아도 이날 오후 오프라인 미디어 쇼케이스를 열고 컴백한다.
           </figcaption>
</figure>
<div dmcf-pid="FNbWc5mBt2" dmcf-ptype="general">
           록킹돌 로아도 이날 오후 오프라인 미디어 쇼케이스를 열고 컴백한다.
          </div>
<p dmcf-pid="3A9GEtOKZ9" dmcf-ptype="general">Z세대 걸그룹 록킹돌(Rocking doll) 로아의 미니 1집 ‘LIAR’는 수줍은 소녀의 모습에서 분노하는 카리스마 있는 모습까지 SKIP 불가한 아이콘으로 K팝 시장에 도전장을 내미는 당당한 포부가 담긴 앨범이다. 동명의 타이틀곡 ‘LIAR’는 거짓말만 늘어놓는 상대에게 하고 싶은 말을 담은 곡으로, 중독적인 사운드가 인상적이다.</p>
<div dmcf-pid="0c2HDFI9tK" dmcf-ptype="general">
<div>
<strong>돌아온 ‘개그콘서트’</strong>
</div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="pJpCLyA0Hb" dmcf-ptype="figure">
<p class="link_figure"><img alt="KBS2 예능프로그램 ‘개그콘서트’가 11월 1일 오후 제작발표회를 진행한다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101070310181rsqd.jpg" data-org-width="500" dmcf-mid="4lulgYkUYL" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101070310181rsqd.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            KBS2 예능프로그램 ‘개그콘서트’가 11월 1일 오후 제작발표회를 진행한다.
           </figcaption>
</figure>
<div dmcf-pid="UiUhoWcpYB" dmcf-ptype="general">
           KBS2 예능프로그램 ‘개그콘서트’가 11월 1일 오후 제작발표회를 진행한다. 이날 제작발표회에는 김상미 CP, 이재현 PD, 개그맨 김원효, 정범균, 정태호, 김지영, 조수연, 홍현호, MC 윤형빈이 참석한다.
          </div>
<p dmcf-pid="unulgYkUtq" dmcf-ptype="general">‘개그콘서트’는 2020년 6월 26일 1050회를 마지막으로 약 3년 동안 시청자 곁을 떠나있었다. 1051회부터 다시 시작하는 ‘개그콘서트’는 박성호, 정태호, 정범균, 송영길, 정찬민, 신윤승 등 전성기를 이끌었던 선배 개그맨들과 홍현호, 김시우, 임선양, 임슬기, 오정율 등 패기로 똘똘 뭉친 후배 개그맨들이 출연해, 대한민국의 웃음을 책임진다. 이들은 지난 5월부터 약 6개월 동안 트렌디하면서도 전 세대가 함께 웃을 수 있는 다채로운 코미디를 준비했다.</p>
<p dmcf-pid="7bSo2cPlZz" dmcf-ptype="general">[손진아 MK스포츠 기자]</p>
<p dmcf-pid="zKvgVkQSY7" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : MK스포츠]</h6></div>
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