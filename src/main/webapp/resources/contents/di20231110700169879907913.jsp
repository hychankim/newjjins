
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
    <h3>애플이 '갤럭시' 디스하는데···미소짓는 삼성[양철민의 아알못]</h3><h6>양철민 기자  2023. 11. 1. 07:00</h6>
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
<section dmcf-sid="FmXOivNFyP">
<figure class="figure_frm origin_fig" dmcf-pid="3DYreho5T6" dmcf-ptype="figure">
<p class="link_figure"><img alt="애플이 신형 맥북 출시 이벤트 동영상을 통해 “우주(갤럭시)의 구조를 지도화 하는 것은 어려운 일입니다(Mapping the structure of the galaxy, now that’s hard work)”라며 삼성전자 모바일 브랜드 갤럭시를 간접 언급하고 있다. 사진=유튜브 캡쳐" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/seouleconomy/20231101070034542hply.png" data-org-width="640" dmcf-mid="1HuYk1sblx" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/seouleconomy/20231101070034542hply.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            애플이 신형 맥북 출시 이벤트 동영상을 통해 “우주(갤럭시)의 구조를 지도화 하는 것은 어려운 일입니다(Mapping the structure of the galaxy, now that’s hard work)”라며 삼성전자 모바일 브랜드 갤럭시를 간접 언급하고 있다. 사진=유튜브 캡쳐
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="0GqXw3C2W8" dmcf-ptype="figure">
<p class="link_figure"><img alt="애플이 신형 맥북 출시 이벤트 동영상을 통해 “저는 갤럭시(우주) 팬이 아니에요(I’m not a fan of the galaxy)”라며 삼성전자 모바일 브랜드 갤럭시를 간접적으로 ‘디스(disrespecf)’하고 있다. 사진=유튜브 캡쳐" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/seouleconomy/20231101070035821wnob.png" data-org-width="640" dmcf-mid="t37GEtOKlQ" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/seouleconomy/20231101070035821wnob.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            애플이 신형 맥북 출시 이벤트 동영상을 통해 “저는 갤럭시(우주) 팬이 아니에요(I’m not a fan of the galaxy)”라며 삼성전자 모바일 브랜드 갤럭시를 간접적으로 ‘디스(disrespecf)’하고 있다. 사진=유튜브 캡쳐
           </figcaption>
</figure>
<div dmcf-pid="pHBZr0hVW4" dmcf-ptype="general">
            [서울경제] 
           <p>“우주(갤럭시)의 구조를 지도화 하는 것은 어려운 일입니다(Mapping the structure of the galaxy, now that’s hard work).”</p>
</div>
<p dmcf-pid="UXb5mplfCf" dmcf-ptype="general">“저는 ‘갤럭시(우주)’ 팬이 아니에요(I’m not a fan of the galaxy).”</p>
<p dmcf-pid="uCtlgYkUhV" dmcf-ptype="general">애플이 삼성전자 모바일 브랜드 ‘갤럭시’를 또다시 저격했다. 애플은 2011년부터 7년여동안 삼성전자와 특허분쟁을 벌이는 등 2010년 ‘갤럭시S’ 출시 이후부터 삼성 측과 계속해서 신경전을 벌이고 있다. 다만 애플의 의도와 달리, 신형 맥북과 아이맥 공개 행사에서 굳이 갤럭시를 언급해 ‘애플의 경쟁상대는 삼성’이라는 이미지를 되레 각인시켰다는 분석이 제기된다. 실제 삼성은 애플과의 특허 소송에서 ‘카피캣’ 등의 오명에도 불구하고 브랜드 가치가 오히려 상승하며 안드로이드 운영체제(OS) 기반 스마트폰 시장에서 왕좌를 놓치지 않고 있다.</p>
<p dmcf-pid="7hFSaGEuy2" dmcf-ptype="general">애플은 10월 30일(현지시간) 온라인 브리핑을 통해 자체 개발 최신 반도체 M3·M3프로·M3맥스를 비롯한 ‘M3 시리즈’와 신형 맥북·아이맥 등을 공개했다.</p>
<p dmcf-pid="zl3vNHD7C9" dmcf-ptype="general">‘무섭게 빠른(Scary Fast)’ 이라는 타이틀로 이날 열린 이벤트에서 애플의 신제품 만큼 주목받은 부분은 애플의 삼성전자 ‘디스(disrespect)’다. 애플은 이날 신형 맥북을 쓰면 각종 업무가 쉬워진다는 점을 강조하는 영상에서 “저는 갤럭시(우주) 팬이 아니에요”라는 부분을 익살스럽게 노출했다. 삼성전자 스마트폰 브랜드가 영어로 ‘우주’라는 보통명사라는 점을 활용한 언어유희였지만, 사실상 삼성을 저격하는 내용이었다.</p>
<p dmcf-pid="q08USbGMSK" dmcf-ptype="general">이 같은 애플의 저격에 대해 삼성 측은 내심 흐뭇해하는 모습이다. 스마트폰에서와 달리 노트북시장에서 삼성전자의 존재감이 미약한 탓이다.</p>
<p dmcf-pid="Bp6uvKHRWb" dmcf-ptype="general">실제 시장조시가관 IDC에 따르면 출하량 기준 글로벌 PC시장 1위는 점유율 23.3%의 레노버이며 뒤이어 HP(18.9%), 델(17%), 애플(9.8%)과 아수스(7%) 순이다. 삼성은 순위권 내에 보이지 않는다. 특히 애플 맥북이 높은 가격의 프리미엄 노트북이라는 점에서 매출 기준으로 순위를 나열할 경우 애플이 1위라는 분석도 나온다. 결국 글로벌 노트북 시장의 강자 애플이, 글로벌 노트북 시장에서 두각을 나타내지 못하고 있는 삼성을 간접적으로 언급하며 삼성에 대한 주목도만 높여준 셈이 됐다.</p>
<p dmcf-pid="bUP7T9XeCB" dmcf-ptype="general">삼성전자가 폴더블 제품군을 ‘갤럭시 Z’와 같은 프리미엄 스마트폰 외에 노트북이나 태블릿PC까지 확대 적용하기로 했다는 점에서, 삼성 견제에 조급했던 애플이 ‘악수’를 뒀다는 분석도 나온다.</p>
<p dmcf-pid="Kl3vNHD7yq" dmcf-ptype="general">최근 10여년간의 IT 역사를 살펴보면 애플의 이 같은 ‘삼성 디스’는 삼성의 몸집을 키워주는 역할을 했다. 실제 애플은 2011년 갤럭시가 아이폰의 디자인 특허 등을 침해했다며 소송을 제기해 ‘애플의 경쟁사는 삼성’이라는 이미지를 강화시킨 바 있다.</p>
<p dmcf-pid="9S0TjXwzWz" dmcf-ptype="general">물론 애플이 당시 소송 카드를 꺼내들 정도로 삼성의 상승세가 무섭긴 했다. 삼성은 갤럭시S를 2010년 2분기에 내놓은 후 점유율을 빠르게 끌어올렸다. 2010년 말 기준 글로벌 스마트폰 시장 점유율 1위는 노키아(28.0%)였으며 이어 애플(16.1%), RIM(14.5%), 삼성전자(9.6%), HTC(8.5%) 순이었다. 실제 삼성전자 스마트폰 점유율은 2010년 2분기 4.8%에서 같은해 4분기 9.6%로 반년만에 두배로 껑충 뛰었다. </p>
<p dmcf-pid="2vpyAZrqy7" dmcf-ptype="general">여기에 더해 시장조사기관 가트너에 따르면 삼성과 애플간의 특허소송이 한창이던 2013년 삼성 스마트폰의 점유율은 30.9%로 애플(15.5%)의 2배에 달하기도 했다. 결국 애플의 ‘디스’가 삼성의 브랜드 가치와 점유율을 끌어올린 셈이다.</p>
<div dmcf-pid="Vbd9X63ohu" dmcf-ptype="general">
<p>삼성과 애플의 관계는 ‘적(Enemy)’처럼 보이지만 사실은 친구이자 동지인 ‘프레너미(Frenemy)’에 가깝다. 삼성은 아이폰에 탑재되는 D램, 낸드플래시, 유기발광다이오드(OLED) 디스플레이 등을 애플 측에 판매 중이다. 실제 삼성전자의 분기별 5대 매출처에 애플은 종종 이름을 올리기도 한다. 애플로서도 삼성전자의 애플리케이션프로세서(AP)를 탑재하거나 파운드리(반도체위탁생산) 등을 활용해 초기 아이폰의 성능을 끌어올린 만큼 스마트폰 시장에서의 경쟁관계에도 불구하고 삼성을 파트너사로 분류 중이다. IT 업계 관계자는 “시장 점유율 및 기술력 등을 놓고 보면 플래그십 스마트폰 시장에서 애플의 경쟁자를 언급할 때 삼성이 항상 우선적으로 이야기될 수밖에 없다”며 “삼성이 ‘온디바이스AI’ 스마트폰 내년 출시라는 승부수를 던진만큼, AI 경쟁력이 약하다 평가받는 애플이 이에 대해 어떤 대책을 내놓을 지 주목된다”고 밝혔다.</p> 양철민 기자 chopin@sedaily.com
          </div>
</section>
</div></p></section></div><h6>[Source : 서울경제]</h6></div>
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