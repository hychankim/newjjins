
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
    <h3>'조규성 풀타임' 미트윌란, 코펜하겐과 가진 컵대회 빅매치에서 0-1 패배… 16강 탈락</h3><h6>김정용 기자  2023. 11. 1. 08:17</h6>
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
<section dmcf-sid="FYkC3uv8h3">
<figure class="figure_frm origin_fig" dmcf-pid="3aferInXyF" dmcf-ptype="figure">
<p class="link_figure"><img alt="조규성(미트윌란). 게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/footballist/20231101081800627ksaz.jpg" data-org-width="600" dmcf-mid="5hsyzKHRvU" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/footballist/20231101081800627ksaz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            조규성(미트윌란). 게티이미지코리아
           </figcaption>
</figure>
<div dmcf-pid="0kQLCvNFCt" dmcf-ptype="general">
<p>[풋볼리스트] 김정용 기자= 조규성이 풀타임 활약한 미트윌란이 덴마크 수페르리가 선두 코펜하겐과 가진 컵대회 원정 경기에서 한 골 차 패배를 당했다.</p>
<br/>
<p>1일(한국시간) 덴마크 코펜하겐의 파르켄 스타디움에서 2023-2024 DBU 포칼렌(덴마크컵) 4라운드(16강전)를 치른 미트윌란이 홈팀 코펜하겐에 0-1로 패배했다.</p>
<br/>
<p>미트윌란도 덴마크 수페르리가 5위에 올라 있는 강팀이지만, 코펜하겐은 현재 리그 최강이다. 유럽축구연맹 챔피언스리그(UCL)에서 강호 바이에른뮌헨, 맨체스터유나이티드에 패배하긴 했지만 경기력 측면에서 그리 밀리지 않고 한 골 차 승부를 벌이기도 했다. 그런 두 팀이 16강에서 만났으니 포칼렌의 이번 라운드 최대 빅 매치일 수밖에 없었다.</p>
<br/>
<p>후반까지 두 팀 모두 득점 없이 전개되던 경기에서 코펜하겐의 교체 카드가 적중했다. 후반 투입된 18세 유망주 공격수 루니 바르다지가 선제결승골을 터뜨렸다. 시리아계 스웨덴인 바르다지는 16세 때 프로 데뷔했고, 현재까지 리그 12골을 기록한 특급 유망주다. 미트윌란 상대로 넣은 골은 이번이 처음이었다.</p>
<br/>
<p>조규성은 이번에도 풀타임을 소화했다. 이적하자마자 주전으로 자리잡은 조규성은 수페르리가에서 최근 6경기 연속 풀타임 기용됐고, 포칼렌에서도 강팀을 만나자 역시 경기 끝까지 활약했다. 그러나 한 골이 부족했다. 조규성은 덴마크 진출 직후 폭발적으로 몰아치던 골 행진이 주춤해져 최근 한 달 동안 무득점이다. 그럼에도 불구하고 공격에서 차지하는 비중과 기여도를 인정 받아 여전히 풀타임을 소화하고 있다.</p>
<br/>
<p>조규성에 이어 미트윌란으로 이적한 유망주 수비수 이한범은 벤치 멤버에 이름을 올렸다. 이한범은 아직 덴마크 무대 데뷔전을 치르지 못했다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="pExohTj3W1" dmcf-ptype="figure">
<p class="link_figure"><img alt="조규성(미트윌란). 게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/footballist/20231101081802231qgpp.jpg" data-org-width="600" dmcf-mid="1aNm53C2lp" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/footballist/20231101081802231qgpp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            조규성(미트윌란). 게티이미지코리아
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="UDMglyA0v5" dmcf-ptype="figure">
<p class="link_figure"><img alt="조규성(미트윌란). 게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/footballist/20231101081803908ptnq.jpg" data-org-width="600" dmcf-mid="tnSZ28FLS0" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/footballist/20231101081803908ptnq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            조규성(미트윌란). 게티이미지코리아
           </figcaption>
</figure>
<div dmcf-pid="ukQLCvNFvZ" dmcf-ptype="general">
<p>코펜하겐은 유럽축구연맹(UEFA) 유로파 컨퍼런스리그 예선에서 탈락한 데 이어 포칼렌에서도 일찍 떨어지며 각종 컵대회를 모두 조기에 마쳤다. 앞으로 정규리그에만 집중하며 순위 상승에 힘쓸 수 있게 됐다. 북유럽의 추위를 피해 겨울 휴식기가 있는 수페르리가는 스플릿 라운드를 포함해도 팀당 32라운드 일정에 불과하다. 조규성 입장에서는 부상만 피한다면 매 경기 풀타임이 오히려 달가울 정도의 경기 일정이다. 수페르리가는 UEFA 챔피언스리그(UCL) 예선 참가권 1장, 여타 유럽대항전 예선 참가권 3장이 주어진다.</p>
<br/>
<p>사진= 게티이미지코리아</p>
</div>
</section>
</div></p></section></div><h6>[Source : 풋볼리스트]</h6></div>
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