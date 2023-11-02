
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
    <h3>'아! 페이창' 5세트 2연속 범실... 현대캐피탈 '충격 5연패', 시즌 첫 승 눈앞에서 놓쳤다... 흥국생명 선두 등극 [종합]</h3><h6>김동윤 기자  2023. 10. 31. 22:44</h6>
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
<section dmcf-sid="qpw6XnKwyX">
<div dmcf-pid="BtcVWezchH" dmcf-ptype="general">
           [스타뉴스 | 김동윤 기자] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="bFkfYdqkyG" dmcf-ptype="figure">
<p class="link_figure"><img alt="현대캐피탈의 차이 페이창(왼쪽)이 31일 OK금융그룹전에서 최태웅 감독의 지시를 받고 있다. /사진=한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/starnews/20231031224413263fzfm.jpg" data-org-width="647" dmcf-mid="Uoze3j8CSt" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/starnews/20231031224413263fzfm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            현대캐피탈의 차이 페이창(왼쪽)이 31일 OK금융그룹전에서 최태웅 감독의 지시를 받고 있다. /사진=한국배구연맹
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="KetD4SathY" dmcf-ptype="figure">
<p class="link_figure"><img alt="현대캐피탈의 전광인(왼쪽)과 허수봉(오른쪽)이 31일 OK금융그룹전에서 공을 받으려 하고 있다. /사진=한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/starnews/20231031224414615qpvk.jpg" data-org-width="647" dmcf-mid="uGO1kqWQh1" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/starnews/20231031224414615qpvk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            현대캐피탈의 전광인(왼쪽)과 허수봉(오른쪽)이 31일 OK금융그룹전에서 공을 받으려 하고 있다. /사진=한국배구연맹
           </figcaption>
</figure>
<div dmcf-pid="9dFw8vNFCW" dmcf-ptype="general">
           대체 왜 뛰었을까. 현대캐피탈 스카이워커스가 차이 페이창(22)의 5세트 막판 치명적인 실수에 시즌 첫 승을 눈앞에서 놓쳤다.
          </div>
<p dmcf-pid="2J3r6Tj3Ty" dmcf-ptype="general">현대캐피탈은 31일 안산상록수체육관에서 열린 도드람 2023~2024 V리그 남자부 정규리그 1라운드 경기에서 세트 스코어 2-3(25-22, 22-25, 25-20, 25-27, 15-17)으로 패했다.</p>
<p dmcf-pid="V3E4GJBETT" dmcf-ptype="general">그러면서 현대캐피탈은 5연패에 빠지며 0승 5패(승점 2)로 리그 최하위에 머물렀다. 반면 OK금융그룹은 막판 4, 5세트를 듀스 접전 끝에 모조리 잡아내면서 승점 2점을 챙겨 3승 1패(승점 7)로 3위로 올라섰다. </p>
<p dmcf-pid="f0D8HibDTv" dmcf-ptype="general">시즌 첫 승을 위한 꼴찌 현대캐피탈의 집념에 눈을 뗄 수 없는 혈전이 펼쳐졌다. 현대캐피탈은 승리를 장식할 기회가 두 차례 있었다. 하지만 28 대 40이란 숫자에서 보여주듯 범실에서 승패가 갈렸다.</p>
<p dmcf-pid="4pw6XnKwTS" dmcf-ptype="general">1세트와 3세트 주포 허수봉과 아흐메드 이크바이리가 고른 득점을 보여주면서 많은 범실에도 세트 스코어 2-1로 앞서갔다. 4세트에는 페이창의 속공 득점으로 20점을 돌파했고 최민호의 블로킹 득점에 이어 허수봉의 퀵오픈이 작렬하면서 22-21 리드를 잡았다. 그러나 OK금융그룹의 송희채가 막판 원맨쇼로 승부를 5세트로 이끌었다. 현대캐피탈은 24-24 듀스에서 송희채의 범실로 매치 포인트를 잡았으나, 아흐메드의 백어택이 송희채에게 막혔다. 송희채는 또 한 번 페이창이 넘긴 공을 빠르게 밀어 넣어 26-25를 만들었다. 여기에 바야르사이한을 도와 아흐메드의 공격을 막아내면서 극적으로 OK금융그룹이 4세트를 따냈다. </p>
<p dmcf-pid="8r4HNUS4Wl" dmcf-ptype="general">양 팀 공격력이 최고조에 달한 가운데 5세트도 막판까지 치열했다. 이번에도 현대캐피탈은 페이창이 속공 득점에 성공하며 14-13으로 또 한 번 매치포인트를 잡았다. 하지만 이해할 수 없는 플레이가 나왔다. 전광인의 스파이크서브를 건너편의 송희채가 받아냈고 그 공을 아흐메드가 곧장 처리하려 했다. 이때 페이창은 아흐메드와 같이 뛰어 공격을 방해하게 되면서 14-14 듀스가 만들어졌다. 아흐메드가 재빠르게 대각 공격을 성공시켜 재차 매치 포인트를 잡았으나, 페이창의 서브가 빗나갔고 허수봉마저 네트터치 범실을 하면서 OK금융그룹에게 매치포인트를 넘겨줬다. 뒤이어 이현승의 세트 범실이 나오면서 현대캐피탈은 눈앞에서 첫 승의 기회를 놓쳤다. </p>
<p dmcf-pid="6m8Xjuv8yh" dmcf-ptype="general">이날 양 팀 통틀어 최고인 30점을 기록한 레오(OK금융그룹)는 박철우(한국전력)에 이어 V리그 두 번째로 역대통산 공격 득점 4500점을 돌파했다. 송희채는 17점, 신호진은 9점으로 레오를 지원했고 바야르사이한은 블로킹 득점 5점을 포함해 7득점으로 역전승에 기여했다. </p>
<p dmcf-pid="Ps6ZA7T6CC" dmcf-ptype="general">반면 현대캐피탈에서는 아흐메드가 25점, 허수봉이 16점, 최민호와 전광인이 13점을 올렸으나, 아쉽게 첫 승에 실패했다. 페이창도 11점으로 두 자릿수 득점을 올렸으나, 치명적인 실책에 눈물을 흘렸다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Qk9yLFI9vI" dmcf-ptype="figure">
<p class="link_figure"><img alt="흥국생명의 김연경이 31일 GS칼텍스전에서 기뻐하고 있다. /사진=한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/starnews/20231031224416412ncke.jpg" data-org-width="647" dmcf-mid="7pqe3j8Ch5" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/starnews/20231031224416412ncke.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            흥국생명의 김연경이 31일 GS칼텍스전에서 기뻐하고 있다. /사진=한국배구연맹
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="xE2Wo3C2SO" dmcf-ptype="figure">
<p class="link_figure"><img alt="김연경(가운데)이 흥국생명 선수들과 함께 31일 GS칼텍스전에서 득점 후 기뻐하고 있다. /사진=한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/starnews/20231031224417685jqdp.jpg" data-org-width="647" dmcf-mid="z8Zc2CLZlZ" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/starnews/20231031224417685jqdp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김연경(가운데)이 흥국생명 선수들과 함께 31일 GS칼텍스전에서 득점 후 기뻐하고 있다. /사진=한국배구연맹
           </figcaption>
</figure>
<div dmcf-pid="y7sx1gVsWs" dmcf-ptype="general">
<br/>여자부에서는 김연경과 옐레나 므라제노비치 쌍포를 앞세운 흥국생명이 무패를 달리던 GS칼텍스에 시즌 첫 패를 안기고 여자부 선두로 등극했다. 
          </div>
<p dmcf-pid="WzOMtafOWm" dmcf-ptype="general">흥국생명은 서울 장충체육관에서 열린 V리그 여자부 1라운드 원정 경기에서 GS칼텍스에 세트 스코어 3-0(25-22, 26-24, 25-23) 셧아웃 승리를 거뒀다. </p>
<p dmcf-pid="YqIRFN4IWr" dmcf-ptype="general">옐레나가 19점, 김연경이 18점으로 37점을 합작했고 아시아쿼터 레이나 토코쿠는 블로킹 2점을 포함 8득점에 성공하며 승리에 기여했다. GS칼텍스도 지젤 실바가 19점, 강소휘가 14점으로 맞불을 놨으나, 범실에서 22 대 11로 승부가 갈렸다. </p>
<p dmcf-pid="GNqldZrqCw" dmcf-ptype="general">승부처는 2세트였다. 접전 끝에 20점 고지를 먼저 밟은 것은 흥국생명이었으나, 실바와 강소휘의 득점에 이어 한수진의 서브 에이스까지 터지면서 GS칼텍스가 22-21로 앞섰다. 하지만 김연경이 실바의 퀵오픈을 막아내고 박수연이 서브 에이스를 넣으며 다시 23-22 재역전을 이뤄냈다.</p>
<p dmcf-pid="HjBSJ5mBlD" dmcf-ptype="general">여기서 김연경의 존재감이 또 한 번 빛났다. 김연경의 시간차 공격이 터지며 흥국생명은 세트 포인트를 잡았고 실바의 백어택을 레이나가 옐레나와 함께 블로킹해내면서 극적으로 2세트를 따냈다. </p>
<p dmcf-pid="XAbvi1sbWE" dmcf-ptype="general">3세트에도 김수지의 블로킹으로 22-20으로 리드를 잡은 상황에서 김연경이 시간차 공격에 이어 퀵오픈으로 매치 포인트를 만들었고, 재차 시간차 공격에 성공하면서 셧아웃 승을 완성했다.</p>
<p dmcf-pid="ZLUOxYkUSk" dmcf-ptype="general">김동윤 기자 dongy291@mtstarnews.com</p>
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