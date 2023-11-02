
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
    <h3>"시기 잘못 짚었다"…이른 축배에 급랭한 美 기업공개 시장</h3><h6>김리안  2023. 11. 1. 08:53</h6>
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
<section dmcf-sid="xu5nnafOyb">
<div dmcf-pid="yhDqq9XeyB" dmcf-ptype="general">
<span>이 기사는 국내 최대 해외 투자정보 플랫폼 <span>한경 글로벌마켓</span>에 게재된 기사입니다.</span>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="7QFvbV5Jhz" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=REUTERS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ked/20231101090121325ijbd.jpg" data-org-width="1200" dmcf-mid="UaCH4QpavB" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ked/20231101090121325ijbd.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=REUTERS
           </figcaption>
</figure>
<p dmcf-pid="YOcuuBYxhz" dmcf-ptype="general">미국과 유럽의 기업공개(IPO) 시장에서 샴페인을 너무 일찍 터뜨렸다는 비관론이 확산하고 있다. 하반기에 상장한 '대어'들이 모두 공모 직후 기업 가치가 급락하면서다.</p>
<p dmcf-pid="GIk77bGMW7" dmcf-ptype="general">ARM, 인스타카트, 클라비요, 버켄스탁 등은 최근 몇개월 사이에 뉴욕증시에 성공적으로 상장한 이후 모두 공모가 아래로 하락했다. 특히 ARM은 9월 상장해 약 50억달러를 조달하면서 시가총액이 단번에 650억달러(조달 금액 약 50억달러)를 넘어섰지만, 지난달 31일 주가는 공모가(51달러)보다 낮은 49달러대에 마감했다. 공모가가 주당 46달러로 총 약 15억달러를 모금하는 데 성공했던 버켄스탁은 상장 첫날 10% 넘게 주가가 빠지더니 최근엔 40달러 밑으로 주저앉았다.</p>
<p dmcf-pid="Hztooj8CCu" dmcf-ptype="general">대서양 건너 영국 런던증시에서도 불황이 감지되고 있다. 핀테크 기업 CAB페이먼츠가 상장 3개월 만인 지난주 매출 전망을 하향 조정했고, 이로 인해 한주 사이에 주가는 72% 폭락했다. 미국과 유럽에서의 잇단 IPO 참패를 지켜본 유럽계 사모펀드 운용사 CVC가 네덜란드 암스테르담증시 상장 계획을 늦출 수 있다는 관측도 제기되고 있다. 프랑스 플래니스웨어, 독일 렌크 등 실제로 기업들의 상장 연기 사례가 속출하고 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="zbywFUS4W7" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=AP" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ked/20231101090122800fysx.jpg" data-org-width="768" dmcf-mid="un2RISatyq" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ked/20231101090122800fysx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=AP
           </figcaption>
</figure>
<p dmcf-pid="ZIk77bGMSp" dmcf-ptype="general">파이낸셜타임스(FT)는 "작년 글로벌 긴축으로 유동성이 급랭하면서 전 세계 IPO 시장도 얼어붙은 뒤 올해 하반기부터 동틀 것이란 진단이 잇따랐지만, 여전히 완전히 회복되지 않았다"며 "일부 투자자들은 초겨울 IPO 시장의 부분 셧다운에 대비하고 있다"고 전했다. 로펌 데이비스 포크의 자본시장 부문 글로벌 의장인 리차드 트루스델은 "롤러코스터와도 같은 변동성 증시"라며 "이제 내년 3월까지는 대어급 상장이 없을 것으로 보인다"고 말했다.</p>
<p dmcf-pid="5CEzzKHRh0" dmcf-ptype="general">딜로직 자료에 따르면 올해 들어 10월까지 미국에서 기업들의 공모 거래 규모(SPAC 제외)는 190억달러 가량이다. 이는 지난해 동기간 조달 금액의 2배 이상이지만, 2021년 동기간에 비하면 약 85% 낮다. FT는 "2년 만기 국채가 짧은 기간에도 불구하고 5%를 넘는 수익률을 낸다는 점 등도 투자자들이 주식시장을 외면하게 만드는 요인 중 하나"라고 분석했다.</p>
<p dmcf-pid="1hDqq9XeW3" dmcf-ptype="general">IPO 시장이 완전히 폐쇄된 것은 아니다. 글로벌 안정성 평가기관인 UL솔루션즈는 올해 말까지 10억달러 조달을 목표로 뉴욕증시 상장을 준비하고 있다. 그러나 이런 회사들의 면면이 통상 IPO 시장을 찾는 기업들이 성장주 중심의 기술기업들이었던 것과 대비된다고 FT는 지적했다. 또한 올해 주요 IPO 중 상당수가 신규 자금 조달보다는 기존 투자자들의 투자금 회수에 중점을 둔 것도 특기할 만한 사안으로 꼽혔다.</p>
<p dmcf-pid="tRfCCvNFlF" dmcf-ptype="general">김리안 기자 knra@hankyung.com</p>
<p dmcf-pid="Fe4hhTj3yt" dmcf-ptype="general">▶ <span>클래식과 미술의 모든 것 '아르떼'에서 확인하세요</span><br/>▶ <span>한국경제·모바일한경·WSJ 구독신청하기</span></p>
</section>
</div></p></section></div><h6>[Source : 한국경제]</h6></div>
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