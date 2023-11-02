
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
    <h3>尹정부 노동정책 14.7점…비정규직 노동자들 “이대로는 다 죽는다” [사사건건]</h3><h6>조희연  2023. 11. 1. 06:06</h6>
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
<section dmcf-sid="ZcLEhqWQuL">
<p dmcf-pid="5oRar0hV0n" dmcf-ptype="general">100점 만점에 14.7점. 비정규직 노동자들이 평가한 윤석열정부의 노동·일자리 정책 점수다.</p>
<p dmcf-pid="1adjsUS47i" dmcf-ptype="general">비정규직 이제그만 공동투쟁은 31일 ‘비정규직 당사자 실태조사 보고 및 현장증언대회’를 열고 비정규직 노동자 798명을 대상으로 진행한 설문조사 결과를 발표했다. 이번 조사는 지난 16일부터 25일까지 온라인으로 진행됐다.</p>
<div dmcf-pid="tMfeNHD7UJ" dmcf-ptype="general">
           비정규직 노동자들은 윤석열정부의 노동 정책에 대해 회의적인 태도를 보였다. 현 정부가 비정규직 노동자의 차별 해소와 노동기본권 보장을 위해 노력할 것이라고 생각하는지 묻는 질문에 ‘전혀 그렇지 않다’고 답한 비율이 75%에 달했다. ‘그렇지 않은 편이다’도 16%를 차지했다. ‘그런 편이다’는 5%, ‘매우 그렇다’는 4%에 그쳤다.
           <br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="FU57fExvpd" dmcf-ptype="figure">
<p class="link_figure"><img alt="비정규직이제그만공동투쟁 회원들이 31일 서울 중구 민주노총에서 열린 비정규직 당사자 실태조사 보고 및 현장증언대회에서 구호를 외치고 있다. 뉴시스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/segye/20231101060658092dtau.jpg" data-org-width="680" dmcf-mid="XH57fExv0o" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/segye/20231101060658092dtau.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            비정규직이제그만공동투쟁 회원들이 31일 서울 중구 민주노총에서 열린 비정규직 당사자 실태조사 보고 및 현장증언대회에서 구호를 외치고 있다. 뉴시스
           </figcaption>
</figure>
<div dmcf-pid="3yIY3ezc3e" dmcf-ptype="general">
            윤석열정부의 노사관계 대응을 어떻게 평가하는지 묻는 항목에는 ‘사용자에 관대하고 노동자에게 가혹하다’는 답변이 92%로 가장 많았다. ‘잘 모르겠다’는 의견이 5%로 뒤이었고, ‘사용자와 노동자에 모두 공정하다’는 의견은 2%, ‘사용자에 가혹하고 노동자에 관대하다’는 의견은 1%에 그쳤다.
          </div>
<p dmcf-pid="0B0KQsJGUR" dmcf-ptype="general">비정규직 노동자들은 현재 생활여건에 대해서도 부정적으로 평가했다. 현재 생활여건이 어떤지 묻는 질문에 ‘매우 어렵다’(25%)거나 ‘어려워지고 있다’(54%)는 답변이 주를 이뤘다. 소득에 있어서도 물가상승률을 감안할 때 올해 소득이 ‘매우 부족하다’(59%)거나 ‘부족하다’(38%)는 이들이 대다수였다.</p>
<p dmcf-pid="ppZuVkQSuM" dmcf-ptype="general">내년 최저임금이 올해보다 240원(2.5%) 오른 9860원으로 책정된 데 대해서도 ‘매우 부족하다’(67%)와 ‘부족하다’(29%)가 96%로 압도적이었다. 김주환 비정규직 이제그만 공동소집권자(전국대리운전노조위원장)는 “최저임금 인상률이 소비자물가 상승률(3.7%)에도 못 미친 영향”이라고 분석했다.</p>
<p dmcf-pid="Ufq8JSat0x" dmcf-ptype="general">비정규직 노동자에게 필요한 정책으로는 노란봉투법(노조법 2·조 개정)이 꼽혔다. ‘노조법 2·3조 개정’이 33%로 가장 높았고, △모든 노동자에게 근로기준법 적용 17% △파견법 폐지 16% △동일노동 동일임금 15% 순이었다.</p>
<p dmcf-pid="uiQLEtOKuQ" dmcf-ptype="general">차헌호 비정규직이제그만 공동소집권자(아사히비정규직지회장)는 “고(故) 김용균 24살 청년노동자가 목숨을 잃은지 곧 5년 되어가고, (올해 8월에는) 29살 고 강보경 노동자가 일하다 목숨을 잃었다”며 “우리 사회는, 노동 현장은 얼마나 달라졌냐”고 규탄했다. 이어 “중대재해처벌법이 만들어졌지만 현장에서 일하다 목숨을 잃은 노동자가 2021년 2080명에서 2022년 2223명으로 돌연 140명 늘었다”며 “일하다 죽은 노동자 뿐 아니라 이주노동자, 장애인 노동자, 공공부문 비정규직 노동자 모두 처지가 심각하다”고 지적했다.</p>
<p dmcf-pid="7pZuVkQS0P" dmcf-ptype="general">차 공동소집권자는 “이번 실태조사 결과가 말해주듯 투쟁하지 않고는 비정규직 노동자의 처지는 좋아지지 않는다”며 다음달 10일 고 강보경 노동자가 사망한 건설현장의 원청인 DL이앤씨 앞에서 1박2일 농성을 진행할 예정이라고 밝혔다.</p>
<p dmcf-pid="zu1z4DMT76" dmcf-ptype="general">조희연 기자 choh@segye.com</p>
</section>
</div></p></section></div><h6>[Source : 세계일보]</h6></div>
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