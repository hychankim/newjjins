
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
    <h3>[뒷북STAT] ‘역대 최연소 데뷔’ 조준희, 내친김에 최연소 10점+</h3><h6>이재범  2023. 11. 1. 06:58</h6>
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
<section dmcf-sid="PwrGaGEuzU">
<figure class="figure_frm origin_fig" dmcf-pid="QrmHNHD7up" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/jumpball/20231101065818868zhbx.jpg" data-org-width="819" dmcf-mid="8CxA9A6hp7" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/jumpball/20231101065818868zhbx.jpg" width="658"/></p>
</figure>
<div dmcf-pid="x1t2y2Zdz0" dmcf-ptype="general">
           [점프볼=이재범 기자] “더 자신감이 있고, 내 실력만큼은 나이순이 아니라는 걸 보여주고 싶다.”
          </div>
<p dmcf-pid="yLoOxOiHU3" dmcf-ptype="general">지난 9월 열린 2023 KBL 신인선수 드래프트에서 20명의 선수들이 뽑혔다. 이들 가운데 7명의 선수가 코트를 밟았고, 득점을 올린 선수는 문정현(KT, 총 5점)과 유기상(LG, 11점), 조준희(삼성, 10점)뿐이다. </p>
<p dmcf-pid="WckTnTj3uF" dmcf-ptype="general">문정현을 제외하면 출전시간 자체가 적었다. </p>
<p dmcf-pid="YkEyLyA03t" dmcf-ptype="general">트라이아웃에서 좋은 평가를 받아 4순위에 뽑힌 조준희는 KBL 컵대회에서 짧은 시간에도 3점슛 능력이 뛰어나다는 걸 보여줬다. </p>
<p dmcf-pid="GEDWoWcpF1" dmcf-ptype="general">조준희는 KBL 컵대회에서 2분 49초(vs. SK), 3분 42초(vs. 소노)를 뛰었음에도 3점슛 한 방씩 터트렸다. </p>
<p dmcf-pid="HMRkVkQSz5" dmcf-ptype="general">삼성은 이번 시즌 개막할 때 조준희를 출전선수 명단에서 제외했다. </p>
<p dmcf-pid="XReEfExvUZ" dmcf-ptype="general">은희석 삼성 감독은 지난달 21일 전주 KCC와 개막전을 앞두고 “이 친구(조준희)가 착실하게 준비하는데, 공격력은 말할 것도 없고, 수비에서 팀에 녹아들 필요할 거 같아 김보현 코치가 남아서 훈련을 따로 시킨다”며 “투입 시기를 조율 중이다. 초반 퐁당퐁당 경기가 몰려 있어서 과부하가 걸리는 선수가 있다면 조기 투입도 고려해볼 생각이다”고 했다. </p>
<p dmcf-pid="ZedD4DMTFX" dmcf-ptype="general">조준희는 예상보다 빨리 출전 기회를 잡았다. 지난달 29일 창원 LG와 맞대결에서 출전선수 명단에 이름을 올렸다. 여기에 그치지 않고 14분 44초 출전해 3점슛 2개 포함 10득점했다. </p>
<p dmcf-pid="5f4ozo2muH" dmcf-ptype="general">조준희가 코트를 밟았던 그 순간은 KBL의 역사가 바뀐 날이다. 최연소 데뷔 기록, 그것도 지금까지는 아무리 빨라도 만 나이로 따지면 19세에 데뷔했는데 조준희는 이 숫자를 18세로 낮췄다. </p>
<p dmcf-pid="148gqgVs3G" dmcf-ptype="general">2004년 11월 19일생인 조준희는 기존 최연소 데뷔 기록을 가지고 있던 이우균(19년 1개월 3일/6,972일)보다 이른 18년 11개월 10일(6,918일)만에 정규리그 코트를 밟았다. </p>
<p dmcf-pid="t86aBafOpY" dmcf-ptype="general">이우균(1992년 9월 13일생, 2011년 10월 16일 데뷔)보다 생일이 두 달 가량 늦어 최연소 데뷔 기록을 세울 수 있었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="FtFVWV5J0W" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/jumpball/20231101065820223bfiy.jpg" data-org-width="820" dmcf-mid="6KBRFR7Azu" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/jumpball/20231101065820223bfiy.jpg" width="658"/></p>
</figure>
<div dmcf-pid="3F3fYf1iUy" dmcf-ptype="general">
           자연스럽게 최연소 10점+ 기록까지 작성했다. 기존 최연소 10점+ 기록은 차민석의 19년 6개월 8일(7,129일)이다. 
          </div>
<p dmcf-pid="0304G4tnzT" dmcf-ptype="general">조준희는 삼성의 53번째 경기인 2024년 3월 24일 전주 KCC와 경기 전까지 선발로 나선다면 최연소 선발 기록(현재 기록, 이우균 19년 4개월 6일)도 세울 수 있다. </p>
<p dmcf-pid="pNjldlg13v" dmcf-ptype="general">조준희는 “감독님께서 한국에서 하는 기본 수비를 익히는데 많은 도움을 주셨다. 감독님뿐 아니라 코치님, 형들까지 조금씩 조언을 해주셔서 많이 배우고 있다. 몸으로 느껴서 코트에서 더 안정감 있는 플레이를 보여주고 싶다”며 “(데뷔 경기에서) 감독님과 코치님께서 알려주신 약속된 움직임 덕분에 좋은 결과가 나왔다. 자만하지 않고 다음에도 기회가 온다면 최대한 잡으려고 노력하겠다”고 자신의 데뷔 경기를 돌아봤다.</p>
<p dmcf-pid="UjASJSatUS" dmcf-ptype="general">조준희는 역대 최연소 데뷔 기록을 세웠다고 하자 “더 자신감이 있고, 내 실력만큼은 나이순이 아니라는 걸 보여주고 싶다”며 소감을 전한 뒤 “한 경기를 뛰었다고 자만하지 않고, 앞으로 최대한 많이 감독님, 코치님, 형들에게 배우고, 내가 잘 하는 것보다는 팀이 이기는 농구를 하겠다”고 다짐했다. </p>
<p dmcf-pid="uyWuOuv8pl" dmcf-ptype="general">은희석 감독은 조준희의 공격력을 인정한다. 조준희를 투입하는 것도 공격력이 필요할 때다. 수비력까지 좀 더 빨리 끌어올려 출전시간이 안정된다면 조준희는 더 많은 최연소 기록을 세울 수도 있다.</p>
<p dmcf-pid="7WY7I7T6ph" dmcf-ptype="general">#사진_ 박상혁 기자</p>
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