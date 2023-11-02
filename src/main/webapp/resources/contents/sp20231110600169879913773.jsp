
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
    <h3>"FA 류현진 공백, 실종된 에이스 찾지 못하면…" 투구 거부 불화설, 토론토 미스터리</h3><h6>이상학  2023. 11. 1. 06:00</h6>
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
<section dmcf-sid="ZPFCDFI9MB">
<figure class="figure_frm origin_fig" dmcf-pid="5lL27L9rRq" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 토론토 류현진. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060043681gazk.jpg" data-org-width="650" dmcf-mid="Qcwe8wRyR8" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060043681gazk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 토론토 류현진. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="1uladlg1Mz" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 토론토 존 슈나이더 감독이 알렉 마노아를 교체하고 있다. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060044181hjfq.jpg" data-org-width="650" dmcf-mid="xNN8bN4Id4" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060044181hjfq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 토론토 존 슈나이더 감독이 알렉 마노아를 교체하고 있다. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<p dmcf-pid="ttmJPmdYL7" dmcf-ptype="general">[OSEN=이상학 기자] 토론토 블루제이스가 FA 류현진(36)을 잡지 않으면 알렉 마노아(25) 미스터리를 꼭 풀어야 한다. </p>
<p dmcf-pid="FKYEgYkUJu" dmcf-ptype="general">캐나다 일간지 ‘토론토 스타’는 지난 31일(이하 한국시간) ‘베테랑 류현진이 FA 자격을 얻게 됨에 따라 토론토는 선발 로테이션에 공백이 생겼다. 토론토는 그 자리를 전직 에이스가 차지하게 할 건지 아니면 다른 선수를 영입해야 할지 결정해야 한다’고 전했다. 여기서 전직 에이스는 마노아를 가리킨다. </p>
<p dmcf-pid="3RUvsUS4eU" dmcf-ptype="general">마노아는 지난 8월 류현진이 토미 존 수술에서 복귀한 뒤 2경기 만에 궤도에 오르자 마이너 강등 통보를 받았다. 류현진은 11경기(52이닝) 3승3패 평균자책점 3.46으로 토론토 선발진에 힘을 보태며 팀이 와일드카드로 가을야구에 나가는 데 기여했다. 마노아는 더 이상 투구 없이 시즌을 마쳤다. </p>
<p dmcf-pid="0tmJPmdYdp" dmcf-ptype="general">토론토 스타는 ‘블루제이스 프런트 임원들이 요즘 가장 많이 하는 질문 중 하나가 마노아를 어떻게 해야 할지다. 경기장 안팎에서 마노아의 실종은 여전히 미스터리로 남아있다. 1년 전만 해도 그는 아메리칸리그(AL) 최고의 선발투수 중 한 명이었다. 올 시즌은 최악으로 추락했다’고 설명했다. </p>
<p dmcf-pid="p3OnxOiHe0" dmcf-ptype="general">지난해 31경기(196⅔이닝) 16승7패 평균자책점 2.24로 AL 사이영상 3위에 오른 마노아는 올해 19경기(87⅓이닝) 3승9패 평균자책점 5.87로 추락했다. 포심 패스트볼 구속(93.9마일→92.8마일)이 떨어지고, 9이닝당 볼넷(2.3개→6.1개)이 눈에 띄게 늘면서 커맨드도 완전히 무너졌다. </p>
<p dmcf-pid="Uuladlg1n3" dmcf-ptype="general">토론토 스타는 ‘토론토는 마노아가 2024년에도 여전히 현실적인 선택인지 결정해야 한다. 만약 그렇다면 다른 곳들을 업그레이드할 수 있는 돈이 있다. 그렇지 않다면 다른 선발투수 영입에 쓸 예산을 확보해야 한다’며 토론토가 어떤 선택을 할지 궁금해했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="ua25y2ZdMF" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060044411iazj.jpg" data-org-width="650" dmcf-mid="yXYEgYkUdf" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060044411iazj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="7A4FG4tnRt" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060044592rdtq.jpg" data-org-width="650" dmcf-mid="W3oVzo2mMV" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060044592rdtq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<p dmcf-pid="zTa4BafOn1" dmcf-ptype="general">일단 토론토는 마노아의 부활을 기대하고 있다. 마노아는 최근 자신의 SNS에 운동 영상을 올렸는데 체중이 꽤 빠진 모습이었다. 로스 앳킨스 토론토 단장은 “마노아가 매우 의욕 넘친다. 내년에는 다시 선발진에 합류하길 기대하고 있다”며 “좋을 때 폼을 회복하기 위한 동기 부여가 됐다. 아마추어 시절 그가 궁지에 몰렸을 때 어떻게 반응했는지 알고 있다. 이번 오프시즌에 아주 강력한 방식으로 대응할 것이다”고 반등을 위한 몸부림을 기대했다. </p>
<p dmcf-pid="qFsiQsJGJ5" dmcf-ptype="general">토론토 스타는 ‘토론토가 신중을 기해 선발투수를 추가 영입한다고 해도 마노아를 다른 팀으로 보내야 한다는 압박감을 느껴선 안 된다. 아직 그는 연봉 중재 대상자가 아니며 마이너로 보낼 수 있는 옵션도 2개 남아있다. 시간은 그들 편이다. 마노아를 트리플A 버팔로로 보내는 게 이상적이진 않지만 단돈 몇 푼에 트레이드하는 것보다 낫다’며 웬만해선 안고 가야 한다고 강조했다. 앳킨스 단장도 “마노아는 트레이드 요청을 하지 않았다. 우리는 그와 함께 해결책을 찾는 데 초점을 맞추고 있다”고 동행 의지를 보였다. </p>
<p dmcf-pid="Bwxu1xUNeZ" dmcf-ptype="general">마노아는 지난 8월12일 마이너리그로 내려간 뒤 트리플A 팀에 합류하지 않아 의문을 낳았다. 구단의 마이너행 결정에 불만을 품고서 투구를 거부한 것이라는 이야기가 나왔다. 올해 두 번의 마이너 강등으로 연봉 조정 신청 자격을 1년 앞당길 수 있는 ‘슈퍼2’ 자격 등록일수를 채우지 못한 것에 불만을 나타냈다는 것이다. 결국 트리플A에서 실전 등판 없이 시즌이 끝나자 불화설이 수면 위로 떠오르기 시작했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="bIJbpJBEdX" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060044826fdar.jpg" data-org-width="650" dmcf-mid="YKhgeho5n2" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060044826fdar.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Kseq3ezcdH" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060045210dhex.jpg" data-org-width="650" dmcf-mid="G4BGlBYxe9" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060045210dhex.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<p dmcf-pid="9lL27L9rdG" dmcf-ptype="general">토론토 스타도 ‘마노아는 아직 자신의 감정을 공개적으로 알리지 않았다. 8월 중순 버팔로로 강등된 뒤 기자들과 이야기를 나누지 않았고, 팀 닥터의 허락을 받고도 투구를 거부한 이유에 대해 설명하지 않고 있다. 구조적인 손상이 발견되지 않았음에도 불구하고 9월에 오른쪽 어깨에 주사를 맞은 이유에 대해서도 설명하지 않았다’고 의문을 나타냈다. </p>
<p dmcf-pid="2RUvsUS4MY" dmcf-ptype="general">앳킨스 단장은 “마노아가 주사를 맞은 것은 우리 의료진의 제안이 아니라 자기 스스로 결정한 것이었다. 구조적인 문제는 없었고, 의학적으로 더 이상 업데이트할 내용이 없다”며 부상이 아닌 불화를 인정하는 듯한 말을 남겼다. </p>
<p dmcf-pid="V0ILMInXLW" dmcf-ptype="general">토론토 스타는 ‘한때 빛났던 스타와 팀 사이의 건강한 관계로 보이진 않는다. 이 논란은 내년 봄까지 지속될 수 있다’며 ‘하지만 마노아는 앳킨스 단장에게 뭔가 강요할 만큼 충분한 파워나 권리가 없다. 이 상황에 마음에 들지 않는다면 더 좋은 투구를 하면 된다. 더 나은 성적만이 마노아를 이 위태로운 상황에서 벗어나게 할 수 있는 유일한 방법이다’고 강조했다. 아직 빅리그 커리어가 얼마 되지 않은 마노아는 FA까지 앞으로 4년을 더 해야 한다. 구단과 척을 져서 좋을 게 없다. /waw@osen.co.kr</p>
<figure class="figure_frm origin_fig" dmcf-pid="fpCoRCLZdy" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 토론토 알렉 마노아(오른쪽). ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060045544dmgh.jpg" data-org-width="650" dmcf-mid="Hpn9unKwdK" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060045544dmgh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 토론토 알렉 마노아(오른쪽). ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="4oKXvKHRMT" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060045704ytff.jpg" data-org-width="650" dmcf-mid="XPDR4DMTdb" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060045704ytff.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 토론토 알렉 마노아. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
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