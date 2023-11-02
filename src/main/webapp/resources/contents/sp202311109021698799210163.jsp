
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
    <h3>한국체육학회, 교육부의 초1·2 '체육교과' 별도 신설&학교체육활성화 방안 대환영</h3><h6>노주환  2023. 11. 1. 09:02</h6>
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
<section dmcf-sid="fRRLTGEuEM">
<figure class="figure_frm origin_fig" dmcf-pid="U1O6fP0gO5" dmcf-ptype="figure">
<p class="link_figure"><img alt="연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090511890fvsb.jpg" data-org-width="1200" dmcf-mid="ZGLtZFI9Eu" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090511890fvsb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            연합뉴스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="utIP4QpaIZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090512062tegw.jpg" data-org-width="1200" dmcf-mid="5nm9B2ZdIU" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090512062tegw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="PuuKNkQSO6" dmcf-ptype="general"> 한국체육학회(이한경 회장)가 정부의 초 1~2학년 체육교과 별도 신설에 대해 환영 의견을 밝혔다. 정부는 10월 30일 서울청사에서 개최된 사회관계장관회의에서 교육부가 발표한 제2차 학생건강증진 기본계획(2024~2028)을 발표했다. 이에 한국체육학회는 "코로나19 팬데믹에 따른 비대면 활동과 외출 자제의 증가로 인해 학생들의 체력은 약화되었고, 소아비만도 증가하고 있다. 실제로 매년 초등학교 5학년부터 고등학교 3학년을 대상으로 실시하는 학생건강체력평가(PAPS)에서 4·5등급의 저체력 학생 비율이 2022년 16.6%로 팬데믹 이전의 12.2%(2019년)보다 높아졌다"면서 "초등 1~2학년 '즐거운 생활'의 신체활동 영역을 '체육교과'로 분리하는 것은 학생들의 건강과 체력을 확보할 수 있는 효율적인 방안이 될 수 있다"고 환영의 뜻을 밝혔다. </p>
<p dmcf-pid="Q779jExvw8" dmcf-ptype="general">인천교총 이대형 회장(경인교대 교수)은 "스포츠 선진국에서는 체육활동의 중요성을 인식하고, 초등학교 저학년부터 데일리 스포츠로 체육을 활성화하고 있다"고 밝혔다. 또 그는 학교체육도 초등 저학년 단계에서부터 신체활동을 활성화해 학생의 체력을 증진하고, 신체활동에 포함된 끈기, 책임감, 타인배려, 협동심 등 인성의 요소를 함양할 필요가 있음을 강조했다. 또 유인영 극동대 교수는 대학입시에 만연한 주입식 교육에서 우리사회에서 인성과 체력의 중요성을 인식한 이번 발표에 대해 "체육을 통한 건강한 사회로의 성장에 초석을 다지는 계기가 될 수 있다"고 말했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="7si310hVsX" dmcf-ptype="figure">
<p class="link_figure"><img alt="연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090512248npcc.jpg" data-org-width="1200" dmcf-mid="1eNpFUS4Dp" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090512248npcc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="yBBfkreWwf" dmcf-ptype="general"> 한국체육학회 회원과 전국대학교 체육계열 교수들은 이번 교육부에서 발표한 '초등 1~2학년 즐거운 생활에서 신체활동 영역을 체육으로 별도 신설하는 방안', '학교스포츠클럽활동의 확대', '체육온 동아리 활성화', '고교학점제에서 체육 교과 10학년 필수 이수', '학생의 마음건강 지원 프로그램의 활성화' 등의 제2차 학생건강증진 기본계획에 대해 시의적절한 내용이라고 환영의 뜻을 전했다. </p>
<p dmcf-pid="Wbb4EmdYIV" dmcf-ptype="general">정부가 이번에 발표한 기본계획을 보면, 우선 학교체육 활성화를 위한 4대 과제를 추진키로 했다. 첫째 학교단위 체육활동을 확대하고, 둘째 학생 맞춤형 체력향상을 지원하며, 셋째 체육활동 일상화 및 관련 인프라를 확충하고, 넷째 늘봄학교 프로그램에 체육활동을 강화한다는 것이 골자다. 핵심은 학교단위 체육활동 확대다. 초등 1~2학년 학생들의 신체활동 시간을 최근 2년간 약 80시간에서 2022년 개정교육과정이 적용되는 내년부터 144시간까지 늘리고, 음악, 미술, 신체활동이 통합된 '즐거운 생활'에서 신체활동 영역을 '체육 교과'로 분리하는 방안을 검토, 추진한다. 체육교과가 분리될 경우 무려 40년 만이다. 1982년 4차 교육과정 당시 체육, 음악, 미술 교과가 따로 분리돼 있었지만, 세 교과의 수업시수가 통합돼 사실상 통합 교과로 운영됐고, 5차 교육과정이 적용된 1989년부터는 체육 교과가 아예 즐거운 생활으로 통합된 바 있다. 초등교육의 경우 미술, 음악, 체육 수업이 통합돼 있어 '평생 운동습관' '건강습관'이 형성되는 초등 저학년의 신체활동 저하에 대한 우려가 있었고, 실질적인 '신체활동' 시수를 확보하기 위해선 별도 교과 분리가 절대적으로 필요하다는 주장이 힘을 얻어왔다. 이번 교육부의 체육 교과 분리 방침은 체육계에도, 맘껏 뛰어놀아야 할 아이들에게도, 학부모에게도 반가운 소식이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="zpSRQezcsH" dmcf-ptype="figure">
<p class="link_figure"><img alt="연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090512491woww.jpg" data-org-width="1200" dmcf-mid="tsZndL9rD0" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090512491woww.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="GVVQmCLZI9" dmcf-ptype="general"> 또 중학교의 경우 2025년부터 학교스포츠클럽 활동 시간을 약 30%(3년간 102시간→136시간) 확대하고 '1인 1스포츠'를 정착시키는 방안을 추진한다. 학교스포츠클럽 운영 예산은 올해 221억원에서 내년 255억원, 2025년 300억원까지 늘려나갈 계획이다. 대한체육회가 활발하게 추진해온 '청소년스포츠한마당'과 같은 포맷의 일반학생-학생선수가 함께하는 부총리배 혼합팀 전국대회는 종목 및 참여학생을 확대해나갈 예정이다. 또 고등학교는 2025년부터 시행되는 고교학점제와 함께 체육 교과의 필이수학점(10학점)이 학교에서 충실하게 운영될 수 있도록 문체부와 협업해 올해 말까지 개선방안을 마련할 예정이다. 교육부는 체육 교과 분리와 학교스포츠클럽 활동 확대 등 교육과정 개정이 필요한 사항에 대해선 교육위원회에 제안해 논의하되 '타 교과에 미치는 영향이 없도록 한다'는 원칙은 준수할 것이라고 밝혔다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="qYE9B2ZdmG" dmcf-ptype="figure">
<p class="link_figure"><img alt="학교체육 청운중 스포츠클럽 농구- 스태킹 팀  청운동=최문영 기자deer@sportschosun.com /2023.10.18/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090512776srcq.jpg" data-org-width="1200" dmcf-mid="FlLtZFI9E3" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090512776srcq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            학교체육 청운중 스포츠클럽 농구- 스태킹 팀 청운동=최문영 기자deer@sportschosun.com /2023.10.18/
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="BGD2bV5JrY" dmcf-ptype="figure">
<p class="link_figure"><img alt="학교체육- 강명중학교 아침배구 강동구=최문영 기자deer@sportschosun.com /2023.10.04/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090513114nedd.jpg" data-org-width="1200" dmcf-mid="33LtZFI9OF" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090513114nedd.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            학교체육- 강명중학교 아침배구 강동구=최문영 기자deer@sportschosun.com /2023.10.04/
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="buTdMJBEIW" dmcf-ptype="figure">
<p class="link_figure"><img alt="학교체육- 강명초 아침 티볼 강동구=최문영 기자deer@sportschosun.com /2023.10.04/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090513458uhqb.jpg" data-org-width="1200" dmcf-mid="0wdXYZrqEt" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090513458uhqb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            학교체육- 강명초 아침 티볼 강동구=최문영 기자deer@sportschosun.com /2023.10.04/
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="K7yJRibDIy" dmcf-ptype="figure">
<p class="link_figure"><img alt="◇이한경 한국체육학회장     사진제공=한국체육학회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090513657iwkq.jpg" data-org-width="1200" dmcf-mid="pOPGyHD7E1" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090513657iwkq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ◇이한경 한국체육학회장 사진제공=한국체육학회
           </figcaption>
</figure>
<p dmcf-pid="1ssSB2ZdOz" dmcf-ptype="general"> 또 학교나 가정 등 어디서나 학생 스스로 운동에 참여할 수 있도록 프로그램과 시설을 지원한다. 서울시교육청의 '다시 뛰는 아침 시즌2', 부산교육청의 '아침 체인지(體仁智)'처럼 틈새 시간을 활용해 체육을 일상화하도록 모든 학교에서의 체육온동아리 운영을 지원하고, 140종의 운동프로그램을 탑재한 온라인 체육활동 앱 메타스포츠스쿨, 자기주도적 체육활동을 주도하는 온라인 튜터링 콘텐츠를 적극 활용하도록 독려하기로 했다. 또 학교체육 활성화를 위해 학교복합시설을 현행 39개에서 2025년 120개, 2027년 200개로 늘리고, 현재 164개에 불과한 학교 수영장은 학교복합시설 사업을 포함해 2028년까지 300개 추가 설치를 목표로 추진할 계획이다. <br/>노주환 기자 nogoon@sportschosun.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠조선]</h6></div>
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