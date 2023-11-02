
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
    <h3>'FA컵 최다 우승' 전북, 결승행 길목서 인천과 격돌...대회 2연패+새 역사 꿈꾼다[오!쎈 프리뷰]</h3><h6>고성환  2023. 11. 1. 07:26</h6>
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
<section dmcf-sid="9VAnq9XeMB">
<figure class="figure_frm origin_fig" dmcf-pid="2Msc4QpaJq" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 전북현대 제공." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101072619802jmlw.jpg" data-org-width="650" dmcf-mid="zrrjV63oiV" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101072619802jmlw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 전북현대 제공.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="VD1WNkQSiz" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 한국프로축구연맹 제공." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101072619986kehb.jpg" data-org-width="650" dmcf-mid="qkAnq9Xed2" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101072619986kehb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 한국프로축구연맹 제공.
           </figcaption>
</figure>
<p dmcf-pid="fQrjV63oe7" dmcf-ptype="general">[OSEN=고성환 기자] 전북현대가 FA컵 최다 우승팀의 품격을 보여줄 수 있을까. 결승행 길목에서 만만치 않은 상대 인천유나이티드를 만났다.</p>
<p dmcf-pid="4nSmMJBERu" dmcf-ptype="general">전북현대는 1일 오후 7시 전주월드컵경기장에서 열리는 FA컵 4강전에서 인천유나이티드와 맞붙는다.</p>
<p dmcf-pid="8aWCJo2mnU" dmcf-ptype="general">최근 상승세를 타고 있는 양 팀의 맞대결이다. 홈팀 전북은 공식전 4경기 무패(3승 1무)를 달리고 있다. 지난 8일 서울을 2-0으로 꺾고 극적으로 파이널 A에 합류한 뒤 대구와 라이언시티를 연달아 격파했고, 포항과도 1-1로 비기며 맞대결 3연패를 끊어냈다. </p>
<p dmcf-pid="6OpZEmdYnp" dmcf-ptype="general">이제 전북은 새로운 역사에 도전한다. 지난해 결승에서 서울을 누르고 FA컵 정상에 오르며 수원삼성과 함께 대회 최다 우승 타이틀(5회)을 보유 중이다. 4강 길목에서 만난 인천을 넘고 FA컵 2연패와 대회 최다 우승 기록을 갈아치우려는 전북이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="PD1WNkQSn0" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 전북현대 제공." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101072620249ujgb.jpg" data-org-width="650" dmcf-mid="BrR4ZFI9i9" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101072620249ujgb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 전북현대 제공.
           </figcaption>
</figure>
<p dmcf-pid="QJhwQezcd3" dmcf-ptype="general">전북은 올 시즌에도 FA컵 무대에서 승승장구하고 있다. 16강에선 구스타보의 포트트릭을 앞세워 K3 파주시민축구단을 5-2로 격파했고, 8강에서도 광주를 만나 4-0 대승을 거두며 돌풍을 잠재웠다. 전북은 이 기세를 몰아 인천까지 잡아내고 결승행 티켓을 거머쥐겠다는 각오다.</p>
<p dmcf-pid="xLvsRibDdF" dmcf-ptype="general">한 가지 고민거리는 역시 체력 문제다. 전북은 FA컵뿐만 아니라 리그와 아시아 챔피언스리그(ACL)까지 병행하며 바쁜 나날을 보내고 있다.</p>
<p dmcf-pid="yE5yacPlRt" dmcf-ptype="general">이번에도 포항 전 이후 단 3일밖에 쉬지 못했다. 하지만 단 페트레스쿠 감독이 그동안 적절히 로테이션을 가동한 데다가 아시안게임 멤버 5명과 주장 홍정호까지 돌아온 만큼, 명단 구성에 큰 어려움은 없을 전망이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="WbgeUqWQJ1" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 한국프로축구연맹 제공." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101072621529wczf.jpg" data-org-width="650" dmcf-mid="boEgKf1inK" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101072621529wczf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 한국프로축구연맹 제공.
           </figcaption>
</figure>
<p dmcf-pid="Y2jizKHRe5" dmcf-ptype="general">인천 역시 분위기가 좋다. 시즌 초반 흔들리던 인천은 후반기 들어 반등에 성공하며 2년 연속 파이널 A에 합류했다.</p>
<p dmcf-pid="GaWCJo2mRZ" dmcf-ptype="general">여기에 창단 후 처음으로 나선 ACL 무대에서도 요코하마 마리노스(일본)와 카야 FC(필리핀)를 잡아내며 경쟁력을 입증했다. 최근 홈에서 산둥 타이산(중국)에게 덜미를 잡히긴 했지만, 여전히 조 1위 싸움을 펼치고 있다.</p>
<p dmcf-pid="HD1WNkQSiX" dmcf-ptype="general">체력 안배도 마쳤다. 조성환 감독은 지난 28일 광주 원정에서 파격적인 선발 명단을 꾸렸다. 22세 이하(U-22) 자원만 7명을 내보내며 주축 선수들을 아꼈다. 주중 있을 FA컵 경기에 모든 초점을 맞추는 전략이었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="XROk8xUNRH" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 한국프로축구연맹 제공." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101072621749vhkw.jpg" data-org-width="650" dmcf-mid="K3Q2G5mBib" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101072621749vhkw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 한국프로축구연맹 제공.
           </figcaption>
</figure>
<p dmcf-pid="ZVAnq9XenG" dmcf-ptype="general">심지어 결과까지 챙겼다. 인천은 최우진의 데뷔골과 김민석의 추가골에 힘입어 광주를 2-0으로 제압했다. 선두 울산까지 잡아내며 3연승을 달리던 광주를 상대로 거둔 승리이기에 더욱 뜻깊었다.</p>
<p dmcf-pid="5Z8byHD7RY" dmcf-ptype="general">이제 인천은 구단 역사상 첫 FA컵 트로피 획득을 꿈꾼다. 인천의 FA컵 최고 성적은 지난 2015년 준우승이다. 만약 이번에 전북에 이어 제주·포항 중 승자까지 꺾고 FA컵 정상에 오른다면 최초 우승은 물론이고 다음 시즌 ACL 출전권까지 두 마리 토끼를 잡을 수 있다.</p>
<p dmcf-pid="1nSmMJBEdW" dmcf-ptype="general">/finekosh@osen.co.kr</p>
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