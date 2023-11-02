
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
    <h3>AI가 직접 로봇 제작하는 시대</h3><h6>이종림 과학전문기자  2023. 11. 1. 09:01</h6>
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
<section dmcf-sid="Gmzxsho5yM">
<p dmcf-pid="H6I5PR7ATx" dmcf-ptype="general">오픈AI의 챗GPT를 기점으로 인공지능(AI) 기술이 무서운 속도로 발전하고 있다. AI가 인간의 다양한 영역을 대체하는 가운데 최근에는 로봇 제작 분야까지 진출하는 모습이다. 로봇의 핵심 기술인 AI가 직접 로봇을 설계하고 만들어내는 시대가 온 것이다. 학계에서는 AI가 로봇 제작 기간을 단축하는 것은 물론, 인간을 넘어 더 창의적이고 지능적인 로봇을 만들 것이라는 예측이 나오고 있다.</p>
<div dmcf-pid="X9DW28FLCQ" dmcf-ptype="general">
<h4>순간 진화로 9번 시도 끝 성공</h4>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="Z2wYV63oWP" dmcf-ptype="figure">
<p class="link_figure"><img alt="인공지능(AI)이 직접 설계한 걸을 수 있는 소프트로봇. [노스웨스턴대 매코믹 공과대학 연구팀 유튜브 캡처]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090122831rcjn.jpg" data-org-width="650" dmcf-mid="Q43KNkQSWi" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090122831rcjn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            인공지능(AI)이 직접 설계한 걸을 수 있는 소프트로봇. [노스웨스턴대 매코믹 공과대학 연구팀 유튜브 캡처]
           </figcaption>
</figure>
<div dmcf-pid="5VrGfP0gW6" dmcf-ptype="general">
           미국국립과학원회보(Proceedings of the National Academy of Sciences)에 따르면 최근 미국 노스웨스턴대 매코믹 공과대학 연구팀은 로봇을 지능적으로 설계하는 AI를 개발했다. 이 AI 프로그램은 아주 큰 데이터 세트가 필요한 슈퍼컴퓨터가 아닌, 일반 개인용 컴퓨터(PC)에서 구동된다.
          </div>
<p dmcf-pid="1VrGfP0gv8" dmcf-ptype="general">연구팀은 이 AI 프로그램을 활용해 20여 초 만에 이동 가능한 소프트로봇을 제작하는 데 성공했다. 연구팀이 AI 프로그램에 평평한 표면을 걸을 수 있는 로봇을 설계하라는 명령을 입력하자 AI는 기존과는 다른 새로운 방식으로 로봇 제작에 접근했다. 비누 1개 정도 크기의 블록에서 시작해 움직이는 로봇 형태를 만들어낸 것이다. AI는 시뮬레이션 된 로봇이 실제로 걸을 수 있는지 설계를 평가하고 결함을 식별하면서 블록을 조금씩 다듬어나갔다. 로봇이 점차 형태를 갖춰나감에 따라 로봇 움직임이 걷는 방식으로 정교해진 것이다. 그렇게 9번 시도 끝에 초당 사람 몸길이의 절반, 즉 평균적인 보폭의 절반 속도로 걸을 수 있는 소프트로봇이 탄생했다.</p>
<p dmcf-pid="tfmH4Qpay4" dmcf-ptype="general">AI가 로봇을 걷게 하기 위해 고안한 것은 생명체의 다리 형태와 유사했다. 다만 자연에서는 생명체 다리가 대칭인데, AI는 다리가 3개인 구조를 만들어냈다. 등에 지느러미가 있고 얼굴은 평평하며 구멍이 여러 개 뚫린 동물 모양의 로봇을 디자인한 것이다. 이 로봇은 몸에서 공기가 빠지면 다리가 수축된다. 로봇에 공기를 지속적으로 주입하면 로봇은 팽창과 수축을 반복하면서 느리지만 꾸준히 이동할 수 있다.</p>
<p dmcf-pid="F4sX8xUNvf" dmcf-ptype="general">이 연구를 주도한 샘 크리그먼 노스웨스턴대 매코믹 공과대학 컴퓨터과학 조교수는 "자연이 최초의 걷는 종을 진화시키는 데 수십억 년이 걸렸지만 AI는 단 몇 초 만에 '순간 진화'해 걷는 로봇을 만들어냈다"며 "인간의 편견에 영향받지 않고 지구상 어떤 생명체와도 닮지 않은 새로운 형태의 로봇이 탄생했다"고 말했다.</p>
<p dmcf-pid="3r7QmCLZhV" dmcf-ptype="general">이번 연구 결과는 향후 로봇 제작 분야에서 AI가 제약 없는 설계와 활용 가능성의 길을 열어줄 것이라는 기대를 모은다. 연구팀은 "추후 AI가 열과 진동 신호를 따라 붕괴된 건물 속 잔해를 탐색하는 구조 로봇, 도심 하수 시스템을 진단하는 로봇, 인체에 들어가 혈류를 통해 질병을 진단하거나 암세포를 죽이는 나노 로봇을 설계할 수 있다"고 설명했다.</p>
<div dmcf-pid="0mzxsho5C2" dmcf-ptype="general">
<h4>MIT가 개발한 로봇 설계 문법 AI</h4>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="psqMOlg1v9" dmcf-ptype="figure">
<p class="link_figure"><img alt="매사추세츠공과대(MIT)의 ‘로보그래머(RoboGrammar)’가 설계한 다양한 형태의 로봇. [MIT 컴퓨터 과학 및 인공지능 연구소 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090124120qjov.jpg" data-org-width="650" dmcf-mid="xQB5PR7AlJ" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090124120qjov.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            매사추세츠공과대(MIT)의 ‘로보그래머(RoboGrammar)’가 설계한 다양한 형태의 로봇. [MIT 컴퓨터 과학 및 인공지능 연구소 제공]
           </figcaption>
</figure>
<div dmcf-pid="UOBRISatSK" dmcf-ptype="general">
           일반적으로 로봇 설계 과정에 AI를 활용하면 더 빠르고 유연한 모션 계획이 가능하고, 결과적으로 로봇이 더 자연스럽게 움직이도록 만들 수 있다. 이에 여러 개발자는 AI를 물리 기반 시뮬레이션 엔진과 통합함으로써 필요한 제약 조건을 충족하고 실제 응용에 최적화할 수 있는 로봇 설계 방식을 고민하고 있다.
          </div>
<p dmcf-pid="uEp8DsJGCb" dmcf-ptype="general">2020년 미국 매사추세츠공과대(MIT)는 다양한 용도의 로봇을 직접 설계할 수 있는 AI 프로그램을 개발했다. 일례로 로봇이 특정 지형을 횡단하려면 그에 적합한 형태로 설계돼야 한다. 통상 4족보행 로봇을 떠올리지만 그것이 최선의 방법이 아닐 수도 있는 것이다. MIT 컴퓨터 과학 및 인공지능 연구소(CSAIL)가 개발한 AI 프로그램 '로보그래머(RoboGrammar)'의 경우 시뮬레이션을 통해 로봇이 어떤 팔과 다리 디자인으로 만들어져야 가장 잘 작동하는지를 결정해준다. 로봇이 어떤 지형을 탐색해야 하는지 알려주면 로보그래머가 나머지 작업을 수행해 최적화된 구조와 제어 프로그램을 생성하는 식이다.</p>
<p dmcf-pid="7DU6wOiHyB" dmcf-ptype="general">매사추세츠공과대 연구진은 로봇 구성 요소 배열을 위해 그래프 문법을 개발하기도 했는데, 로봇이 아닌 곤충, 거미, 바닷가재 등 절지동물에서 영감을 받아 규칙을 채택했다. 로보그래머는 이 그래프 문법을 활용해 수십만 개의 잠재적인 로봇 구조를 설계할 수 있다. 그리고 컨트롤러를 통해 로봇 움직임을 제어하고 기능을 평가한다. 연구진은 '모델예측제어(Model Predictive Control)' 알고리즘을 사용해 각 로봇의 컨트롤러를 개발했다.</p>
<p dmcf-pid="zwuPrInXyq" dmcf-ptype="general">논문의 주 저자이자 CSAIL의 박사 과정 연구원인 앨런 자오는 "로봇 설계는 여전히 매우 수동적인 프로세스를 거치고 있다"며 "로보그래머는 더 효과적일 수 있는 새롭고 창의적인 로봇 디자인을 생각해내는 방법"이라고 설명했다.</p>
<p dmcf-pid="qmzxsho5Cz" dmcf-ptype="general">AI는 빠른 시간 안에 시뮬레이션을 실시하고 설계 변형을 반복하며 종국에는 고성능 설계에 수렴한다는 장점이 있다. 인간의 경우 프로젝트 난도, 팀원 간 협업, 각종 절차에 따라 몇 달 또는 몇 년씩 걸리는 기간을 대폭 단축해 과정을 간소화할 수 있는 것이다.</p>
<p dmcf-pid="BsqMOlg1C7" dmcf-ptype="general">현재 미국항공우주국(NASA)은 로봇은 아니지만 고도로 구조화된 하드웨어를 설계할 때 AI의 도움을 받고 있다. AI 알고리즘 기반의 '진화된 구조물(Evolved Structures)' 프로세스를 이용해 로켓이나 엔진, 우주망원경 등 각종 임무에 필요한 부품 개발을 지원하는 것이다. 이때 AI가 생산한 부품은 인간이 만든 것에 비해 유기적인 형태를 띠며 기능적으로도 뛰어나다. AI가 설계한 부품은 인간이 생산한 부품과 비교할 때 최대 10배의 구조적 하중을 견디면서도 부품 자체의 무게는 최대 3분의 2까지 줄일 수 있는 것으로 나타났다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="bOBRISatWu" dmcf-ptype="figure">
<p class="link_figure"><img alt="AI가 설계한 천체망원경의 알루미늄 발판. 유기적으로 구부러진 십자형 구조가 더 큰 하중을 견딘다. [미국항공우주국 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090125505lbrp.jpg" data-org-width="650" dmcf-mid="yvsgWXwzSd" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090125505lbrp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            AI가 설계한 천체망원경의 알루미늄 발판. 유기적으로 구부러진 십자형 구조가 더 큰 하중을 견딘다. [미국항공우주국 제공]
           </figcaption>
</figure>
<div dmcf-pid="Kjt2ADMTyU" dmcf-ptype="general">
           진화된 구조물 프로세스를 개발한 라이언 매클렐런드 NASA 엔지니어는 "인간이 2주에 1번씩 반복 수행하는 일을 AI는 1분에 1번씩 반복 수행할 수 있다"며 "디자인부터 제작까지 전 과정에 AI를 활용하면 기존보다 작업 속도가 약 10배 빨라진다"고 말했다.
          </div>
<div dmcf-pid="9AFVcwRyTp" dmcf-ptype="general">
<h4>챗GPT와 함께 개발한 토마토 수확 로봇</h4>다양한 분야에 생성형 AI가 활용되면서 이를 로봇공학에 활용하는 방안도 떠오르고 있다. 생성형 AI는 고품질의 구조화된 데이터와 잘 연구된 매개변수에 기반해 작동한다. 이러한 생성형 AI를 통해 인간이 더 창의적이고 효과적인 공동 설계를 수행하는 것이다. 이 역시 디자이너와 엔지니어의 오랜 협업 관계를 빠른 속도로 대체하고 있다.
          </div>
<p dmcf-pid="2c3fkreWC0" dmcf-ptype="general">최근에는 챗GPT를 활용해 토마토 수확 로봇을 설계한 사례도 나왔다. 네덜란드 델프트공과대와 스위스 로잔연방공과대 공동 연구팀은 챗GPT의 기능을 이용해 이 로봇의 디자인 개념부터 구현 단계까지 아이디어를 얻었다. 챗GPT는 경제적으로 가치 있는 작물을 자동화할 것과 실리콘이나 고무 그리퍼를 사용해 토마토가 손상되지 않도록 보호하는 방법 등 실용적인 제안을 했다. 또 로봇에 동력을 공급하는 모터 사용 등도 챗GPT로 구상했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="V6I5PR7Ay3" dmcf-ptype="figure">
<p class="link_figure"><img alt="수확 기능을 시험하고 있는 토마토 수확 로봇. [스위스 로잔연방공과대 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090126797uoel.jpg" data-org-width="650" dmcf-mid="WALspzyPhe" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090126797uoel.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            수확 기능을 시험하고 있는 토마토 수확 로봇. [스위스 로잔연방공과대 제공]
           </figcaption>
</figure>
<div dmcf-pid="fPC1QezcTF" dmcf-ptype="general">
           연구팀은 "인간과 AI의 협업에서 챗GPT가 더 많은 기술적 역할을 맡은 연구원으로 활동한 결과 효율적인 토마토 수확 로봇이 탄생했다"면서 "단 AI가 엔지니어링의 범위를 벗어나는 결정을 내리면 중대한 윤리적 또는 사실적 오류가 발생할 수 있다"고 설명했다.
          </div>
<p dmcf-pid="4QhtxdqkCt" dmcf-ptype="general">이처럼 AI가 로봇공학에 가져올 변화는 학계와 관련 업계에서 이미 인정받고 있는 추세다. 최근 엔비디아는 로봇 개발을 위한 엔비디아 젯슨(NVIDIA Jetson) 플랫폼 프레임워크 지원을 대대적으로 확장했다. 디푸 탤라 임베디드 및 에지 컴퓨팅 부사장 겸 총괄관리자는 "생성형 AI를 통한 로봇공학 혁명이 머지않았다"고 밝혔다. 다니엘라 루스 MIT CSAIL 책임자 역시 팟캐스트에서 "아직까지 AI가 인간의 모든 문제를 해결하지는 못하지만 매우 강력한 능력을 갖고 있다"며 "향후 AI가 로봇의 움직임과 작동 방식의 구조적 메커니즘을 구현하고 물리 법칙에 부합하는 로봇을 설계할 수 있을 것"이라고 말했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="87NhzKHRC1" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090128285lxik.jpg" data-org-width="400" dmcf-mid="Y1XBgA6hyR" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklydonga/20231101090128285lxik.jpg" width="658"/></p>
</figure>
<div dmcf-pid="6zjlq9XeS5" dmcf-ptype="general">
<sub>*유튜브와 포털에서 각각 '매거진동아'와 '투벤저스'를 검색해 팔로잉하시면 기사 외에도 동영상 등 다채로운 투자 정보를 만나보실 수 있습니다.</sub>
</div>
<p dmcf-pid="PqASB2ZdvZ" dmcf-ptype="general">이종림 과학전문기자</p>
</section>
</div></p></section></div><h6>[Source : 주간동아]</h6></div>
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