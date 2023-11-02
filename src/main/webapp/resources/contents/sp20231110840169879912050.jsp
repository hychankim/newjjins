
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
    <h3>'교육리그→마캠' 하주석 일본서 강행군, 주전에 신인들까지…한화 유격수 전쟁 불붙는다</h3><h6>이상학  2023. 11. 1. 08:40</h6>
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
<section dmcf-sid="fDwOlyA0d6">
<figure class="figure_frm origin_fig" dmcf-pid="4NjEmCLZR8" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=이석우 기자] 한화 하주석. 2023.08.16 / foto0307@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101084019874bgnl.jpg" data-org-width="650" dmcf-mid="BdRCvYkUde" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101084019874bgnl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=이석우 기자] 한화 하주석. 2023.08.16 / foto0307@osen.co.kr
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="8XZFUqWQL4" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=최규한 기자] 한화 하주석이 이도윤과 수비 훈련을 펼치고 있다. 2023.07.21 / dreamer@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101084021262mizw.jpg" data-org-width="650" dmcf-mid="btunacPlRR" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101084021262mizw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=최규한 기자] 한화 하주석이 이도윤과 수비 훈련을 펼치고 있다. 2023.07.21 / dreamer@osen.co.kr
           </figcaption>
</figure>
<p dmcf-pid="6TyH10hVMf" dmcf-ptype="general">[OSEN=이상학 기자] 한화의 유격수들이 일본 미야자키에 모인다. 같은 장소에서 일본 피닉스 교육리그를 마친 하주석(29)과 이민준(19)이 마무리캠프까지 강행군을 소화하는 가운데 올해 주전 유격수로 활약한 이도윤(27), 신인 황영묵(24)까지 미야자키로 향한다. </p>
<p dmcf-pid="PWYZFUS4LV" dmcf-ptype="general">한화는 1일부터 26일까지 미야자키에서 마무리캠프를 치른다. 지난 5월 시즌 중 부임한 최원호 감독 체제에서 첫 캠프로 강도 높은 훈련이 예고돼 있다. 전반적인 수비력 향상에 초점을 맞추고 훈련량을 많이 가져갈 계획이다. 센터라인 중심을 잡아줘야 할 유격수 포지션에 시선이 집중된다. </p>
<p dmcf-pid="QsOlyHD7n2" dmcf-ptype="general">시즌 종료 전이었던 지난달 9일부터 30일까지 교육리그에 참가한 하주석과 이민준은 나란히 16경기씩 뛰었고, 쉴 틈도 없이 바로 마무리캠프 들어간다. </p>
<p dmcf-pid="xdJojExvM9" dmcf-ptype="general">2016년부터 한화 부동의 주전 유격수로 활약한 하주석은 지난해 11월 음주운전에 적발됐다. KBO로부터 70경기 출장정지 징계를 받고 자숙의 시간을 가진 하주석은 징계 해제 후 7월에 1군 복귀했지만 8개월 실전 공백 여파인지 25경기 타율 1할1푼4리(35타수 4안타)로 부진했다. 경기를 드문드문 나서면서 타격은 물론 수비 집중력도 떨어졌다. </p>
<p dmcf-pid="yrmCvYkURK" dmcf-ptype="general">지난 8월22일 대전 삼성전에서 2-1로 앞선 9회 2사 2루에서 류지혁의 평범한 땅볼에 포구 실책을 범하며 역전패 빌미를 제공했다. 이튿날 2군에 내려간 뒤 퓨처스리그에서 시즌을 마무리한 하주석은 교육리그에서 수준 높은 일본 투수들을 상대로 실전 감각 회복에 집중했다. 지난달 30일 야쿠르트 스왈로스전에선 수비에서 안타성 타구에 기막힌 점프 캐치도 선보였다. 이제 마무리캠프에서 최원호 감독과 코칭스태프 앞에서 확실히 달라진 모습을 보여야 한다. </p>
<p dmcf-pid="W1tpzKHRnb" dmcf-ptype="general">교육리그에서 하주석과 유격수 자리를 분담한 신인 이민준도 막판에 강한 인상을 남겼다. 지난달 26일 소프트뱅크 호크스전에서 7회 좌월 투런 홈런을 폭발했다. 올해 일본 1군에서 45경기(34이닝) 2승1패7홀드 평균자책점 2.38로 준수하게 활약한 좌완 투수 타우라 후미마루에게 뽑아낸 홈런이라 더 의미 있었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="YYG53uv8JB" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=이대선 기자] 한화 이민준 2023.07.14 /sunday@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101084021463tumg.jpg" data-org-width="530" dmcf-mid="Kc8wOlg1nM" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101084021463tumg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=이대선 기자] 한화 이민준 2023.07.14 /sunday@osen.co.kr
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="GUuB28FLJq" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=최규한 기자] 한화 이도윤. 2023.09.10 / dreamer@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101084021629ewbg.jpg" data-org-width="530" dmcf-mid="93w3uBYxLx" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101084021629ewbg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=최규한 기자] 한화 이도윤. 2023.09.10 / dreamer@osen.co.kr
           </figcaption>
</figure>
<p dmcf-pid="H48xdL9rLz" dmcf-ptype="general">여기에 주전 유격수 자리를 꿰찬 이도윤(27)도 마무리캠프에 함께한다. 올 시즌 2군에서 시즌을 시작했지만 박정현의 성장통과 오선진의 부상으로 5월 중순 1군 부름을 받은 이도윤은 안정된 수비력으로 만년 백업 꼬리표를 뗐다. 106경기 타율 2할5푼2리(309타수 78안타) 1홈런 13타점 36득점 11도루로 알토란 같은 활약을 했다. </p>
<p dmcf-pid="XYG53uv8R7" dmcf-ptype="general">하지만 체력 저하 영향인지 9월 이후 36경기에선 1할대(.188) 타율로 하락세를 보였다. 올해 팀 기여도가 상당히 높지만 풀타임 주전으로 확실하게 자리잡은 것은 아니다. 내년에도 주전 자리를 지키기 위해선 경쟁력을 조금 더 끌어올려야 한다. 마무리캠프가 그 시작이다. </p>
<p dmcf-pid="ZHXtpzyPdu" dmcf-ptype="general">새얼굴도 합류한다. 2024년 4라운드 전체 31순위로 지명된 신인 내야수 황영묵(24)도 마무리캠프에 간다. 대학 중퇴 후 독립리그에서 프로를 목표로 준비한 황영묵은 내야 전 포지션 소화가 가능한 자원. 군복무도 마친 즉시 전력감으로 기대를 모은다. 주 포지션 유격수로 강한 어깨를 갖췄다. 어느 방향으로든 타구를 보낼 수 있는 컨택 능력도 강점. 기존 선수들에게 긴장감을 일으킬 선수로 최원호 감독과 코칭스태프에 첫선을 보인다. /waw@osen.co.kr</p>
<figure class="figure_frm origin_fig" dmcf-pid="51tpzKHRnU" dmcf-ptype="figure">
<p class="link_figure"><img alt="한화 황영묵. /한화 이글스 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101084021900pusn.jpg" data-org-width="530" dmcf-mid="2MzojExvnQ" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101084021900pusn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            한화 황영묵. /한화 이글스 제공
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="1inacwRydp" dmcf-ptype="figure">
<p class="link_figure"><img alt="한화 황영묵. /한화 이글스 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101084023264qopg.jpg" data-org-width="530" dmcf-mid="VWvYZFI9dP" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101084023264qopg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            한화 황영묵. /한화 이글스 제공
           </figcaption>
</figure>
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