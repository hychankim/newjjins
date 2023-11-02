
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
    <h3>'강철부대3' UDU, 두 번째 탈락 부대 확정…UDT 또 살아남았다 [RE:TV]</h3><h6>이지현 기자  2023. 11. 1. 05:30</h6>
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
<section dmcf-sid="YuEcBafO0P">
<figure class="figure_frm origin_fig" dmcf-pid="Gm2KCzyP36" dmcf-ptype="figure">
<p class="link_figure"><img alt="채널A '강철부대3' 캡처" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101053008711minp.jpg" data-org-width="657" dmcf-mid="yzJRZP0gux" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101053008711minp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            채널A '강철부대3' 캡처
           </figcaption>
</figure>
<p dmcf-pid="HsV9hqWQp8" dmcf-ptype="general">(서울=뉴스1) 이지현 기자 = '강철부대3' 두 번째 탈락 부대가 해군첩보부대 'UDU'로 정해졌다. </p>
<p dmcf-pid="XOf2lBYxu4" dmcf-ptype="general">지난 31일 방송된 채널A·ENA 공동 제작 예능 프로그램 '강철부대3'에서는 대테러 연합 작전에서 패배한 UDT, UDU 연합이 데스매치를 벌였다.</p>
<p dmcf-pid="ZQWTeho50f" dmcf-ptype="general">두 번째 탈락이 걸린 미션은 갯벌 타이어 뒤집기였다. 갯벌 한복판에서 무거운 타이어를 함께 뒤집어야 했는데 양팀 모두 쉽지 않았다. </p>
<p dmcf-pid="5xYydlg1FV" dmcf-ptype="general">UDT가 초반부터 앞서 나갔지만 UDU가 포기하지 않고 추격했다. 이병주는 "우리가 믿는 건 정신력 하나다. 질 거란 생각은 안 했다"라며 이를 악물었다. </p>
<p dmcf-pid="1flCPmdYz2" dmcf-ptype="general">UDT는 UDU의 기합 소리에 위기감을 느끼고 황급히 마음을 다잡았다. 정종현은 "뒤에서 언제든지 따라잡을 수 있기 때문에 불안하고 긴장이 많이 됐다"라고 털어놨다. </p>
<p dmcf-pid="t4ShQsJG09" dmcf-ptype="general">UDU는 필사의 추격으로 긴장감을 유발했다. 불과 몇 미터밖에 차이가 나지 않았다. 이에 UDT가 이정준의 리드로 다시 힘을 모았다. 반면 UDU는 현저히 속도가 느려졌고, 대원 김수원의 발이 계속해서 갯벌에 빠졌다. 그러자 이병주가 "일어나야 해! 왜 안 일어나!"라며 다그쳤다. </p>
<p dmcf-pid="F8vlxOiH7K" dmcf-ptype="general">마지막까지 남은 힘을 쥐어짜낸 UDT가 결국 데스매치 승리를 가져갔다. 이를 지켜보던 MC들이 감탄했다. 츄는 혀를 내둘렀고, 김희철은 "불사조 아니냐"라며 놀라워했다. </p>
<p dmcf-pid="38vlxOiH0b" dmcf-ptype="general">승리를 확정한 뒤 김경백은 "모든 걸 다 쏟아부었다"라고 털어놨다. 정종현은 "온몸이 고됐는데 끝나니까 쾌감이 들었다"라고 했다. 이한준은 "데스매치를 가장 많이 치른 팀이지만 이번 매치를 계기로 사기를 끌어올려서 다음에는 본미션 승리하겠다"라며 각오를 다졌다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="06TSMInXpB" dmcf-ptype="figure">
<p class="link_figure"><img alt="채널A '강철부대3' 캡처" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101053010027lmgl.jpg" data-org-width="657" dmcf-mid="Wn7UDFI9uQ" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101053010027lmgl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            채널A '강철부대3' 캡처
           </figcaption>
</figure>
<p dmcf-pid="pPyvRCLZuq" dmcf-ptype="general">이처럼 UDT는 끈끈한 팀워크로 다시 살아남을 수 있었다. UDU는 탈락이 확정됐음에도 불구하고 끝까지 최선을 다하는 모습을 보였다. 멈추지 않고 나아가는 모습이 감동과 안타까움을 동시에 선사했다. </p>
<p dmcf-pid="UOf2lBYxpz" dmcf-ptype="general">탈락한 UDU 대원들은 '강철부대3'를 떠나는 소감을 밝혔다. 김수원은 "최선을 다했지만 제가 부족했던 것 같다. 모두 고생 많았다"라고 말했다. 고인호는 "아쉬움이 많이 남는다"라면서 고개를 떨궜다. 이병주는 "우리가 어떤 것들을 잘하는지 진면모를 보여주지 못해서 선후배들에게 죄송하다"라며 미안한 마음을 전했다.</p>
<p dmcf-pid="uI4VSbGM77" dmcf-ptype="general">llll@news1.kr </p>
</section>
</div></p></section></div><h6>[Source : 뉴스1]</h6></div>
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