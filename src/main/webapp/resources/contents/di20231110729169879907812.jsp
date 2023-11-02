
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
    <h3>세계 시장 노리는 K-게임…'닌텐도 스위치'에 주목하는 이유</h3><h6>김주환  2023. 11. 1. 07:29</h6>
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
<section dmcf-sid="HQIIxdqkpW">
<figure class="figure_frm origin_fig" dmcf-pid="XxCCMJBEuy" dmcf-ptype="figure">
<p class="link_figure"><img alt="'닌텐도 e숍'에서 판매량 3위를 기록한 넥슨의 '데이브 더 다이버' [닌텐도 e숍 캡처. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101072906121zqjp.jpg" data-org-width="500" dmcf-mid="YOCCMJBE0G" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101072906121zqjp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            '닌텐도 e숍'에서 판매량 3위를 기록한 넥슨의 '데이브 더 다이버' [닌텐도 e숍 캡처. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="Z4rr8xUN0T" dmcf-ptype="general">(서울=연합뉴스) 김주환 기자 = 세계 시장 진출을 노리는 국내 게임 업계에 콘솔 게임기 '닌텐도 스위치'가 새로운 주류 플랫폼으로 떠오르고 있다.</p>
<p dmcf-pid="58mm6Mujzv" dmcf-ptype="general">1일 게임 업계에 따르면 넥슨이 지난달 26일 출시한 해양 어드벤처 게임 '데이브 더 다이버'는 출시 후 일본 '닌텐도 e숍'에서 판매 순위 3위에 올랐다.</p>
<p dmcf-pid="16ssPR7AUS" dmcf-ptype="general">이는 인터넷 방송을 통해 '역주행' 인기를 끈 '수박 게임', 닌텐도의 메가 IP(지식재산) '슈퍼마리오' 시리즈의 최신 작품 '슈퍼 마리오브라더스 원더'의 뒤를 잇는 순위로, 한국산 닌텐도 스위치 게임 중 가장 높은 성과다.</p>
<p dmcf-pid="tuoo7bGMzl" dmcf-ptype="general">'데이브'는 지난해 10월 얼리 액세스(사전 출시) 이래 올해 6월 정식 출시를 거쳐 지난달까지 PC 플랫폼에서만 전 세계에서 200만 장이 넘게 팔리며 흥행에 성공했다.</p>
<p dmcf-pid="F7ggzKHRFh" dmcf-ptype="general">넥슨은 작년 게임 전시회 지스타(G-STAR)에서부터 '데이브' 닌텐도 스위치 버전을 시연하는 등, PC판 정식 출시 이전부터 스위치 버전 출시를 염두에 두고 마케팅을 벌여온 바 있다.</p>
<p dmcf-pid="3zaaq9XeUC" dmcf-ptype="general">인디게임 생태계 육성에 열심인 네오위즈도 일찍부터 닌텐도 스위치 플랫폼에 관심을 보여왔다. </p>
<p dmcf-pid="0bAAKf1iuI" dmcf-ptype="general">네오위즈는 2021년 국산 인디 게임 '스컬: 더 히어로 슬레이어'를 닌텐도 스위치 플랫폼으로 출시한 데 이어 이달 출시를 앞둔 '산나비'도 스위치 버전을 선보일 예정이다.</p>
<p dmcf-pid="pKcc94tnFO" dmcf-ptype="general">엔씨소프트 역시 내년 출시 예정인 신작 대전 액션 게임 '배틀크러쉬'를 기존의 주력 플랫폼인 PC·모바일에 더해 닌텐도 스위치 플랫폼으로 서비스한다.</p>
<p dmcf-pid="UhbblyA03s" dmcf-ptype="general">그라비티는 지난달 신작 '웨토리(Wetory)'를 닌텐도 스위치 플랫폼에 출시했고, 라인게임즈 역시 신작 '창세기전: 회색의 잔영'을 같은 플랫폼으로 개발하고 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="ulKKSWcpFm" dmcf-ptype="figure">
<p class="link_figure"><img alt="개장 앞둔 닌텐도 팝업스토어 (서울=연합뉴스) 류효림 기자 = 19일 서울 용산구 아이파크몰에 개장을 하루 앞둔 닌텐도 팝업스토어(Nintendo POP-UP STORE in SEOUL)에서 사전공개 행사 참석자들이 매장을 둘러보고 있다. 2023.10.19 ryousanta@yna.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101072906350kagk.jpg" data-org-width="1200" dmcf-mid="GXUUmCLZ0Y" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101072906350kagk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            개장 앞둔 닌텐도 팝업스토어 (서울=연합뉴스) 류효림 기자 = 19일 서울 용산구 아이파크몰에 개장을 하루 앞둔 닌텐도 팝업스토어(Nintendo POP-UP STORE in SEOUL)에서 사전공개 행사 참석자들이 매장을 둘러보고 있다. 2023.10.19 ryousanta@yna.co.kr
           </figcaption>
</figure>
<p dmcf-pid="7S99vYkU7r" dmcf-ptype="general">닌텐도 스위치는 닌텐도가 2017년 처음 출시한 콘솔 기기다. 기본적으로는 휴대용 게임기지만, TV와 연결된 충전용 독에 꽂으면 고해상도 환경에서 게임을 즐길 수 있는 것이 특징이다.</p>
<p dmcf-pid="zG66H1sb3w" dmcf-ptype="general">닌텐도 스위치의 강점은 넓은 국내 저변이다.</p>
<p dmcf-pid="qHPPXtOKUD" dmcf-ptype="general">닌텐도 스위치는 상대적으로 저렴한 가격과 휴대성, 저연령층도 부담 없이 즐길 수 있는 주력 타이틀의 게임성에 힘입어 국내 보급률이 가장 높다.</p>
<p dmcf-pid="BXQQZFI9zE" dmcf-ptype="general">한국콘텐츠진흥원이 지난달 발간한 '2023 게임이용자 실태조사'에 따르면 콘솔 게이머 64.1%(중복 응답 가능)가 주로 이용하는 콘솔 기기 시리즈로 '닌텐도'를 꼽았다. 이어 플레이스테이션 52.3%, 엑스박스 17.8% 등으로 나타났다.</p>
<p dmcf-pid="bLYYoj8CFk" dmcf-ptype="general">'트리플A'급 블록버스터 게임이 주류인 플레이스테이션·엑스박스와 달리, 닌텐도 스위치 플랫폼에서는 중소 규모 게임사의 인디 게임이 강세를 보이는 것이 특징이다.</p>
<p dmcf-pid="KoGGgA6hzc" dmcf-ptype="general">성능은 같은 세대 콘솔 기기에 비해 떨어지지만, 휴대할 수 있어 언제 어디서든 즐길 수 있기 때문이다.</p>
<p dmcf-pid="9gHHacPl3A" dmcf-ptype="general">한 국내 게임사 개발자는 "최근 닌텐도 스위치 소프트웨어 개발 환경이 좋아져 기존 게임을 이식하기 쉬워진 것도 한몫한다"며 "전 세계적으로 점유율이 높은 기기인 만큼, 앞으로도 게임사들에 매력적인 선택지가 될 것 같다"고 전했다.</p>
<p dmcf-pid="2j55ADMT3j" dmcf-ptype="general">jujuk@yna.co.kr</p>
<p dmcf-pid="fcttkreWFa" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
</section>
</div></p></section></div><h6>[Source : 연합뉴스]</h6></div>
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