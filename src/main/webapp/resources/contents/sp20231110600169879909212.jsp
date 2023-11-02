
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
    <h3>10년 만에 성사된 ‘리벤지 매치’…제주, FA컵에서 두 마리 토끼 노린다</h3><h6>김우중  2023. 11. 1. 06:00</h6>
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
<section dmcf-sid="GdSd6reWcc">
<figure class="figure_frm origin_fig" dmcf-pid="HoYoRCLZjA" dmcf-ptype="figure">
<p class="link_figure"><img alt="정조국 감독대행이 이끄는 제주 유나이티드가 1일 오후 포항 스틸러스와의 2023 하나원큐 FA컵 4강전에서 격돌한다. 사진=제주" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060016411mols.jpg" data-org-width="600" dmcf-mid="2j61WV5Jcl" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060016411mols.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            정조국 감독대행이 이끄는 제주 유나이티드가 1일 오후 포항 스틸러스와의 2023 하나원큐 FA컵 4강전에서 격돌한다. 사진=제주
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="XuLu1xUNoj" dmcf-ptype="figure">
<p class="link_figure"><img alt="정조국 제주 유나이티드 감독대행. 사진=제주" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060017794ubjp.jpg" data-org-width="600" dmcf-mid="fVsR4DMTaC" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060017794ubjp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            정조국 제주 유나이티드 감독대행. 사진=제주
           </figcaption>
</figure>
<div dmcf-pid="ZCqCDFI9oN" dmcf-ptype="general">
           10년 전과 팀이 처한 상황·상대·무대가 같다. 달라져야 할 건 결과뿐이다. 프로축구 제주 유나이티드가 리그에서의 부진을 만회할 수 있을까. 무대는 오늘 안방에서 열리는 2023 하나원큐 대한축구협회(FA)컵 4강전이다.
           <br/>
<br/>제주는 1일 오후 7시 30분 제주월드컵경기장에서 포항 스틸러스와 만나 FA컵 결승 진출권을 놓고 다툰다. 제주가 FA컵 4강에 오른 건 2013년 이후 10년 만이다. 만약 오늘 포항을 꺾는다면 2004년 부천 SK(제주의 전신) 시절 준우승 이후 처음으로 결승 무대를 밟게 된다. 포항은 FA컵 4회 우승으로 이 부문 2위이며, 3년 만에 4강 무대를 밟았다.
           <br/>
<br/>공교롭게도 올 시즌 제주의 행보는 10년 전과 유사하다.
           <br/>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="5KAKUibDja" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진은 지난 2013년 8월 축구회관에서 열린 2013 하나은행 FA컵 축구 준결승 대진추첨 및 미디어데이. 당시 행사에 참석한 박경훈 제주 감독과 황선홍 포항 감독의 모습. 사진=정시종 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060019132qlmf.jpg" data-org-width="600" dmcf-mid="WyN27L9rAE" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060019132qlmf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진은 지난 2013년 8월 축구회관에서 열린 2013 하나은행 FA컵 축구 준결승 대진추첨 및 미디어데이. 당시 행사에 참석한 박경훈 제주 감독과 황선홍 포항 감독의 모습. 사진=정시종 기자
           </figcaption>
</figure>
<div dmcf-pid="13d3H8FLcg" dmcf-ptype="general">
<br/>지난 2013년 박경훈 현 대한축구협회 전무이사가 이끈 제주는 시즌 초 리그 상위권에 머물다 여름 이후 부진으로 9위(14개 팀)까지 추락했다. 안방에서 열린 FA컵 4강에선 포항에 2-4로 져 결승 진출이 좌절됐다. 포항은 기세를 몰아 전북 현대를 꺾고 통산 4번째 우승을 차지한 바 있다.
           <br/>
<br/>10년이 지난 올 시즌, 남기일 전 감독이 이끈 제주는 한 때 2위까지 오르며 3시즌 연속 파이널 A를 꿈꿨다. 개막 전 남 감독이 외친 “현대(울산-전북)가를 위협하겠다”라는 말이 실현되는 모양새였다. 하지만 6월부터 시작된 리그 10경기 무승(4무 6패)에 이어, 8월 5경기 무승(1무 4패) 여파로 순위가 곤두박질쳤다. 3시즌 연속 파이널 A도 좌절됐다. 
           <br/>
<br/>결국 남기일 감독은 성적 부진에 책임을 지고 지휘봉을 내려놓았다. 정조국 수석코치가 감독 대행으로 나섰다. 정 감독 대행은 리그 4경기서 1승 1무 2패를 기록, 9위에 올라 강등권(10~12위) 팀과 순위 다툼을 벌이고 있다.
           <br/>
<br/>10년 전과 같이 이번에도 제주의 앞길에 선 건 포항이다. 포항은 리그 2위(15승15무5패·승점 60)로 우승은 좌절됐으나, 가장 적은 패배를 기록 중이다. 김기동 포항 감독의 신들린 운영은 시즌 내내 포항을 우승 경쟁팀으로 이끈 요인 중 하나였다. 리그에서 제주와의 상대 전적에서도 2승 1패로 앞선다.
           <br/>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="t3d3H8FLgo" dmcf-ptype="figure">
<p class="link_figure"><img alt="제주 유나이티드 베테랑 정운은 FA컵 4강전을 앞두고 전의를 불태웠다. 사진=제주" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060020490bgux.jpg" data-org-width="600" dmcf-mid="YDynxOiHjk" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101060020490bgux.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제주 유나이티드 베테랑 정운은 FA컵 4강전을 앞두고 전의를 불태웠다. 사진=제주
           </figcaption>
</figure>
<div dmcf-pid="FG8GlBYxkL" dmcf-ptype="general">
<br/>다만 포항은 리그 막바지 오베르단·완델손·정재희가 부상으로 이탈해 타격이 크다. 이어 리그, 아시아축구연맹(AFC) 챔피언스리그(ACL) 일정까지 병행하며 체력적으로도 불리하다. 제주는 FA컵을 대비해 구자철·임채민·서진수 등을 리그에서 출전시키지 않았다. 이어 베테랑 정운은 구단을 통해 “선수들과 모든 걸 쏟아붓겠다. 나 먼저 한발짝이라도 더 뛰겠다”라고 말하며 전의를 불태웠다.
           <br/>
<br/>제주 입장에서 최상의 시나리오는 또 있다. 만약 제주가 포항을 꺾는다면, 결승전은 오는 4일 같은 장소에서 열린다. 이동일 없이 결승전에 집중할 조건이 갖춰진 셈이다. 과연 제주가 10년 만에 성사된 리벤지 매치에서 두 마리 토끼를 다 잡을 수 있을지가 관전 요소다.
           <br/>
<br/>한편 같은 날 오후 7시 전주월드컵경기장에선 전북과 인천 유나이티드가 FA컵 결승전 자리를 놓고 다툰다. 전북은 이 대회 최다 우승팀(5회)이며, 지난해 디펜딩 챔피언이기도 하다. 인천은 지난 2015년(준우승) 이후 두 번째로 결승 무대에 도전한다.
           <br/>
<br/>김우중 기자
          </div>
</section>
</div></p></section></div><h6>[Source : 일간스포츠]</h6></div>
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