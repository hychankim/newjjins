
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
    <h3>“점점 출전시간 늘릴 것” 부상에서 돌아온 정효근, 무난했던 정관장 데뷔 경기</h3><h6>안양/조영두  2023. 11. 1. 09:09</h6>
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
<section dmcf-sid="yyOYyHD77f">
<figure class="figure_frm origin_fig" dmcf-pid="WWIGWXwzpV" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/jumpball/20231101090917510jgyk.jpg" data-org-width="820" dmcf-mid="xWQonafOu4" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/jumpball/20231101090917510jgyk.jpg" width="658"/></p>
</figure>
<div dmcf-pid="YpXupzyPu2" dmcf-ptype="general">
           [점프볼=안양/조영두 기자] 부상에서 돌아온 정효근(30, 202cm)이 무난한 정관장 데뷔 경기를 치렀다. 
          </div>
<p dmcf-pid="GUZ7UqWQp9" dmcf-ptype="general">31일 안양체육관에서 열린 2023-2024 정관장 프로농구 안양 정관장과 울산 현대모비스의 1라운드 맞대결. 반가운 얼굴을 엔트리에 이름을 올렸다. 오프시즌 정관장에 새 둥지를 튼 정효근이었다. 개막 직전 발바닥 부상을 입었던 그는 치료와 재활을 마치고 코트로 돌아왔다.</p>
<p dmcf-pid="H4q64QpaUK" dmcf-ptype="general">사실 정관장 김상식 감독은 정효근의 복귀를 다음달 3일 서울 삼성과의 원정 경기로 잡고 있었다. 그러나 31일 오전 정효근이 김상식 감독을 찾아가 출전 의사를 밝혔고, 홈 팬들 앞에서 정관장 데뷔 경기를 갖게 됐다. </p>
<p dmcf-pid="X8BP8xUN3b" dmcf-ptype="general">경기 전 김상식 감독은 “원래 삼성전에 뛰게 하려고 했는데 아침에 찾아와서 5분, 10분이라도 뛰겠다고 하더라. 계속 만류를 했는데 본인의 의지가 워낙 강하다. 오늘(31일) 기회가 되면 짧게 뛰게 하려고 한다”며 정효근의 출격을 예고했다. </p>
<p dmcf-pid="Z6bQ6MujpB" dmcf-ptype="general">1쿼터 막판 처음으로 투입된 정효근은 45도 부근에서 3점슛을 터트렸다. 2쿼터에도 코트를 밟은 그는 같은 위치에서 또 한번 외곽포를 꽂았다. 또한 적극적인 플레이로 연이어 리바운드를 잡아냈다. </p>
<p dmcf-pid="5HlZH1sb0q" dmcf-ptype="general">3쿼터를 벤치에서 지켜본 정효근은 4쿼터 다시 나섰다. 자신 있는 슛 시도로 득점을 노렸지만 림을 빗나갔다. 대신 리바운드 1개를 추가했고, 수비에서도 힘을 냈다. 경기 막판에는 돌파로 공격을 성공시키기도 했다. </p>
<p dmcf-pid="1XS5XtOK0z" dmcf-ptype="general">정효근은 현대모비스를 상대로 11분 53초를 뛰며 8점 3리바운드의 기록을 남겼다. 3점슛 4개를 던져 2개를 성공시키는 등 야투 7개 중 3개가 림을 갈렸다. 부상 복귀 후 첫 출전인 걸 감안하면 충분히 합격점을 줄만한 경기력이었다. </p>
<p dmcf-pid="tZv1ZFI9u7" dmcf-ptype="general">경기 후 김상식 감독은 정효근에 대해 “첫 경기였는데 나쁘지 않았다. 과거에 비해 체중을 줄였는데 몸 상태가 좋아보였다. 점점 출전시간을 늘려갈 계획이다. 오늘은 맛만 보라고 살짝 뛰게 했다”고 평가했다. </p>
<p dmcf-pid="F1yF10hVpu" dmcf-ptype="general">문성곤(KT)과 양희종(은퇴)이 이탈한 정관장은 정준원을 제외하면 스몰포워드 자원이 부족한 상황이다. 하지만 스몰포워드와 더불어 파워포워드까지 소화할 수 있는 정효근의 가세로 포워드진에 더욱 힘을 받을 수 있게 됐다. 정효근이 앞으로 정관장에서 어떤 플레이를 보여줄지, 그의 어깨에 많은 것이 달렸다.</p>
<p dmcf-pid="3tW3tplfuU" dmcf-ptype="general"># 사진_유용우 기자</p>
</section>
</div></p></section></div><h6>[Source : 점프볼]</h6></div>
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