
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
    <h3>만리장성 넘어야 ‘최초’ 올림픽 보인다…아픔 안긴 중국과 운명의 최종전</h3><h6>김희웅  2023. 11. 1. 07:02</h6>
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
<section dmcf-sid="pwVezo2maJ">
<figure class="figure_frm origin_fig" dmcf-pid="UFcCLyA0gd" dmcf-ptype="figure">
<p class="link_figure"><img alt='&lt;yonhap photo-4122=""&gt; 물 마시는 선수들에게 작전 지시 (원저우=연합뉴스) 류영석 기자 = 30일 중국 원저우 스포츠센터 스타디움에서 열린 2022 항저우 아시안게임 여자축구 8강전 한국과 북한의 경기. 후반 대한민국 콜린 벨 감독이 벤치로 물을 마시러 온 선수들을 상대로 작전 지시를 하고 있다. 2023.9.30 ondol@yna.co.kr/2023-09-30 19:22:23/ &lt;저작권자 ⓒ 1980-2023 ㈜연합뉴스. 무단 전재 재배포 금지.&gt;&lt;/yonhap&gt;' class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101070206511bucu.jpg" data-org-width="600" dmcf-mid="t0dtOuv8jo" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101070206511bucu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            &lt;yonhap photo-4122=""&gt; 물 마시는 선수들에게 작전 지시 (원저우=연합뉴스) 류영석 기자 = 30일 중국 원저우 스포츠센터 스타디움에서 열린 2022 항저우 아시안게임 여자축구 8강전 한국과 북한의 경기. 후반 대한민국 콜린 벨 감독이 벤치로 물을 마시러 온 선수들을 상대로 작전 지시를 하고 있다. 2023.9.30 ondol@yna.co.kr/2023-09-30 19:22:23/ &lt;저작권자 ⓒ 1980-2023 ㈜연합뉴스. 무단 전재 재배포 금지.&gt;&lt;/yonhap&gt;
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="uTdA6reWAe" dmcf-ptype="figure">
<p class="link_figure"><img alt="&lt;yonhap photo-2363=&quot;&quot;&gt; 콜린 벨 감독, '소연 달려!'(파주=연합뉴스) 류영석 기자 = 항저우 아시안게임 여자축구 대표팀 콜린 벨 감독이 5일 오전 경기도 파주 NFC에서 선수들과 훈련을 하던 중 지소연엑 장난을 치고 있다. 2023.9.5ondol@yna.co.kr/2023-09-05 11:19:03/&lt;저작권자 ⓒ 1980-2023 ㈜연합뉴스. 무단 전재 재배포 금지.&gt;&lt;/yonhap&gt;" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101070207956iekc.jpg" data-org-width="600" dmcf-mid="FpZafExvoL" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101070207956iekc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            &lt;yonhap photo-2363=""&gt; 콜린 벨 감독, '소연 달려!'(파주=연합뉴스) 류영석 기자 = 항저우 아시안게임 여자축구 대표팀 콜린 벨 감독이 5일 오전 경기도 파주 NFC에서 선수들과 훈련을 하던 중 지소연엑 장난을 치고 있다. 2023.9.5ondol@yna.co.kr/2023-09-05 11:19:03/&lt;저작권자 ⓒ 1980-2023 ㈜연합뉴스. 무단 전재 재배포 금지.&gt;&lt;/yonhap&gt;
           </figcaption>
</figure>
<div dmcf-pid="73khoWcpoR" dmcf-ptype="general">
<br/>승리만이 답이다. 한국 여자축구가 2024 파리 올림픽 본선 진출을 위해서는 만리장성을 넘어야 한다. 
           <br/>
<br/>콜린 벨 감독이 이끄는 한국 여자축구 대표팀은 1일 오후 8시 30분 중국 샤먼 이그렛 스타디움에서 홈팀 중국과 2024 파리 올림픽 아시아 2차 예선 B조 3차전을 치른다. 
           <br/>
<br/>한국은 앞서 태국을 10-1로 크게 이기고, 지금껏 딱 한 차례 이긴 북한을 상대로 비겼다. 한국은 ‘죽음의 조’로 불린 B조에서 1경기를 남겨두고 선두를 지켰다. 
           <br/>
<br/>올림픽 본선 티켓이 4강 승자에게 주어지기에 중국을 꺾고 토너먼트에 진출하는 게 한국의 우선 과제다. 3개 조로 진행되는 이번 예선에서는 각 조 1위와 가장 성적이 좋은 2위 한 팀이 4강 토너먼트에 진출한다. 
           <br/>
<br/>한국(승점 4)은 북한에 골 득실에서 앞서 조 1위지만, 사실상 중국과 최종전에서 승리해야 다음 단계로 향할 수 있다. 태국과 3차전을 앞둔 북한이 이길 가능성이 매우 큰 탓이다. 북한이 최종전에서 승리하고 한국은 무승부 혹은 패배하면, 올림픽 진출 꿈은 물거품이 된다. 조 2위로 4강에 오르는 것도 쉽지 않다. A조의 필리핀과 C조의 우즈베키스탄(이상 승점 3)이 최종전에서 각각 약체인 이란과 인도를 만나기 때문이다. 두 팀은 승점 6을 기록할 공산이 크다.
           <br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="z5NsJSatjM" dmcf-ptype="figure">
<p class="link_figure"><img alt="2년 전 중국에 패해 올림픽 본선 진출이 좌절된 여자축구 대표팀. 사진=KFA" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101070209256trda.jpg" data-org-width="600" dmcf-mid="31v1sUS4an" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101070209256trda.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2년 전 중국에 패해 올림픽 본선 진출이 좌절된 여자축구 대표팀. 사진=KFA
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="qxXuvKHRax" dmcf-ptype="figure">
<p class="link_figure"><img alt="2년 전 중국에 쓴맛을 본 벨호는 중국을 넘어야 2024 파리 올림픽 본선행을 기대할 수 있다. 사진=KFA" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101070211143ysip.jpg" data-org-width="600" dmcf-mid="0jz8FR7Aai" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101070211143ysip.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2년 전 중국에 쓴맛을 본 벨호는 중국을 넘어야 2024 파리 올림픽 본선행을 기대할 수 있다. 사진=KFA
           </figcaption>
</figure>
<div dmcf-pid="fHINT9Xegb" dmcf-ptype="general">
<br/>반드시 이겨야 하는 중국은 ‘난적’이다. 국제축구연맹(FIFA) 랭킹 20위인 한국은 중국(15위)보다 다섯 계단 아래 있다. 한국은 중국과 41차례 맞대결에서 5승 7무 29패를 기록, 열세를 보인다. 중국을 상대로 이긴 것은 2015년 8월이 마지막이다. 이후 한국은 중국전 9경기 무승(3무 6패)을 기록했다. 물론 최근 들어 무기력하게 진 적은 없다는 게 기대 요소다. 
           <br/>
<br/>여자축구의 최초 올림픽 진출을 좌우할 중국은 지난 대회 때 한국에 아픔을 안겼다. 벨호는 2년 전 2020 도쿄 올림픽 최종예선 플레이오프에서 중국에 1·2차전 합계 3-4로 패해 올림픽 티켓을 놓쳤다.
           <br/>
<br/>중국전은 그간의 설움을 씻는 동시, 지난 두 대회에서의 실패를 만회할 기회다. 한국 여자축구는 지난 7월 열린 2023 FIFA 호주·뉴질랜드 월드컵에서 조별리그에서 탈락했다. 지난 9월 2022 항저우 아시안게임에서도 8강에서 짐을 싸며 체면을 구겼다. 
           <br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="4btSunKwkB" dmcf-ptype="figure">
<p class="link_figure"><img alt='&lt;yonhap photo-5035=""&gt; 전은하와 하이파이브하는 콜린 벨 감독 (원저우[중국]=연합뉴스) 신현우 기자 = 22일 오후 중국 저장성 원저우 스포츠센터 스타디움에서 열린 항저우 아시안게임 여자 축구 조별리그 E조 1차전 한국과 미얀마의 경기에서 한국이 3-0으로 승리한 뒤 콜린 벨 감독이 전은하와 하이파이브하고 있다. 2023.9.22 nowwego@yna.co.kr/2023-09-22 22:36:43/ &lt;저작권자 ⓒ 1980-2023 ㈜연합뉴스. 무단 전재 재배포 금지.&gt;&lt;/yonhap&gt;' class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101071010783ceif.jpg" data-org-width="600" dmcf-mid="VtaQEtOKcK" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101071010783ceif.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            &lt;yonhap photo-5035=""&gt; 전은하와 하이파이브하는 콜린 벨 감독 (원저우[중국]=연합뉴스) 신현우 기자 = 22일 오후 중국 저장성 원저우 스포츠센터 스타디움에서 열린 항저우 아시안게임 여자 축구 조별리그 E조 1차전 한국과 미얀마의 경기에서 한국이 3-0으로 승리한 뒤 콜린 벨 감독이 전은하와 하이파이브하고 있다. 2023.9.22 nowwego@yna.co.kr/2023-09-22 22:36:43/ &lt;저작권자 ⓒ 1980-2023 ㈜연합뉴스. 무단 전재 재배포 금지.&gt;&lt;/yonhap&gt;
           </figcaption>
</figure>
<div dmcf-pid="8YsgSbGMoq" dmcf-ptype="general">
<br/>김희웅 기자
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