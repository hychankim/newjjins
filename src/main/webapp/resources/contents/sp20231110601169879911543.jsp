
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
    <h3>"진짜 미친 X인 줄 알았다" 국대 유격수 환상의 '슈퍼캐치'에 동료도 '깜놀', 벼랑 끝 팀 구해낸 '미친 플레이'</h3><h6>수원=양정웅 기자  2023. 11. 1. 06:01</h6>
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
<section dmcf-sid="WhCe8wRyC6">
<div dmcf-pid="YLn7tMujl8" dmcf-ptype="general">
           [스타뉴스 | 수원=양정웅 기자] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="GoLzFR7Ah4" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아냈다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060102413wouj.jpg" data-org-width="647" dmcf-mid="trktYf1ivm" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060102413wouj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아냈다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="HyTLMInXCf" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아냈다. /사진=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060103717veoq.jpg" data-org-width="647" dmcf-mid="FNjZT9XeSr" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060103717veoq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아냈다. /사진=뉴스1
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="XWyoRCLZhV" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 김주원(가운데)이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아내자 3루수 서호철(왼쪽)과 2루수 박민우가 다가와 기쁨을 나누고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060105416twld.jpg" data-org-width="647" dmcf-mid="V8H6Kj8CWi" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060105416twld.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 김주원(가운데)이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아내자 3루수 서호철(왼쪽)과 2루수 박민우가 다가와 기쁨을 나누고 있다.
           </figcaption>
</figure>
<div dmcf-pid="ZmrP9A6hS2" dmcf-ptype="general">
<strong>"타구 맞아나갈 때 안타다 싶었는데, (김)주원이 보고 진짜 미친 놈인 줄 알았습니다." (NC 포수 김형준)</strong>
</div>
<p dmcf-pid="5smQ2cPlW9" dmcf-ptype="general">'슈퍼캐치'라는 말로도 도저히 설명할 수 없는 엄청난 수비였다. NC 다이노스의 '국가대표 유격수' 김주원(21)이 팀의 한국시리즈 진출 확률을 높이는 환상적인 캐치를 선보였다.</p>
<p dmcf-pid="1OsxVkQSWK" dmcf-ptype="general">NC는 지난달 31일 오후 6시 30분 수원 케이티 위즈 파크에서 열린 정규시즌 2위 KT 위즈와 2023 신한은행 SOL KBO 플레이오프 2차전(5전3선승제)에서 3-2로 승리했다. 전날 게임에 이어 플레이오프 2연승을 달린 NC는 이제 2016년, 2020년에 이어 3번째 한국시리즈 진출을 눈앞에 두고 있다. 지난 1986년 시작한 KBO 플레이오프에서 2연승으로 시작한 팀이 한국시리즈에 진출할 확률은 무려 90%(20번 중 18번)나 된다.</p>
<p dmcf-pid="tHGNJSathb" dmcf-ptype="general">초반부터 NC는 상대를 압도하는 모습을 보여줬다. 1회 초부터 박민우의 안타에 이은 3번 박건우의 선제 2점 홈런이 터지며 NC는 첫 이닝부터 2득점을 기록했다. 이어 3회 초 공격에서도 첫 타자 김주원의 3루타에 이어 손아섭의 땅볼 타구를 1루수 박병호가 제대로 처리하지 못하면서 NC는 한 점을 더 올렸다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="FXHjivNFWB" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 3회 초 3루타를 터트리고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060106762epqc.jpg" data-org-width="647" dmcf-mid="fHbiQsJGyJ" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060106762epqc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 3회 초 3루타를 터트리고 있다.
           </figcaption>
</figure>
<div dmcf-pid="3ZXAnTj3yq" dmcf-ptype="general">
           이후 NC는 한동안 타선에서 침묵을 지켰다. 그러나 선발 신민혁의 호투가 이를 만회했다. 통산 2번째 포스트시즌 등판에 나서는 신민혁은 7회 1아웃까지 81구를 던지며 KT 타선을 1안타 1볼넷으로 틀어막았다. 주 무기인 체인지업(35구)을 비롯해 커터(28구), 패스트볼(15구), 포크볼(3구)을 적절히 섞어 던지면서 상대를 요리했다. 7회 말 신민혁이 볼넷과 내야진의 실책으로 1사 1, 2루라는 경기 최대 위기에 몰리자 NC는 지체 없이 필승조 류진욱을 투입했고, 장성우를 곧바로 투수-유격수-1루수로 이어지는 병살로 처리하면서 고비를 넘겼다.
          </div>
<p dmcf-pid="0YWgeho5Cz" dmcf-ptype="general">KT는 8회 말 1사 후 대타 김민혁이 볼넷으로 나가며 추격을 시작했다. 이어 배정대의 안타와 상대 좌익수 실책 속에 2, 3루 기회를 잡았다. 찬스를 맞이한 KT는 대타 오윤석의 희생플라이로 팀 첫 득점을 올렸다. NC는 마무리 이용찬을 등판시켰지만, 김상수의 적시타가 나온 KT는 순식간에 한 점 차까지 쫓아가는 데 성공했다. KT는 9회에도 절호의 기회를 잡았지만 끝내 경기를 뒤집지는 못했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="pGYadlg1h7" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 이용찬이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 선두타자 박병호에게 안타를 맞고 고개를 떨구고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060108172kzug.jpg" data-org-width="647" dmcf-mid="4sX9unKwSd" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060108172kzug.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 이용찬이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 선두타자 박병호에게 안타를 맞고 고개를 떨구고 있다.
           </figcaption>
</figure>
<div dmcf-pid="UHGNJSatyu" dmcf-ptype="general">
           9회 말은 양 팀 모두를 긴장하게 만든 순간이었다. NC는 8회부터 올라온 이용찬이 9회 선두타자 박병호에게 중견수 앞 안타를 허용했다. 이어 장성우의 빗맞은 타구를 2루수 박민우가 잡지 못하면서 공이 우중간 외야에 떨어졌고, 그 사이 1루 대주자 이상호가 3루까지 진루하며 KT는 무사 1, 3루라는 절호의 기회를 잡았다. 상황에 따라 역전 득점까지 가능한 상황이었다.
          </div>
<p dmcf-pid="u68XvKHRvU" dmcf-ptype="general">이용찬은 6번 문상철을 상대로 첫 2개의 공을 연달아 포크볼로 던졌다. 결국 3구째 포크볼로 문상철을 헛스윙 삼진으로 처리했다. 한숨을 돌린 이용찬은 다음 타자로 나온 대타 김준태도 6구까지 가는 풀카운트 승부 끝에 포크볼로 루킹 삼진을 잡아냈다. 1루 대주자 정준영이 2루 도루에 성공하며 1루 베이스가 비게 되자 NC는 배정대를 거르며 만루 작전을 가져갔다.</p>
<p dmcf-pid="7P6ZT9Xeyp" dmcf-ptype="general">타석에는 오윤석이 등장했다. 그는 이용찬의 4구째 높은 포크볼에 배트를 내밀었다. 타구는 3루수와 유격수 사이의 애매한 곳으로 날아갔다. 상황에 따라 안타가 될 수도 있는 코스였다. 그런데 어느 새 등장한 유격수 김주원이 몸을 날려 타구를 잡아냈다. 2루수 박민우와 3루수 서호철이 김주원에게 달려가 포옹하며 기쁨을 나눴다. KT 벤치에서는 비디오 판독을 신청했지만, 느린 그림으로 확인해봤을 때 바운드가 되지 않고 곧바로 김주원의 글러브에 들어간 것으로 나오면서 경기는 그대로 마무리됐다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="zQP5y2ZdT0" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아냈다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060109626hzuv.jpg" data-org-width="647" dmcf-mid="8WnOk1sbWe" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060109626hzuv.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아냈다.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="qXHjivNFy3" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 강인권 감독(오른쪽)이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 경기를 끝내는 호수비를 펼친 김주원을 격려하고 있다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060111359cmxc.jpg" data-org-width="647" dmcf-mid="6RxkoWcpWR" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060111359cmxc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 강인권 감독(오른쪽)이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 경기를 끝내는 호수비를 펼친 김주원을 격려하고 있다.
           </figcaption>
</figure>
<div dmcf-pid="BZXAnTj3CF" dmcf-ptype="general">
           김주원의 호수비는 모두를 놀라게 하기에 충분했다. 홈플레이트 뒤에서 플레이를 지켜봤던 포수 김형준은 "타구 맞아나가는데 안타다 싶었는데, (김)주원이가 미친 놈인줄 알았다"며 다소 격하게 놀라움을 표현했다. 이날 NC의 선발투수로 등판해 6⅓이닝 1피안타 1볼넷 2탈삼진 무실점 호투로 승리투수가 된 신민혁은 "'역시 우리 주원이다' 생각했다"고 밝혔다.
          </div>
<p dmcf-pid="bjNKUibDyt" dmcf-ptype="general">강인권 NC 감독은 경기 후 "맞는 순간 안타인 줄 알았다"며 "수비 위치 선정이 좋았고, 김주원의 다이빙도 좋았던 것 같다"고 설명했다. 그는 "형들이 어려움을 만들어놨는데, 막내인 김주원이 팀을 승리로 이끌었던 것 같다"며 21세 유격수에게 고마움을 드러냈다. 패장인 KT 이강철 감독은 "마지막에 운이 따르지 않은 것 같다"고 말했다.</p>
<p dmcf-pid="KAj9unKwW1" dmcf-ptype="general">김주원 본인은 "마지막에 배트에 공이 맞는 순간, 바운드가 되면 무조건 살겠다는 생각이 들었다"며 "다른 건 생각하지 않고 몸을 날렸다"고 당시 상황을 설명했다. 그는 "(동료들이) 다른 거 안하고 '진짜 잘했다'는 이야기를 해줬다"며 미소를 지었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="9cA27L9rv5" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아낸 후 기뻐하고 있다. /사진=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060112674sobx.jpg" data-org-width="647" dmcf-mid="Py4adlg1CM" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060112674sobx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 김주원이 지난달 31일 수원 케이티 위즈 파크에서 열린 2023 KBO 플레이오프 2차전에서 9회 말 오윤석의 타구를 몸을 날려 잡아낸 후 기뻐하고 있다. /사진=뉴스1
           </figcaption>
</figure>
<div dmcf-pid="2oLzFR7AWZ" dmcf-ptype="general">
<div></div>
<div></div>
<div>
            ━
           </div>김주원은 데뷔 첫 시즌 1군 진입, 2년 차에 주전 차지, 3년 차에 국가대표 발탁이라는 빠른 성장 속도를 보이고 있다. 유신고를 졸업하고 2021년 NC에 2차 1라운드 지명을 받아 입단한 그는 첫 시즌부터 1군 69경기에 출전했다. 이어 이듬해에는 부상으로 시즌 출발이 늦긴 했지만 주전 유격수 노진혁을 3루로 밀어내고 유격수 포지션의 주인이 됐다. 이어 노진혁이 롯데 자이언츠로 이적한 올해는 127경기에 출전, 타율 0.233 10홈런 54타점 15도루 OPS 0.668의 성적을 기록했다. 썩 뛰어나진 않지만, 유격수라는 점을 감안하면 나쁘지 않았다. 이에 그는 2022 항저우 아시안 게임 대표팀에도 선발, 금메달을 차지하며 병역특례를 획득했다.
          </div>
<p dmcf-pid="Vgoq3ezcyX" dmcf-ptype="general">그동안 수비에서는 어린 나이에도 "기본기가 잘 갖춰져 있고 수비 센스가 있는 선수"(이동욱 전 감독)라는 평가를 받아왔다. 하지만 수비 난도가 높은 유격수 포지션이라는 점을 감안해도 실책이 많은 편이다. 지난해 96경기에서 11개의 에러를 기록했던 그는 올해 127경기에서 30실책을 저지르며 리그 1위에 올랐다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="fagB0dqkSH" dmcf-ptype="figure">
<p class="link_figure"><img alt="2022 항저우 아시안 게임에 출전한 김주원." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060114334kpqb.jpg" data-org-width="647" dmcf-mid="Qbiu1xUNyx" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060114334kpqb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2022 항저우 아시안 게임에 출전한 김주원.
           </figcaption>
</figure>
<div dmcf-pid="4agB0dqkyG" dmcf-ptype="general">
           하지만 아시안 게임을 다녀온 후로는 수비에서 안정감이 생긴 모습을 보이고 있다. 강 감독은 "큰 경기를 경험하고 왔기 때문에 가기 전과 비교해 기술적으로는 달라진 부분이 없더라도 심리적인 부분이나 상황에 맞는 플레이 등은 발전이 있었다"고 평가했다. 실제로 김주원은 이번 포스트시즌 6경기에서 단 하나의 실책도 저지르지 않았다. 오히려 연이은 호수비 퍼레이드를 이어가고 있다. SSG와 준플레이오프 3차전에서는 7회 한 점 차로 앞서던 상황에서 하재훈의 안타성 타구를 좋은 글러브질로 잡아낸 뒤 1루로 정확한 송구를 펼쳤다. 전날 경기에서도 박민우와 좋은 호흡을 보여주며 선발 에릭 페디의 어깨를 가볍게 했다.
          </div>
<p dmcf-pid="8NabpJBESY" dmcf-ptype="general">김주원은 "(한국시리즈는) 아시안 게임 결승전과 비슷할 것 같다. 한국시리즈에 올라가면 더 떨리고 긴장될 것 같다"고 말했다. 그의 기대처럼 NC가 한국시리즈에 오르게 된다면, 김주원의 활약은 더욱 기억에 남을 것이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="6jNKUibDvW" dmcf-ptype="figure">
<p class="link_figure"><img alt="김주원. /사진=NC 다이노스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060115645gfpm.jpg" data-org-width="647" dmcf-mid="xTQ1WV5JhQ" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060115645gfpm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김주원. /사진=NC 다이노스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="P5ZcLyA0Sy" dmcf-ptype="figure">
<p class="link_figure"><img alt="김주원. /사진=NC 다이노스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101060116947wxqb.jpg" data-org-width="647" dmcf-mid="yGE4BafOTP" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101060116947wxqb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김주원. /사진=NC 다이노스
           </figcaption>
</figure>
<p dmcf-pid="Q15koWcphT" dmcf-ptype="general">수원=양정웅 기자 orionbear@mtstarnews.com</p>
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