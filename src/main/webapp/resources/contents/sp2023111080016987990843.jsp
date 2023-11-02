
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
    <h3>‘황선홍호 金 조력자’ 윤영권 주치의 “PSG와 이강인 상태 수시 소통…득점왕 정우영 하늘이 내린 몸” [SS인터뷰]</h3><h6>김용일  2023. 11. 1. 08:00</h6>
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
<section dmcf-sid="59i1vYkUiw">
<figure class="figure_frm origin_fig" dmcf-pid="16NUH1sbLD" dmcf-ptype="figure">
<p class="link_figure"><img alt="2022 항저우 아시안게임 축구대표팀 주치의로 금메달에 힘을 보탠 윤영권 에이준재활의학과의원 대표원장이 지난 25일 스포츠서울과 인터뷰에서 포즈를 하고 있다. 박진업기자 upandup@sportsseoul.com" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080024712upao.jpg" data-org-width="700" dmcf-mid="2IyoQezceH" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080024712upao.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2022 항저우 아시안게임 축구대표팀 주치의로 금메달에 힘을 보탠 윤영권 에이준재활의학과의원 대표원장이 지난 25일 스포츠서울과 인터뷰에서 포즈를 하고 있다. 박진업기자 upandup@sportsseoul.com
           </figcaption>
</figure>
<p dmcf-pid="tPjuXtOKdE" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="F7xYOlg1Rk" dmcf-ptype="figure">
<p class="link_figure"><img alt="항저우 아시안게임 금메달 획득 당시 윤 원장과 선수들의 모습. 제공 | 에이준재활의학과의원" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080025081fpze.png" data-org-width="700" dmcf-mid="VzqlEmdYMG" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080025081fpze.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            항저우 아시안게임 금메달 획득 당시 윤 원장과 선수들의 모습. 제공 | 에이준재활의학과의원
           </figcaption>
</figure>
<p dmcf-pid="3BeXhTj3Rc" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="0I1gxdqkeA" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080025829igda.jpg" data-org-width="700" dmcf-mid="fhvn6MujeY" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080025829igda.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="pTUkigVsdj" dmcf-ptype="general"><br/> [스포츠서울 | 김용일기자] 2022 항저우 아시안게임 남자 축구 금메달을 일궈낸 ‘황선홍호’의 성공 이면에 주력 요원 모두 큰 부상 없이 최상의 몸 상태를 유지하도록 한 의무진의 공을 빼놓을 수 없다. 중심엔 주치의로 코치진과 호흡을 맞춘 윤영권(44) 에이준재활의학과의원 대표원장이 있다.</p>
<p dmcf-pid="UREBtplfiN" dmcf-ptype="general">윤 원장은 과거 야구, 골프, 테니스 선수의 성공적인 재활을 끌어내며 체육계에 이름을 알렸다. 그러다가 2016 리우올림픽 본선을 겨냥하던 ‘신태용호(23세 이하 대표팀)’에 2015년 합류, 축구와 연을 맺었다. 올림픽 대표팀 주치의로 활동한 그는 2018년 러시아 월드컵을 대비한 A대표팀 주요 경기에도 동행했다. 그리고 2020~2023년 김학범호(도쿄올림픽)와 황선홍호에 차례로 합류했다.</p>
<p dmcf-pid="uJr907T6ea" dmcf-ptype="general">최근 서울 강남구 압구정로에 있는 에이준재활의학과의원에서 만난 윤 원장은 “8년째 각급 축구대표팀과 동행했는데 아시안게임처럼 메이저대회에서 우승을 경험한 건 처음이다. 선수들이 자랑스럽고, 나 역시 ‘금메달이 이런 것이구나’라고 느꼈다”며 활짝 웃었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="7I1gxdqkRg" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080026193vwvr.jpg" data-org-width="700" dmcf-mid="48Lz53C2RW" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080026193vwvr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="zyuEnafOeo" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="qcTM94tnnL" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080026518hacz.jpg" data-org-width="700" dmcf-mid="8Mn7ZFI9Jy" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080026518hacz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="Bim2pzyPLn" dmcf-ptype="general"><br/> 이번 아시안게임 대표팀은 시작 전부터 핵심 요원인 이강인과 송민규, 엄원상 등이 크고 작은 부상에 시달리며 쉽지 않은 여정이 되리라고 여겼다. 그러나 한국은 조별리그 3경기에서 16골 무실점, 3연승으로 녹아웃 스테이지에 진출했다. 승부처로 꼽힌 개최국 중국과 8강전(2-0 승), 우즈베키스탄과 4강전(2-1)을 넘어선 데 이어 운명의 일본과 ‘한일전 결승’에서도 2-1 역전승을 해내면서 금빛으로 대회를 마쳤다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="bBeXhTj3ei" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080026792ebma.png" data-org-width="700" dmcf-mid="6mP5SWcpnT" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080026792ebma.png" width="658"/></p>
</figure>
<p dmcf-pid="KrHi8xUNJJ" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="9mXn6MujMd" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080027080hikb.jpg" data-org-width="700" dmcf-mid="PjNK3uv8nv" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080027080hikb.jpg" width="658"/></p>
</figure>
<p dmcf-pid="212CcwRyJe" dmcf-ptype="general"><br/> 윤 원장은 대회 전 부상 및 합류 시기를 두고 관심이 쏠린 이강인과 관련해서 “파리 생제르맹(PSG) 의무진과 대회 두 달 전부터 소통했다. 대퇴사두근(허벅지 앞 근육)을 다쳤는데 PSG 주치의로부터 상태가 호전되고 있다고 들었다. 다만 언제 대표팀에 보내줄지 정확한 회신이 없어서 나 역시 초조했다”고 말했다. 그러면서 “이강인의 항저우 도착 시기가 확정된 건 합류 3~4일 전이다. 그때 PSG로부터 이강인 부상 부위의 MRI, 초음파 검사 결과 모두 정상이라는 보고서를 받았다. 그럼에도 대표팀에 오기 전 실전 경기는 교체로 조금 뛴 게 전부여서 몸을 천천히 올리는 데 집중했다”고 덧붙였다. 황선홍 감독은 실제 윤 원장의 견해를 듣고 난 뒤 이강인의 출전 시간을 조금씩 늘렸고, 일본과 결승전에 선발로 투입했다.</p>
<p dmcf-pid="VHQWsho5dR" dmcf-ptype="general">윤 원장은 아시안게임 깜짝 득점왕(8골)에 오른 정우영(슈투트가르트)에 대해 “이제까지 대회 기간 근육통 하나 없이 처음부터 끝까지 전 경기를 소화한 선수는 처음 봤다. ‘하늘이 내렸구나’라는 생각이 들 정도로 몸 상태가 가장 좋은 선수였다”고 강조했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="fW8vwOiHLM" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080027373esvy.jpg" data-org-width="700" dmcf-mid="QeflEmdYJS" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080027373esvy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="4zNUH1sbdx" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="8ZMGISatMQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080027660upfp.jpg" data-org-width="700" dmcf-mid="x49IADMTLl" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080027660upfp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="69EBtplfRP" dmcf-ptype="general"><br/> 초반 부상으로 뛰지 못한 송민규(전북 현대) 얘기엔 “아시안게임 2~3주 전에 허벅지를 다쳤다. 직접 진료 보고 MRI도 시행했다. 코치진은 우려가 컸다. 최종 명단 승선이 불확실한 분위기였는데 난 ‘일주일 정도면 회복될 것’이라고 했다”고 밝혔다.</p>
<p dmcf-pid="PHQWsho5R6" dmcf-ptype="general">윤 원장은 “솔직히 압박감이 컸다. 아시안게임은 선수 인생(금메달 시 병역 혜택)이 걸린 대회 아니냐. 의사가 점쟁이도 아니고 몸이 정확하게 언제 낫는다고 예측하기 어려운데 송민규는 오래전부터 근육 회복이 빠른 선수였다. 머릿속 데이터를 믿었다. 실제 현장에서 회복을 잘했고, 제 역할을 해줬다”고 말했다.</p>
<p dmcf-pid="Q4m2pzyPR8" dmcf-ptype="general">‘가장 아찔했던 순간’을 묻자 거친 플레이로 ‘깡패 축구’ 오명을 안은 우즈베키스탄과 4강전을 꼽았다. 이 경기에서 주력 윙어인 엄원상이 상대 백태클에 발목을 부여잡고 쓰러졌다. 일본과 결승전 출격이 불투명해 보였다.</p>
<p dmcf-pid="xug0YZrqM4" dmcf-ptype="general">윤 원장은 “엄원상은 가뜩이나 오른 발목이 안 좋았는데, 반대 발목에 백태클이 깊게 들어왔다. 다음날 현지 병원에서 초음파, 엑스레이 검사를 했는데, 다행히 1도 염좌 수준이더라”며 “그 역시 청소년 대표 시절부터 봤는데 근육, 인대 탄성이 좋아 회복이 빠른 편이다. 명품 근육이라고 할 수 있다”고 웃었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="ycFNRibDnf" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080027907ryuo.jpg" data-org-width="700" dmcf-mid="y2J5SWcpdh" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080027907ryuo.jpg" width="658"/></p>
</figure>
<p dmcf-pid="Wl9IADMTRV" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="YOqrgA6hn2" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080028250rfra.jpg" data-org-width="700" dmcf-mid="WntaMJBEeC" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080028250rfra.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="G7apG5mBJ9" dmcf-ptype="general"><br/> 이밖에 와일드카드로 출전한 설영우(울산 현대)는 어깨 탈구 증세로 어려움을 겪었다. 윤 원장은 경기 중 사인을 주고받으며 만일의 사태를 대비했다. 일본전에서 이마가 찢어지는 부상을 입은 또 다른 와일드카드 박진섭(전북 현대)은 귀국한 뒤 윤 원장이 두 바늘을 꿰매 소속팀에 보냈다고 한다.</p>
<p dmcf-pid="Hszwoj8CnK" dmcf-ptype="general">그는 “주치의는 사후 조치가 중요하다. 경기 중 우연히 발생하는 부상을 막을 수는 없는데, 이번에 선수 전원이 몸 관리를 정말 잘한 것 같다. 여러 위험 상황이 와도 큰 부상이 나오지 않았다. 우승 동력이 된 것 같다. 선수 덕분에 나도 기쁘게 대회를 마무리해 감사하다”고 했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="XPI47bGMMb" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080028544kltv.jpg" data-org-width="700" dmcf-mid="Y3yR28FLJI" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080028544kltv.jpg" width="658"/></p>
</figure>
<p dmcf-pid="Z2DbFUS4LB" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="52DbFUS4Jq" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080029329hrbj.jpg" data-org-width="700" dmcf-mid="H3cz53C2es" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080029329hrbj.jpg" width="658"/></p>
</figure>
<p dmcf-pid="1E0AdL9rez" dmcf-ptype="general"><br/> 황 감독에게도 고마워했다. 윤 원장은 “감독과 이강인, 송민규 등 주요 부상을 입은 선수 회복 기간을 두고 많이 상의했다. 감독께서 주치의 의견을 많이 들어줬고, 실제 로테이션 등에 반영하더라”고 말했다.</p>
<p dmcf-pid="taZLPR7Ad7" dmcf-ptype="general">윤 원장은 내년 1월 카타르 아시안컵 또는 7~8월 예정된 파리올림픽에도 대표팀과 동행할 예정이다. 주치의로 경험치가 늘어나는 만큼 느끼는 게 많단다.</p>
<p dmcf-pid="FN5oQezceu" dmcf-ptype="general">그는 “일반 환자와 다르게 선수가 몸이 안 좋으면 본인은 물론 팀도 셈법이 복잡해진다. 초기엔 그들에게 의학적인 배경 등을 설명하는 스타일이었는데 주치의 언어는 간결해야 한다고 느꼈다”며 “선수나 감독 모두 (주요 부상을 두고) 무언가 결정내리기 어려운 데, 주치의 언어가 복잡하면 더 힘들더라. 아시안게임 때도 ‘간결한 언어를 사용하자’는 게 목표였다. 앞으로 선수단의 건강을 돌보는 것뿐 아니라 효과적으로 판단하도록 돕고 싶다”고 방싯했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="3AtaMJBEnU" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080029614sxau.jpg" data-org-width="700" dmcf-mid="XqKOjExvJm" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080029614sxau.jpg" width="658"/></p>
</figure>
<p dmcf-pid="0dTM94tnJp" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="pzNUH1sbe0" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080030015dvtn.jpg" data-org-width="700" dmcf-mid="ZxJ5SWcpJr" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080030015dvtn.jpg" width="658"/></p>
</figure>
<p dmcf-pid="UGPymCLZd3" dmcf-ptype="general"><br/> kyi0486@sportsseoul.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠서울]</h6></div>
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