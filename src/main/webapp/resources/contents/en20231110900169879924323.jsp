
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
    <h3>츄, 좀 귀여운 솔로 퀸 탄생 [DA:스퀘어]</h3><h6>동아닷컴 전효진 기자  2023. 11. 1. 09:00</h6>
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
<section dmcf-sid="4QH8DsJGEt">
<div dmcf-pid="87mpdL9rr1" dmcf-ptype="general">
            [동아닷컴] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="6dtMOlg1s5" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101090010399wdpm.jpg" data-org-width="1200" dmcf-mid="U6qgWXwzsK" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101090010399wdpm.jpg" width="658"/></p>
</figure>
<div dmcf-pid="PJFRISatmZ" dmcf-ptype="general">
           - 9월23일부터 10월30일까지 발매된 앨범을 기준으로 하며 배열은 발매일순입니다-
          </div>
<p dmcf-pid="Qi3eCvNFrX" dmcf-ptype="general">◆ NCT127 정규 5집 [Fact Check] : Real Life</p>
<p dmcf-pid="xxX6wOiHEH" dmcf-ptype="general">- 강렬한 퍼포먼스에 묻히면 안 되는 보컬. 반복되는 현악기 루프 사운드가 돋보이는 ‘Real Life’는 NCT127 멤버 개개인의 음색과 완전체의 음색 조합이 얼마나 완성에 가까운지를 알려준다. </p>
<p dmcf-pid="yyJSB2ZdrG" dmcf-ptype="general">◆ 라잇썸(LIGHTSUM) 미니 2집 [Honey or Spice] : Skyline</p>
<p dmcf-pid="W0EtxdqksY" dmcf-ptype="general">- 찬란한 청춘가. 멤버 주현이 작곡, 상아가 작사에 참여한 ‘Skyline’은 라잇썸 필모에 자부심을 부여할 트랙이다. 빈티지함, 웅장함 여기에 벅차오르는 감성까지 가져가며 그룹의 새로운 음악 색을 보여준다. </p>
<p dmcf-pid="YpDFMJBEwW" dmcf-ptype="general">◆ 휘인 정규 1집 [IN the mood] : Bite Me (Feat. 김하온 (HAON))</p>
<p dmcf-pid="GUw3RibDIy" dmcf-ptype="general">- 낯선 조합으로 만든 익숙한 맛. 휘인의 공기반 소리반 매력적인 중저음과 김하온의 래핑이 섹시한 긴장감을 만든다. </p>
<p dmcf-pid="H4y2ADMTDT" dmcf-ptype="general">◆ 아이브(IVE) 미니 1집 [I'VE MINE] : Holy Moly</p>
<div dmcf-pid="X8WVcwRysv" dmcf-ptype="general">
           - 황홀한 콘셉트 소화력. 사랑에 빠진 소녀의 감정이 아이브를 거치면 특별해진다. 리드미컬하고 펀치감 있는 비트가 신비로운 ‘Holy Moly’에 “셋을 세면” 빠져들지도. 아이브가 허용하는 음악 스펙트럼이 꽤 폭넓음을 짐작케하는 트랙이다. 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="Z6YfkreWES" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101090011958umsb.jpg" data-org-width="1200" dmcf-mid="fHJSB2ZdOF" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportsdonga/20231101090011958umsb.jpg" width="658"/></p>
</figure>
<div dmcf-pid="5HoW28FLOl" dmcf-ptype="general">
            ◆ 츄 미니 1집 [Howl] : My Palace
          </div>
<p dmcf-pid="1XgYV63oIh" dmcf-ptype="general">- 좀 귀여운 솔로 퀸 탄생. 솔로 가수 츄의 목소리는 예상보다 훨씬 더 단단하다. ‘My Palace’는 경쾌한 츄의 캐릭터성을 녹여낸 주제곡으로, 묵직한 드럼와 츄의 가볍지 않은 보컬이 진정성을 더한다. </p>
<p dmcf-pid="tZaGfP0gIC" dmcf-ptype="general">◆ 세븐틴 미니 11집 [SEVENTEENTH HEAVEN] : Monster</p>
<p dmcf-pid="F1jX8xUNsI" dmcf-ptype="general">- 북유럽급 고막 복지. 애니메이션 캐릭터들의 움직임이 눈에 보이는 듯한 고급스러운 비트 위에 세븐틴 4번 타자 랩 ‘몬스터’들이 출격했다. </p>
<p dmcf-pid="3tAZ6MujmO" dmcf-ptype="general">◆ 태민 미니 4집 [Guilty] : She Loves Me, She Loves Me Not</p>
<p dmcf-pid="0Fc5PR7ADs" dmcf-ptype="general">- I am 길티 but.. 태민 음악은 not 길티. ‘She Loves Me, She Loves Me Not’은 쓸쓸한 힙합 기반의 곡이다. ‘사랑한다, 안 한다’를 시들어가는 꽃잎에 비유한 가사를 태민이 노래하다니! 새 앨범에서 추구한 콘셉츄얼과 캐주얼 조합에 가장 맞아떨어지는 트랙이다.</p>
<p dmcf-pid="pUw3RibDOm" dmcf-ptype="general">동아닷컴 전효진 기자 jhj@donga.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠동아]</h6></div>
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