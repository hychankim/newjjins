
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
    <h3>'KLPGA 새로운 대세' 이예원, 최종전 앞두고 '다관왕' 확정 나선다</h3><h6>김도용 기자  2023. 11. 1. 06:00</h6>
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
<section dmcf-sid="WwprjXwz79">
<figure class="figure_frm origin_fig" dmcf-pid="YrUmAZrqFK" dmcf-ptype="figure">
<p class="link_figure"><img alt="이예원이 22일 경기 양주 레이크우드CC에서 열린 '상상인 한국경제TV오픈 2023' 최종라운드에서 2번홀 버디 성공 후 인사하고 있다. (KLPGT 제공) 2023.10.22/뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101060022291yfrg.jpg" data-org-width="1400" dmcf-mid="yko7tMuj72" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101060022291yfrg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이예원이 22일 경기 양주 레이크우드CC에서 열린 '상상인 한국경제TV오픈 2023' 최종라운드에서 2번홀 버디 성공 후 인사하고 있다. (KLPGT 제공) 2023.10.22/뉴스1
           </figcaption>
</figure>
<p dmcf-pid="G8m6Kj8CFb" dmcf-ptype="general">(서울=뉴스1) 김도용 기자 = 프로 2년 차에 한국여자프로골프(KLPGA) 투어 대세로 자리 잡은 이예원(20‧KB금융그룹)이 최종전을 앞두고 상금왕과 대상 확정을 노린다. 무대는 S-오일 챔피언십(총상금 9억원)이다. </p>
<p dmcf-pid="H6sP9A6hFB" dmcf-ptype="general">이예원은 2일 제주 엘리시안 제주CC(파72‧6717야드)에서 5일까지 진행되는 S-오일 챔피언십에 출전한다. </p>
<p dmcf-pid="X9k27L9rFq" dmcf-ptype="general">지난해 KLPGA 신인왕인 이예원은 올 시즌 대세로 부상했다. 지난 시즌 우승은 못했지만 꾸준한 성적으로 신인왕에 올랐던 이예원은 올해 국내 개막전인 롯데렌터카 여자오픈에서 첫승을 신고했다. </p>
<p dmcf-pid="Z2EVzo2mFz" dmcf-ptype="general">고대했던 프로 첫승을 달성하면서 자신감을 얻은 이예원은 이후 확실한 강자로 자리 잡았다. 이미 지난해 꾸준한 경기력으로 이름을 알렸던 이예원은 올해도 착실하게 성적을 냈다. </p>
<p dmcf-pid="5VDfqgVs07" dmcf-ptype="general">지금까지 이예원은 27개 대회에 출전해 단 1번만 컷 탈락했다. 반면 우승 3회를 포함해 톱10에 12번이나 이름을 올렸다. </p>
<p dmcf-pid="1fw4BafO3u" dmcf-ptype="general">꾸준한 성적으로 이예원은 시즌이 막판으로 향하는 현재 상금(13억2668만원), 대상(609점), 평균타수(70.7209타) 등 주요 3개 타이틀에서 모두 선두를 달리고 있다. </p>
<p dmcf-pid="tfw4BafOuU" dmcf-ptype="general">다승 부문에서는 3승으로 박지영(27‧한국토지신탁), 임진희(25‧안강건설)와 공동 1위에 올라 있다. </p>
<p dmcf-pid="F4r8bN4Izp" dmcf-ptype="general">상금 부문은 단연 선두로 2위 박지영(9억7247만원), 3위 임진희(9억3386만원) 등에 크게 앞서 있다. 남은 S-오일 챔피언십 우승 상금이 1억6200만원, 최종전 SK쉴더스‧SK텔레콤 챔피언십 우승 상금이 2억원인 점을 감안하면 이예원의 상금왕은 사실상 확정적이다. 이예원이 S-오일 챔피언십에서 780만원만 획득해도 상금왕에 오른다. </p>
<p dmcf-pid="38m6Kj8C70" dmcf-ptype="general">대상 경쟁도 이예원은 2위 임진희(558점)에 51점 앞서 유리한 상황이다. 대상 포인트는 매 대회 톱10에 진입한 선수들에게만 부여 되는데 S-오일 챔피언십 우승자는 60점, 10위는 31점을 획득한다. 최종전 1위는 70점을 받을 수 있다. </p>
<p dmcf-pid="0musc5mB03" dmcf-ptype="general">따라서 이번 대회에서 이예원이 임진희와의 차이를 71점 이상으로 벌린다면 대상 수상도 조기에 확정지을 수 있다. </p>
<p dmcf-pid="ps7Ok1sbzF" dmcf-ptype="general">이예원 입장에서는 이번 대회에서 우승을 차지하면 다승 부문 단독 선두에 오를 뿐만 아니라 상금왕과 대상 타이틀도 일찌감치 결정지을 수 있다. </p>
<p dmcf-pid="UOzIEtOKzt" dmcf-ptype="general">다관왕을 눈앞에 둔 이예원은 "타이틀에 연연하면 좋은 플레이가 나오지 않는다. 최대한 내 플레이에 집중해 톱10을 달성하도록 하겠다"며 부담을 내려놓고 대회에 임하겠다는 각오를 밝혔다. </p>
<p dmcf-pid="uE3DaGEuz1" dmcf-ptype="general">이예원과 다승왕 경쟁 중인 박지영은 "S-오일 챔피언십은 앞서 내가 2번 우승을 했기 때문에 좋은 기억으로 가득하다. 좋았던 기억을 살려 톱10을 목표로 하겠다"고 출사표를 던졌다. 임진희 역시 "지난 2주 연속 샷 감각이 좋기 때문에 톱10에 들기 위해 최선을 다하겠다"며 톱10을 우선 목표로 내세웠다.</p>
<p dmcf-pid="7D0wNHD7u5" dmcf-ptype="general">dyk0609@news1.kr </p>
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