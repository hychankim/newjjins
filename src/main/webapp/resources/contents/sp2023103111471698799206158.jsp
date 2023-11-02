
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
    <h3>[롤드컵] 16강 스위스 스테이지, '내용-구성' 모두 접아낸 성공적 도입</h3><h6>박상진  2023. 10. 31. 11:47</h6>
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
<section dmcf-sid="HNRMDGEu1p">
<figure class="figure_frm origin_fig" dmcf-pid="XwoLCFI910" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031114739510gnji.jpg" data-org-width="640" dmcf-mid="xxiGbJBEHq" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031114739510gnji.jpg" width="658"/></p>
</figure>
<div dmcf-pid="Zrgoh3C2Y3" dmcf-ptype="general">
<br/> 10일 개막한 롤드컵의 일정의 반이 지났다. 플레이인과 16강에 진출했던 팀의 반 이상은 대회에서 사라졌고, 이제 부산과 서울에서 경기를 치를 여덟 팀만 남았다.
          </div>
<p dmcf-pid="5dfVgho5YF" dmcf-ptype="general">2일 부산광역시 동래구 사직체육관에서 '2023 리그 오브 레전드 월드 챔피언십(롤드컵)' 녹아웃 스테이지 8강전이 열린다. 매일 오후 5시에 열리는 이번 8강은 2일 북미 NRG 대 중국 WBG, 3일 한국 젠지 대 중국 BLG, 4일 중국 JDG 대 KT, 5일 중국 LNG 대 한국 T1의 경기가 열린다.</p>
<div dmcf-pid="1J4falg1tt" dmcf-ptype="general">
           이들 팀은 모두 16강 스위스 스테이지를 뚫고 올라온 팀이다. 리그별로 보면 중국 LPL이 4팀, 한국 LCK가 3팀, 북미 LCS가 1팀이다. 이전까지 16강 그룹 스테이지는 각 지역 리그 팀끼리 서로 대결하지 않는 상황에서 4개 팀 1개 조로 총 4개 팀이 구성되어 8강 팀을 결정하는 방식이었다. 하지만 이번 스위스 스테이지는 첫 대진 배정에만 각 지역과 동일 티어 팀이 매칭되지 않고, 나머지 라운드에는 같은 승수 팀이 지역과 티어 상관 없이 대결하는 방식이었다. 초반 라운드는 단판제로 진행되고 2승이나 2패 상황이 되면 3판 2선승제로 진행하는 것.
           <br/>   
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="t8z7RDMTG1" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031114740941hsxy.jpg" data-org-width="640" dmcf-mid="yXhpQcPl5z" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031114740941hsxy.jpg" width="658"/></p>
</figure>
<div dmcf-pid="F6qzewRy55" dmcf-ptype="general">
<br/> 그렇다면 이번 스위스 스테이지는 제대로 팀들의 경기력을 보일 수 있었을까. 3승 0패 팀 중 하나인 JDG는 팀 BDS-BLG-LNG를 격파하고 8강에 올랐고, 젠지는 GAM e스포츠-T1-G2를 격파하고 올랐다. 라운드가 오를수록 이들 팀의 경기력과 비슷한 팀을 만나 8강에 올랐다.
          </div>
<p dmcf-pid="3PBqdreWtZ" dmcf-ptype="general">3승 1패 팀의 경기를 살펴보면 LNG는 프나틱-C9를 만나 승리했고, JDG에 패한 후 KT를 만나 승리했다. NRG는 첫 경기 WBG에 패했지만 팀리퀴드-MAD-G2를 잡고 8강에 올랐다. T1은 팀리퀴드를 만나 승리한 후 젠지를 만나 패했다. 하지만 이어 C9와 BLG를 연달아 꺾으며 8강에 올랐다. 3승 2패 팀은 조금 더 긴 여정을 거쳤다. BLG는 KT 승-JDG 패-프나틱 승-T1 패-G2 승을 기록했고, KT는 BLG 패-DK 승-WBG 승-LNG 패-DK 승을 기록했다. WBG는 NRG 승-G2 패-KT 패-MAD 승-프나팅 승리로 8강에 올랐다.</p>
<div dmcf-pid="03WyzR7AZX" dmcf-ptype="general">
           스위스 스테이지 시스템의 핵심은 '이기면 더 강한 팀을, 지면 비슷한 실력의 팀을 만난다'는 것. 이는 3승 2패 팀의 기록을 보면 확실히 알 수 있다. 그야말로 혼란의 도가니이지만 비슷한 실력의 팀을 잡고 올라갔다.
           <br/>   
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="p0YWqezcXH" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031114742182traj.jpg" data-org-width="640" dmcf-mid="W7AWqezc17" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031114742182traj.jpg" width="658"/></p>
</figure>
<div dmcf-pid="UjeRwHD7HG" dmcf-ptype="general">
<br/> 이번 대회에서 2승 3패로 탈락한 세 팀을 보면 스위스 스테이지의 특징을 제대로 알 수 있다. DK는 G2와 KT에 졌지만 플레이인 통과 두 팀을 잡았다. 하지만 다시 KT를 만나 탈락했다. 프나틱은 LPL 팀에게는 모두 지고 GAM과 C9에게만 패했다. G2은 DK와 WBG를 잡았지만 젠지-NRG-BLG를 잡고 패했다. 비교적 쉬운 팀을 잡고 2승을 거두더라도, 비슷하거나 높은 실력의 팀을 만나면 결국 본 실력을 가늠할 수 있다는 것.
          </div>
<div dmcf-pid="uAderXwzZY" dmcf-ptype="general">
           앞을 알 수 없는 대진 추첨도 스위스 스테이지의 특징이다. 리그 오브 레전드 국제대회는 1년에 두 번 열리고, 그중 MSI는 리그 상위 소수팀만 참가하는 대회다. 반면 롤드컵은 비교적 많은 팀이 참여하며, 각국 리그의 실제 실력을 가늠할 수 있다. 기존 그룹 스테이지는 정해진 팀만 만날 수 있었다면, 이번 스위스 스테이지에서는 승패만 맞다면 그 어느 팀도 만날 수 있다. 물론 KT처럼 '중한중중한중'의 극단적 대진도 나오지만, 어쨌든 KT는 이 대진을 뚫고 8강에 오를 자격을 보였다.
           <br/>   
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="7cJdmZrqtW" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031114743445pkdi.jpg" data-org-width="640" dmcf-mid="YH0QkWcp5u" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031114743445pkdi.jpg" width="658"/></p>
</figure>
<div dmcf-pid="zYOs1V5JXy" dmcf-ptype="general">
              
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="qGIOtf1itT" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031114744724mesk.jpg" data-org-width="640" dmcf-mid="GeP6ATj3HU" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031114744724mesk.jpg" width="658"/></p>
</figure>
<div dmcf-pid="BHCIF4tnZv" dmcf-ptype="general">
<br/> 다만 이번 스위스 스테이지에에서 아쉬운 장면도 있었다. 바로 대진 추첨 방식. 기존 풀에서 캡슐을 뽑는 방식에서 이번에는 한국의 복주머니를 활용한 추첨을 진행했지만, 차라리 기존 방식이 낫다는 의견도 많았다. 복주머니에 종이를 넣는 사람과 복주머니를 가지고 무대에 나오는 사람, 그리고 이를 추첨하는 심판 모두 다른 사람이기에 사실상 추첨 자체에 문제가 있다고 보기 힘들다. 그래도 차라리 큰 복주머니 안에 작은 복주머니를 넣고 보이지 않는 상태에서 뽑는 것이 더 나았을 수 있다는 아쉬움이다. 물론 이 과정에서 철저한 포커페이스를 보인 심판은 대회의 또다른 재미 요소가 됐다.
          </div>
<p dmcf-pid="byp0PA6hGS" dmcf-ptype="general">하지만 고정된 대회 방식으로 매너리즘에 빠질 수 있는 대회에 변화를 시도했고, 그 시도로 대회에 활기를 더할 수 있다는 점에서 스위스 스테이지는 좋은 도전이었다.</p>
<p dmcf-pid="KWUpQcPlXl" dmcf-ptype="general">사진=라이엇 게임즈<br/>박상진 vallen@fomos.co.kr<br/>[게임&amp;게이머, 문화를 전합니다. 포모스게임│무단 전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : 포모스]</h6></div>
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