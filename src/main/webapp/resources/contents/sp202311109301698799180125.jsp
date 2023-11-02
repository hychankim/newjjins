
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
    <h3>[MD현장] 흥 넘치는 우당탕 세레머니, 김연경 "이제 안 기면 안 될 듯"→레이나 "너무 놀랐다" 해명</h3><h6>장충 = 최병진 기자  2023. 11. 1. 09:30</h6>
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
<section dmcf-sid="X4eb07T6k1">
<figure class="figure_frm origin_fig" dmcf-pid="ZAsLxdqkN5" dmcf-ptype="figure">
<p class="link_figure"><img alt="김연경과 레이나/한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101093008926aybq.jpg" data-org-width="640" dmcf-mid="YSwJ6MujA3" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101093008926aybq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김연경과 레이나/한국배구연맹
           </figcaption>
</figure>
<p dmcf-pid="5mvcnafOjZ" dmcf-ptype="general">[마이데일리 = 장충 최병진 기자] 흥국생명의 아시아쿼터인 레이나 토코쿠가 김연경과의 아찔한 장면에 대해 밝혔다.</p>
<p dmcf-pid="1JjQ94tnkX" dmcf-ptype="general">흥국생명은 31일 서울장충체육관에서 펼쳐진 GS칼텍스와의 ‘도드람 2023-2024 V리그’ 여자부 1라운드에서 세트 스코어 3-0(25-22, 26-24, 25-23)으로 승리했다.</p>
<p dmcf-pid="t8dKpzyPjH" dmcf-ptype="general">승부처는 2세트였다. 1세트를 따낸 흥국생명은 2세트에서 듀스 승부를 펼쳤다. 흥국생명이 25-24로 리드하는 상황에서 실바가 스파이크를 때렸고 이를 레이나가 막아냈다.</p>
<p dmcf-pid="FtzGhTj3cG" dmcf-ptype="general">레이나는 일본 출신의 아웃사이드 히터(OH)다. 흥국생명은 아웃사이드 히터 자리에서 리시브와 수비를 강화하기 위해 레이나를 영입했다.</p>
<p dmcf-pid="3gDd8xUNNY" dmcf-ptype="general">하지만 이날은 레이나를 미들블로커(MB)로 기용했다. 이주아와 김채연의 부상으로 인한 깜짝 변화였다. 그리고 이러한 아본단자 감독의 선택은 2세트에 적중했다. 2세트를 따낸 흥국생명은 3세트까지 기세를 이어가며 완승을 거뒀다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="0SXsADMTAW" dmcf-ptype="figure">
<p class="link_figure"><img alt="마르첼로 아본단자 감독/한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101093010347tpib.jpg" data-org-width="640" dmcf-mid="G9jQ94tnoF" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101093010347tpib.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            마르첼로 아본단자 감독/한국배구연맹
           </figcaption>
</figure>
<p dmcf-pid="pIJ9UqWQoy" dmcf-ptype="general">아본단자 감독은 “준비가 된 부분이다. 레이나가 가진 잠재력을 보여주려면 시가이 더 필요하지만 미들블로커 2명이 빠져서 투입을 해야 했다. 중요한 블로킹을 잡았고 공격성공률도 높아서 좋은 경기를 펼쳤다고 생각한다”고 칭찬했다.</p>
<p dmcf-pid="UmRB3uv8jT" dmcf-ptype="general">취재진과 만난 레이나는 “강한 상대인데 승리해서 기쁘다. 지난 경기 후 많은 연습을 했다. 원정 경기라 긴장을 많이 했는데 이겨서 다행이다”고 소감을 전했다.</p>
<p dmcf-pid="uZDd8xUNav" dmcf-ptype="general">레이나는 “아시아 쿼터라서 처음부터 들어가야 한다는 생각은 없었다. 김미연이 이미 자리를 잘 잡았다. 감독님께 팀에 부족한 부분에 도움을 달라는 요청을 했다. 이번에 미들블로커로 나서서 놀라긴 했는데 승리에 기여할 수 있어 기쁘다. 고등학교 때 3개월 정도 미들블로커로 뛴 경험이 있다”고 밝혔다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="7hnV7bGMkS" dmcf-ptype="figure">
<p class="link_figure"><img alt="흥국생명/한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101093011846adbh.jpg" data-org-width="640" dmcf-mid="HqVFYZrqNt" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101093011846adbh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            흥국생명/한국배구연맹
           </figcaption>
</figure>
<p dmcf-pid="z3OoMJBEal" dmcf-ptype="general">김연경은 2세트 막판 레이나의 블로킹이 나온 후 안기는 과정에서 함께 쓰러졌다. 함께 인터뷰에 나선 김연경은 “기분이 좋아서 안기려 했는데 넘어졌다(웃음). 이제는 안기면 안 될 것 같다”고 했다. 이에 레이나는 “너무 놀라서 그랬다”고 해명하며 웃었다.</p>
<p dmcf-pid="qIJ9UqWQjh" dmcf-ptype="general">김연경은 레이나에 대해 “공격력이 좋다. 점프나 탄력이 좋아 앞으로도 더 강한 공격력을 보여줄 수 있을 것 같다. 합류 후 부상이 있어서 훈련에 참여한 시간이 길지 않았는데 더 좋아질 것이다”라고 기대감을 전했다.</p>
</section>
</div></p></section></div><h6>[Source : 마이데일리]</h6></div>
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