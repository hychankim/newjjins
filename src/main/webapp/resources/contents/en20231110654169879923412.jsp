
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
    <h3>'성지순례' 김제동, 3년만의 복귀..풍자 아니었으면 어쩔뻔 했나 [어저께TV]</h3><h6>하수정  2023. 11. 1. 06:54</h6>
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
<section dmcf-sid="W8GX4DMTnF">
<figure class="figure_frm origin_fig" dmcf-pid="Y1cE5Qpait" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101065426321ufpe.jpg" data-org-width="557" dmcf-mid="QO6xmplfLp" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101065426321ufpe.jpg" width="658"/></p>
</figure>
<p dmcf-pid="G3DrFR7An1" dmcf-ptype="general">[OSEN=하수정 기자] '성지순례' 김제동이 풍자에게 의지해 첫 방송을 성공적으로 마무리했다.</p>
<p dmcf-pid="Hk2fc5mBn5" dmcf-ptype="general">31일 오후 첫 방송된 MBC every1 새 예능 '성지순례'에서는 MZ 성직자 3인(정재규 신부, 이예준 목사, 자운 스님)이 '남녀의 성지'를 주제로 청춘들의 만남이 이뤄지는 한강 공원, 헌팅 포차, 타로 카페 등을 찾았다.</p>
<p dmcf-pid="XsPxmplfeZ" dmcf-ptype="general">'성지순례'는 범인(凡人)들의 욕망 가득한 성지를 찾아 나선 개신교, 불교, 천주교 성직자들의 홀리한 속세 체험기를 담은 버라이어티 프로그램이다. 김제동, 김이나, 풍자, 송해나 등이 MC를 맡았다.</p>
<p dmcf-pid="ZfWGVkQSdX" dmcf-ptype="general">모든 출연자 중에서 가장 주목을 받은 사람은 단연 김제동이다. 그 이유는 무려 3년 만에 예능에 복귀했기 때문.</p>
<p dmcf-pid="56HZ8wRynH" dmcf-ptype="general">앞서 김제동은 2019년 고액 강연료 논란에 휩싸였고, 2020년 7월 종영된 MBC '편애중계' 이후 국내 TV나 유튜브 등에서 거의 찾아볼 수 없었다. </p>
<p dmcf-pid="1k2fc5mBeG" dmcf-ptype="general">김제동은 성직자 3인을 향해 "인사를 어떻게 드려야 될지 모르겠다"며 첫 인사를 건넸고, 김이나는 "일상 속에서 뵈면 그저 목례를 드려도 실례는 아닌 거죠?"라고 물었다. 풍자는 "그럼 인사 올리겠습니다"라며 어색한 분위기를 깨기 위해 벌떡 일어나 90도 인사를 건넸고, 갑자기 양측이 모두 일어나 맞절을 하는 상황이 벌어져 웃음을 안겼다.</p>
<p dmcf-pid="tOQMsUS4dY" dmcf-ptype="general">제작진을 향해 김제동은 "난 왜 성직자 자리에 앉아 있는 거냐? 혼자 사니까 이쪽에 앉힌 거냐?"고 질문했다. 이에 김이나는 "파계승 느낌이 난다"고 했고, 풍자는 "약간 옷색도 그렇다"며 웃었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="FnU7ivNFLW" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101065427553vpsb.jpg" data-org-width="530" dmcf-mid="xhCSqgVsd0" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101065427553vpsb.jpg" width="658"/></p>
</figure>
<p dmcf-pid="3PX56reWdy" dmcf-ptype="general">풍자를 비롯해 MC들은 '남녀의 성지'에 대해 추측해 봤고, 풍자는 "사진 맛집은 어떠냐?"고 했다. 김제동은 "사진이 맛있...맛집이라니"라며 생소한 표정을 지었고, 풍자는 "사진을 먹어서 맛있다는 게 아니라 '사진이 잘 찍힌다=사진 맛집'이라는 뜻이다. 으르신"이라고 말했다. </p>
<p dmcf-pid="03DrFR7AnT" dmcf-ptype="general">김이나는 "예를 들면 예전에 '명언 맛집'이라고 하는 것과 같다"고 했고, 김제동은 "명언 하지마라. 나 지금 그거보면 미치겠다"며 어쩔 줄 몰라했다.</p>
<p dmcf-pid="pNBKaGEuMv" dmcf-ptype="general">김제동은 방송 중간 "내가 들은 말 중에 '예수님께서 2000년, 부처님께서 2600년 동안 인기 있는 이유는 수천년 동안 한마디도 안 하셔서 그렇다고 오로지 듣기만 하셔서'라고 했다"며 명언을 투척했다. </p>
<p dmcf-pid="UTiLvKHRMS" dmcf-ptype="general">김이나는 "이거 혹시 명언이냐? 1명언이냐? 명언이 시작됐다"고 알렸고, 김제동은 "명언하지마라"며 몸서리를 쳤다. 김이나는 "왜 과거를 세척하려고 하냐?"고 물었고, 김제동 "나도 들은 얘기다. 딴 건 다 해도 되는데 명언은 안 된다"고 거부했다.</p>
<p dmcf-pid="uhEwtMujMl" dmcf-ptype="general">김이나와 송해나는 "1명언 적립됐다", "멋있었다"고 말했고, 김제동은 "가만히 보면 너희들 참 나쁘다"고 덧붙여 웃음을 선사했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="7OAkZP0gnh" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101065427987ispn.jpg" data-org-width="530" dmcf-mid="yyajG4tnJ3" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101065427987ispn.jpg" width="658"/></p>
</figure>
<p dmcf-pid="z1TW9A6hnC" dmcf-ptype="general">이날 김제동은 데이트 통장의 줄임말 '데통', '플러팅' 'MBTI' 등을 낯설어했고, 풍자는 자세히 설명해줬다.</p>
<p dmcf-pid="qSwm3ezceI" dmcf-ptype="general">김제동은 "MBTI가 혈액형 다음 거 아니냐?"고 했고, 풍자는 "별자리 다음 거다. 어르신"이라고 얘기해줬다. 이에 김제동은 "난 풍자 씨 없었으면 어쩔 뻔 했냐?"며 예능에 조금씩 적응해나갔다.</p>
<p dmcf-pid="BpHZ8wRyLO" dmcf-ptype="general">첫 녹화를 마친 풍자는 "성직자분들이 굉장히 어렵고 딱딱하시고 내가 알 수 없는 어려운 말만 하시면 어떡하지? 걱정했는데 오히려 제동 오빠가 성직자 같았다"며 소감을 밝혔다.</p>
<p dmcf-pid="bhEwtMujds" dmcf-ptype="general">김제동은 "난 그냥 너희들하고 있는 게 너무 좋다. 집에 있다가 여러분들하고 있는 게 좋고, 바깥 세상에 나온 느낌이었다. 너무 재밌었다"고 만족했다.</p>
<p dmcf-pid="Kz1FxOiHim" dmcf-ptype="general">/ hsjssu@osen.co.kr</p>
<p dmcf-pid="9ZSTbN4IMr" dmcf-ptype="general">[사진] '성지순례' 방송화면 캡처</p>
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