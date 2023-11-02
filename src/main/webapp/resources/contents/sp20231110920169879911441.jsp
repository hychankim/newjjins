
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
    <h3>왜 구창모는 LG 잠실구장에 나타났을까...NC가 수원에서 기적의 ‘PS 9연승’으로 ‘해태 왕조’ 따라잡은 날</h3><h6>한용섭  2023. 11. 1. 09:20</h6>
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
<section dmcf-sid="16AatplfnI">
<figure class="figure_frm origin_fig" dmcf-pid="tuMPlyA0eO" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 구창모 / OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092026099tuug.jpg" data-org-width="650" dmcf-mid="Q2batplfMG" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092026099tuug.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 구창모 / OSEN DB
           </figcaption>
</figure>
<p dmcf-pid="FqdMTGEuns" dmcf-ptype="general">[OSEN=잠실, 한용섭 기자] 10월의 마지막 날. NC 투수 구창모는 31일 오후 5시 무렵 서울 잠실구장에 있었다.</p>
<p dmcf-pid="3OtZdL9rnm" dmcf-ptype="general">같은 시각, NC는 수원 KT위즈파크에서 KT와 플레이오프 2차전을 앞두고 있었다. 왜 구창모는 수원이 아닌 잠실구장에 나타났을까. </p>
<p dmcf-pid="0vu0gA6hMr" dmcf-ptype="general">구창모는 왼팔에는 두터운 깁스는 하고 있었다. 9월 27일 구창모는 창원 KIA전에 등판해 투구를 하다 왼팔 통증으로 교체됐다. 곧장 병원으로 이동해 X-ray와 CT 검진을 받았고, 왼팔 전완부 척골 골절 진단이 나왔다.</p>
<p dmcf-pid="pMDcpzyPiw" dmcf-ptype="general">연휴 기간이라 이후 10월 초에 여러 병원에서 재검진을 받았고, 수술 치료가 필요하다는 소견을 들었다. 이후 구창모는 수술을 받았다. 잦은 부상이 반복되는 왼팔이다. </p>
<p dmcf-pid="UdmD7bGMdD" dmcf-ptype="general">구창모는 리그 최고의 토종 에이스로 활약하던 2020년 7월 왼쪽 전완부 척골 피로골절 부상을 당했다. 2개월 가량 재활을 하고 시즌 후반 복귀해 NC의 창단 첫 통합 우승에 기여했다. 그러나 2021시즌을 앞두고는 피로골절이 재발해 한 시즌을 통째로 쉬었다. 지난해 19경기 111⅔이닝을 던지며 11승 5패 평균자책점 2.10으로 활약했다.</p>
<p dmcf-pid="uOtZdL9rLE" dmcf-ptype="general">지난 3월 월드베이스볼클래식 대표팀으로 출전한 구창모는 올 시즌 다시 전완부 척골 부상에 시달렸다. 지난 6월 같은 부위에 피로골절 진단을 받아 재활을 했다. 항저우 아시안게임 출전을 위해 서둘러 1군에 복귀했지만, 야구 대표팀은 부상을 우려해 최종 엔트리에서 구창모를 제외시켰다. 이후 또다시 부상이 재발돼 수술을 받게 됐다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="7T7pacPlJk" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=창원, 이석우 기자] 27일 창원 NC파크에서 2023 신한은행 SOL KBO리그 NC 다이노스와 KIA 타이거즈의 경기가 열렸다. NC 다이노스 구창모가 8회초 1사 1,2루 KIA 타이거즈 김도영 타석때 팔 이상을 호소하며 교체되고 있다. 2023.09.27 / foto0307@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092026331zhxc.jpg" data-org-width="650" dmcf-mid="xbk5Jo2miY" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092026331zhxc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=창원, 이석우 기자] 27일 창원 NC파크에서 2023 신한은행 SOL KBO리그 NC 다이노스와 KIA 타이거즈의 경기가 열렸다. NC 다이노스 구창모가 8회초 1사 1,2루 KIA 타이거즈 김도영 타석때 팔 이상을 호소하며 교체되고 있다. 2023.09.27 / foto0307@osen.co.kr
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="zyzUNkQSdc" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=창원, 이석우 기자] 27일 창원 NC파크에서 2023 신한은행 SOL KBO리그 NC 다이노스와 KIA 타이거즈의 경기가 열렸다. NC 다이노스 구창모가 8회초 1사 1,2루 KIA 타이거즈 김도영 타석때 팔 이상을 호소하며 교체되고 있다. 2023.09.27 / foto0307@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092026496zqyj.jpg" data-org-width="650" dmcf-mid="yJZ6hTj3MW" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092026496zqyj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=창원, 이석우 기자] 27일 창원 NC파크에서 2023 신한은행 SOL KBO리그 NC 다이노스와 KIA 타이거즈의 경기가 열렸다. NC 다이노스 구창모가 8회초 1사 1,2루 KIA 타이거즈 김도영 타석때 팔 이상을 호소하며 교체되고 있다. 2023.09.27 / foto0307@osen.co.kr
           </figcaption>
</figure>
<p dmcf-pid="qcWv8xUNeA" dmcf-ptype="general">구창모는 포스트시즌 엔트리에서 제외돼 재활을 하고 있다. 그런데 구창모는 오는 12월 상무야구단에 입대한다. LG는 이날 오후 6시에 잠실구장에서 한국시리즈를 앞두고 상무야구단과 연습 경기를 치렀다.</p>
<p dmcf-pid="BiOrq9Xedj" dmcf-ptype="general">구창모는 "상무 감독님을 뵙고 인사를 드렸고, 상무에 있는 동료들도 보러 왔다"고 말했다. 이어 왼팔을 보이며 "깁스는 11월까지 하고서, 입대할 때는 풀고 들어갈 것이다"고 설명했다.  </p>
<p dmcf-pid="bBJRyHD7RN" dmcf-ptype="general">'잠실구장이 아닌 수원으로 가봐야 하는 것 아니냐'는 질문에 구창모는 "가고 싶어도 티켓이 없어서 못 간다"고 웃으며 말했다. </p>
<p dmcf-pid="KrZGMJBEda" dmcf-ptype="general">NC는 2020년 한국시리즈 우승 이후 3년 만에 포스트시즌에 진출했는데, 구창모는 부상으로 함께 하지 못하고 있다. 구창모는 "어제 경기를 봤는데, 우리 선수들이 너무 잘한다"고 기뻐하며, 한편으로 "함께 뛰지 못해 아쉽다"고 말했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="95VKwOiHRg" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 구창모 / OSEN DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092027981ravi.jpg" data-org-width="650" dmcf-mid="W3FMTGEudy" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092027981ravi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 구창모 / OSEN DB
           </figcaption>
</figure>
<p dmcf-pid="2GB7ADMTio" dmcf-ptype="general">NC는 정규시즌 막판 2위 경쟁을 하다 4위로까지 밀려났다. 와일드카드 결정전부터 시작했는데, 5위 두산을 와카 1차전에서 대파하고 준플레이오프로 올라갔다.</p>
<p dmcf-pid="VHbzcwRydL" dmcf-ptype="general">준플레이오프에서 에이스 페디가 한 경기도 등판하지 않고서도 SSG에 3연승을 거두며 플레이오프에 진출했다. NC는 페디가 30일 플레이오프 1차전에서 6이닝 12탈삼진 1실점 완벽투를 펼치며 압도적으로 승리했다. 이어 31일 2차전에서는 신민혁이 준플레이오프 1차전에 이어 또다시 무실점 투구를 펼쳤고, 3-2로 앞선 9회말 2사 만루 위기에서 유격수 김주원이 슈퍼 다이빙캐치로 마지막 아웃카운드를 잡아내며 승리했다. </p>
<p dmcf-pid="fWzUNkQSMn" dmcf-ptype="general">2020년 한국시리즈 4차전부터 올해 플레이오프 2차전까지 9연승을 이어갔다. 1987~1988년 해태가 기록한 역대 포스트시즌 최다 연승과 타이 기록이다. 이제 남은 3~5차전에서 1승만 추가하면 3년 만에 한국시리즈에 진출할 수 있다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="4zRQSWcpei" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=수원, 최규한 기자] NC는 31일 수원 KT 위즈파크에서 열린 KT와 2023 KBO리그 플레이오프 2차전에서 3-2로 승리했다. 9회말 2사 만루 상황 KT 오원석의 뜬공 타구를 NC 유격수 김주원이 몸을 날려 잡아내고 있다. 2023.10.31 / dreamer@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092028485hnob.jpg" data-org-width="650" dmcf-mid="GoVKwOiHLv" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092028485hnob.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=수원, 최규한 기자] NC는 31일 수원 KT 위즈파크에서 열린 KT와 2023 KBO리그 플레이오프 2차전에서 3-2로 승리했다. 9회말 2사 만루 상황 KT 오원석의 뜬공 타구를 NC 유격수 김주원이 몸을 날려 잡아내고 있다. 2023.10.31 / dreamer@osen.co.kr
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="8Z9BEmdYJJ" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=수원, 최규한 기자] NC는 31일 수원 KT 위즈파크에서 열린 KT와 2023 KBO리그 플레이오프 2차전에서 3-2로 승리했다. 9회말 2사 만루에서 유격수 김주원의 슈퍼 캐치가 승리를 지켜냈다. 2루수 박민우와 3루수 서호철이 김주원과 포옹하며 기뻐하고 있다. 2023.10.31 / dreamer@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092029079oupu.jpg" data-org-width="650" dmcf-mid="ZiwkUqWQnh" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092029079oupu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=수원, 최규한 기자] NC는 31일 수원 KT 위즈파크에서 열린 KT와 2023 KBO리그 플레이오프 2차전에서 3-2로 승리했다. 9회말 2사 만루에서 유격수 김주원의 슈퍼 캐치가 승리를 지켜냈다. 2루수 박민우와 3루수 서호철이 김주원과 포옹하며 기뻐하고 있다. 2023.10.31 / dreamer@osen.co.kr
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="69ndYZrqdd" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=수원, 최규한 기자] NC가 연승 행진이 거침없다. 역대 포스트시즌 최다 연승 타이 기록(9연승)을 세웠다. 38년 만에 대기록이다. NC는 31일 수원 KT 위즈파크에서 열린 KT와 2023 KBO리그 플레이오프 2차전에서 3-2로 승리했다. 9회말 2사 만루에서 유격수 김주원의 슈퍼 캐치가 승리를 지켜냈다. 9회말 2사 만루에서 다이빙캐치로 경기를 마무리지은 NC 유격수 김주원이 경기 종료 후 기뻐하고 있다. 2023.10.31 / dreamer@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092029232tvdm.jpg" data-org-width="650" dmcf-mid="5PswzKHRiC" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092029232tvdm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=수원, 최규한 기자] NC가 연승 행진이 거침없다. 역대 포스트시즌 최다 연승 타이 기록(9연승)을 세웠다. 38년 만에 대기록이다. NC는 31일 수원 KT 위즈파크에서 열린 KT와 2023 KBO리그 플레이오프 2차전에서 3-2로 승리했다. 9회말 2사 만루에서 유격수 김주원의 슈퍼 캐치가 승리를 지켜냈다. 9회말 2사 만루에서 다이빙캐치로 경기를 마무리지은 NC 유격수 김주원이 경기 종료 후 기뻐하고 있다. 2023.10.31 / dreamer@osen.co.kr
           </figcaption>
</figure>
<p dmcf-pid="PHbzcwRyee" dmcf-ptype="general">/orange@osen.co.kr</p>
</section>
</div></p></section></div><h6>[Source : OSEN]</h6></div>
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