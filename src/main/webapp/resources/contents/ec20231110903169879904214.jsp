
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
    <h3>“인재는 롤 모델과 혜택 있어야 모여… 연구할 땐 뭘해도 간섭 말아야”[창간 32주년 특집]</h3><h6>박정민 기자  2023. 11. 1. 09:03</h6>
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
<section dmcf-sid="Y5uCsho5lr">
<figure class="figure_frm origin_fig" dmcf-pid="Gu2YTGEuSw" dmcf-ptype="figure">
<p class="link_figure"><img alt="염재호(왼쪽) 태재대 총장이 지난 10월 24일 서울 강남구 한국기술센터 8층에 위치한 ‘산업통상자원 R&amp;D전략기획단’(OSP) 단장실에서 진행된 문화일보 ‘혁신거장과의 대화’에서 장웅성 OSP 단장과 대담을 하고 있다. 박윤슬 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090312261pmgp.jpg" data-org-width="650" dmcf-mid="ybKySWcphs" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090312261pmgp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            염재호(왼쪽) 태재대 총장이 지난 10월 24일 서울 강남구 한국기술센터 8층에 위치한 ‘산업통상자원 R&amp;D전략기획단’(OSP) 단장실에서 진행된 문화일보 ‘혁신거장과의 대화’에서 장웅성 OSP 단장과 대담을 하고 있다. 박윤슬 기자
           </figcaption>
</figure>
<p dmcf-pid="H7VGyHD7hD" dmcf-ptype="general">진행 = 장웅성 산업통상자원 R&amp;D전략기획단장　　</p>
<p dmcf-pid="0AlZH1sbhu" dmcf-ptype="general">정리 = 박정민 기자 bohe00@munhwa.com</p>
<p dmcf-pid="ZKP1XtOKTk" dmcf-ptype="general">최근 미국, 중국 등 인공지능(AI) 분야 급성장은 우리나라가 미래에 경쟁력을 갖기 위해선 어떤 노력이 필요한지에 대해 환기시키는 계기가 됐다. 하지만 어떤 방식의 노력이 필요한지에 대해선 정부도, 민간도 헤매는 모습이다. 새로운 시스템으로의 혁신은 어떻게 이뤄져야 하는지 문화일보가 1일 창간기획으로 ‘혁신거장과의 대화’를 준비했다. 핵심기술 발굴 역할을 맡은 ‘산업통상자원 R&amp;D전략기획단’(OSP)의 장웅성 단장이 세 차례에 걸쳐 우리 사회의 현자들로 불리는 인사들과 대담을 진행해 해답을 모색한다. 첫 번째 초청 인사이자 대학 교육의 틀을 깨뜨린 염재호 태재대 총장을 통해 혁신적 전환의 초석인 인재 교육은 어떻게 이뤄야 할지 고견을 들었다. 대담은 지난 10월 24일 서울 강남구 한국기술센터 8층의 OSP 단장실에서 진행됐다.</p>
<p dmcf-pid="59QtZFI9vc" dmcf-ptype="general">장웅성 OSP 단장(이하 장 단장) : 미국은 스티브 잡스, 일론 머스크로 대표되는 혁신가들이 등장해 산업의 패러다임 변화를 주도하며 첨단산업의 패권을 공고히 지켜나가고 있다. 또 싱가포르나 아일랜드 같은 작은 나라들은 개방형 혁신 전략으로 급성장하고 있다. 최근 중국을 위협하며 연 6%의 높은 경제성장을 이루고 있는 인도의 약진은 실로 눈부실 정도다. 이런 상황에서 OSP의 역할은 대한민국이 산업대전환의 파고를 넘어 글로벌 혁신 허브로 자리매김하는 데 기여할 수 있는 연구·개발(R&amp;D) 전략을 수립하는 것이다. 이를 위해 염 총장과 같은 우리 사회 거장들을 모시고 새로운 미래 방향을 모색하고자 한다. 오늘은 우선 지금과 같은 전환 시기 산업에 필요한 인재 육성을 어떻게 해야 할지 이야기를 나눠보고 싶다. </p>
<p dmcf-pid="1eaKq9XelA" dmcf-ptype="general">염재호 태재대 총장(염 총장) : 과거 인쇄술의 발전은 세상을 바꿨다. 성당에서 신부님 얘기만 듣다가 독일어로 인쇄된 성경을 직접 읽은 이후 세상은 달라졌다. 인류사 혁명들이 이런 기술의 진보 이후 일어났다. 20세기 후반은 디지털로 모든 게 바뀌었다. 정보기술(IT) 기업의 성장 특히 아마존, 우버 등 새로운 전환 기업들이 나오고 있는 상황이다. 이런 흐름 속에서 정부는 장기적으로 기술·산업의 트렌드를 읽어야 한다. 정부 차원에서 반도체 분야 육성을 얘기하지만 여기에선 반도체 학과를 만드는 것이 해결책은 아니다. 유수 대학에 많은 석·박사급 인재가 있는데, 반도체 학과 하나 만든다고 해결될까? 기초적 수학, 물리학을 학부에서 제대로 배우는 것이 중요하다. 혁신적 아이디어는 기초지식의 융합에서 나온다. 이런 결과물을 얻을 수 있는 큰 그림을 그려서 인력을 육성하는 방법을 정부가 고민해야 한다.</p>
<p dmcf-pid="tdN9B2Zdyj" dmcf-ptype="general">장 단장 : 사회·산업 변화는 역동적이다. 근데 우리 대학 교육은 ‘사일로(Silo) 시스템’을 벗어나지 못하고 있다. 이런 교육체계에서 산업현장으로 나오면 또 다른 교육을 기업에서 받거나 재교육을 받는 불합리한 점이 있다. 대학이 산업계가 원하는 인재를 길러내지 못하는 측면이 크다. </p>
<p dmcf-pid="FJj2bV5JhN" dmcf-ptype="general">염 총장 : 사실 산업계도 일부 책임이 있다. 대기업 인사부서들은 아직도 대학 졸업장을 중요하게 생각하기 때문이다. 포스코에서 AI 관련 사내 콘테스트를 했는데, 1등이 유명대 출신이 아닌 공고 출신이었다. 수상자에게 ‘어떻게 AI에 대해 전문가가 됐냐’고 물어보니, AI가 미래에 각광받을 것이라 생각하고 ‘코세라(Coursera)’와 같은 플랫폼에서 온라인으로 매사추세츠공대(MIT)나 스탠퍼드대의 관련 콘텐츠를 돈 주고 사서 공부했다는 것이다. 독학하더라도 잘할 수 있는 인재들이 중요하다. 20세기는 대형화된 시스템에서 정해진 콘텐츠를 배우는 식으로 돌아갔지만, 지금은 AI가 그런 것을 대체한다. 21세기 사회는 첨단기술과 이런 아이디어 기반의 프로젝션으로 가도록 고민해야 한다. 우리나라는 시장도 작아 결국 세계를 상대로 먹고살아야 한다. 현재 미국이 주도하는 IT와 금융에 어떻게 끼어들어 갈 수 있을지, 그리고 이에 걸맞은 인력을 어떻게 키워낼 수 있을지, 이런 역할을 정부가 해야 한다. 국가는 10년 뒤를 위해서라도 전략을 세워야 한다.</p>
<p dmcf-pid="3xLquBYxTa" dmcf-ptype="general">장 단장 : 정부가 그랜드 디자인을 실행해야 하는 점에 대해 강조해 주셨다. 크진 않지만 정부도 R&amp;D 수술 작업을 진행하고 있다. 그간 방식에서 탈피해서 큰 국가적 미션, 산업대전환을 성공시키는 것이 미션이다. 우리가 잘해 온 것, 앞으로 육성해야 할 새로운 것이 무엇인지 찾아내서 달성하는 것에 산업통상자원부의 R&amp;D 예산이 집중돼야 한다. 국가 산업을 어떻게 대전환할 것이냐, 거기에 걸맞은 인력은 어떻게, 인프라는 어떻게 맞춰야 할지 고민하는 단계다. 이런 것이 함께 작동할 수 있도록 국가 혁신 시스템의 재정비가 필요하다.</p>
<p dmcf-pid="0MoB7bGMlg" dmcf-ptype="general">염 총장 : 정부 R&amp;D, 특히 과학기술정보통신부 중심의 R&amp;D는 논문을 쓰는 것에서 끝났다. 국가 산업 발전엔 큰 기여를 하지 못하고, 연구 자체에 머물렀다. 교수들도 크게 돈을 벌지 못했다. 프로젝트 자체 논문을 생산하는 데 돈이 들어갔지, 교수가 벌어가는 것은 없었다. 대기업뿐만 아니라 중견기업들도 이제는 기술개발이 중요해서 내가 고려대 총장 재임 때 ‘R&amp;D기획본부’를 만들어 우리가 아이디어를 발굴해 정부 R&amp;D를 따오자고 했다. 그래서 기업에서 연구비를 펀딩받아서 프로젝트를 진행시켰다. 모 대기업에서 R&amp;D 1건을 수주했는데, 12억 원 규모였다. 이를 일단 학교가 주선했기에 30%를 오버헤드(고정비용)로 갖고, 나머지는 R&amp;D 당사자, 즉 교수에게 연구비로 다 줬다. 철저하게 자율에 맡기고 뭘 해도 간섭하지 않았다. 이런 방식을 해보니 1년 사이에 대형 연구를 포함해 연구비 수주 규모가 200억 원까지 추가로 늘었다. 다른 유수 대학들, 하버드, MIT미디어랩 등에선 교수에게 자율과 인센티브를 엄청나게 보장하며 기업 프로젝트를 받아서 산학협력을 한다. </p>
<p dmcf-pid="pRgbzKHRWo" dmcf-ptype="general">장 단장 : 정부는 기존 우리가 갖고 있는 대학 인프라(혹은 출연연구기관), 특히 지방 대학 인프라를 제대로 활용·지원하면 좋을 것 같다. 그리고 그들에게 상당한 자율을 줘 프로젝트가 성과를 낸다면 혁신의 패러다임을 바꾼, 좋은 모델이 되지 않을까.</p>
<p dmcf-pid="Ub65H1sbvL" dmcf-ptype="general">염 총장 : 국가는 장기적으로 ‘넥스트 스텝’이 무엇인지 고민해야 한다. 미래를 보고 정책을 내면 할 것이 되게 많다. 박정희 전 대통령이 혜안을 갖고 카이스트를 설립한 것은 혁명적이었다. 인력을 확보하기 위해 갖가지 파격적 대우를 제시했다. 군사정부에서 카이스트 출신들에게 군대 면제 혜택을 줬으니 말이다. 인재들은 롤모델과 그런 혜택들이 있어야 모인다. 이제는 해외 인재 유치를 위해 이 같은 파격적 혜택을 제공해야 한다. 특히 동남아, 제3세계 출신 중 미국 등에서 공부한 인재들을 우리나라가 적극적으로 영입한다면 인재 영입에 대한 정부의 의지가 강하다는 것을 대외에 보여줄 수 있다.</p>
<p dmcf-pid="uKP1XtOKhn" dmcf-ptype="general">장 단장 : 결국 그런 의지, 절박함이 있어야 한다. 그러나 그 같은 파격적인 대우를 해주기엔 현실적 규제가 너무 심하다. 또 사회 전반에서 형평성을 강조하는 분위기가 있다. 미래 육성 분야에 대한 예산 집중도 제대로 안 되는 경우가 많다. 처음 목표한 규모가 줄어들어 푼돈 지원으로 전락한다. 지역 대학 인재 유치도 이런 차원에서 본다면 해결이 가능하지 않을까. 이민정책도 인재 유치를 위해 적극적으로 이뤄져야 한다. </p>
<p dmcf-pid="79QtZFI9yi" dmcf-ptype="general">염 총장 : 미국의 존 F 케네디 대통령이 인간을 달에 보내기 위해 나사(미 항공우주국)를 설립할 때 예산 낭비라며 의회 반대에 부딪혔다. 그러나 지금은 나사의 기술로 미국이 먹고산다 해도 과언이 아니다. 당시 케네디 대통령은 “가능한 것이라면 미국이 할 이유가 없다”고 말했다. 이것이 나사의 존재 이유다. 윤석열 대통령은 도전적 과제에 대해 이런 강력한 의지를 갖고 범정부 차원에서 추진해야 한다. 혁신이란 균형의 파괴다. 그래야 움직인다. 우리는 너무 균형 잡기에 매몰돼 있는 상태다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="zfR0tplfTJ" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090313544nixj.jpg" data-org-width="650" dmcf-mid="WEZkjExvSm" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090313544nixj.jpg" width="658"/></p>
</figure>
<p dmcf-pid="yHn86MujCr" dmcf-ptype="general"><strong>■ 염재호 태재대 총장(사진 오른쪽)</strong></p>
<p dmcf-pid="B8dU3uv8ye" dmcf-ptype="general">·1955년 서울 출생 </p>
<p dmcf-pid="bWtwkreWWR" dmcf-ptype="general">·신일고 </p>
<p dmcf-pid="KYFrEmdYhM" dmcf-ptype="general">·고려대 행정학과</p>
<p dmcf-pid="917hOlg1lx" dmcf-ptype="general">·미국 스탠퍼드대 정치학 박사</p>
<p dmcf-pid="2tzlISatvQ" dmcf-ptype="general">·고려대 행정학과 교수 </p>
<p dmcf-pid="VFqSCvNFvP" dmcf-ptype="general">·고려대 정부학연구소장 </p>
<p dmcf-pid="fjmx6Mujl6" dmcf-ptype="general">·한국정책학회장 </p>
<p dmcf-pid="4AsMPR7Ah8" dmcf-ptype="general">·교육과학기술부 기관평가위원장</p>
<p dmcf-pid="8cORQezcC4" dmcf-ptype="general">·한일미래포럼 대표</p>
<p dmcf-pid="6DhJRibDvf" dmcf-ptype="general">·고려대 행정대외부총장</p>
<p dmcf-pid="PwlienKwWV" dmcf-ptype="general">·고려대 총장</p>
<p dmcf-pid="QrSndL9rC2" dmcf-ptype="general">·태재대 초대 총장</p>
<p dmcf-pid="x17hOlg1T9" dmcf-ptype="general"><strong>■ OSP는…</strong></p>
<p dmcf-pid="yLk428FLWK" dmcf-ptype="general">‘산업통상자원 R&amp;D전략기획단’(OSP)은 산업기술혁신촉진법 제6조 3항에 의거해 미래산업 성장동력 발굴과 핵심기술 개발을 지원하기 위해 2010년 출범했다. 산업기술 정책과 R&amp;D 투자전략 수립 등의 업무를 수행하고 있으며, 호주 모나시대 재료공학 박사 출신으로 대한용접접합학회 회장과 인하대 융합혁신기술원 원장을 역임한 장웅성 단장이 지난해 10월 부임해 OSP를 이끌고 있다.</p>
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