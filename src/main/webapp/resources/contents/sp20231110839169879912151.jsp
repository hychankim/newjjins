
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
    <h3>ML 단장 출신 칼럼니스트 “이정후, 올겨울 FA 중 37위..SF-CLE-TOR-DET 등 적합”</h3><h6>안형준  2023. 11. 1. 08:39</h6>
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
<section dmcf-sid="x9yCvYkUMC">
<figure class="figure_frm origin_fig" dmcf-pid="yCe6MJBEdI" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsen/20231101083924653pygn.jpg" data-org-width="1000" dmcf-mid="QiOEmCLZRh" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsen/20231101083924653pygn.jpg" width="658"/></p>
</figure>
<p dmcf-pid="Wn7FUqWQMO" dmcf-ptype="general"> [뉴스엔 안형준 기자]</p>
<p dmcf-pid="YvnMJo2mds" dmcf-ptype="general">이정후가 높은 평가를 받았다.</p>
<p dmcf-pid="GD8KfP0gLm" dmcf-ptype="general">디 애슬레틱의 '메이저리그 단장 출신' 칼럼니스트 짐 보우덴은 11월 1일(한국시간) 올겨울 FA 시장에 나설 'TOP 40' 선수 명단을 추렸다.</p>
<p dmcf-pid="HTLRigVsLr" dmcf-ptype="general">포스팅을 통해 메이저리그에 도전하는 이정후(키움)의 이름도 있었다. 이정후는 40명 중 37위 평가를 받았다. 35위 류현진보다 두 계단 낮은 순위였다.</p>
<p dmcf-pid="XhdPRibDRw" dmcf-ptype="general">빅리그 경험이 없는 선수가 40위 이내에 포함됐다는 것은 충분히 주목을 받고 있다는 의미. 다만 일본 선수들에 비해서는 순위가 낮았다. 역시 올겨울 태평양을 건널 예정인 야마모토 요시노부(오릭스)는 40명 중 2위(1위 오타니 쇼헤이), 이마나가 쇼타(요코하마 DeNA 베이스타스)는 22위로 이정후보다 높은 평가를 받았다.</p>
<p dmcf-pid="ZBSshTj3JD" dmcf-ptype="general">순위는 37위지만 이정후보다 순위가 높은 36명 중 22명이 투수였다는 점을 감안하면 이정후에 대한 기대치는 높다고 볼 수 있다.</p>
<p dmcf-pid="5Ce6MJBEiE" dmcf-ptype="general">다만 순위와 별개로 세부 평가가 '호평 일색'은 아니었다. 보우덴은 "이정후의 타격 능력에 대한 빅리그 스카우트들의 평가는 엇갈린다"며 "한쪽에서는 이정후가 빅리그에서 곧바로 두각을 나타낼 것으로 보지만 또 다른 쪽에서는 1-2년 정도 적응기가 필요하다고 보고 있다. 한 쪽에서는 이정후가 타율 0.270 정도를 기록할 수 있는 타자라고 보지만 다른 쪽에서는 3할 타자가 될 수 있다고 본다"고 짚었다.</p>
<p dmcf-pid="1MFH10hVJk" dmcf-ptype="general">보우덴은 "이정후가 가진 가장 큰 강점은 컨택 능력과 볼넷을 얻어내는 능력이다"며 "이정후는 넓은 수비 범위와 강한 어깨를 가진 '플러스 급' 중견수다. 타구를 따라가는 능력이 좋고 점프 능력도 준수하다. 넓은 보폭을 가진 평균 이상의 주자지만 도루가 많은 선수는 아니다. 또 힘이 대단한 선수는 아니다"고 이정후의 '툴'에 대한 평가를 내렸다. 스카우트들의 평가는 엇갈렸지만 보우덴의 평가는 후한 편이었다.</p>
<p dmcf-pid="t4HvYZrqMc" dmcf-ptype="general">보우덴은 이정후가 샌프란시스코 자이언츠, 클리블랜드 가디언스, 토론토 블루제이스, 디트로이트 타이거즈 등에 잘 맞는 선수일 수 있다고 전망했다. 이정후의 계약 규모에 대해서는 "현 시점에서는 예상할 수 없다"고 예측을 보류했다.</p>
<p dmcf-pid="F4HvYZrqRA" dmcf-ptype="general">샌프란시스코가 이정후 영입에 상당한 관심을 가진 것으로 잘 알려진 가운데 빅리그에서도 높은 평가를 받고 있는 이정후가 과연 어디로 향할지 주목된다.(사진=이정후/뉴스엔DB)</p>
<p dmcf-pid="3rP28xUNJj" dmcf-ptype="general">뉴스엔 안형준 markaj@</p>
<p dmcf-pid="0A2zKf1idN" dmcf-ptype="general">기사제보 및 보도자료 newsen@newsen.com copyrightⓒ 뉴스엔. 무단전재 &amp; 재배포 금지 </p>
</section>
</div></p></section></div><h6>[Source : 뉴스엔]</h6></div>
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