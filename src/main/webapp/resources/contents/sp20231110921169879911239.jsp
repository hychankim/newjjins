
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
    <h3>"맨유엔 희망이 없어 보인다"...벵거 前 감독, 과거 라이벌 향해 일침 </h3><h6>고성환  2023. 11. 1. 09:21</h6>
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
<section dmcf-sid="HZGZdL9re2">
<figure class="figure_frm origin_fig" dmcf-pid="XU3UNkQSd9" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092122441piwq.jpg" data-org-width="650" dmcf-mid="xRV8CvNFR6" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092122441piwq.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Zx6xvYkUiK" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 마커스 래시포드." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092122633mcez.jpg" data-org-width="650" dmcf-mid="yk9fOlg1J8" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092122633mcez.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 마커스 래시포드.
           </figcaption>
</figure>
<p dmcf-pid="5MPMTGEuRb" dmcf-ptype="general">[OSEN=고성환 기자] "맨유에는 희망이 없어 보인다."</p>
<p dmcf-pid="1pFpacPldB" dmcf-ptype="general">아르센 벵거 전 감독이 맨체스터 유나이티드를 보며 안쓰러움을 감추지 못했다.</p>
<p dmcf-pid="tKqKwOiHRq" dmcf-ptype="general">영국 '데일리 메일'은 지난달 31일(이하 한국시간) "벵거는 맨유가 맨체스터 시티에 0-3으로 패한 뒤 두 가지를 강조했다. 그는 맨유가 희망과 투혼을 잃었다고 믿는다"라고 보도했다.</p>
<p dmcf-pid="Ff9fOlg1Rz" dmcf-ptype="general">맨유는 10월 30일 올드 트래포드에서 열린 2023-2024시즌 프리미어리그 10라운드 홈 경기에서 맨시티에 0-3으로 무릎 꿇었다. 경기는 시즌 첫 맨체스터 더비로 관심을 모았지만, 90분 내내 맨시티가 몰아치다가 끝났다.</p>
<p dmcf-pid="3ieiH1sbn7" dmcf-ptype="general">일방적인 승부였다. 엘링 홀란이 전반 24분 페널티킥 선제골과 후반 4분 헤더 득점으로 멀티골을 터트렸고, 필 포든이 후반 35분 쐐기골을 넣었다. 맨유는 무려 21차례(유효슈팅 10회)에 달하는 소나기 슈팅을 허용하며 안방에서 무너졌다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="0MPMTGEuiu" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 맨체스터 유나이티드를 무너뜨린 엘링 홀란." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092122783ynbe.jpg" data-org-width="650" dmcf-mid="WENcpzyPJ4" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092122783ynbe.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 맨체스터 유나이티드를 무너뜨린 엘링 홀란.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="pB7BEmdYiU" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 아르센 벵거 전 아스날 감독." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092122997kvmw.jpg" data-org-width="650" dmcf-mid="YSWHRibDMf" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092122997kvmw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 아르센 벵거 전 아스날 감독.
           </figcaption>
</figure>
<p dmcf-pid="U9B9rInXdp" dmcf-ptype="general">과거 아스날을 지휘했던 벵거 전 감독은 라이벌 맨유의 추락을 보며 안타까워했다. 그는 '비인 스포츠'를 통해 "경기가 진행될수록 양 팀 간 격차가 점점 더 커졌다. 결국 맨유 같은 빅클럽을 보며 안타까움을 느꼈다. 왜냐면 그들에겐 희망이 보이지 않았다"라고 말했다.</p>
<p dmcf-pid="ulIlfP0gJ0" dmcf-ptype="general">이어 벵거는 "기본적으로 어디부터 개선할 수 있을지 모르겠다. 지금 이 팀은 자신감과 능력, 심지어는 정신력마저 잃어버렸다. 오늘 모습은 맨유의 위대한 투지가 아니었다"라고 덧붙였다.</p>
<p dmcf-pid="7YTYxdqki3" dmcf-ptype="general">전술 지적도 빼놓지 않았다. 벵거는 "맨유가 가장 큰 어려움을 겪는 지점은 무엇보다 선수 개인의 능력이다. 그리고 오늘 맨유가 후방에서 빌드업하기엔 아주 형편없다고 느꼈다. 그들은 앞으로 나아갈 수 있을 때 골키퍼에게 너무 많이 백패스했다. 그러면 팀 전체가 불확실해지고 자신감이 부족해진다. 뒤에 두려움이 있다고 느끼고 공을 원하지 않게 되기 때문"이라고 비판했다.</p>
<p dmcf-pid="zJRJG5mBLF" dmcf-ptype="general">또한 그는 "두 번째 문제는 공수 간격이 컸다는 것이다. 공격수들은 압박을 시도하고, 수비수들은 중앙선에서 20m 뒤에 있었다. 그렇게 되면 맨시티 같은 팀을 상대로 공을 뺏어낼 수 없다. 맨유는 충분히 촘촘하지 않았고, 개인 능력 차이도 있었다"라고 강조했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="qLJLZFI9et" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 해리 매과이어." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101092123630ytol.jpg" data-org-width="650" dmcf-mid="GKMdYZrqiV" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101092123630ytol.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 해리 매과이어.
           </figcaption>
</figure>
<p dmcf-pid="BlIlfP0gd1" dmcf-ptype="general">끝으로 벵거는 부정할 수 없는 일침을 날렸다. 그는 "오늘 밤 맨시티 베스트 11에 맨유 선수들이 몇 명이나 들어갈 수 있을 것 같은가? 이게 요점이다. 보통이라면 큰 경기나 더비 경기에서 서너 명은 데려갈 것이라고 말할 것이다. 이것이 기본적으로 맨유의 문제를 보여준다"라고 꼬집었다.</p>
<p dmcf-pid="bSCS4Qpae5" dmcf-ptype="general">맨유가 에릭 텐 하흐 감독 부임 이후 쓴 돈을 생각하면 부끄러운 평가다. 맨유는 지난해 여름 텐 하흐 감독을 선임한 뒤 지원을 아끼지 않았다. 지금까지 이적시장에서 쓴 돈만 4억 파운드(약 6600억 원)를 훌쩍 넘는다.</p>
<p dmcf-pid="KHWHRibDJZ" dmcf-ptype="general">맨유는 지난 시즌 안토니, 타이럴 말라시아, 카세미루, 리산드로 마르티네스를 영입하며 텐 하흐 감독의 입맛에 맞춰줬다. 이번 시즌 개막을 앞두고도 메이슨 마운트, 라스무스 회이룬, 안드레 오나나를 데려오며 거액을 투자했다. 하지만 올 시즌 성적은 리그 5승 5패(승점 15)로 8위에 불과하다.</p>
<p dmcf-pid="9wkwzKHRRX" dmcf-ptype="general">/finekosh@osen.co.kr</p>
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