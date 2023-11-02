
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
    <h3>[바코 인사이드] ‘소노 캡틴’ 김강선의 다짐, “감동과 행복을 또 한 번!”</h3><h6>손동환  2023. 11. 1. 09:33</h6>
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
<section dmcf-sid="0ru8lyA0O2">
<figure class="figure_frm origin_fig" dmcf-pid="pl9eG5mBw9" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093337316nwuk.png" data-org-width="800" dmcf-mid="5zVPvYkUD6" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093337316nwuk.png" width="658"/></p>
</figure>
<div dmcf-pid="US2dH1sbrK" dmcf-ptype="general">
<p align="center"></p><strong>본 기사는 바스켓코리아 웹진 2023년 10월호에 게재됐다. 인터뷰는 9월 20일 오후에 진행됐다.(<span>바스켓코리아 웹진 구매 링크</span>)</strong>
<br/>
<br/>지금은 제명된 데이원스포츠는 2022~2023시즌 인상적인 농구를 보여줬다. 다른 팀보다 한 발 더 뛰고, 다른 팀보다 더 많이 던지는 농구였다. 무엇보다 선수들은 월급을 받지 못했음에도, 열정적이고 화끈한 농구를 보여줬다. 그래서 사람들은 ‘감동 농구’라고 찬사했다.
           <br/>‘감동 농구’의 중심에 선 이는 김강선이었다. 모진 풍파를 겪었지만, 선수단을 하나로 만들었기 때문. 코트에서의 투지 역시 팬들을 감동시키기에 충분했다. 그리고 김강선은 또 한 번 다짐했다. “감동과 행복을 팬들에게 드리겠다”고.
           <br/>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="uN5BwOiHsb" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093339031ssrn.jpg" data-org-width="799" dmcf-mid="1wSYRibDr8" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093339031ssrn.jpg" width="658"/></p>
</figure>
<div dmcf-pid="7j1brInXEB" dmcf-ptype="general">
<strong><span>첫 번째 이별</span></strong>
<br/>김강선은 2009 KBL 국내신인선수 드래프트에서 전체 8순위로 대구 오리온스(현 고양 소노) 유니폼을 입었다. 대구에서 2년을 보낸 김강선은 2011~2012시즌부터 고양으로 홈 코트를 옮겼다. 2015~2016시즌에는 데뷔 처음으로 우승을 차지했다.
           <br/>김강선은 2017~2018시즌부터 경기당 15분 이상을 뛰었다. 화려한 선수는 아니었지만, 수비와 궂은일 등으로 팀의 에너지 레벨을 높여준 선수였다. 팀에 꼭 필요한 선수였다.
           <br/>2021~2022시즌에는 데뷔 처음으로 주장을 맡았다. 정규리그 42경기 평균 17분 55초 동안, 경기당 5.7점으로 득점 부문 커리어 하이를 달성했다. 하지만 2021~2022시즌 종료 후 엄청난 소식을 들었다. 김강선과 13년 가까이 함께 했던 오리온 프로농구단이 운영 종료를 선언했기 때문이다.
           <br/>
<br/><strong>2009 KBL 국내신인선수 드래프트부터 오리온과의 인연이 시작됐습니다.</strong>
<br/>너무 가고 싶은 팀이었어요. 김병철 코치님(전 고양 오리온 수석코치)께서 현역으로 뛰셨고, (김)승현 선배님(전 해설위원)과도 뛰어보고 싶은 마음이 컸거든요. 배우고 싶은 것도 많았고요. 그래서 너무 좋았어요.
           <br/><strong>김병철 코치님과 김승현 위원님의 첫 인상은 어땠나요?</strong>
<br/>말도 못 걸었어요. 너무 어려웠고, 너무 무서웠거든요.(웃음) 나이 차이가 크다 보니, 쉽게 못 다가간 것 같아요.
           <br/><strong>오리온스가 2010~2011시즌 종료 후 고양으로 연고지를 옮겼습니다.</strong>
<br/>안 좋은 말을 많이 들었습니다. 하지만 대구 팬들에게는 죄송한 마음 밖에 없었어요. 대구를 갑작스럽게 떠났으니까요.
           <br/><strong>오리온이 2015~2016시즌 우승을 차지했습니다. 김강선 선수에게 ‘첫 우승’이었는데요.</strong>
<br/>추일승 감독님(현 대한민국 남자농구 국가대표팀)께서 추구하신 포워드 농구가 잘 이뤄졌어요. (문)태종이형(전 울산 현대모비스)과 (김)동욱이형(전 수원 KT), 애런 헤인즈에 조 잭슨까지. 농구를 잘했던 선수들이 워낙 많았어요. 제 비중이 비록 크지 않았지만, 그 시즌이 너무 재밌었어요. 기분도 좋았고요.
           <br/><strong>김강선 선수는 2021~2022시즌 프로 데뷔 처음으로 주장을 맡았습니다. 그렇지만 그 시즌이 오리온과 함께 하는 마지막이 됐습니다.</strong>
<br/>소문이 무성했습니다. ‘새롭게 할 감독님도 정해졌고, 오리온을 대체할 기업도 정해졌다’였죠. 그렇지만 구단은 시즌 종료 후 회식에서도 “소문일 뿐이다”고 일축했어요. 그런데 다음 날 기사가 떴더라고요. ‘데이원자산운용이 오리온을 대체할 기업이 됐다’고요. 그래서 기분이 더 안 좋았어요.
           <br/>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="zAtKmCLZrq" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093340346haoq.jpg" data-org-width="800" dmcf-mid="tc9eG5mBs4" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093340346haoq.jpg" width="658"/></p>
</figure>
<div dmcf-pid="qJy0NkQSsz" dmcf-ptype="general">
<strong><span>감동 그리고 불운</span></strong>
<br/>오리온 프로농구단을 대신한 팀은 데이원스포츠였다. 실속에 비해, 행보는 컸다. ‘농구대통령’ 허재를 대표로 삼았고, ‘캐롯손해보험’을 네이밍 스폰서로 선택했다. KBL 구단 중 최초로 네이밍 스폰서를 팀명으로 삼았다.(데이원스포츠의 명칭은 고양 캐롯 점퍼스였다) 그리고 2020~2021시즌 안양 KGC인삼공사(현 안양 정관장)에 우승을 안긴 김승기를 새로운 감독으로 선임했다.
           <br/>캐롯의 전력은 좋지 않았다. 하지만 캐롯은 전력 이상의 열정을 보여줬다. 한 발 더 뛰는 농구와 한 템포 더 빠른 농구, 화끈하게 던지는 농구로 고양 팬들의 마음을 사로잡았다. 2022~2023시즌 개막 전만 해도 플레이오프 탈락 후보였지만, 4강 플레이오프에 오르는 기염을 토했다. ‘감동 농구’를 선사했다.
           <br/>그럼에도 불구하고, 캐롯 선수들은 괴로웠다. 월급을 5개월 넘게 받지 못했기 때문. 선수들의 생계 자체가 무너졌다. 구단 운영 주체인 데이원스포츠는 지난 6월 KBL로부터 ‘제명 조치’를 받았다. 그러나 선수들의 상황은 달라지지 않았다. 김강선도 마찬가지였다.
           <br/>
<br/><strong>김승기 감독님께서 새롭게 오셨습니다. 선수들한테 어떤 걸 주문하셨나요?</strong>
<br/>감독님께서는 “내가 추구하는 농구를 잘 따라주면 좋겠다”고 주문하셨습니다. 그래서 선수들이 로테이션 수비와 빼앗는 수비를 많이 연습했죠. 또, 감독님께서는 “자신 있게 슈팅해”라고도 선수들에게 말씀하셨습니다.
           <br/><strong>김승기 감독님의 컬러는 다른 감독님과 차별화됩니다. 선수들이 김승기 감독님의 주문에 익숙치 않았을 건데요.</strong>
<br/>제가 수비는 어느 정도 잘한다고 생각했습니다. 그런데 김승기 감독님 수비는 어렵더라고요. 로테이션을 도는 것부터 쉽지 않더라고요. 또, 감독님께서 자세 하나하나 디테일하게 짚어주셨습니다. 연습 강도가 높았고, 욕도 많이 먹었어요.(웃음)
           <br/>대신, 슈팅 같은 경우, “많이 쏴야 한다”고 자신감을 불어넣으셨습니다. 특히, “연습 때 많이 쏴야 한다. 많이 쏴봐야, 던져야 할 타이밍과 던지지 말아야 할 타이밍을 구분할 수 있다. 타이밍이 아니더라도, 던져야 한다”고 연습 때 슈팅할 것을 강조했습니다. 연습 때 던져봐야, 실전에서의 감각을 알 수 있다고요. 그래서 저도 연습 때는 많이 던졌습니다. 그렇게 하니, 슈팅 셀렉션이 이전보다 명확해졌어요.
           <br/><strong>캐롯이 기대 이상의 성과를 냈습니다. 4강 플레이오프에 나섰는데요.</strong>
<br/>시즌 전부터 약체라는 평가를 들었습니다. 그렇지만 선수들이 준비했던 수비를 잘 해냈고, 저희는 1라운드에 6승을 거뒀습니다. 나쁜 팀이 아니라는 걸 증명했죠. 그러면서 선수들이 자신감을 얻었습니다.
           <br/>다만, 힘든 시기가 있었습니다. 돈 문제 때문이었어요. 그렇지만 팬들께서 저희를 많이 응원해주셨습니다. 감사하게도 밥과 도시락, 음료수 등 많은 걸 챙겨주셨어요. 팬들의 응원과 지원이 저희한테 가장 큰 힘이 됐습니다.
           <br/>저도 힘을 많이 얻었습니다. 그리고 “우리의 직업은 농구 선수다. 농구에 집중해야 한다. 농구 외적인 상황은 나중에 생각하자”며 선수들을 독려했습니다. 프로라면 농구에 집중하는 게 맞으니까요. 또, 선수들의 의지가 강했습니다. 다들 어려운 상황에서 잘해줬어요. 그런 힘들이 한 곳으로 어우러져, 저희 팀이 기대 이상의 성적을 낸 것 같아요.
           <br/><strong>말씀하신 대로, 선수단 월급이 5개월 넘게 나오지 않았습니다. 김강선 선수가 겪은 괴로움도 컸을 것 같습니다.</strong>
<br/>힘들었던 건 사실입니다. 집에 돈을 가져다주지 못했으니까요.(김강선은 이때 씁쓸한 미소를 지었다) 아이는 더 크고 있었고요. 그래도 어떻게 하겠어요. 다른 곳에서 돈을 가져올 상황이 아니어서, 농구선수의 본분에 집중하자고 다짐했습니다.
           <br/><strong>데이원스포츠가 결국 제명됐습니다.</strong>
<br/>앞이 깜깜하더라고요. ‘어떻게 되는 거지? 선수들이랑 헤어지는 거 아냐?’라는 걱정도 컸고요. 그냥 힘들었던 기억 밖에 없어요. 가족들도 마찬가지였고요. 저만큼 힘들어했고, 걱정도 많이 했어요.
           <br/>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="BiWpjExvr7" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093341575rril.jpg" data-org-width="800" dmcf-mid="F6zPvYkUsf" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093341575rril.jpg" width="658"/></p>
</figure>
<div dmcf-pid="bnYUADMTmu" dmcf-ptype="general">
<strong><span>터널의 끝, 희망의 시작</span></strong>
<br/>KBL은 자칫 9구단 체제로 갈 수 있었다. ‘캐롯’이라는 이름으로 뛰었던 선수들이 흩어질 수 있었다. 어두운 터널은 끝날 것 같지 않았다.
           <br/>그러나 소노인터내셔널이 선수들에게 희망을 줬다. “KBL의 10번째 구단이 되겠다”는 의향서를 KBL에 제출한 것. 데이원스포츠와 달리, 재정 구조가 탄탄한 회사. 그래서 선수들은 더 큰 희망을 품었다.
           <br/>그리고 7월 21일. KBL은 소노인터내셔널의 창단을 승인했다. 아무 것도 없이 훈련만 임했던 선수들은 웃을 수 있었다. 김강선 역시 마찬가지였다. 그간의 짐을 모두 덜 수 있었다.
           <br/>
<br/><strong>6월 15일부터 비시즌 훈련을 시작했습니다. 하지만 모든 게 막막했을 것 같아요.</strong>
<br/>프로의 첫 번째 본분은 경기에 뛸 몸을 만드는 겁니다. 어떻게 될지 몰라도, 몸을 만들어야 한다고 생각했죠. KBL에서 도움을 많이 줬고, 팬들께서도 저희를 많이 도와주셨습니다. 선수들도 어려움을 견뎌냈고요.
           <br/><strong>소노인터내셔널이 창단 의사를 밝혔습니다.</strong>
<br/>소식을 듣자마자 든 생각은 “정말 인수했으면 좋겠다”였어요. 그렇게 해야, 저희 선수들이 한 팀으로 뛸 수 있으니까요. 그런 바람이 제일 컸던 것 같아요.
           <br/><strong>KBL이 소노의 창단을 승인했습니다. 김강선 선수는 선수 대표로 기자회견에 참석하셨고요.</strong>
<br/>‘이제 됐다. 운동만 하면 된다’고 생각했습니다. 홀가분했고, 기분도 좋았어요.
           <br/><strong>1년 전에도 창단 기자회견에 나섰습니다. 그때와의 차이는 어마어마했을 건데요.</strong>
<br/>오리온이 프로농구단 운영을 종료한 후, 데이원스포츠가 창단을 했습니다. 하지만 힘든 일이 발생했죠. 그리고 소노가 농구단을 창단했습니다. 기분이 좋긴 했지만, ‘다시는 이런 일이 없었으면...’ 했습니다.(웃음) 물론, 창단은 정말 좋은 일이지만, 저는 안 좋은 상황을 겪은 후 창단식을 다시 경험했거든요. 사실 이렇게 이야기했지만, 뭐라고 말씀을 드려야 하는지 잘 모르겠어요.
           <br/>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="Kbcl8xUNIU" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093342930kdkl.jpg" data-org-width="799" dmcf-mid="376otplfsV" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/basketkorea/20231101093342930kdkl.jpg" width="658"/></p>
</figure>
<div dmcf-pid="9KkS6Mujwp" dmcf-ptype="general">
<strong><span>감동 농구 Season 2</span></strong>
<br/>위에서 이야기했듯, 소노 선수단은 2022~2023시즌 ‘감동 농구’를 선보인 바 있다. 이로 인해, 고양체육관을 찾는 팬들이 많아졌고, 선수들과 팬들은 한층 더 가까워졌다. 서로를 향한 진심도 확인했다.
           <br/>이름은 달라졌지만, 선수들의 땀방울은 변하지 않았다. 여전히 굵은 땀방울을 흘리고 있다. 아니, 이전보다 더 많이 흘리고 있다. 김강선도 그렇다. 소노 선수들이 땀을 흘리는 이유는 딱 하나다. ‘감동 농구 Season 2’를 보여주기 위해서다.
           <br/>
<br/><strong>이번 여름은 어떻게 준비하고 있나요?</strong>
<br/>비시즌을 보내고 있고, 홍천에 있는 비발디 파크로 전지훈련(9/11~19)을 다녀왔습니다. 창단식(9/20)도 했고요. 다만, (전)성현이와 (이)정현이가 대표팀으로 차출돼서, 기존 선수들과 합을 더 맞추고 있어요. 그리고 감독님께서 원하는 공수 움직임을 이행하기 위해, 다들 열심히 땀 흘리고 있습니다.
           <br/><strong>준비의 목적은 최소 ‘플레이오프’라고 생각해요.</strong>
<br/>창단 첫 해인만큼, 플레이오프를 가는 게 맞다고 생각합니다. ‘플레이오프’가 첫 번째 목표고, ‘플레이오프’에 무조건 가고 싶어요. 플레이오프에 간다면, 더 높은 곳을 바라보고 싶습니다. 그렇게 하려면, 더 많은 땀을 흘려야 해요.
           <br/><strong>‘감동 농구 Season 2’를 기대하는 분들이 많으십니다.</strong>
<br/>저희가 ‘감동 농구’를 보여드렸다고 하지만, 저희가 팬들에게 더 많은 감동을 받았습니다. 앞서 말씀드렸듯이, 팬들이 저희를 많이 응원해주셨고 지원해주셨거든요. 또, 데이원스포츠가 제명된 후, 저희를 걱정하는 팬 분들도 많으셨고요.
           <br/>저희 선수들은 이번 시즌에도 ‘감동’과 ‘행복’을 드리고 싶습니다. 다만, 지난 시즌과 다른 성격의 ‘감동’과 ‘행복’을 팬 분들에게 드리고 싶어요. 나아가, 앞으로도 계속 ‘감동’과 ‘행복’을 드리고 싶어요.
           <br/><strong>마지막으로 ‘고양 팬’들은 김강선 선수에게 어떤 의미인가요?</strong>
<br/>데이원스포츠가 제명됐을 때, 한 팬 분께서 저에게 “고양을 떠나셔도 됩니다. 다른 팀에 계셔도 좋으니, 열심히 뛰는 김강선 선수를 보고 싶어요”라고 하셨어요. 팬 분의 메시지를 보면서, ‘고양에 남는다면, 고양 팬 분들에게 더 멋진 퍼포먼스를 보여드리겠다’고 다짐했습니다.
           <br/>그렇기 때문에, 저는 이전보다 더 많은 책임감을 갖고 있습니다. 저희를 응원해주신 팬들에게 꼭 보답하고 싶거든요. 팬들에게 보답하는 방법은 더 열심히 뛰는 거라고 생각합니다. 더 좋은 경기력을 보여주고 싶어서요.
           <br/>
<br/>일러스트 = 정승환 작가
           <br/>사진 = KBL 제공
          </div>
</section>
</div></p></section></div><h6>[Source : 바스켓코리아]</h6></div>
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