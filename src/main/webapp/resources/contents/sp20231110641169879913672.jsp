
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
    <h3>'FA 14위 혹은 37위' 이정후 향한 엇갈린 ML 평가, '압도적 투톱' 오타니-야마모토와 무엇이 달랐나</h3><h6>김동윤 기자  2023. 11. 1. 06:41</h6>
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
<section dmcf-sid="UaV6tMujhk">
<div dmcf-pid="uRuBy2Zdyc" dmcf-ptype="general">
           [스타뉴스 | 김동윤 기자] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="7e7bWV5JvA" dmcf-ptype="figure">
<p class="link_figure"><img alt="이정후./사진=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101064102972iewo.jpg" data-org-width="647" dmcf-mid="7myRUibDyu" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101064102972iewo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이정후./사진=뉴스1
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="z7vYAZrqWj" dmcf-ptype="figure">
<p class="link_figure"><img alt="이정후." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101064104314rmzv.jpg" data-org-width="647" dmcf-mid="ZvSQ3ezcWI" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101064104314rmzv.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이정후.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="qzTGc5mBTN" dmcf-ptype="figure">
<p class="link_figure"><img alt="이정후./사진=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101064105716yduf.jpg" data-org-width="647" dmcf-mid="56r2H8FLWO" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101064105716yduf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이정후./사진=뉴스1
           </figcaption>
</figure>
<div dmcf-pid="BqyHk1sbTa" dmcf-ptype="general">
           메이저리그 도전을 선언한 이정후(25·키움 히어로즈)가 어떤 조건으로 어디로 향할지는 정말 알 수가 없게 됐다.
          </div>
<p dmcf-pid="bwMJzo2mlg" dmcf-ptype="general">메이저리그 단장 출신 짐 보든 칼럼니스트는 10월 31일(한국시간) 미국 매체 디 애슬레틱을 통해 이번 겨울 FA 톱40을 꼽았다. WAR(대체 선수 대비 승리기여도)은 미국 야구통계 사이트 베이스볼 레퍼런스를 기준 삼았음을 사전에 명시했다.</p>
<p dmcf-pid="KrRiqgVsvo" dmcf-ptype="general">1위는 예상대로 오타니 쇼헤이(29·LA 에인절스)였다. 오타니는 메이저리그 6번째 시즌이자, FA를 앞둔 2023시즌을 MVP급 성적으로 마무리했다. 부상으로 한 달 일찍 시즌을 접었음에도 타자로서 135경기 타율 0.304, 44홈런 95타점 102득점 20도루, 출루율 0.412 장타율 0.654 OPS(출루율+장타율) 1.066, 투수로서 23경기 10승 5패 평균자책점 3.14, 132이닝 167탈삼진의 기록을 남겼다. WAR 산정에 불리한 지명타자임에도 타자 6, 투수 4로 총합 10을 돌파했다. 아메리칸리그 홈런왕을 차지함과 동시에 장타율, OPS 부문 1위를 기록하면서 2021년 이후 두 번째 MVP 수상도 눈앞에 뒀다.</p>
<p dmcf-pid="9menBafOTL" dmcf-ptype="general">보든은 "올해 오타니는 메이저리그 역사상 최고의 단일 시즌을 마쳤다"며 "그가 FA가 되면 업계는 4억 달러(약 5412억 원)에서 6억 달러(약 8118억 원) 이상의 계약이 나올 것으로 예상하고 있다. 오프시즌 오른쪽 팔꿈치 수술로 인해 2024년에 투구할 수 없지만, 그의 에이전트에 따르면 내년 개막일에 지명타자로 나설 것으로 보인다"고 설명했다.</p>
<p dmcf-pid="21mCivNFTn" dmcf-ptype="general">적어도 내년은 투수로 나서지 못함에도 최고의 선수가 될 것으로 예상했다. 보든은 "메이저리그 구단들은 부상을 이유로 오타니에게 인센티브, 연봉 인상, 옵트아웃이 포함된 복잡한 계약을 제안할 것이다. 하지만 실수해선 안 된다. 그는 (이미) 클린업 타순에 들어갈 타자고, 건강할 때는 선발 로테이션에서 에이스인 선수다. 오타니는 유니콘이며 곧 스포츠 역사상 가장 높은 연봉을 받는 선수가 될 것"이라고 극찬했다. </p>
<p dmcf-pid="VtshnTj3Ci" dmcf-ptype="general">보수적으로 예상한 것이 10년 보장 4억 7700만 달러(약 6454억 원)였다. 옵션 등으로 총액이 5억 달러(약 6765억 원) 이상으로 올라갈 것으로 예상했으며, LA 다저스, 텍사스 레인저스, 샌프란시스코 자이언츠 등 10개 팀이 경쟁할 것으로 내다봤다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="fXSWjXwzCJ" dmcf-ptype="figure">
<p class="link_figure"><img alt="타석에 선 오타니 쇼헤이./AFPBBNews=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101064107014pevt.jpg" data-org-width="647" dmcf-mid="1mAzvKHRvs" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101064107014pevt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            타석에 선 오타니 쇼헤이./AFPBBNews=뉴스1
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="4ZvYAZrqld" dmcf-ptype="figure">
<p class="link_figure"><img alt="마운드에 선 오타니 쇼헤이./AFPBBNews=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101064108375jupt.jpg" data-org-width="647" dmcf-mid="tLqg9A6hvm" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101064108375jupt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            마운드에 선 오타니 쇼헤이./AFPBBNews=뉴스1
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="85TGc5mBle" dmcf-ptype="figure">
<p class="link_figure"><img alt="야마모토 요시노부./AFPBBNews=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101064109912ptzh.jpg" data-org-width="647" dmcf-mid="FTKjfExvTr" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101064109912ptzh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            야마모토 요시노부./AFPBBNews=뉴스1
           </figcaption>
</figure>
<div dmcf-pid="6HlyNHD7SR" dmcf-ptype="general">
<br/>2위에는 차세대 일본 에이스 야마모토 요시노부(25·오릭스 버펄로스)가 이름을 올렸다. 야마모토는 올 시즌 23경기 16승 6패 평균자책점 1.21, 164이닝 34사사구(28볼넷 6몸에 맞는 볼) 169탈삼진을 마크했다. 그러면서도 피홈런은 단 두 개, 피안타율 0.198, WHIP(이닝당 출루허용률) 0.88로 91.3%에 달하는 퀄리티 스타트(선발 6이닝 이상 3자책 이하) 비율을 남겼다. 퍼시픽리그 다승과 평균자책점, 최다 탈삼진, 승률 부문 1위를 차지하면서 일본 프로야구 역사상 최초로 3시즌 연속 4관왕을 달성하고 사와무라상도 3년 연속 수상했다. 
          </div>
<p dmcf-pid="PXSWjXwzCM" dmcf-ptype="general">보든은 "메이저리그 구단들은 야마모토를 이제 1선발 혹은 2선발로 보고 있으며, 어느 팀이든 선발 로테이션에 들어가 두 자릿수 승리와 평균자책점 3.00 미만을 기록할 것으로 예상하고 있다"고 현지 평가를 전했다. 이어 "스트라이크존 안팎으로 넣고 뺄 줄 아는 특별한 커맨드를 지니고 있으며, 요령과 느낌 그리고 침착함마저 지닌 선수다. 그의 패스트볼은 시속 90마일 중후반을 기록하고 있으며, 쓸어내리는 스플리터와 플러스 커브볼 등 5가지 구종을 섞어 던진다. 야마모토는 특별하고 그에 걸맞은 계약을 받아낼 것"이라고 극찬했다. </p>
<p dmcf-pid="QZvYAZrqhx" dmcf-ptype="general">계약 규모도 상상 이상이었다. 보든이 예상한 야마모토의 계약 규모는 7년 2억 1100만 달러(약 2855억 원)로 만약 성사된다면 아시아 출신 선수가 메이저리그에 입성하며 받아낸 최고액을 경신한다. 현재 기록은 2014년 다나카 마사히로가 뉴욕 양키스에 입단할 때 받은 7년 1억 5500만 달러(약 2097억 원)다. 예상 행선지도 뉴욕 양키스, 뉴욕 메츠, LA 다저스, 샌프란시스코 자이언츠 등 빅마켓 팀이 다수 포함된 9개 팀이 경쟁할 것으로 보여 초대형 계약 가능성이 높게 점쳐졌다. </p>
<p dmcf-pid="x9UqT9XevQ" dmcf-ptype="general">보든의 예상은 며칠 전 메이저리그 공식 홈페이지 MLB.com이 내린 평가와 크게 다르지 않았다. 오타니와 야마모토는 MLB.com이 지난달 29일 뽑은 FA 상위 25명에서도 나란히 1, 2위를 달리며 압도적인 투톱으로 소개됐다. 3위부터는 순위가 조금 달랐으나, 현재 텍사스 에이스 조던 몽고메리를 MLB.com이 8위, 보든이 3위로 놓고 반등에 성공한 코디 벨린저(시카고 컵스)를 MLB.com이 4위, 보든이 6위로 놓는 등 평가는 크게 다르지 않았다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="ysADQsJGvP" dmcf-ptype="figure">
<p class="link_figure"><img alt="이정후." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101064111195wlym.jpg" data-org-width="647" dmcf-mid="3clBy2ZdSw" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101064111195wlym.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이정후.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="WaenBafOW6" dmcf-ptype="figure">
<p class="link_figure"><img alt="이정후." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101064112492yjjj.jpg" data-org-width="647" dmcf-mid="0M53Ouv8TD" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101064112492yjjj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이정후.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="YNdLbN4Iv8" dmcf-ptype="figure">
<p class="link_figure"><img alt="이정후." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101064113854ovpc.jpg" data-org-width="647" dmcf-mid="pJig9A6hhE" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101064113854ovpc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이정후.
           </figcaption>
</figure>
<div dmcf-pid="GjJoKj8CT4" dmcf-ptype="general">
<br/>하지만 이정후에 대한 평가는 상반됐다. MLB.com이 이정후를 전체 FA 중 14위, 외야수 중 3위로 놓은 것과 달리, 보든은 40명 중 37위로 낮게 평가했다. 의외로 이정후가 가장 뛰어난 툴이라 평가받는 타격에 대한 엇갈린 평가가 이유였다. 
          </div>
<p dmcf-pid="HvmCivNFWf" dmcf-ptype="general">보든은 이정후를 중견수로 소개하면서 "타격 툴에 대한 메이저리그 스카우트들의 의견이 갈린다. 어떤 이들은 그가 메이저리그 타석에 들어서자마자 안타를 칠 것이라 믿지만, 다른 이들은 그가 빅리그 투수에 적응하는 데 최소 1~2년은 걸릴 것으로 예상한다. 또 한쪽은 이정후가 타율 0.270의 타자가 될 것이라 믿고 다른 한쪽은 그가 타율 0.300의 타자가 될 수 있다고 상상한다"고 이유를 밝혔다. </p>
<p dmcf-pid="XTshnTj3lV" dmcf-ptype="general">이정후는 2017년 KBO리그 신인드래프트 1차 지명으로 넥센 히어로즈(현 키움 히어로즈)에 입단한 뒤 프로 첫해부터 1군에 안착해 7시즌을 주전으로 활약했다. 통산 884경기에서 타율 0.340(3476타수 1181안타) 65홈런 515타점 581득점 69도루, 출루율 0.407 장타율 0.491 OPS 0.898로 펀치력은 부족하지만, 꾸준한 안타 생산 능력을 인정받았다. 특히 383개의 볼넷을 골라내는 동안 304개의 삼진밖에 당하지 않는 뛰어난 선구안을 자랑했는데 이 부분은 미국 현지에서도 높은 평가를 받았다. 보든은 "이정후의 타격 툴의 가장 좋은 점은 콘택트 능력과 선구안이다. 그는 KBO 7시즌 내내 삼진보다 볼넷이 더 많았다"고 칭찬했다. </p>
<p dmcf-pid="ZyOlLyA0S2" dmcf-ptype="general">이어 "플러스(메이저리그 올스타 수준)급 수비 범위와 강한 어깨를 지닌 플러스급 중견수이며, 좋은 점프력과 타구 판단 능력도 갖췄다"면서도 "큰 보폭을 가진 평균 이상의 주자지만, 위협적인 도루 능력을 가지진 않았다. 파워도 두드러지지 않는다"고 현실적인 평가도 함께 소개했다. </p>
<p dmcf-pid="5jJoKj8CC9" dmcf-ptype="general">냉정한 반응은 예상 계약 규모에서 여실히 드러났다. 보든은 샌프란시스코, 클리블랜드 가디언스, 토론토 블루제이스, 디트로이트 타이거스가 이정후 영입에 적합한 곳이라 소개하면서도 계약 규모에 대해서는 "현재로선 견적을 낼 수 없다"고 쓰지 않았다.</p>
<p dmcf-pid="1Aig9A6hSK" dmcf-ptype="general">김동윤 기자 dongy291@mtstarnews.com</p>
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