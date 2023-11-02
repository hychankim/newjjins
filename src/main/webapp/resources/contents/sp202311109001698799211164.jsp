
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
    <h3>든든한 막내, 성장한 백업 포수…NC 상승세 이끄는 AG 金 멤버들</h3><h6>수원=CBS노컷뉴스 김조휘 기자  2023. 11. 1. 09:00</h6>
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
<section dmcf-sid="HvJNG5mBNz">
<figure class="figure_frm origin_fig" dmcf-pid="XWLcZFI9k7" dmcf-ptype="figure">
<p class="link_figure"><img alt="김형준과 김주원 하이파이브. 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/nocut/20231101090018338djhi.jpg" data-org-width="710" dmcf-mid="WuMKNkQSgb" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/nocut/20231101090018338djhi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김형준과 김주원 하이파이브. 연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="Zm6dhTj3ju" dmcf-ptype="general">2022 항저우 아시안게임에서 금메달을 합작한 김주원과 김형준(이상 NC)이 가을 야구를 수놓고 있다.</p>
<p dmcf-pid="5sPJlyA0cU" dmcf-ptype="general">NC는 31일 경기도 수원 kt위즈파크에서 열린 kt와 2023 신한은행 SOL KBO 포스트 시즌 플레이오프(PO) 2차전에서 3 대 2 승리를 거뒀다.</p>
<p dmcf-pid="1GgE10hVjp" dmcf-ptype="general">정규 시즌을 4위로 마쳐 와일드 카드 결정전부터 포스트 시즌을 시작한 NC는 이날 경기까지 6경기 모두 승리를 거뒀다. 5전 3선승제 PO에서는 2승을 챙겨 한국 시리즈 진출까지 단 1승 만을 남겨두고 있다.</p>
<p dmcf-pid="tTijH1sba0" dmcf-ptype="general">상승세의 중심에는 김주원과 김형준이 있었다. 둘은 아시안게임 이후 가파른 성장세를 보이고 있다는 평가를 받는다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="F2TZ6Muja3" dmcf-ptype="figure">
<p class="link_figure"><img alt="김주원 호수비. 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/nocut/20231101090019669kaxr.jpg" data-org-width="710" dmcf-mid="YMYspzyPgB" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/nocut/20231101090019669kaxr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김주원 호수비. 연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="3vJNG5mBgF" dmcf-ptype="general">유격수 김주원은 한층 노련해진 수비력을 뽐내고 있다. 특히 2차전 3 대 2로 팽팽하던 9회말 2사 만루 위기에서 오윤석의 안타성 타구를 다이빙 캐치로 잡아내 승리를 지켜냈다.</p>
<p dmcf-pid="0J0BgA6hct" dmcf-ptype="general">NC 강인권 감독은 경기 후 "김주원의 수비 위치 선정이 좋았고, 다이빙도 뛰어났다"면서 "형들이 어려움을 만들었는데, 막내인 김주원이 팀을 구했다"고 박수를 보냈다. 선발 투수 신민혁은 "역시 우리 (김)주원이"라며 엄지를 치켜세웠다.</p>
<p dmcf-pid="pQZpdL9rA1" dmcf-ptype="general">김주원은 당시 상황에 대해 "마지막에 공이 배트에 맞는 순간 '바운드되면 무조건 살겠다'는 생각이 들었다"면서 "다른 생각은 하지 않았고 일단 몸부터 날렸다"고 말했다. 그러면서 "경기 후 형들이 정말 잘했다고 해주셨다"고 웃었다.</p>
<p dmcf-pid="UQZpdL9rg5" dmcf-ptype="general">2 대 0으로 앞선 3회초에는 우중간에 떨어지는 3루타를 날린 뒤 상대 수비 실책을 틈 타 득점에 성공하기도 했다. 직전 포스트 시즌 5경기에서 타율 1할3푼(23타수 3안타)으로 타격감이 저조했던 김주원은 모처럼 시원한 장타를 뽑아냈다. 그는 "타격감은 항상 똑같은데 결과가 안 나왔다"면서 "이전 타석에서 부진했던 게 마음이 쓰였는데, 오늘 3루타를 쳐서 마음이 놓이는 것 같다"고 미소를 지었다.</p>
<p dmcf-pid="uIxnvYkUoZ" dmcf-ptype="general">NC는 오는 2일 PO 3차전에서 승리를 거두면 한국 시리즈에 진출한다. 김주원은 16일 일본 도쿄 돔에서 개막하는 아시아 프로야구 챔피언십(APBC) 2023 대표팀 명단에 이름을 올렸는데, 한국 시리즈에 오를 경우 일정상 APBC 출전이 불가할 수 있다.</p>
<p dmcf-pid="7DfMOlg1AX" dmcf-ptype="general">이에 김주원은 "둘다 가고 싶은 욕심이 크다"면서도 "한국 시리즈에 가면 팀의 우승이 중요하다. 우승을 먼저 생각할 것"이라고 다짐했다. 아시아게임 결승전을 경험한 그는 한국 시리즈 진출을 눈앞에 두고 "많이 긴장될 것 같다"고 속내를 털어놨다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="zr8eCvNFoH" dmcf-ptype="figure">
<p class="link_figure"><img alt="베터리 호흡을 맞춘 신민혁과 김형준. 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/nocut/20231101090021085dpsg.jpg" data-org-width="710" dmcf-mid="Gsn8DsJGaq" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/nocut/20231101090021085dpsg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            베터리 호흡을 맞춘 신민혁과 김형준. 연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="qgzVcwRyjG" dmcf-ptype="general">백업 포수 김형준은 가을 야구에서 주전 자리를 꿰찼다. 정규 시즌에는 26경기 출전에 그쳤지만, 이번 포스트 시즌에서는 6경기에 모두 선발 출전했다.</p>
<p dmcf-pid="BaqfkreWkY" dmcf-ptype="general">강 감독은 김형준에 대해 "볼 배합은 경기 전체적인 부분보다 상대 타자와 상황에 맞춰 운영하는 부분이 있다"면서 "김형준은 그런 상황과 투수의 컨디션에 맞춰 잘 운영하고 있어서 좋은 결과가 나오고 있다"고 평가했다. 이어 "노하우가 생긴 것 같다. 타자를 상대하는 모습, 상황에 대처하는 모습 등 발전한 부분을 볼 수 있었다"고 칭찬을 아끼지 않았다.</p>
<p dmcf-pid="bVy5PR7AoW" dmcf-ptype="general">이날 선발 등판한 신민혁과 베터리 호흡에 대해서는 "김형준의 운영 능력 덕분에 빛이 날 수 있었던 것 같다"고 극찬했다. 신민혁은 6⅓이닝 1피안타 1사사구 무실점 호투를 펼쳤다.</p>
<p dmcf-pid="KFEIuBYxgy" dmcf-ptype="general">신민혁 역시 김형준과 호흡에 만족감을 드러냈다. 그는 "형준이가 (양)의지 선배님이 하듯이 내 생각을 읽는 것 같다"면서 "나에 맞춰서 볼 배합을 하니까 믿고 있었다. 확실히 호흡이 좋은 것 같다"고 말했다.</p>
<p dmcf-pid="9PX0enKwoT" dmcf-ptype="general">아시안게임에서 금메달을 목에 걸고 돌아온 김형준과 김주원은 여세를 몰아 한국 시리즈 우승까지 넘보고 있다. 2일 창원NC파크에서 열릴 PO 3차전에서는 어떤 활약을 펼칠지 지켜볼 일이다.</p>
<div dmcf-pid="22TZ6MujAv" dmcf-ptype="general">
<strong>※CBS노컷뉴스는 여러분의 제보로 함께 세상을 바꿉니다. 각종 비리와 부당대우, 사건사고와 미담 등 모든 얘깃거리를 알려주세요.</strong>
<ul>
<li><strong>이메일 :</strong><span><span>jebo@cbs.co.kr</span></span></li>
<li><strong>카카오톡 :</strong><span>@노컷뉴스</span></li>
<li><strong>사이트 :</strong><span>https://url.kr/b71afn</span></li>
</ul>
</div>
<p dmcf-pid="Vd3qoj8CgS" dmcf-ptype="general">수원=CBS노컷뉴스 김조휘 기자 startjoy@cbs.co.kr</p>
<p dmcf-pid="fk2QmCLZcl" dmcf-ptype="general"><span>▶ 기자와 카톡 채팅하기</span><span>▶ 노컷뉴스 영상 구독하기</span> </p>
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