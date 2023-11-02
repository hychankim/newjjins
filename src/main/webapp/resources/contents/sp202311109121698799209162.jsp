
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
    <h3>오르고, 뛰고, 쏘고… ‘온몸으로 느끼는 스포츠’ 즐거움이 커진다[창간 32주년 특집]</h3><h6>정세영 기자  2023. 11. 1. 09:12</h6>
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
<section dmcf-sid="zpy307T6hY">
<figure class="figure_frm origin_fig" dmcf-pid="qYryWXwzvW" dmcf-ptype="figure">
<p class="link_figure"><img alt="문화일보 체육부 정세영 기자가 지난달 20일 경남 진주 내동면의 스포츠가치센터 내 다목적체육관에서 안전줄에 의지한 채 인공 암벽을 오르고 있다.  국민체육진흥공단 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091220695ocwe.jpg" data-org-width="650" dmcf-mid="psHHXtOKvZ" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091220695ocwe.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            문화일보 체육부 정세영 기자가 지난달 20일 경남 진주 내동면의 스포츠가치센터 내 다목적체육관에서 안전줄에 의지한 채 인공 암벽을 오르고 있다. 국민체육진흥공단 제공
           </figcaption>
</figure>
<p dmcf-pid="BGmWYZrqTy" dmcf-ptype="general">진주=정세영 기자 niners@munhwa.com</p>
<p dmcf-pid="buYpUqWQWT" dmcf-ptype="general">건전한 스포츠 활동은 국민의 건강한 몸과 건전한 마음, 질 높은 삶에 기여한다. 특히 디지털 혁명 시대인 지금, 날씨와 환경에 제약을 받지 않고 누구나 쉽게 즐길 수 있는 실감형 스포츠에 대한 국민적인 관심이 높다. 이런 가운데 국민체육진흥공단이 경남 진주에 만든 스포츠가치센터가 눈길을 끌고 있다. 오는 11월 23일 개관하는 스포츠가치센터를 직접 찾아가 봤다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="K7GUuBYxhv" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091222066ipju.jpg" data-org-width="650" dmcf-mid="UtoogA6hvX" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091222066ipju.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="9zHu7bGMTS" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091223456vicm.jpg" data-org-width="650" dmcf-mid="ulLLoj8CWH" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091223456vicm.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="UJuT4QpaWS" dmcf-ptype="figure">
<p class="link_figure"><img alt="스포츠가치센터에선 다양한 체험을 할 수 있다. 사진은 지난달 20일 경남 진주의 센터를 찾은 문화일보 정세영 기자가 집라인(왼쪽부터), 양궁 활쏘기, 골프 퍼팅을 체험하는 모습.  국민체육진흥공단 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091224663alot.jpg" data-org-width="650" dmcf-mid="7K3928FLvG" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091224663alot.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            스포츠가치센터에선 다양한 체험을 할 수 있다. 사진은 지난달 20일 경남 진주의 센터를 찾은 문화일보 정세영 기자가 집라인(왼쪽부터), 양궁 활쏘기, 골프 퍼팅을 체험하는 모습. 국민체육진흥공단 제공
           </figcaption>
</figure>
<p dmcf-pid="VUW0pzyPvh" dmcf-ptype="general"><strong>◇국내 최대 스포츠 체험장을 가다</strong></p>
<p dmcf-pid="fuYpUqWQyC" dmcf-ptype="general">지난달 20일 오후 1시. 경남 진주에 있는 스포츠가치센터에 도착했다. 한적한 시골길 분위기의 국도를 달려 목적지 부근에 다다랐을 때, 커다란 규모를 자랑하는 스포츠가치센터 메인 건물이 눈에 확 들어왔다. 스포츠가치센터는 부지면적 4만8742㎡, 연면적 1만1817.18㎡의 웅장한 규모다. 스포츠가치센터 내 모든 프로그램은 체험 중심으로 무려 18개가 마련돼 있다. 백 번 보고 듣는 것보다 직접 한 번 해보는 게 낫지 않겠나. 일단 몸으로 부딪쳐보기로 했다.</p>
<p dmcf-pid="4L4inafOvI" dmcf-ptype="general"><strong>◇오르고, 뛰고… 뻗어버린 ‘저질 체력’</strong></p>
<p dmcf-pid="8o8nLN4ISO" dmcf-ptype="general">첫 시작은 다목적체육관 내 인공 암벽등반 체험. 약 7m 높이의 정상을 힘겹게 올라왔는데, 다시 내려가는 게 걱정이었다. “진짜 안전해요?”라는 기자의 말에 스포츠가치센터 관계자는 “안전합니다. 가볍게 툭툭 벽을 차고 내려오면 됩니다”라고 말했다. 발이 떨어지지 않았다. 겁이 났다. 긴 망설임 끝에 용기를 내 조심스럽게 발을 떼고, 줄에 몸을 맡겼다. 출렁. 튼튼한 줄이 꽤 무거운 기자의 체중을 견뎠다. 걱정이 사라졌다. 조심스레 벽을 차며 하강했고, 엉거주춤한 자세로 바닥에 발이 닿자마자 벌러덩 자빠졌다. 관계자들 사이에선 폭소가 터졌다. “진짜 겁이 많은 것 같네요.” 체험을 지켜보던 허선호 스포츠가치센터 팀장이 껄껄 웃었다.</p>
<p dmcf-pid="6g6Loj8CWs" dmcf-ptype="general">체험 시설동 내 다목적체육관 크기는 상당했다. 체육관 2층의 챌린지코스로 향했다. 헬멧, 안전줄을 착용하고 나무다리, 그물 등의 다양한 장애물을 통과한 뒤 집라인(Zipline)을 타고 내려오는 프로그램. 기자가 장애물을 하나씩 통과할 때마다 관계자들의 환호성이 터졌다. 그리고 마지막 코스인 집라인에 몸을 싣고 빠른 속도로 내려오니 속이 뻥하고 뚫렸다. “야호∼” 허 팀장은 “암벽등반과는 달리 집라인 자세는 좋네요”라고 말했다.</p>
<p dmcf-pid="P7GUuBYxTm" dmcf-ptype="general">다목적체육관을 나와 스마트스포츠 체험관으로 이동했다. “이번엔 힘을 많이 쓰셔야 할 겁니다.” 허 팀장이 의미심장한 웃음을 보냈다. 스마트스포츠 체험관은 동작 인식 센서 등 첨단 과학을 활용해 기초체력을 측정하는 반응형 체험공간. 거스 히딩크 축구 대표팀 감독 시절 공포의 ‘삑삑이’로 불린 왕복달리기가 첫 코스였다. 신호음에 맞춰 왕복했다. 점점 호흡이 가빠졌고, 다리는 후들거렸다. ‘저질 체력’이 문제다. 먼저 시범을 보인 관계자가 “벌써 이러면…”이라며 쓴웃음을 지었다. 허 팀장은 “쉬엄쉬엄해도 됩니다. 힘내요.” 시어머니보다 말리는 시누이가 더 밉다고 했던가. 왕복달리기를 마치고 줄넘기, 발 구르기 등으로 기록을 차례로 측정했다. 허 팀장은 “빔프로젝터와 동작 인식 센서를 활용한 이곳은 다양한 시각 효과와 재미까지 더해져 초등학생, 중학생들에게 인기가 높다”고 귀띔했다.</p>
<p dmcf-pid="QzHu7bGMyr" dmcf-ptype="general">체육관을 나와 이번엔 야외로 향했다. 탁 트인 운동장과 맑은 하늘. “잠깐 쉬어도 될까요?” 그런데 턱도 없다. 그러지 말고 양궁장으로 가자고 재촉한다. 국가대표 상비군을 지낸 조선미 스포츠지도사가 반갑게 인사를 건넸다. “체육 전문 기자시죠? 이 정도 거리에선 10점 만점을 쏴야죠.” 조 지도사가 승부근성을 자극했다. 과녁과 거리는 15m. 활을 잡고 쏘는 방법을 간단히 배웠다. 그리고 실전. 첫발이 시원하게 과녁을 빗나갔다. “아, 이게 아닌데.” 우스꽝스러운 모습으로 활을 쏘는 기자를 바라보는 관계자들이 웃는다. 오기가 생겼다. 영점이 조금씩 잡혔다. 팔꿈치가 저릴 때쯤이 되자 화살이 조금씩 과녁 정중앙으로 향했다. 10여 발을 쐈을까. ‘슝’하고 날아간 화살이 과녁 정중앙에 꽂혔다. “만세!” “그것 봐요. 열심히 하면 안 되는 게 없다니까!” 조 지도사가 기자보다 더 기뻐했다. </p>
<p dmcf-pid="xqX7zKHRCw" dmcf-ptype="general"><strong>◇“스포츠를 즐길 환경을 드립니다.”</strong></p>
<p dmcf-pid="yV3928FLyD" dmcf-ptype="general">야외 체험 마지막 코스인 골프 퍼팅까지 약 2시간에 걸쳐 모든 코스를 완주했다. 스포츠가치센터에선 학교 현장에서 진행하기 어려운 기초 종목 프로그램을 제공해 스포츠를 단순히 ‘즐기는’ 단계를 넘어 ‘느끼는’ 경험을 제공한다. 정식 개장 후엔 일반인도 같은 체험을 할 수 있다고 한다. 허 팀장은 “흥미를 느끼는 게 중요하기 때문에 재미에 방점을 뒀다. 가족 관람객은 언제나 환영”이라고 대답했다. 프로그램 체험비용도 당일 기준 3만 원 내외. 체험을 단 하루만 즐기기 아쉽다면 숙박시설을 이용해도 된다. 정신없지만 즐겁게 2시간을 체험하다 보니 자연스럽게 스포츠의 가치에 대해 생각하게 됐다. 답은 간단했다. 스포츠를 통한 활력 있는 사회의 실현. 그 가치를 본격적으로 체험할 수 있는 곳이 등장해 반가웠다.</p>
</section>
</div></p></section></div><h6>[Source : 문화일보]</h6></div>
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