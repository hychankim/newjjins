
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
    <h3>"최대한 예의 갖추겠다" 추신수-김강민도 피할 수 없는 SSG 세대교체 칼바람, 우승 감독도 1년 만에 잘렸다</h3><h6>김동윤 기자  2023. 11. 1. 05:41</h6>
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
<section dmcf-sid="KtAMaGEuCb">
<div dmcf-pid="9fTElBYxTB" dmcf-ptype="general">
           [스타뉴스 | 김동윤 기자] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="24yDSbGMlq" dmcf-ptype="figure">
<p class="link_figure"><img alt="추신수(왼쪽)와 김강민./사진=SSG 랜더스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101054104636aftx.jpg" data-org-width="647" dmcf-mid="zwaIG4tnTV" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101054104636aftx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            추신수(왼쪽)와 김강민./사진=SSG 랜더스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="V8WwvKHRlz" dmcf-ptype="figure">
<p class="link_figure"><img alt="김강민(왼쪽)과 추신수./사진=SSG 랜더스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101054105897nxqj.jpg" data-org-width="647" dmcf-mid="qtmGpJBEv2" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101054105897nxqj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김강민(왼쪽)과 추신수./사진=SSG 랜더스
           </figcaption>
</figure>
<div dmcf-pid="f8WwvKHRS7" dmcf-ptype="general">
           모두가 설마 했던 SSG 랜더스의 칼바람이 시작됐다. 무려 첫 스타트가 지난해 SSG의 통합 우승을 이끌었던 김원형(51) 감독의 경질이다. 그렇게 세대교체를 이유로 1년 만에 우승 감독을 자르는 초유의 사태가 벌어지면서 노장 선수들을 향한 매서운 칼바람이 예고됐다.
          </div>
<p dmcf-pid="46YrT9XeSu" dmcf-ptype="general">SSG는 10월의 마지막 날 김원형 감독과 계약 해지를 공식 발표하면서 "팀 운영 전반과 선수 세대교체 등 변화와 혁신이 필요하다고 판단했다. 팀을 쇄신하고 더욱 사랑받는 강한 팀으로 변모시키기 위해서 변화가 불가피했다"며 "이에 구단은 당초 선수 및 코칭스태프 구성에 대한 변화 범위를 뛰어넘어 현장 리더십 교체까지 단행하게 됐다"고 이유를 밝혔다.</p>
<p dmcf-pid="8PGmy2ZdyU" dmcf-ptype="general">분명 급작스럽고 충격적인 발표였다. 당사자인 김원형 감독도 발표 직후 스타뉴스와 통화에서 "예상하지 못했다. 아직 뭐라 말씀드리기가 어렵다. 지금으로서는 마음을 조금 추슬러야 할 것 같다"고 당혹스러움을 감추지 못했다. </p>
<p dmcf-pid="6KhjOuv8lp" dmcf-ptype="general">후폭풍을 예상한 듯 계약 해지 보도자료에 이례적으로 경질 사유, 시점, 통보, 향후 감독 인선 등 예상 질문에 대한 답변이 동봉됐다. 그만큼 명분이 빈약했다. 김원형 감독은 2021년 SK 와이번스에서 SSG 랜더스로 재탄생한 팀에 통합 우승을 안겨준 첫 사령탑이었다. 그 과정도 드라마틱해서 2020년 9위에 머물렀던 팀을 감독 첫해, 시즌 막판까지 포스트시즌 경쟁을 한 끝에 6위로 올려놓았고 2년 차에는 프로 구단들이 바랐던 이상적인 팀을 만들면서 통합 우승에 성공했다. </p>
<p dmcf-pid="P9lAI7T6y0" dmcf-ptype="general">2022년 SSG는 메이저리그 도전을 마치고 돌아온 에이스 김광현(35)을 필두로 추신수(41), 김강민(41) 등 베테랑들이 제 몫을 해줬다. 여기에 최지훈(26), 박성한(25) 등 젊은 선수들도 주전으로 입지를 확고히 다진 신구조화를 이룬 팀이었다. 정규시즌 처음부터 끝까지 단 한 번도 1위를 놓치지 않는 와이어 투 와이어 우승을 KBO리그 최초로 달성했고 한국시리즈도 이변 없이 제패했다. </p>
<p dmcf-pid="QLpyFR7AC3" dmcf-ptype="general">올해도 정규 시즌을 3위로 마무리했으나, 하루아침에 우승 감독은 야인이 됐다. 결과는 정반대지만, 지난해 한국시리즈 도중 3년 총액 22억 원(계약금 7억 원, 연봉 5억 원)의 KBO리그 최고 대우를 안겨준 퍼포먼스에 버금가는 결정이었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="xoUW3ezcSF" dmcf-ptype="figure">
<p class="link_figure"><img alt="김원형 감독. /사진=SSG 랜더스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101054107125lsyv.jpg" data-org-width="647" dmcf-mid="B1vkhqWQl9" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101054107125lsyv.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김원형 감독. /사진=SSG 랜더스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="ytAMaGEuvt" dmcf-ptype="figure">
<p class="link_figure"><img alt="SSG 선수단이 지난 10월 25일 창원NC파크에서 열린 2023 KBO리그 준플레이오프 3차전 패배 후 팬들에게 인사 후 더그아웃으로 향하고 있다. /사진=SSG 랜더스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101054108414jexw.jpg" data-org-width="647" dmcf-mid="beGmy2ZdWK" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101054108414jexw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            SSG 선수단이 지난 10월 25일 창원NC파크에서 열린 2023 KBO리그 준플레이오프 3차전 패배 후 팬들에게 인사 후 더그아웃으로 향하고 있다. /사진=SSG 랜더스
           </figcaption>
</figure>
<div dmcf-pid="W4yDSbGMh1" dmcf-ptype="general">
<br/>그 이유로 변화와 혁신, 세대교체를 끊임없이 언급했다. SSG는 동봉한 질의응답에서 "지속적으로 발전하는 팀을 위해서는 변화와 혁신이 필요하다고 봤다. 늦는 것보다는 좀 더 빠르게 결정하는 게 낫다고 판단해 단행했다. 처음에는 선수단 구성, 세대교체, 팀 운영 및 경기 운영 전반에 선수 및 코칭스태프 구성으로 가닥을 잡았으나 감독 교체까지 진행하게 됐다"고 재차 강조했다.
          </div>
<p dmcf-pid="Y8WwvKHRT5" dmcf-ptype="general">성적으로 인한 계약 해지가 아니라고 강하게 부인했으나, NC 다이노스와 준플레이오프 스윕패가 결정적인 역할을 한 것은 분명해 보인다. 김성용 SSG 단장은 10월 31일 스타뉴스와 통화에서 "NC와 준플레이오프 시리즈 때문에 내린 결정은 아니다"라고 하면서도 "상대 팀에서 젊은 선수들이 잘해준 것이 보였다. (반대로) 우리는 노장 선수들이 좀 있다는 것이 느껴졌다. 그 베테랑들이 지금껏 잘해준 것은 당연하지만, 앞으로의 미래도 중요하다고 생각했다. 그렇게 시즌 종료 후 내년 구상을 위한 내부 논의를 하는 과정에서 세대교체와 변화, 혁신을 가져갈 필요가 있다고 생각했다"고 설명했다.</p>
<p dmcf-pid="G6YrT9XeTZ" dmcf-ptype="general">확실히 SSG는 KBO리그에서 평균 연령이 높은 팀 중 하나다. 준플레이오프(5전3선승제)에 임했던 주전 야수 라인업에서 20대는 박성한과 최지훈뿐이었다. 2연패로 벼랑 끝에 몰려 최선의 선택을 한 것이 불혹의 추신수가 리드오프, 최정(36)-한유섬(35)-하재훈(33)이 클린업을 이룬 라인업이었다. 타격에 확신이 없었던 20대 최지훈과 조형우(21)는 대타로 들어섰을 뿐이다.</p>
<p dmcf-pid="HtAMaGEuWX" dmcf-ptype="general">마운드는 더 심각해서 고효준(40)-노경은(39)의 최고참 두 사람이 30대 마무리 서진용(31)과 필승조를 이뤘고 김광현(35)은 여전히 외국인 선수를 제외하면 가장 믿을 만한 에이스였다. 최민준(24)을 제외하면 안정적으로 풀 시즌을 돌아줄 20대 젊은 투수를 찾지 못했고 이는 결국 가을야구까지 발목을 잡았다.</p>
<p dmcf-pid="XFcRNHD7SH" dmcf-ptype="general">김성용 단장은 현장에서 베테랑들을 중시한 것에 "고참 선수도 뛰어야 하지만, 젊은 선수들에게 기회를 줬으면 더 좋지 않았을까 하는 부분도 있었다. 세대교체 면에서 그런 것도 중요하다면 중요하다고 생각한다"라고 설명했다.</p>
<p dmcf-pid="Z3kejXwzTG" dmcf-ptype="general">이미 우승 감독까지 논란을 감수하고 경질한 마당에 세대교체는 피할 수 없는 흐름이 됐다. 자연스레 내년 시즌 구상에 추신수, 김강민 등 베테랑의 거취는 뜨거운 관심사가 됐다. 이에 김성용 단장은 "일단 선수들에게 최대한 예의를 갖추면서 거취 문제를 상의하려 한다. 아직은 그런 이야기를 나누지 않았다. 앞으로 만나서 면담할 계획"이라고 전했다. </p>
<p dmcf-pid="5BIamplfSY" dmcf-ptype="general">김동윤 기자 dongy291@mtstarnews.com</p>
</section>
</div></p></section></div><h6>[Source : 스타뉴스]</h6></div>
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