
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
    <h3>“학부모가 약자라고?” 진보는 왜 교권을 외면했나</h3><h6>강준만 전북대 신문방송학과 명예교수  2023. 11. 1. 09:01</h6>
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
<section dmcf-sid="0bhAXtOKLi">
<p dmcf-pid="pCxBgA6hJJ" dmcf-ptype="general"><strong>● OECD 보고서, ‘교사 존경한다’는 응답 21개국 중 꼴찌<br/>● 2010년대 진보교육감·전교조 전성시대가 가져온 문제<br/>● 교원 권익보다 거대 담론에 신경 써온 교원단체들<br/>● 한때 10만 명이던 전교조 조합원, 현재 4만 명<br/>● ‘약자 옹호’라는 진보의 정체성 지키려 ‘아동’만…<br/>● 대중은 약자 개념의 개별화 및 맥락화 원한다</strong></p>
<figure class="figure_frm origin_fig" dmcf-pid="UyifkreWMd" dmcf-ptype="figure">
<p class="link_figure"><img alt="[Gettyimage]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/shindonga/20231101090117651znwx.jpg" data-org-width="650" dmcf-mid="VKVvbV5JJh" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/shindonga/20231101090117651znwx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [Gettyimage]
           </figcaption>
</figure>
<div dmcf-pid="uetSB2Zdne" dmcf-ptype="general">
           2023년 7월 18일에 일어난 서울서이초등학교 교사 사망사건 이후 언론은 '교권 없는 한국 교육'의 비극에 대해 대대적으로 보도하고 논평했다. 50일간에 걸쳐 폭포수처럼 쏟아진 보도와 논평의 내용을 압축적으로 간략하게나마 살펴보고자 한다면, 다음 10개 기사 제목을 음미해 보는 게 좋겠다.
          </div>
<p dmcf-pid="7i0y94tnMR" dmcf-ptype="general">-학생들 싸움 말려도 '아동학대' 고소당해… 교사 1252명 고소당했다(7월 23일)<br/>-"교단 무너져" 교사들 절규, 우리 사회 응답 너무 늦었다(7월 24일)<br/>-"이런 꼴 당하려 교사됐나"… '주먹질과 폭언' 교사 99%가 당했다(7월 25일)<br/>-전국 교사 3만명 폭염 속 집회… "안전한 교육환경 만들어달라"(7월 29일)<br/>-학생이 교실서 흡연해도… 교사가 생존권 외치게 만든 '참교육'(8월 2일)<br/>-"칼 맞고 싶냐" 교육활동 침해 신고 1만여 건 중 '학부모 침해' 70%(8월 4일)<br/>-스승·제자는 없고 甲乙 다툼만… 지금 학교는 살벌한 전쟁터다(8월 12일)<br/>-죄 없는 교사, 학부모 타깃 되면… '아동학대 누명' 2년 시달린다(8월 14일)<br/>​-전국 교사 20만 명, 국회 앞서 집회 교권 회복 촉구(9월 2일)<br/>-새 학기 열흘간 5명 극단 선택… '집단 트라우마' 빠진 교사들(9월 9일)</p>
<p dmcf-pid="zCxBgA6hiM" dmcf-ptype="general">이게 도대체 가능한 일인가. 그 지경이 되기까지 우리는 도대체 무엇을 하고 있었단 말인가. 무슨 일이건 문제가 곪아 터져야만 비로소 사회적 관심이 쏠리는 게 한국 특유의 현상이라곤 하지만, 그걸 감안한다 해도 이건 좀 해도 너무한 게 아닌가. 교권 유린 사태의 심각성은 아무리 늦춰 잡아도 십수년 묵은 오래된 이야기였기에 더욱 그렇다.</p>
<div dmcf-pid="qWn4EmdYLx" dmcf-ptype="general">
<h4>문제 곪아 터져야 관심 갖는 한국 사회</h4>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="BYL8DsJGLQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="공교육 멈춤의 날인 9월 4일 서울 서초구 서울교육대 운동장에서 열린 서이초 교사 49재 추모 촛불집회에서 참석자들이 손피켓을 들고 구호를 외치고 있다. [뉴스1]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/shindonga/20231101090119099nxjb.jpg" data-org-width="650" dmcf-mid="f7lZ6MujRC" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/shindonga/20231101090119099nxjb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            공교육 멈춤의 날인 9월 4일 서울 서초구 서울교육대 운동장에서 열린 서이초 교사 49재 추모 촛불집회에서 참석자들이 손피켓을 들고 구호를 외치고 있다. [뉴스1]
           </figcaption>
</figure>
<div dmcf-pid="bE23RibDLP" dmcf-ptype="general">
           2007년 한 해 한국교원단체총연합회(교총)에 접수된 학생·학부모에 의한 교사 폭행·협박 사건은 168건으로 2002년 78건의 두 배를 넘었다. 충남 부여의 한 초등학교에선 학부모가 학생들이 보는 앞에서 여교사 머리채를 잡고 흔들어댄 일이 있었고, 서울 어느 구(區)의원은 자퇴한 아들의 재(再)입학을 요구하며 교장을 때려 실신시켰고, 인천의 중학교 여교사는 "종례를 빨리 끝내라"며 교실을 나가는 학생을 제지하다가 학생에게 폭행을 당하는 등 상상하기조차 어려운 일이 빈발하고 있었다.
          </div>
<p dmcf-pid="KLUYV63oe6" dmcf-ptype="general">조선일보는 "선생님이 매 맞는 학교에 교육은 없다"(2008년 4월 10일)는 제목의 사설을 통해 문제의 심각성을 지적했고, 중앙일보는 내부 칼럼(2008년 12월 16일)을 통해 "교사의 권위가 바닥에 붙은 껌딱지만도 못한 세상이 돼버렸다"고 개탄했다.</p>
<p dmcf-pid="9KlcZFI9d8" dmcf-ptype="general">2010년대 들어선 교단의 심각한 여초(女超)현상이 교사의 권위를 약화시키는 데 일조한 게 아니냐는 의문이 조심스럽게 제기됐다. 서울시교육청이 발표한 2010년 초·중등 임용시험 결과에 따르면 전체 합격자 1276명 중 여성이 1087명(85.2%)에 달했다. 2010년뿐만 아니라 지난 5년간 줄곧 여성 합격자가 85%를 넘었으며, 이런 추세는 전국적으로도 마찬가지였다.</p>
<p dmcf-pid="2s67nafOL4" dmcf-ptype="general">서울 강남 A초등학교처럼 전체 교원 40여 명 가운데 남자 교사는 2명뿐일 정도로 남자 교사가 희소한 학교가 많아졌다. 그래서 어쩔 수 없이 학생부 담당을 맡은 어느 여자 교사는 그 일이 "너무 힘들어서 나중엔 보건 업무로 바꿨다"며 "나이 많은 남교사들은 여교사가 많아져서 학교 질서가 잡히지 않는다는 말을 자주 한다"고 말했다. 조선일보 논설위원 박해현은 '여교사 수난시대'(2011년 6월 28일)라는 제목의 칼럼에서 다음과 같이 말했다.</p>
<p dmcf-pid="VtceCvNFef" dmcf-ptype="general">"가뜩이나 선생님 권위가 흔들리는 교실에서 여교사들을 함부로 대하는 학생이 많아 걱정이 커가고 있다. 어느 고교 교장이 유난히 떠드는 학급의 담임 여교사에게 주의를 줬더니 '대드는 아이들이 무서워서 놔둔다'고 했다는 얘기를 들은 적이 있다. 고등학교 남학생이 여교사 어깨에 손을 얹으며 '누나 사귀자'고 희롱하는 동영상이 인터넷에 돌아다니는 세상이다. 지난해 남학생이 여교사를 때리거나 목을 조르고 침을 뱉는 사건이 세상에 알려진 것만 여덟 건이다."</p>
<div dmcf-pid="fXWr3uv8nV" dmcf-ptype="general">
<h4>권재원이 쓴 '학교라는 괴물'의 증언</h4>날로 교권이 추락하는 상황에서 교육과학기술부가 2012년 교권보호종합대책을 내놓은 것은 일단 긍정 평가할 만한 일이었다. 그러나 전국교직원노동조합(전교조)을 비롯한 진보 진영의 반응은 싸늘했다. 이에 전교조 교사 권재원은 2012년 10월에 발표한 글을 통해 진보 진영에 대해 애정 어린 쓴소리를 했다. 그의 명저인 '학교라는 괴물'(2014)에 재수록된 "학부모가 약자라고요?"라는 글을 감상해 보자. 그는 "진보 진영은 교과부가 한 건을 하면 무조건 반발하는 반사작용은 좀 접어둘 필요가 있다. 이건 시기적절한 대책이며, 오히려 이런 절호의 안을 선점당한 것을 반성해야 한다"며 다음과 같이 말했다.
          </div>
<p dmcf-pid="4ZYm07T6i2" dmcf-ptype="general">"그런데 여기에 대해 엉뚱한 반응들이 나왔다. 학부모를 교권침해의 주범으로 모는 듯한 표현이 거슬리며, 상대적으로 약자인 학부모를 지나치게 몰아세우고 있다는 진보 교육단체의 반응이 그것이다. 물론 그 취지가 뭔지는 안다. 학부모나 학생으로 인한 교권침해만 다루고, 교장이나 여타 기관으로부터 가해지는 교권침해는 다루지 않았다는 불완전성에 대한 지적일 것이다. 그럴 경우는 불완전성만 지적하면 그만이다…그런데 전교조는 꼭 여기다가 학부모가 무슨 죄냐는 식의 현장 감각 없는 반발을 붙여서 안 그래도 교총에 빼앗기고 있는 교사들의 지지를 더 빼앗기고 있다."</p>
<p dmcf-pid="8GTDtplfn9" dmcf-ptype="general">권재원은 실제 현장에서 교사들이 교권을 침해하는 주체로 뼈저리게 느끼는 상대는 교장이 아니라 학부모이며, 실제로 충돌이 일어났을 경우 교사를 처절하게 약자 위치로 만들어버리는 상대도 교장이 아니라 학부모라고 했다. 그는 "자식 맡겨놓은 죄로 저자세? 그건 옛날얘기 아니면, 퇴학이 가능한 고등학교 얘기다"라며 다음과 같이 말했다.</p>
<p dmcf-pid="6BuGfP0gdK" dmcf-ptype="general">"현실적으로 '자식 맡겨놓은 죄'는 대부분 교양 있는 중산층 학부모의 일이며, 그런 학부모는 그리 많지 않다. 학부모단체에서 활동하는 학부모들은 자신들이 표준적인 학부모라고 착각하면 안 된다. 좋지 않은 일로 학교에 소환되는 학부모들의 경우는 이미 자식 맡겨놓은 죄 따위에 면벌부를 구입한 지 오래다. 오히려 이들은 학교에서 막장으로 깽판을 쳐도 학교에서 이렇다 할 제재를 할 수 없으며, 도리어 그럴수록 자녀가 받을 불이익에 브레이크를 걸 수 있고, 최소한 밑져야 본전이라는 것을 잘 알고 있는 경우가 많다. 사실 우리나라의 교권은 학부모와의 균형 타령을 하기에는 너무도 약하다."(153~155쪽)</p>
<p dmcf-pid="P1HOUqWQdb" dmcf-ptype="general">이미 11년 전에 이런 주장이 제기됐다는 게 놀랍지 않은가. '학교라는 괴물'이란 책은 이대론 도저히 안 된다는 교사들의 한 맺힌 절규에 대한 증언록이었다고 해도 과언이 아니다. 더욱 놀라운 건 진보 진영이 내부에서 이런 절규가 터져나왔음에도 마치 아무 일도 없다는 듯 교권침해로 인한 교권의 몰락에 방관자로 머물렀다는 사실이다.</p>
<p dmcf-pid="QVb1QezcRB" dmcf-ptype="general">그래서였을까. 경제협력개발기구(OECD)가 회원국 10만5000여 중학교 교사를 조사해 발표한 '교수·학습 국제 조사(TALIS) 2013' 보고서를 분석한 결과에 따르면, 한국 중학교 교사 중 '교사가 된 걸 후회한다'고 답한 비율이 20%로 OECD 34개 회원국 중 1위를 차지한 것으로 나타났다. "교사를 존경한다"는 응답은 11%에 그쳐 한국은 21개 조사국 중 꼴찌를 기록했다.</p>
<p dmcf-pid="xZYm07T6nq" dmcf-ptype="general">이상한 일이었다. 그럼에도 2015년 전국의 학생 18만 명을 대상으로 조사한 '진로 실태 조사'에서 남녀 중고생 모두 교사를 희망 직업 1순위로 꼽았으니 말이다. 학부모 생각도 비슷했다. '자녀가 어떤 직업에 종사했으면 좋겠냐'는 질문에 교사를 꼽은 학부모가 가장 많았다. 결혼정보회사의 '선호하는 배우자 직업' 순위에서도 교사는 수년째 1~2위를 지키고 있었다.</p>
<div dmcf-pid="ylOaYZrqez" dmcf-ptype="general">
<h4>학생인권조례와 교권유린의 상관관계</h4>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="WkNxsho5d7" dmcf-ptype="figure">
<p class="link_figure"><img alt="이주호 사회부총리 겸 교육부 장관이 8월 10일 서울 중구 코리아나호텔에서 열린 교권회복 및 보호를 위한 교육부-국가교육위원회 공동주최 토론회에 참석해 자리하고 있다. 이 부총리 뒤로 서울교육사랑학부모연합 학부모들이 학생인권조례 폐지를 촉구하는 손팻말을 들고 있다. [뉴스1]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/shindonga/20231101090120382jvqh.jpg" data-org-width="650" dmcf-mid="8JNspzyPdO" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/shindonga/20231101090120382jvqh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이주호 사회부총리 겸 교육부 장관이 8월 10일 서울 중구 코리아나호텔에서 열린 교권회복 및 보호를 위한 교육부-국가교육위원회 공동주최 토론회에 참석해 자리하고 있다. 이 부총리 뒤로 서울교육사랑학부모연합 학부모들이 학생인권조례 폐지를 촉구하는 손팻말을 들고 있다. [뉴스1]
           </figcaption>
</figure>
<div dmcf-pid="YEjMOlg1eu" dmcf-ptype="general">
           퇴직 교사 절반은 월 300만 원 넘는 연금을 받으며, 방학이 있고, 최대 3년까지 육아휴직도 쓸 수 있기 때문에 그런 걸까. 혹 교사라는 직업의 장점만 거론됐을 뿐 그 이면에서 터져 나오는 교사들의 절규가 학생과 학부모에게 제대로 알려지지 않은 탓에 일종의 착시현상이 빚어지고 있던 건 아니었을까.
          </div>
<p dmcf-pid="GvCjH1sbJU" dmcf-ptype="general">교권침해로 인한 교권의 몰락에 왜 진보의 방관만 문제 삼느냐는 반론이 있을 법하다. 물론 보수의 방관도 문제 삼아야 한다. 하지만 그간 교육행정은 진보의 절대적 우위 체제하에서 이루어졌다는 걸 외면할 수는 없다. 2014년 6·4 지방선거에서 전국 17개 시·도 교육감 중 진보 교육감이 13명이나 당선됐고, 그 가운데 8명이 전교조 출신이었다. 전국의 초·중·고교 학생의 85%가 진보 교육감이 당선된 지역에서 공부했다. 2022년 6·1 지방선거에서 보수 교육감은 8명으로 늘어 '진보 교육감 전성시대'는 일단 막을 내렸지만, 보수 교육감은 2018년 선거 때에도 17명 중 3명에 불과했다.</p>
<p dmcf-pid="HCmoyHD7ip" dmcf-ptype="general">어디 그뿐인가. 능력 있는 젊은 교사에게 기회를 주겠다며 2007년에 도입한 교장 공모제로 전교조 출신이 대거 교장직에 진출함으로써 '전교조의 전성시대'도 열렸다. 2010~2020년 내부형 교장 공모제를 통해 임용된 교장 238명 중 154명(64.7%)이 전교조 출신이었다. 교장 공모제는 교장 자격증이 없는 교사 경력 15년 이상 평교사를 공모를 통해 교장에 임명하는 제도다. 교장 자격증은 교직 경력 20년이 넘는 교원이 교감을 거친 뒤 교장 자격 연수 과정을 이수해야 얻을 수 있었지만, 이런 자격증이 없어도 교장이 될 수 있어서 '무자격 교장 공모'라고도 불렸다. 전체 초·중·고교 교원의 10% 남짓한 전교조 조합원이 공모 교장의 절반 이상을 차지한 것이다.</p>
<p dmcf-pid="XqUYV63oM0" dmcf-ptype="general">그렇다면 유권자들은 교육감 선거에서 왜 보수보다는 진보에 더 많은 표를 던졌을까. 진보적 교육평론가 이범이 2020년 12월에 출간한 '문재인 이후의 교육'에서 그걸 명쾌하게 잘 설명했다. "‘보수 교육'이라고 하면 경쟁, 서열화, 주입식 교육, 부패 등 부정적 이미지가 먼저 떠오르기 때문이다. 진보 교육은 경쟁보다는 협동, 서열화보다는 평준화, 주입식 교육보다는 창의적 교육, 부패보다는 청렴을 내세우므로 자연히 비교우위에 놓이게 된다 (…) 진보 교육감 후보에게는 또 하나의 막강한 무기가 있다. 그것은 '후보 단일화'다. 보수 교육감 후보들은 막판까지 이해관계와 명분을 조정하지 못해 단일화에 실패하곤 한다."(90쪽)</p>
<p dmcf-pid="ZIrLTGEuJ3" dmcf-ptype="general">진보 진영이 그간 진보를 선호하던 유권자들의 기대에 부응했다면, 교육행정을 내내 진보가 독식한다 한들 그게 무슨 문제가 되겠는가. 오히려 반기면서 축하할 일이었다. 그러나 진보는 이미지만 그럴듯했을 뿐, 내공이 없었다. 이범의 진단에 따르자면, 진보는 다음과 같은 문제점을 안고 있었다. "진보 교육계는 입시와 대학 서열화를 비난해 왔을 뿐 입시의 기능과 구조를 밀도 있게 분석하고 대안을 만들어놓지 않았다. 아울러 '구호'나 '가치'가 곧 정책이 될 수 있다는 착각 내지 안이함에 빠져 있었다. 이런 태도는 사회운동에 오랫동안 몸담아 온 사람들에서 드물지 않은 모습이다."(96쪽)</p>
<p dmcf-pid="5x8uigVsJF" dmcf-ptype="general">교권유린 사태에서 쟁점으로 떠오른 학생인권조례는 교사에 대한 신고·조사 요구권, 복장·두발 자유, 휴대전화 강제 수거 금지 등을 담고 있는데, 이는 진보 성향 교육감들이 2010년부터 추진한 정책이었다. 학생인권조례가 교권유린에 책임이 있느냐 없느냐 하는 문제는 '정치 과잉 코리아' 답게 진보·보수 진영 간 정치적 싸움으로 소비됐다. 학생과 학부모의 신고·조사 요구권이 오·남용되는 것에 대한 아무런 견제·시정 장치가 없다면, 즉 학생인권과 손잡고 같이 나아갈 수 있는 교권 보호 조치가 없거나 미흡했다면, 왜 그렇게 됐는지 원인을 따지면서 대책을 강구하는 건 진보·보수 진영이 얼마든지 협력할 수 있는 일이 아닌가.</p>
<div dmcf-pid="1fKtxdqkJt" dmcf-ptype="general">
<h4>"진보는 왜 교권을 외면했나"</h4>사실 문제의 해결을 어렵게 만든 건 늘 이념이거나 정치 성향이었다. 그 나름의 이념이나 정치 성향을 갖고 있는 기존 교원단체들은 거대 담론이나 정치적 관심사에만 신경을 쓰고 있었다. 이게 참 이해할 수 없는 기이한 일이다. 교원단체의 존재 이유가 뭔가. 교원들의 권익 보호가 가장 큰 관심사가 돼야 하지 않나. 이건 잘못돼도 뭔가 크게 잘못된 일 아닌가.
          </div>
<p dmcf-pid="tfKtxdqkJ1" dmcf-ptype="general">교사들의 대규모 집회를 가능케 한 주체는 초등교사 온라인 커뮤니티 '인디스쿨(indischool)'이었다. 원래 초등교사들이 수업 자료를 공유하는 온라인 플랫폼으로 출발한 인디스쿨의 가입자는 전국 초등교사의 약 79%에 달하는 14만3498명인데(2023년 7월 26일 기준), 독립성을 지향하는 인디스쿨의 조직 특성상 집회 운영팀이 가장 큰 원칙으로 삼은 것은 탈(脫)정치였다. 이들은 정치 성향을 드러내는 것을 경계하고 통제하면서 교권 이슈에만 집중했고, 그래서 기존 교원단체들이 외면했던 대규모 집회가 가능했다.</p>
<p dmcf-pid="F49FMJBEn5" dmcf-ptype="general">젊은 세대 교사들이 주축인 교사노동조합연맹(교사노조)의 가파른 조합원 증가세는 무얼 의미하는가. 지난해 5만5700여 명이었던 조합원은 올해 2배 이상으로 늘어나 9월 중순 현재 11만6500명에 육박했다. 특히 7월 서이초 교사 사망사건 이후 두 달 만에 43% 급증했으며, 20대와 30대의 비중은 이 중 절반을 넘었다는 게 의미심장하다. 동아일보는 "‘MZ 교사노조' 조합원 급증, 무너진 교권 바로 세워달란 주문"(9월 16일)이라는 제목의 사설에서 "MZ세대 교사들이 신생 노조로 몰리는 현상은 기존의 양대 교원단체인 전교조와 교총이 제 역할을 하지 못하고 있음을 보여주는 방증"이라며 다음과 같이 말했다.</p>
<p dmcf-pid="3rkdhTj3dZ" dmcf-ptype="general">"민노총 소속인 전교조는 낡은 이념에 매몰돼 교권 보호나 교원 처우 개선은 뒷전으로 밀어냈다는 비판을 받아왔다. 실망한 교사들의 잇단 탈퇴로 한때 10만 명에 달했던 조합원 수는 현재 4만 명대로 쪼그라든 상태다. 교총의 경우 교장, 교감 등 관리자급이 조직을 주도해 일선 교사들의 목소리가 충분히 반영되지 못하는 한계가 지적돼 왔다. 대안 조직으로 떠오른 교사노조는 정치색을 빼고 교사들의 권익 신장을 앞세우는 실용주의를 표방하고 있다."</p>
<p dmcf-pid="0AgPrInXeX" dmcf-ptype="general">전교조와 교총은 이 주장에 대해 어떤 이의를 제기할 수 있을지 궁금하다. 이념이나 정치 성향이 교권의 법적 보장을 가로막은 셈이라곤 해도 구체적인 이유에선 보수와 진보엔 차이가 있었다. 이와 관련, 이범은 경향신문에 '진보는 왜 교권을 외면했나, 보편적 약자의 종말'(9월 19일)이라는 제목의 탁월한 칼럼을 기고했다. 그는 진보와 보수가 모두 직무유기를 했지만, 그 이유는 다르다며 다음과 같이 말했다.</p>
<p dmcf-pid="pkNxsho5iH" dmcf-ptype="general">"보수의 직무유기는 이유가 단순했다. 보수는 가뜩이나 학생인권조례나 체벌 금지를 반대해서 비난을 산 전력이 있는데, 여기에 더하여 교권을 옹호하겠다고 나섰다간 스스로에게 찍혀 있는 낙인을 더 깊게 만들 우려가 있었다. 한마디로 욕먹기 싫었던 것이다. 이에 반해 진보의 직무유기에는 내밀한 사상적 이유가 있다. 진보 세력은 '약자 보호'가 자신의 주요한 임무라고 생각하는데, '아동'이 대표적인 약자이기 때문이다. 진보 진영에게 약자를 옹호한다는 것은 곧 특정한 '집단' 전체에게 특별한 대우를 해주는 것이었다."</p>
<p dmcf-pid="UiRKNkQSeG" dmcf-ptype="general">이어 이범은 "진보 교육감들은 상당수 교사 출신이다. 교사의 구체적 권리를 법령화해 달라는 요구가 전달될 만한 여러 통로를 갖고 있었다. 그럼에도 왜 이를 수용하지 못했을까. '약자 옹호'는 진보의 정체성이기 때문이다. 그리고 한국 진보의 패러다임에서 약자란 '집단'이기 때문이다. 그래서 아동이 특정한 경우에 '폭력 행사의 주체'이거나 '상황의 지배자'일 수 있음에 애써 눈감은 것이다"라며 다음과 같이 말했다.</p>
<p dmcf-pid="uBuGfP0gdY" dmcf-ptype="general">"하지만 대중의 감수성은 진즉 달라졌다. 14세 미만 촉법소년의 범죄행위에 대한 분노의 수위가 높아진 것이 대표적인 증거다. 지금의 교권 논의는 '약자' 개념의 개별화 및 맥락화를 수용해야 한다는 과제를 진보 세력에게 부여한다. 이러한 작업이 노동자, 여성, 난민 등 여러 집단으로 확장되는 것은 불가피하다. 이미 대중의 약자 개념은 상당히 변동했다."</p>
<div dmcf-pid="7XWr3uv8LW" dmcf-ptype="general">
<h4>과유불급 모르는 '정치적 올바름'</h4>그간 진보가 '약자' 개념의 개별화 및 맥락화를 거부해 온 멘털리티는 미국에서 사회 전 분야에 걸쳐 광풍(狂風)이라고 해도 좋을 정도로 기승을 부린 '정치적 올바름(Political Correctness·PC)'의 한국형 버전이라고 볼 수 있다. PC는 사회적 약자와 소수자에 대한 차별적 언어 사용이나 행위에 저항해 그걸 바로잡으려는 운동 또는 그 철학을 가리키는 말인데, 그 취지는 고상하거니와 아름답지만 '브레이크'가 없어 새로운 유형의 인권유린 사태를 낳는 괴물이 되고 말았다. 나는 PC 운동의 지지자로서 끊임없이 과유불급(過猶不及)을 강조해 왔지만, 그게 영 쉽지 않더라는 걸 절감하고 있다.
          </div>
<p dmcf-pid="zVb1QezcRy" dmcf-ptype="general">미국 대학들에선 교수와 학생의 PC 위반에 대한 규제와 징계를 하는 데 적용한 원칙에 무리가 많았다. 예컨대 누군가를 모욕할 의도가 없었다고 말하는 건 면책이 안 됐으며, 증거는 필요 없고 피해자의 진술만으로 충분했다. 미시간대는 그간의 경험상 피해자가 거짓 진술은 하지 않는 법이라고 주장했다. 스탠퍼드대는 백인 학생이 흑인 학생에게 욕을 하는 건 안 되지만 그 반대는 가능하다는 스피치 코드를 제정했다. 피해자의 특권이라는 이유에서였다.</p>
<p dmcf-pid="qqUYV63oMT" dmcf-ptype="general">‘좋은 백인'이나 '나쁜 흑인'은 존재할 수 없다는 것인가. 백인이 피해자가 되고 흑인이 가해자가 될 가능성은 그걸 거론하는 것만으로도 불경한 짓인가. 이런 의문을 제기하지 않을 수 없을 정도로 미국 PC의 '약자 옹호'는 극단으로 치달았지만, 그럼에도 교권 문제에 이르러선 한국의 '약자 옹호' 이데올로기의 문제가 더 심각했다는 걸 지적하지 않을 수 없다.</p>
<p dmcf-pid="BBuGfP0giv" dmcf-ptype="general">진보파인 김상곤이 경기도교육감으로 있던 2010년 국내 처음으로 학생인권조례를 만들 때 참고했다는 미국 뉴욕시의 '학생권리장전(Student Bill of Rights)'을 보자. 이 권리장전엔 학생들이 학교에서 누릴 수 있는 권리와 함께 책임 및 의무가 거의 비슷한 비중으로 강조돼 있지만, 경기도의 학생인권조례는 학생의 책임 및 의무는 쏙 빼놓은 채 권리 위주의 빈껍데기만 베껴 오는 데 그치고 말았다. 이후 다른 지역들도 이런 반쪽짜리 학생인권조례를 채택함으로써 교사를 보호해야 할 교육청이 오히려 교사를 탄압하는 결과를 가져오는 데에 일조했다.</p>
<p dmcf-pid="bx8uigVsnS" dmcf-ptype="general">도대체 선진국의 실정은 어떤지 알고 싶은 독자들은 앞서 소개한 권재원의 '학교라는 괴물'에 실린 "학부모가 약자라고요?"라는 글을 읽어보시기 바란다. 미국, 핀란드, 독일, 영국의 사례들이 잘 소개돼 있다. 이런 나라들에선 학생과 학부모가 교사에게 행패를 부리는 것 자체가 거의 불가능할 정도로 교권을 보호하는 법적 장치가 잘 만들어져 있다.</p>
<p dmcf-pid="KNL8DsJGnl" dmcf-ptype="general">그런 나라들에서 교권을 침해한 학생·학부모에 대해 사용하는 각종 응징 수단은 한국 기준에서 볼 때엔 가혹하다고 해도 좋을 정도다. 한국에 그런 수단을 도입하겠다고 하면 한국 교육계의 진보파는 거세게 들고일어나 반대할 게 틀림없다. 한국이 세계 최고의 인권 선진국이라 그럴까? 그게 아니다. 아마도 과거의 트라우마 때문일 게다. 많은 진보파가 과거 민주화 투쟁 시절에 썼던 선악(善惡) 이분법을 민주화가 이루어진 지금까지 고수하고 있는 게 좋은 증거다.</p>
<div dmcf-pid="9BuGfP0gRh" dmcf-ptype="general">
<h4>‘생각하지 않는 게으름'과 '정치적 포퓰리즘'</h4>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="2KzX8xUNRC" dmcf-ptype="figure">
<p class="link_figure"><img alt="더불어민주당·무소속 교육위원회 의원들이 9월 15일 서울 여의도 국회 소통관에서 ‘교권 보호 4법’ 교육위원회 의결 관련 기자회견을 하고 있다. [뉴스1]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/shindonga/20231101090121759dqol.jpg" data-org-width="650" dmcf-mid="PS9MOlg1nm" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/shindonga/20231101090121759dqol.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            더불어민주당·무소속 교육위원회 의원들이 9월 15일 서울 여의도 국회 소통관에서 ‘교권 보호 4법’ 교육위원회 의결 관련 기자회견을 하고 있다. [뉴스1]
           </figcaption>
</figure>
<div dmcf-pid="VfKtxdqkLI" dmcf-ptype="general">
           일부 진보파는 과거 학교는 교사들의 폭력이 난무하던 공간이었음을 상기시킨다. 그러면서 지금 교사들을 괴롭히는 '갑질 학부모'들은 바로 그런 교육 시스템을 경험한 당사자들로서 경험자면서 동시에 피해자라는 사실에 큰 의미를 부여한다. 지금 벌어지는 일부 학생·학부모의 행패는 교사의 폭력이 심했던 과거에 대한 반작용일 수 있다는 걸까.
          </div>
<p dmcf-pid="fmEJlyA0LO" dmcf-ptype="general">너무 나간 것 같다. 당시의 기준으로 이해할 수 있는 수준의 체벌을 가한 평범한 교사들과 무자비한 폭력을 행사한 속칭 '미친 개' 교사들이 한 일은 오늘날엔 다 똑같은 폭력의 범주에 들어갈망정 결코 같은 성격의 것은 아니다. 양적으로 보더라도 후자보다는 전자에 속한 교사가 훨씬 더 많았다. '미친 개'는 시대를 초월해 나타나는 법이며, 지금 이 순간에도 그런 교사들은 존재한다. '나쁜 성직자'도 많이 나오는 세상에서 '나쁜 교사'들이 있으며 앞으로도 있을 것이라고 해서 그게 교권을 보호하는 일을 소홀히 해야 할 이유는 되지 못한다. 지금도 '나쁜 교사'들을 응징할 수 있는 길은 충분히 열려 있지 않은가.</p>
<p dmcf-pid="4sDiSWcpds" dmcf-ptype="general">전교조를 비롯한 진보 교육자들의 집단주의적 '약자 옹호론'이 교권유린을 낳은 사상적 기반이라면, 그걸 실행에 옮기게끔 한 건 생각하기 싫어하는 게으름과 타성이었을 게다. 이범이 말한 '약자' 개념의 개별화 및 맥락화에는 생각과 고민과 지성이 필요하다. 진보가 "노동자는 자본가에 비해 약자니까 무조건 보호해야 하며 우리 편이다"라고 여기는 타성이 어떤 결과를 낳았는가? 노동 내부의 불평등과 불의와 착취로 고통받는 비정규직 노동자들의 절규가 터져 나오고 있음에도 진보는 어떤 대안과 비전도 제시하지 못한 채 오직 '자본 대 노동'의 구도만 강조해 오지 않았던가. 비정규직을 배려하지 않는 고소득 정규직 노동자들의 행태를 비판하면 생각하고 고민을 해보는 게 아니라 무조건 약자에 대한 비판이라며 펄펄 뛰는 게 한국형 진보의 민낯이라고 해도 과언이 아니다.</p>
<p dmcf-pid="8CmoyHD7em" dmcf-ptype="general">오늘날의 교권유린 사태는 머리 수가 훨씬 더 많은 학부모를 염두에 둔 '교육감 정치인들'의 포퓰리즘 정치 논리도 작동한 결과라고 보는 게 옳을 것이다. 교원단체들 역시 교육감 선거를 매개로 정치판에 뛰어든 이상 그런 포퓰리즘에 경도됐을 가능성이 높지 않았을까. 2007년 교육감 직선제가 시작된 이후 뇌물수수, 정치자금법 위반, 횡령 등으로 유죄판결이 확정된 교육감만 11명(징역형 6명)이나 되는 상황을 빗대 "선거빚 갚으려 뇌물 받고, 선거비 만들다 감옥 가는 교육감들"(중앙일보 2022년 5월 13일 1면 머리기사 제목)이라는 말까지 나오고 있는 실정이다.</p>
<p dmcf-pid="6FZC7bGMLr" dmcf-ptype="general">교육감 직선제가 교육을 타락시키고 있다는 걸 누구나 다 알면서도 각 집단과 개인의 이해관계 때문에 유지되는 건 아닌가. 그런 현실에서 교권 보호란 교사 수십만 명이 모여 집회를 할 정도로 선거에 영향을 미칠 수 있는 사안이기 때문에 주목을 받았을 뿐이라고 보는 게 현실적인 진단일 게다. 9월 21일 교원의 정당한 생활지도를 아동학대로 보지 않는다는 면책 조항을 담은 '교권 보호 4법'이 국회를 통과했다곤 하지만, 아직 가야 할 길이 멀다. 우리 사회가 왜 그간 교사들의 절규를 외면했는지 그 이유를 찾아내 바로잡는 근본적인 변화가 뒤따르지 않는 한 이런 유형의 비극은 앞으로도 계속될 것이다.</p>
<figure class="s_img figure_frm origin_fig" dmcf-pid="PKzX8xUNdw" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/shindonga/20231101090123058ynzj.jpg" data-org-width="150" dmcf-mid="xc9FMJBERw" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/shindonga/20231101090123058ynzj.jpg" width="150"/></p>
</figure>
<div dmcf-pid="QThAXtOKeD" dmcf-ptype="general">
<sub><br/><strong>강준만</strong><br/>●1956년 출생<br/>●성균관대 경영학과 졸업, 미국 위스콘신대 메디슨캠퍼스 언론학 박사<br/>●現 전북대 신문방송학과 명예교수<br/>●저서 : '발칙한 이준석: THE 인물과사상 2' '싸가지 없는 정치' '부동산 약탈 국가' '한류의 역사' '강남 좌파' '노무현과 국민사기극' '김대중 죽이기' 外</sub>
</div>
<p dmcf-pid="xHywFUS4JE" dmcf-ptype="general">강준만 전북대 신문방송학과 명예교수</p>
</section>
</div></p></section></div><h6>[Source : 신동아]</h6></div>
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