
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
    <h3>“韓경제는 대기업에 달려… 옭아매지말고 성장 이끌도록 지원해야”[창간 32주년 특집]</h3><h6>김선영 기자  2023. 11. 1. 09:00</h6>
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
<section dmcf-sid="PoacZFI9yj">
<figure class="figure_frm origin_fig" dmcf-pid="QmOlq9XeyN" dmcf-ptype="figure">
<p class="link_figure"><img alt="다카야스 유이치 일본 다이토문화대 교수가 지난 10월 19일 도쿄에 위치한 이타바시 캠퍼스 연구실에서 한국 정부가 취해야 할 대기업 정책에 대해 이야기하고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090015831kzjo.jpg" data-org-width="650" dmcf-mid="6Qq9jExvCA" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090015831kzjo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            다카야스 유이치 일본 다이토문화대 교수가 지난 10월 19일 도쿄에 위치한 이타바시 캠퍼스 연구실에서 한국 정부가 취해야 할 대기업 정책에 대해 이야기하고 있다.
           </figcaption>
</figure>
<p dmcf-pid="xsISB2ZdCa" dmcf-ptype="general">도쿄=글·사진 김선영 기자 sun2@munhwa.com</p>
<p dmcf-pid="ySTGfP0glg" dmcf-ptype="general">“한국의 성장은 그동안 대기업에 의해 결정됐으며 향후 성장도 대기업이 얼마나 열심히 하느냐에 달려 있습니다. 정권이 바뀔 때마다 국민 인기를 얻기 위해 재벌로 대표되는 대기업을 옭아맬 것이 아니라 대기업이 경제를 이끌 수 있도록 지원해야 합니다. 물론 재벌이 욕심을 부려 과중한 투자를 하지 않도록 경계하는 것도 정부의 임무입니다.” 일본 내 대표적 한국 경제 전문가 중 한 명으로 꼽히는 다카야스 유이치(高安雄一) 일본 다이토문화(大東文化)대 교수는 한국 경제가 저성장의 늪에 빠지지 않고 성장동력을 유지하기 위해서는 정권마다 바뀌는 대기업 정책을 일관성 있게 유지하는 것이 중요하다고 강조했다. 그는 “한국 경제는 재벌로 대표되는 대기업이 이끌어가는 역할이 큰 만큼 기본적으로 자유롭게 경영하도록 맡기되, 규제는 최소화하는 것이 좋다”며 “우선적으로 정부가 지지율을 높이기 위해 하던 ‘재벌 때리기’를 그만두는 것이 필요하다”고 말했다. 다카야스 교수는 내각부 국민생활국 총무과 조사실장 등을 거친 정통 경제 관료 출신으로, 주한일본대사관에서 서기관으로 근무한 일본 학계의 한국통이다. 지난 10월 19일 다이토문화대 도쿄 이타바시(板橋) 캠퍼스 연구실에서 만난 그는 경제협력개발기구(OECD) 등의 한국 잠재성장률 급락 전망과 관련해 “저출산·고령화가 심각한 현 상황에서 한국이 노동투입과 자본투입이 줄어드는 걸 막을 방법은 사실상 없다”며 “기술혁신을 통해 생산성 향상을 노려야 한다”고 제언했다. 그는 또 “고령자 연금을 계속 늘리는 포퓰리즘을 하면 재정이 파탄 난다”며 “미래 세대를 위해 이를 개선하지 않으면 재정이 파탄으로 몰리는 것은 순식간”이라며 연금개혁의 필요성을 강조했다.</p>
<p dmcf-pid="WvyH4QpaWo" dmcf-ptype="general">―OECD와 국제통화기금(IMF) 등 각종 연구기관은 수출 부진과 내수 둔화 등을 이유로 올해 한국 성장률 전망치를 하향 조정 중이다. 한국 경제 상황을 어떻게 판단하나.</p>
<p dmcf-pid="YyYZ6MujCL" dmcf-ptype="general">“한국 경제 상황은 후퇴 국면에 있다. 수출 부진 이유는 국가의 경제구조 문제에 기인한다. 한국이 중국 경제에 굉장히 의존하고 있기 때문이다. 한국의 핵심 산업인 반도체 수요도 전 세계적으로 부진한 상황이다. D램, 메모리 같은 주요 산업에 대해 세계 경제의 수요가 줄어들었다. 중국 경제가 안 좋은 데다 반도체 부진이라는 더블 펀치를 당하며 한국 경제 상황이 어려워졌다. 여기에 최근 한국 물가가 너무 높아졌다. 소비자 심리도 좋지 않아 상황이 더 안 좋아졌다. 하지만 중국의 경기 회복이나 반도체 수요 회복은 당장 올해는 바랄 수 없다. 따라서 한국 경기는 올해는 물론 내년에도 후퇴 국면이 이어질 가능성이 크다.” </p>
<p dmcf-pid="GWG5PR7Ayn" dmcf-ptype="general">―침체를 벗어나기 위해 정부가 가장 우선적으로 취해야 할 경제정책은 무엇이라고 생각하나.</p>
<p dmcf-pid="HYH1QezcCi" dmcf-ptype="general">“교과서적으로는 금리를 낮추는 금융정책, 정부 지출을 늘리는 재정정책 같은 거시경제정책을 펴는 것이 기본이다. 그러나 한국이 지금 금리를 인하하면 한·미 간 금리 차가 확대돼 원화가치가 하락하면서 수입물가 상승을 일으키고, 이는 결과적으로 금리를 올려 인플레이션을 억제해야 하는 문제가 생긴다. 또, 금리 차가 너무 나면 미국으로 자금이 쏠려 버린다. 지금 한국 정부의 재정정책은 균형재정을 기본으로 하고 있고, 이것은 국가채무비율과 연결돼 있기 때문에 정부 지출 확대에도 제약이 있다. 무리한 경기부양정책을 하면 재정적 무리가 올 것이다. 지금으로선 정부가 적극적으로 경제정책을 펴기보다는 세계 경제 경기를 보면서 반도체 경기가 좋아지기를 바라는 수밖에 없다.” </p>
<p dmcf-pid="XZ10enKwCJ" dmcf-ptype="general">―경제정책과 관련해 한국은 5년마다 정권이 바뀌면서 장기적인 국가 성장을 위한 경제정책을 세우지 못한다는 지적이 있다.</p>
<p dmcf-pid="Z5tpdL9rCd" dmcf-ptype="general">“한국의 거시경제정책은 큰 틀로 보면, 기획재정부를 비롯한 경제 관료들이 기본적으로 추진하고 있기 때문에 큰 변화가 없다고 볼 수 있다. 다만 대기업 정책에 대해서는 정권마다 차이가 심하다. 일반적으로 진보정권은 엄격하고, 보수정권은 느슨한 모습을 보인다. 한국에서는 정권에 따라 대기업 규제가 강화되거나 완화되면서 대기업 경영에 혼란을 빚어 왔다. 그러나 한국 경제는 대기업이 이끌어가는 역할이 큰 만큼 기본적으로 자유롭게 경영하도록 맡기고 규제는 최소화하는 것이 좋다.”</p>
<p dmcf-pid="51FUJo2mTe" dmcf-ptype="general">―한국의 대기업 정책이 정권마다 큰 차이를 보여 왔다고 했는데, 어떤 점에서 차이를 보였나.</p>
<p dmcf-pid="1digWXwzWR" dmcf-ptype="general">“대기업을 규제할지, 키워줄지에 대한 차이다. 이명박 정부 때는 대기업 경영을 지원했다. 박근혜 정부의 대기업 정책은 좀 엄격했다. 노무현 정부 때는 출자총액제한제도를 강화했고, 문재인 정부는 대기업 정책이 가장 엄격했다. 하지만 문 정부도 결국 한국은 대기업의 힘이 없으면 경제가 굴러갈 수 없는 만큼 결과적으로 대기업의 힘을 빌렸다. 한국은 대기업이 얼마나 열심히 했느냐에 경제 성장이 달려 있는 나라다. 삼성전자 반도체 같은 경우에도 고 이건희 회장이 절묘한 타이밍에 반도체 라인을 바꾸면서 전 세계적 선두주자로 올라서지 않았나. 대기업을 너무 규제하면 성장 가능성이 떨어진다. 5년마다 국민 인기를 얻기 위해 대기업을 풀어주고 옭아매고 할 게 아니라, 대기업이 경제 성장을 잘 이끌 수 있도록 지원해야 한다. 다만 1997년 이전에 경영자가 비합리적인 과잉 투자를 한 사례도 있으므로 주거래은행 등 대기업의 경영을 감시하는 체제도 필요하다.”</p>
<p dmcf-pid="tJnaYZrqSM" dmcf-ptype="general">―한국은 반기업 정서가 큰데 이는 기업 투자 확대의 걸림돌이 되고 있다. 반기업 정서 해소를 위해 정부나 기업이 해야 할 일은. </p>
<p dmcf-pid="FiLNG5mByx" dmcf-ptype="general">“한국은 기업을 세습 받는 것에 대한 반감이 굉장히 강하다. 그러다 보니 정부도 민심에 편승해 정부 지지율이 떨어지면 대기업 때리기를 하는 것이다. 문 정부도 대기업을 때리고 옭아매면 지지율이 올라가니 대기업을 탄압하는 정책을 폈다. 정부가 이처럼 지지율을 높이기 위해 대기업을 때리는 걸 그만두는 것이 필요하다. 반면, 일본은 반기업 정서가 크지 않다. 소유와 경영이 완전히 분리돼 있기 때문이다. 한국도 두 가지를 분리하는 게 대안이 될 것이다. 다만 소유와 경영을 분리하면 이 문제에 대한 짐은 덜어지겠으나, 한국의 장점이기도 한 대기업 총수의 빠른 의사결정이 느려질 수 있다. 소수 오너가 의사결정을 하되, 금융기관이나 외부에서 제대로 견제하는 기능을 고려할 필요가 있다.”</p>
<p dmcf-pid="3oacZFI9yQ" dmcf-ptype="general">―한국 잠재성장률이 OECD 국가 중 가장 빠르게 하락할 것이라는 지적이 있다. 장기적인 성장률 유지를 위해 잠재성장률 하락을 막는 것이 필요한데. </p>
<p dmcf-pid="0gNk53C2hP" dmcf-ptype="general">“잠재성장률은 노동투입 증가율, 자본투입 증가율, 생산성 증가율 등 3가지 요소에 의해 결정된다. 첫째, 한국은 선진국 중에서도 유례없는 속도로 저출산·고령화가 진행되며 노동투입 증가율이 마이너스를 기록하고 있다. 둘째, 고령화가 심화하면서 거시경제적으로 저축률이 떨어져 자본투입 증가율도 크게 악화할 가능성이 크다. 자본투입의 기본은 설비투자다. 고령화가 심화하면 저축률이 줄고 그에 따라 투자와 자본 축적률도 감소하고, 경제성장률도 떨어지는 악순환이 반복될 것이다. 현 상황에서 한국의 노동투입과 자본투입이 줄어드는 걸 막을 방법은 사실상 없다. 잠재성장률 하락을 막기 위해선 생산성을 향상시켜야 한다. 한국 경제가 살기 위해선 기존 주력 제품을 중심으로 제품 고도화를 도모하고, 새로운 성장산업을 육성해 생산성을 높이는 방안을 고려해야 한다. 새 성장산업 육성을 위해서는 스타트업·유니콘 기업을 키워야 한다. 기술 혁신을 통한 개발로 생산성을 높이는 게 중요하다. 우수한 젊은이들이 창업할 수 있는 환경과 의식개혁이 필요하지 않을까 생각한다. 이걸 하지 못하면 2050년은 금방 올 테니, 잠재성장률이 0%대로 주저앉아버릴 가능성이 크다.”</p>
<p dmcf-pid="pajE10hVv6" dmcf-ptype="general">―한국은 저출산·고령화가 심각한데 연금개혁이 제대로 이뤄지지 않고 있다. 저출산 문제와 연금개혁을 위해 정부가 해야 할 일은.</p>
<p dmcf-pid="UlvYV63ol8" dmcf-ptype="general">“한국의 저출산·고령화는 일본보다 심각한 상황이다. 50년 뒤 한국은 일본보다 저출산·고령화가 더 심해질 가능성이 크다. 2022년 기준으로 일본은 30%가 고령층, 한국은 16%가 고령층이지만, 2060년에 한국은 65세 이상이 40%가 넘는 국가가 된다. OECD 가입국 중 고령화율이 40%가 넘는 국가는 거의 없다. 지금 한국의 정부 부채가 크지 않은 건 고령화가 아직 심하지 않기 때문이다. 하지만 전후 베이비붐으로 태어난 세대가 연금을 받는 2026년부터는 문제가 심각해진다. 국민연금에 세금이 투입되는 걸 막기 위해선 정부 차원에서 연금 상승은 어렵다고 선을 긋고 세금 투입률을 낮춰야 한다. 초고령화가 심화하면 정치권에서 고령자 연금을 늘리는 포퓰리즘을 남발할 가능성이 있는데, 그런 식으로 하면 재정이 파탄 난다. 한국의 또 다른 리스크는 건강보험이다. 한국은 건강보험에 세금을 투입하고 있는데, 앞으로 고령자의 건강보험 압박이 꽤 커질 거다. 한국이 고령화 사회에서 살아남으려면 재정 건전화가 필요하다.”</p>
<p dmcf-pid="uSTGfP0gT4" dmcf-ptype="general">―최근 미국·중국 간 공급망 경쟁에서 미·중 사이에 선택을 요구받고 있는데. </p>
<p dmcf-pid="71FUJo2mvf" dmcf-ptype="general">“한국에 있어 중국은 여전히 유망한 시장인 만큼 대중 수출 없이는 한국의 성장도 기대할 수 없다. 다만 원자재 수출 금지 전례로 볼 때 기업이 수요처로 중국에만 의존하는 것은 바람직하지 않다. 안보는 미국이라는 것은 변함없지만, 경제는 중국에만 의존할 것이 아니라 아세안(동남아국가연합) 국가들이나 인도 등 앞으로 높은 경제성장을 기대할 수 있는 나라로 분산시킬 필요가 있다.” </p>
<p dmcf-pid="zt3uigVsvV" dmcf-ptype="general">―한·일 관계 개선으로 화이트리스트 복원 등이 이뤄졌는데, 양국 관계 개선이 경제에 도움이 될 것이라고 보나.</p>
<p dmcf-pid="qF07nafOC2" dmcf-ptype="general">“윤석열 대통령의 결단으로 한·일 관계가 극적으로 개선된 것은 높이 평가할 만하다. 한국을 화이트리스트에서 제외하고 반도체 부품 등의 수출을 규제한 것은 한국 측에 실질적인 피해는 없었지만, 한·일 경제 공조 심화에는 큰 걸림돌이 되고 있었다. 관계 개선을 통해 양국 간 투자 및 경제협력 안건 증가 등으로 한·일 경제에 도움이 될 것으로 본다.”</p>
<p dmcf-pid="BwmC7bGMW9" dmcf-ptype="general">―한·일 양국이 지속적인 상호 발전을 위해 어떤 협력 체제를 갖춰야 하나.</p>
<p dmcf-pid="brshzKHRCK" dmcf-ptype="general">“우선 정권이 바뀌어도 한·일 간에 마찰이 생기지 않는 것이 가장 중요한 과제라고 생각된다. 지난 몇 년간 정치에 경제가 끌려가고, 경제협력의 기운도 정치관계에 따라 시들어 버리는 일이 있었다. 정치가 이런 불안정한 관계라면 튼튼한 상호경제 발전은 기대하기 어렵다. 한국 정권이 바뀌더라도 일본과의 관계에 변화가 생기지 않도록 하는 것이 가장 중요하다고 본다.” </p>
<p dmcf-pid="KmOlq9Xelb" dmcf-ptype="general">△런던대 SOAS 금융경제학 석사</p>
<p dmcf-pid="9hSW28FLlB" dmcf-ptype="general">△규슈대 경제학 박사</p>
<p dmcf-pid="2lvYV63oCq" dmcf-ptype="general">△주한일본대사관 1등 서기관</p>
<p dmcf-pid="VSTGfP0gCz" dmcf-ptype="general">△내각부 국민생활국 총무과 조사실장</p>
<p dmcf-pid="fhSW28FLW7" dmcf-ptype="general">△쓰쿠바대 시스템정보학과 준교수</p>
<p dmcf-pid="4lvYV63oTu" dmcf-ptype="general">△다이토문화대 경제학부장</p>
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