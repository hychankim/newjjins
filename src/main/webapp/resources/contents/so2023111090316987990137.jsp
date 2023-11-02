
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
    <h3>남편 먼저 보내고 4남매 대학공부 시키신 ‘철인 어머니’[그립습니다]</h3><h6> 2023. 11. 1. 09:03</h6>
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
<section dmcf-sid="HYXTlyA0Wz">
<figure class="figure_frm origin_fig" dmcf-pid="XZtGyHD7h7" dmcf-ptype="figure">
<p class="link_figure"><img alt="지난 2005년 전쟁기념관에서 열린 ‘광복 60주년 기념전- 아! 어머니’에서 어머니(왼쪽)와 내가 함께 기념사진을 찍었다. 배경은 이 전시에 응모해 선정된 우리 가족 사진이다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090315105suup.jpg" data-org-width="650" dmcf-mid="Y5CwkreWvB" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090315105suup.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            지난 2005년 전쟁기념관에서 열린 ‘광복 60주년 기념전- 아! 어머니’에서 어머니(왼쪽)와 내가 함께 기념사진을 찍었다. 배경은 이 전시에 응모해 선정된 우리 가족 사진이다.
           </figcaption>
</figure>
<p dmcf-pid="Z5FHWXwzCu" dmcf-ptype="general">어머니가 돌아가신 지 3년, 아내가 만들어 준 금반지에 ‘극락왕생’ 기리는 문구를 넣어 끼고 육신처럼 함께 다닌다. 어머니는 숙명처럼 가난한 집안의 6남매 중에 장녀셨다. 외할아버지는 그 당시 드물게 교토 농업전문학교를 마치고 제주도 성산농업중 영어교사로 부임하셨다가 일본인 교장과 싸워 그만두고 칩거하셨다고 하신다. 1953년 11월, 아직도 4·3은 끝나지 않았다. 어머니는 열아홉 살에 제주도 김녕리 외곽성을 지키는 민보단 당번 중 한 명이었는데, 무장대에 의해 모두가 납치·억류되었다. </p>
<p dmcf-pid="5eix6MujyU" dmcf-ptype="general">그 굴레에서 벗어나 국제시장에서 장사를 하셨다. 그러던 당신의 스무 살 때인 1954년 해병 이등병조(하사)로 고향으로 휴가 나온 아버지께서 잠시 부산에서 온 어머니가 김녕리 ‘곱은개’라는 갯물에서 빨래하는 모습을 보고 청혼하셨다고 한다.</p>
<p dmcf-pid="1dnMPR7AWp" dmcf-ptype="general">1950년대 후반, 아버지는 부산에 가셔서 ‘해운공사’ 선원 모집에 합격이 돼 그 힘든 1960년대 고개를 넘을 수 있었다. 어머니는 할머니 삼년상을 혼자 치르고 1965년 5월, 식솔을 거느리고 도라지 호로 밤새워 부산항에 당도했다. 멀미할 때마다 제주해협이 흔들거렸다고 한다. 그렇게 섬사람은 부산에 붙은 섬, 영도에 다시 둥지를 틀었다.</p>
<p dmcf-pid="tJLRQezcy0" dmcf-ptype="general">어머니는 제주도를 왕래하는 한편, 마늘 농사와 장사를 하시면서 박봉의 아버지를 뒷바라지하셨다. 그 덕분에 1970년대는 살림이 나아졌지만 대학생이 두 명에다가 중·고교생 자식을 둔 아버지는 교육비 감당을 위해 남양해운이라는 외국계 해운회사로 옮기셨다. 1976년 국제 정세로 인해 아버지께서 승선하신 선박은 무려 11개월간을 카라치 항구에 나포되었다. 11개월 만에야 대문 앞에서 만났을 때, 아버지와 어머니의 미소가 저녁노을에 번져 갔던 것이 떠오른다. 휴가는 딱 1주일, 아버지께서는 출항 직전 어머니에게 전화로 “나, 잘 다녀올게”라고 했는데, 어머니는 못내 불안하셨다. 그로부터 일주일 후, 아버지께서 ‘대만 가오슝 항구에서 폭풍우에 선박 위 갑판의 강판이 빠지는 바람에 하복부를 다쳐 입원했다가 순직하셨다’는 전갈을 받았다. 혼절한 어머니는 그때부터 3남 1녀를 어떻게 모두 교육시킬까를 걱정하며 ‘어떵 허쿠’만 되뇌셨다. </p>
<p dmcf-pid="FLaJRibDh3" dmcf-ptype="general">1977년부터 이 돈 빌려다가 저 돈 갚고 저 돈 빌려다가 이 돈 갚으며 자식들을 키우셨다. 아버지와 약속한 대로 막내를 의대에 보낸 것을 비롯하여 4남매를 대학까지 진학시켰다. 교육비와 생활비가 5000만 원이 들었는데 이자만 3억 원이 나갔다고 말씀하시곤 했다. </p>
<p dmcf-pid="3oNienKwyF" dmcf-ptype="general">1990년대의 어머니에겐 자녀마다 1남 1녀를 낳은 게 큰 자랑이셨다. 이 시절 되뇌던 말씀은 ‘그만 허난(그만 하니까) 다 끝나는구나’셨다.</p>
<p dmcf-pid="0CSswOiHht" dmcf-ptype="general">부산의 동생 집과 부천의 우리 집을 오가시면서 손자녀들을 돌보시고 제주도 친정 외할머니에게도 가서 지내다 오시며 철인 같은 60대를 보내셨다.</p>
<p dmcf-pid="phvOrInXT1" dmcf-ptype="general">그러나 2000년대 어머니는 “어딜 가쿠”이셨다. 자손들이 채권자들에게 뒷말 안 들어야 한다며 살던 집과 제주도의 밭을 팔아 모든 빚을 갚으셨다. 그 후 어머니가 바라던 ‘방 하나 있는 집’을 항상 그리셨다. 어머니를 혼자 사시게 하는 것이 불효인 것 같아 동생과 내가 번갈아 모셨지만 항상 불편해하셨다. </p>
<p dmcf-pid="UlTImCLZW5" dmcf-ptype="general">2012년에야 ‘훈장 찾아주기’ 일환으로 아버지께서 6·25전쟁 중이던 1952년 12월 25일에 무전병으로 ‘충무 무공훈장’을 타신 것을 알았다. 1970년 당시에 요즘 같은 보훈 혜택이 있었다면 어머니는 그리 고생하지 않고 자녀들을 모두 무상으로 교육시켰을 것이다. </p>
<p dmcf-pid="u5FHWXwzWZ" dmcf-ptype="general">어머니의 ‘18번’은 보통학교 학예회 때와 결혼식 날 회식 때 불렀던 ‘울 밑에선 봉선화’, 또 하나는 ‘당신과 나 사이에 저 바다가 없었다면’이다. 마도로스 아버지가 부산항에 오는 날, 어머니가 마당에서 고등어를 씻고 일 년에 한 번 한 달을 머무르고 싶은 유리창 눈부시게 씻기고 있을 때, 영도 신선동 집 옥상에서 바라본 국제부두의 뱃고동 소리 어머니의 심장으로 울리던 그때, 아버지가 남겨 놓은 뒷설거지 ‘어떵 허쿠’를 등에 업고 살던 시절이 ‘그만 허난’으로 날로 푸르다. 언젠가 부모님께서 주고받은 150여 통의 편지를 묶은 책 ‘사랑은 긴급 항해 중’을 출간해 국립현충원에 계신 부모님 묘소에 갖다 드리리라. </p>
<p dmcf-pid="713XYZrqhX" dmcf-ptype="general">한경용 (시인, 한양대 현대문학 전공 박사과정)</p>
<p dmcf-pid="zt0ZG5mBCH" dmcf-ptype="general"><strong>‘그립습니다 · 자랑합니다 · 미안합니다’ 사연 이렇게 보내주세요</strong></p>
<figure class="figure_frm origin_fig" dmcf-pid="qDmcNkQSWG" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090316662yaeu.jpg" data-org-width="300" dmcf-mid="GTDNoj8CSq" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090316662yaeu.jpg" width="658"/></p>
</figure>
<p dmcf-pid="BwskjExvTY" dmcf-ptype="general">△ 이메일 : phs2000@munhwa.com　 </p>
<p dmcf-pid="brOEADMTlW" dmcf-ptype="general">△ 카카오톡 : 채팅창에서 ‘돋보기’ 클릭 후 ‘문화일보’를 검색. 이후 ‘채팅하기’를 눌러 사연 전송　 </p>
<p dmcf-pid="KCSswOiHhy" dmcf-ptype="general">△ QR코드 : 라이프면 QR코드를 찍으면 문화일보 카카오톡 창으로 자동 연결　</p>
<p dmcf-pid="9hvOrInXlT" dmcf-ptype="general">△ 전화 : 02-3701-5261</p>
<p dmcf-pid="2lTImCLZWv" dmcf-ptype="general">▨ 사연 채택 시 사은품 드립니다.</p>
<p dmcf-pid="VCSswOiHhS" dmcf-ptype="general">채택된 사연에 대해서는 소정(원고지 1장당 5000원 상당)의 사은품(스타벅스 기프티콘)을 휴대전화로 전송해 드립니다.</p>
</section>
</div></p></section></div><h6>[Source : 문화일보]</h6></div>
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