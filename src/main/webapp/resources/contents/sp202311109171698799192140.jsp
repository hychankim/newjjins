
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
    <h3>'LPL을 넘어라' 젠지·T1·KT, 롤드컵 8강서 '한중전' 격돌</h3><h6>이상필 기자  2023. 11. 1. 09:17</h6>
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
<section dmcf-sid="U3FAFUS4i8">
<figure class="figure_frm origin_fig" dmcf-pid="up0k07T6i4" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=라이엇 게임즈 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/sportstoday/20231101091704438cpax.png" data-org-width="1080" dmcf-mid="pKD9DsJGe6" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/sportstoday/20231101091704438cpax.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=라이엇 게임즈 제공
           </figcaption>
</figure>
<p dmcf-pid="7z7r7bGMif" dmcf-ptype="general">[스포츠투데이 이상필 기자] 2023 리그 오브 레전드 월드 챔피언십(롤드컵) 스위스 스테이지가 끝나고 우승자를 가리는 토너먼트 단계인 녹아웃 스테이지가 막을 올린다.</p>
<p dmcf-pid="zjN7NkQSeV" dmcf-ptype="general">리그 오브 레전드(League of Legends; LoL)를 개발, 서비스하고 있는 라이엇 게임즈는 2023 리그 오브 레전드 월드 챔피언십 8강이 2일부터 5일까지 부산광역시 동래구 사직동에 위치한 사직실내체육관에서 열린다고 밝혔다. </p>
<p dmcf-pid="qkcBcwRyi2" dmcf-ptype="general">지난달 29일 스위스 스테이지 일정을 모두 마친 뒤 진행된 8강 대진 추첨 결과 한국(LCK) 대표로 출전한 세 팀은 모두 중국(LPL) 팀들과 8강에서 맞대결을 펼친다. 중국 대표로 출전한 네 팀이 모두 스위스 스테이지를 통과했기에 어느 정도 예견된 상황이지만 같은 지역 팀과의 대결이 하나도 성사되지 않으면서 8강을 가로지르는 화두는 '한중전'으로 확정됐다. </p>
<p dmcf-pid="BWydyHD7n9" dmcf-ptype="general">▲ '1번 시드' 젠지, MSI 복수할까<br/> LCK 1번 시드 자격으로 LoL 월드 챔피언십에 출전한 젠지는 최고 시드 배정자다운 경기력을 스위스 스테이지에서 보여줬다. 첫 경기에서 GAM 이스포츠를 완파한 젠지는 두 번째 경기에서 T1까지 잡아내면서 2승 조에 올라갔고 EMEA(LEC) 1번 시드인 G2 이스포츠를 2-0으로 격파했다. 8강에 올라온 팀 가운데 유일하게 한 세트도 패하지 않으면서 전승 행진을 이어가고 있다. </p>
<p dmcf-pid="bYWJWXwzeK" dmcf-ptype="general">젠지의 8강 상대는 빌리빌리 게이밍(BLG)로 정해졌다. BLG는 지난 5월 영국 런던에서 열린 미드 시즌 인비테이셔널(MSI) 하위조 3라운드에서 젠지를 만나 3-0으로 완승을 거둔 강호다. 이번 대회에서 징동 게이밍과 T1에게 패하면서 어려운 경기를 치르긴 했지만, G2 이스포츠를 꺾으면서 8강에 진출했다. </p>
<p dmcf-pid="Kp0k07T6ib" dmcf-ptype="general">우승 후보로 꼽히고 있는 젠지는 MSI의 패배를 설욕할 좋은 기회다. 큰 대회 경험이 적었던 하단 듀오 '페이즈' 김수환과 '딜라이트' 유환중이 LCK 서머와 이번 월드 챔피언십을 치르면서 엄청나게 성장했고 BLG에 대해서도 철저하게 분석할 시간을 벌었기에 복수할 수 있는 기반은 닦아 놓았다. 젠지와 BLG는 오는 3일 대결을 펼친다.</p>
<p dmcf-pid="9smfmCLZLB" dmcf-ptype="general">▲ '페이커', '스카웃'과 3년째 롤드컵 맞대결<br/> LCK 2번 시드 자격으로 월드 챔피언십에 나선 T1의 8강 상대는 리닝 게이밍이다. 리닝 게이밍은 2021년 월드 챔피언십에 나선 적이 있지만 당시에는 16강에서 탈락했다. 와신상담한 리닝 게이밍은 에드워드 게이밍 출신 미드 라이너 '스카웃' 이예찬을 올해 초 영입했고 서머를 앞두고 로얄 네버 기브업 출신 원거리 딜러 'GALA' 첸웨이까지 합류시키면서 전력이 급상승했다. 리닝 게이밍은 스위스 스테이지 2승 조에서 징동 게이밍에게 1-2로 패했지만 2승1패 조에서 KT 롤스터를 2-1로 제압하면서 T1과 같은 성적으로 8강에 올랐다.</p>
<p dmcf-pid="2lhQhTj3dq" dmcf-ptype="general">두 팀의 대결에서 눈여겨볼 점은 미드 라이너간의 관계다. 이예찬은 T1이 뽑은 유망주였지만 2016년 중국 팀인 에드워드 게이밍으로 팀을 옮기면서 주전 자리를 꿰찼고 2021년 아이슬란드 레이캬비크에서 열린 월드 챔피언십에서 우승까지 차지했다. </p>
<p dmcf-pid="VCI6ISatiz" dmcf-ptype="general">국제 대회에서 이상혁과 이예찬의 상대 전적은 세트 기준 5승1패로 이상혁이 크게 앞서 있다. 2017년 월드 챔피언십 그룹 스테이지에서 두 번 만나 모두 이상혁이 승리했다. 2021년 그룹 스테이지에서는 1승1패를 나눠 가졌으며 2022년 그룹 스테이지에서는 이상혁이 2전 전승을 기록했다. 2021년부터 올해까지 3년 연속 월드 챔피언십 무대에서 만났지만, 두 선수가 5전 3선승제로 경쟁하는 것은 오는 5일 대결이 처음이다.</p>
<p dmcf-pid="fTvRvYkUi7" dmcf-ptype="general">▲ 'MSI 우승' JDG 만나는 KT, 언더독의 반란?<br/> KT 롤스터는 또 하나의 우승 후보인 징동 게이밍(JDG)을 상대한다. JDG는 올해 열린 LPL 스프링과 서머를 우승한 것은 물론, 국제 대회인 MSI에서도 정상에 올랐다. 이번 대회 스위스 스테이지에서도 젠지와 함께 3승으로 통과하면서 우승 후보다운 성과를 냈다. </p>
<p dmcf-pid="4Jd1dL9rLu" dmcf-ptype="general">KT는 스위스 스테이지를 통과하긴 했지만, LPL 팀을 두 번 만나 모두 패했다. 첫 경기에서 BLG에게 패했고 2승1패 조에서는 LNG와 풀 세트 접전을 치렀지만 아쉽게 졌다. LPL 팀에게 약세를 보이는 상황에서 1번 시드인 JDG와 8강 매치업이 성사되면서 모든 상황이 KT에게 불리하게 조성되어 있다. </p>
<p dmcf-pid="8uUDUqWQRU" dmcf-ptype="general">그럼에도 불구하고 KT는 디플러스 기아와의 대결에서 뒷심이 살아나기 시작했기에 언더독의 반란에 대한 기대감을 키웠다. </p>
<p dmcf-pid="67uwuBYxMp" dmcf-ptype="general">▲ 부산, 8강과 4강 맞아 이스포츠팬 참여 이벤트 진행<br/> 2023 LoL 월드 챔피언십의 8강과 4강을 개최하는 부산광역시도 부산정보산업진흥원과 함께 팬들이 2023 LoL 월드 챔피언십을 풍성하게 즐길 수 있도록 부대 행사를 마련했다. </p>
<p dmcf-pid="PNauacPli0" dmcf-ptype="general">2일부터 5일까지 진행되는 8강 기간 서면 삼정타워에 위치한 부산이스포츠경기장에서는 가장 먼저 8강행을 확정 지은 젠지가 뷰잉 파티를 비롯해 게임 코칭 체험, 프로게이머가 되는 방법에 대한 세미나 등을 진행한다. 특히 오는 3일 진행되는 뷰잉파티는 전 프로 선수 '큐베' 이성진이 함께 할 예정이다. 티켓 구매 없이 누구나 방문할 수 있다.</p>
<p dmcf-pid="QRMXMJBER3" dmcf-ptype="general">4강이 펼쳐지는 오는 11일과 12일에는 사직실내체육관의 야외 공간에서 다양한 부스와 행사가 열린다. 경기 티켓이 없는 팬들이라도 자유롭게 참가할 수 있는 이 행사에는 전문 코스튬 플레이어들과 함께하는 포토 이벤트는 물론, 직접 참여해 볼 수 있는 체험 부스가 운영된다. 또한 티켓을 구하지 못한 팬들이 함께 응원할 수 있는 야외 뷰잉 파티도 진행할 예정이다.</p>
<p dmcf-pid="xRMXMJBEdF" dmcf-ptype="general">[스포츠투데이 이상필 기자 sports@stoo.com]</p>
</section>
</div></p></section></div><h6>[Source : 스포츠투데이]</h6></div>
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