
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
    <h3>[롤드컵] 2번 꺾인 젠지, 이번엔 다르다</h3><h6>이솔 기자  2023. 10. 31. 11:30</h6>
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
<section dmcf-sid="XfpEnOiHty">
<figure class="figure_frm origin_fig" data-idxno="244421" data-type="photo" dmcf-pid="5uGn6j8C1v" dmcf-ptype="figure">
<p class="link_figure"><img alt="ⓒMHN스포츠 이솔 기자, 젠지 선수단" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/HockeyNewsKorea/20231031113009440qopb.jpg" data-org-width="720" dmcf-mid="zMk7Z9Xetb" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/HockeyNewsKorea/20231031113009440qopb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ⓒMHN스포츠 이솔 기자, 젠지 선수단
           </figcaption>
</figure>
<p dmcf-pid="tzXoQcPltl" dmcf-ptype="general">(MHN스포츠 이솔 기자) T1의 복수극은 끝났다. 이제는 그보다 더한 원한을 가진 젠지의 차례다.</p>
<p dmcf-pid="FsgUHbGM5h" dmcf-ptype="general">라이엇 게임즈는 10월 19일(목)부터 29일(일)까지 서울 강서구 가양동에 위치한 KBS 아레나에서 열린 2023 리그 오브 레전드 월드 챔피언십 스위스 스테이지에서 LCK  대표 4팀 중 3팀이 8강에 올랐다고 전했다.</p>
<p dmcf-pid="3OauXKHRXC" dmcf-ptype="general"><strong>- '젠지전능' 무패의 젠지</strong></p>
<p dmcf-pid="0IN7Z9XeZI" dmcf-ptype="general">가장 먼저 8강에 진출한 팀은 젠지다.</p>
<p dmcf-pid="pTD9063oZO" dmcf-ptype="general">LCK 1번 시드 자격으로 LoL 월드 챔피언십에 출전한 젠지는 첫날 베트남(VCS) 대표 GAM 이스포츠를 꺾었고 둘째 날 LCK 2번 시드인 T1을 잡아냈다. 21일(토) 열린 EMEA(LEC) 1번 시드 G2 이스포츠와의 대결에서도 세트 스코어 2대0으로 승리한 젠지는 8강에 올라간 팀들 가운데 유일하게 한 세트도 패하지 않았다.</p>
<p dmcf-pid="Uyw2pP0gXs" dmcf-ptype="general">젠지전능의 기세는 8강까지 이어질 전망이다. LPL중 비교적 약체로 꼽히는 비리비리 게이밍(BLG)와 격돌하게 됐다.</p>
<p dmcf-pid="uWrVUQpaXm" dmcf-ptype="general">BLG는 직전 T1전에서 세트스코어 0-2로 완패를 거뒀으며, G2와도 난타전 끝에 2-1로 승리하는 등 LPL 2시드 팀다운 경기력을 보여주고 있지는 못하다. 특히 지난 서머시즌 정규시즌 최정상에 선 이래 계속해서 하향세를 보여주고 있는 점은 긍정적이다.</p>
<p dmcf-pid="31epYqWQ1j" dmcf-ptype="general">젠지로써는 LCK 팀 뿐만 아니라 리닝 게이밍 이스포츠(LNG) 등 다소 까다로운 상대를 피하게 된 점이 긍정적이다. 특히 지난 MSI에서 T1에 이어 자신들을 꺾어내며 일찌감치 자신들을 탈락시킨, 징동 게이밍을 털 끝 하나 건드리지 못하게 한 BLG인 만큼, 젠지로써는 갈고 갈았던 칼날을 선보일 절호의 기회다.</p>
<figure class="figure_frm origin_fig" data-idxno="244432" data-type="photo" dmcf-pid="qifvwHD75D" dmcf-ptype="figure">
<p class="link_figure"><img alt="ⓒMHN스포츠 이솔 기자, T1 선수단(KBS아레나)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/HockeyNewsKorea/20231031113011368pxhj.jpg" data-org-width="720" dmcf-mid="PFCPBdqk11" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/HockeyNewsKorea/20231031113011368pxhj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ⓒMHN스포츠 이솔 기자, T1 선수단(KBS아레나)
           </figcaption>
</figure>
<p dmcf-pid="bgPYO1sb1k" dmcf-ptype="general"><strong>- 경기력 회복한 T1, 스카웃과 재회 앞둬</strong></p>
<p dmcf-pid="KaQGItOKYc" dmcf-ptype="general">LCK 2번 시드인 T1의 선전도 빛났다.</p>
<p dmcf-pid="9NxHCFI9tA" dmcf-ptype="general">1승 조에서 젠지를 만났다가 패배하면서 1승1패 조로 내려온 T1은 22일(일) 북미(LCS) 2번 시드인 클라우드나인을 상대로 1킬도 허용하지 않는 완벽한 경기력을 보여주면서 2승1패 조에 진출했다.</p>
<p dmcf-pid="2yw2pP0gXj" dmcf-ptype="general">지난 28일(토) 중국(LPL) 2번 시드인 BLG전도 완벽했다. </p>
<p dmcf-pid="VWrVUQpa5N" dmcf-ptype="general">T1은 1세트를 손쉽게 가져간 뒤 2세트 중반까지 킬 스코어가 뒤처지며 끌려갔지만, 완벽한 팀워크를 발휘하면서 역전승을 따냈다. 지난 5월 영국 런던에서 열린 미드 시즌 인비테이셔널에서 BLG에게 패했던 T1은 깔끔하게 복수하면서 부산행 티켓을 손에 넣었다. </p>
<p dmcf-pid="fYmfuxUN5a" dmcf-ptype="general">이번에 T1이 마주하는 상대는 LNG다.</p>
<p dmcf-pid="4tSM9nKwXg" dmcf-ptype="general">최강자로 꼽히는 징동 게이밍에게 한 세트를 따낼 정도로 쉽지 않은 상대이며, 특히 LPL 미드라이너 중 나이트보다도 위에 있다고 평가받는 스카웃을 상대해야 하는 점이 부담이다. 그와 함께하는 타잔 또한 순전히 개인 기량으로만 LNG를 월드챔피언십에 진출시킨 전적이 있는 만큼 강적이다. 풀세트 접전이 펼쳐질 가능성이 크다.</p>
<figure class="figure_frm origin_fig" data-idxno="244434" data-type="photo" dmcf-pid="63TeVo2mGL" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=라이엇게임즈 제공," class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/HockeyNewsKorea/20231031113013066umwg.jpg" data-org-width="720" dmcf-mid="HrKCcyA0YW" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/HockeyNewsKorea/20231031113013066umwg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=라이엇게임즈 제공,
           </figcaption>
</figure>
<p dmcf-pid="QlcBtf1iYi" dmcf-ptype="general"><strong>- '나홀로 MSC' KT롤스터, 3시드의 기적 쓸까?</strong></p>
<p dmcf-pid="xSkbF4tnXJ" dmcf-ptype="general">KT 롤스터는 4번 시드인 디플러스 기아와 연이어 경기를 치른 끝에 추격을 따돌리고 8강에 진출했다.</p>
<p dmcf-pid="yqZgxkQStd" dmcf-ptype="general">1패 조에서 디플러스 기아를 만나 승리한 KT 롤스터는 1승1패 조에서 LPL 4번 시드인 웨이보 게이밍을 제압하며 2승1패 조에서 경기를 치렀다.</p>
<p dmcf-pid="WB5aMExvYe" dmcf-ptype="general">27일(금) LPL 3번 시드인 리닝 게이밍과 치고받는 난타전을 벌였지만 아쉽게 패배한 KT 롤스터는 29일(일) 스위스 스테이지 마지막 경기에서 디플러스 기아를 또다시 만나 2-0으로 승리, 부산에서 경기할 기회를 잡았다. </p>
<p dmcf-pid="Yb1NRDMTYR" dmcf-ptype="general">마치 2020년의 MSC를 즐기는 듯, KT는 또 한번 동양권 팀(LCK-LPL) 중 하나인, 그리고 이번 대회 최강자인 징동 게이밍을 만나게 됐다.</p>
<p dmcf-pid="GYmfuxUNXM" dmcf-ptype="general">징동 게이밍은 젠지와 더불어 이번 대회 최강자로 꼽히는 팀. 특히 아시안게임을 우승하며 '골든 그랜드슬램'을 노리는 카나비-룰러의 슈퍼플레이로 연전연승을 거두고 있다.</p>
<p dmcf-pid="HGs47MujGx" dmcf-ptype="general">전력상 압도적인 열세인 상황이지만, 과거 EDG도, DRX도 그랬다. 전력상 열세인 상황을 극복하는 힘이야말로 월드챔피언십을 우승하는 팀들의 기본 소양이라고 할 수 있다. </p>
<p dmcf-pid="XHO8zR7AXQ" dmcf-ptype="general">2년 연속 '업셋'에 가까운 결과가 발생했던 만큼, KT라고 주인공이 되지 못할 이유는 없다. 좋은 활약을 펼쳤던 에이밍과 커즈의 분전이 그 어느때보다도 필요한 상황이다.</p>
<p dmcf-pid="ZXI6qezc5P" dmcf-ptype="general">한 경기라도 패하면 곧바로 탈락하는 녹아웃 스테이지의 8강과 4강은 부산 동래구에 위치한 사직실내체육관에서 진행된다.</p>
<p dmcf-pid="5ifvwHD7t6" dmcf-ptype="general">8강은 오는 11월 2일(목)부터 5일(일)까지이며, 4강은 11월 11일(토)과 12일(일) 이틀 동안 진행된다. 녹아웃 스테이지의 모든 경기는 오후 5시 시작하며 5전 3선승제로 펼쳐진다.</p>
</section>
</div></p></section></div><h6>[Source : MHN스포츠]</h6></div>
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