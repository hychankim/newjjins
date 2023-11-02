
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
    <h3>[SPO 피플] 와일드카드→금메달→리그 우승…설영우 "솔직히 부담 많았다, 이젠 아시안컵 목표"</h3><h6>박대성 기자  2023. 11. 1. 07:40</h6>
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
<section dmcf-sid="VEyz3uv8lR">
<figure class="figure_frm origin_fig" dmcf-pid="faC3XtOKSM" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 설영우(오른쪽)를 포함한 항저우 아시안게임 멤버들이 금메달을 목에 걸고 미소를 짓고 있다 ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074011355dbex.jpg" data-org-width="900" dmcf-mid="ULEnMJBEvN" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074011355dbex.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 설영우(오른쪽)를 포함한 항저우 아시안게임 멤버들이 금메달을 목에 걸고 미소를 짓고 있다 ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="4aC3XtOKTx" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 설영우 ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074012742mbnr.jpg" data-org-width="900" dmcf-mid="uAbR8xUNva" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074012742mbnr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 설영우 ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="8Nh0ZFI9lQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 설영우 ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074014990rpho.jpg" data-org-width="900" dmcf-mid="7I5bUqWQvg" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074014990rpho.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 설영우 ⓒ대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="6jlp53C2CP" dmcf-ptype="general">[스포티비뉴스=울산, 박대성 기자] "올해는 정말 긴 것 같아요. 아시안게임 와일드카드로 뽑히고 부담이 많았어요. 마음 고생도 좀 많이 했어요. 하지만 결과적으로 웃을 수 있었어요. 리그 조기 우승도 해 마음이 편해요. 목표를 멀리 세우는 편은 아니지만, 당장은 아시안컵 최종 명단에 드는 거예요." </p>
<p dmcf-pid="P5KnMJBEl6" dmcf-ptype="general">설영우(24, 울산현대)는 올시즌 가파른 성장세였다. 천천히 두각을 보였던 그는 울산 주전 풀백 자리를 책임지더니 A대표팀 승선까지 쭉 달렸다. 항저우 아시안게임에서도 금메달을 목에 걸며 대표팀 3연패에 날개를 달았다. </p>
<p dmcf-pid="Q19LRibDh8" dmcf-ptype="general">설영우에게 아시안게임은 중요했다. 황선홍 감독이 이끌었던 아시안게임 대표팀은 출항 전부터 말도 탈도 많았다. 아시안게임을 앞두고 치른 평가전에서 경쟁력 있는 경기력을 보이지 않았고 와일드카드 차출에도 물음표가 달렸다. </p>
<p dmcf-pid="xY7R8xUNT4" dmcf-ptype="general">백승호, 박진섭과 와일드카드로 차출된 만큼 부담이 컸다. 리그 조기 우승을 확정지은 이후 울산에서 만났던 그에게 아시안게임을 묻자 "와일드카드로 뽑히고 부담이 컸다. 스스로에게도 마찬가지였다"라고 답했다. </p>
<p dmcf-pid="yRkYlyA0Sf" dmcf-ptype="general">여론도 좋지 않았기에 그라운드에서 결과를 내야 했다. 하지만 조별리그 첫 경기를 치르자마자 정상에 오를 수 있겠단 자신감이 붙었다. 설영우는 "아시안게임 대표팀을 둘러싼 여론을 알고 들어갔다"라면서 "절대 쉬울 거라고 생각하지 않았다. 그런데 첫 경기를 해보고 선수단 마음가짐, 실력 차이를 봤을 때 무조건 우승 하겠다는 생각이 들었다"라고 말했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="WeEGSWcpCV" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 항저우 아시안게임 대표팀 중국 도착 ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074016226fvmm.jpg" data-org-width="900" dmcf-mid="zp0fB2Zdlo" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074016226fvmm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 항저우 아시안게임 대표팀 중국 도착 ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="YJwXTGEuC2" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 항저우 아시안게임 대표팀 훈련 ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074017581nkpb.jpg" data-org-width="900" dmcf-mid="q4iVq9XeTL" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074017581nkpb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 항저우 아시안게임 대표팀 훈련 ⓒ대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="GirZyHD7T9" dmcf-ptype="general">쿠웨이트와 첫 경기에서 9-0 완승은 아시안게임 대표팀 동기부여에 더 불을 지폈다. 설영우는 "우리 스스로 무너지지 않는다면 우승하겠다는 자신감이 생겼다. 첫 경기를 큰 점수 차이로 이겨 더 그랬다. 이런 모든 점이 좋게 작용하지 않았나 싶다"라고 미소 지었다. </p>
<p dmcf-pid="Hnm5WXwzTK" dmcf-ptype="general">한국은 쿠웨이트전을 시작으로 한일전까지 전승 우승이었다. 우승까지 3실점만 허용하며 완벽한 경기력을 보였다. 연장전도 없었다. 설영우도 와일드카드로 부담을 가지고 대회에 임했지만 걸맞은 퍼포먼스로 대표팀을 이끌었고 금메달을 목에 걸었다. </p>
<p dmcf-pid="X6aSsho5hb" dmcf-ptype="general">항저우 아시안게임 우승 기쁨을 만끽할 시간은 없었다. 곧바로 10월 A대표팀에 합류해 튀니지, 베트남전을 준비해야 했다. 정신적, 체력적으로 지쳤을 법도 했다. 설영우에게 이를 묻자 "곰곰이 생각해봤는데 두 달 만에 울산에 돌아왔다. 지난 두 달을 어떻게 지냈는지 기억이 안 날 정도"라고 털어놨다. </p>
<p dmcf-pid="ZPNvOlg1TB" dmcf-ptype="general">눈코 뜰새 없이 바빴지만 많이 배우고, 성장하고 돌아왔다. 설영우는 "체력적인 부담보다 행복한 마음이 더 크다. 대표팀은 정해진 자리가 아니다. 대표팀에 갈 수 있다는 것 만으로도 벅차다. 앞으로도 계속 불러주셨으면 좋겠다. 대표팀에 가기 전까진 스스로 만족하는 상황이 많았다. 현실에 안주하기도 했다. 하지만 대표팀에 가면 더 잘하는 선수들이 많다. 내가 아무것도 아니라는 생각이 들었다. 나에겐 너무도 큰 동기부여"라며 웃었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="53faJo2myq" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 손흥민과 설영우 ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074019912wnch.jpg" data-org-width="900" dmcf-mid="B7eKuBYxln" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074019912wnch.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 손흥민과 설영우 ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="104NigVslz" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ A대표팀에서 활약하는 설영우 ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074021256xqyh.jpg" data-org-width="900" dmcf-mid="b8v97bGMhi" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074021256xqyh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ A대표팀에서 활약하는 설영우 ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="tp8jnafOy7" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 10월 서울월드컵경기장에서 열린 A대표팀 평가전 튀니지전에서도 뛰었다 ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074023387zwrn.jpg" data-org-width="900" dmcf-mid="KW9coj8CyJ" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074023387zwrn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 10월 서울월드컵경기장에서 열린 A대표팀 평가전 튀니지전에서도 뛰었다 ⓒ대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="FTpQV63oyu" dmcf-ptype="general">아시안게임 금메달과 10월 A매치를 치른 이후 리그 우승 레이스에 뛰어 들었다. 설영우는 체력적인 부침이 있어도 몸이 부서져라 뛰었다. 오른쪽, 왼쪽을 가리지 않고 팀 우승 경쟁에 헌신했다. 울산은 모두가 똘똘 뭉친 끝에 파이널라운드A 두 경기 만에 리그 우승을 확정했다. </p>
<p dmcf-pid="3yUxfP0gvU" dmcf-ptype="general">설영우도 누구보다 행복하고 기뻤다. 그는 "조기 우승을 해 남은 경기를 편하게 준비할 수 있게 됐다. 여태껏 느껴보지 못한 기분이다. 올시즌을 돌아보면 내가 팀에서 빠진 상황도 많았는데 모두 열심히 버티고 이겨줬다. 내가 돌아온 이후 팀에 힘이 돼 기쁘다"고 말했다. </p>
<p dmcf-pid="0WuM4Qpavp" dmcf-ptype="general">17년 만에 숙원을 풀었던 지난 시즌과 조기 우승을 한 이번 시즌은 무엇이 달랐을까. 설영우는 "작년 우승 경쟁을 할 땐 중요한 순간에 미끄러졌다. 마지막까지 경쟁하면서 조급해지고 겁을 냈던 것 같다. 하지만 작년에 트로피를 들어보니 올해는 어떻게하면 되는지 알 수 있었다. 선수단 전체가 자신감이 있었다. 준비 과정도 작년보다 훨씬 수월했다"고 짚었다. </p>
<p dmcf-pid="pberADMTy0" dmcf-ptype="general">멘탈적으로도 성숙됐다. 아시안게임 금메달 이후 살짝 들뜨기도 했지만 곧바로 리그 일정에 집중했다. "금메달을 따고 돌아와 들떠있긴 했다. 하지만 팀이 우승 경쟁 중인데 계속 그럴 수 없었다. 출근해서 최대한 냉정한 마음을 가지려고 했고 우승을 하고 즐기자는 생각만 했다"고 설명했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="UKdmcwRyv3" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 울산 설영우 ⓒ한국프로축구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074024833nsnw.jpg" data-org-width="900" dmcf-mid="9eKnMJBETd" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074024833nsnw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 울산 설영우 ⓒ한국프로축구연맹
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="u9JskreWSF" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 울산 대구전에서 K리그 우승 확정 ⓒ한국프로축구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074026323hmff.jpg" data-org-width="900" dmcf-mid="2S5Vq9XeCe" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101074026323hmff.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 울산 대구전에서 K리그 우승 확정 ⓒ한국프로축구연맹
           </figcaption>
</figure>
<p dmcf-pid="77QkgA6hSt" dmcf-ptype="general">리그 우승은 확정했지만 아시아축구연맹(AFC) 챔피언스리그(ACL) 등 남은 일정이 있다. 올해만 따지면 A대표팀은 11월 한국과 중국에서 북중미 월드컵 아시아지역 2차 예선을 치른다. </p>
<p dmcf-pid="zzxEacPlv1" dmcf-ptype="general">하지만 설영우는 "축구 뿐만 아니라 모든 일을 하면서 바쁘다는 건 좋은 것이다. 조금이라도 무릎이 버텨줄 때 더 바쁘게 뛰어다니겠다. 감독님께서 일주일만 집에서 쉬라고 하시면 22살때 몸으로 돌아갈 수 있지 않을까. 그럴일이 없기 때문에 열심히 더 뛰겠다"고 웃었다. </p>
<p dmcf-pid="qqMDNkQSC5" dmcf-ptype="general">이어 "시즌은 아직 끝나지 않았다. 남은 경기에서 풀린 모습을 보이는 건, 울산 팬이나 많은 분이 나에게 바라는 게 아니다. 시즌이 끝나려면 한 달이 남았다. 시즌이 끝나면 대표팀에서 경쟁해야 한다. 목표를 멀리 세우는 편은 아니지만 당장엔 아시안컵 최종 명단에 들고 싶다"라고 다짐했다.</p>
<p dmcf-pid="BQjTISatWZ" dmcf-ptype="general">&lt;저작권자 ⓒ SPOTV NEWS. 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 스포티비뉴스]</h6></div>
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