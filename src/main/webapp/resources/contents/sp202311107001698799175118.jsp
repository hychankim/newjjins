
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
    <h3>[여자농구개막] ① 박지수 돌아온 KB냐 디펜딩챔프 우리은행이냐…5일 점프볼</h3><h6>안홍석  2023. 11. 1. 07:00</h6>
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
<section dmcf-sid="qNODMInXuu">
<figure class="figure_frm origin_fig" dmcf-pid="BVdQpJBEFU" dmcf-ptype="figure">
<p class="link_figure"><img alt="KB스타 '별이 될게요' (서울=연합뉴스) 김주성 기자 = 30일 오후 서울 강남구 호텔리베라 청담에서 열린 우리WON 2023-2024 여자프로농구 개막 미디어데이 행사에서 KB스타즈 김완수 감독(가운데)과 박지수(오른쪽), 강이슬이 포즈를 취하고 있다. 2023.10.30 utzza@yna.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070021329uvmk.jpg" data-org-width="1200" dmcf-mid="0a1OivNFpK" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070021329uvmk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            KB스타 '별이 될게요' (서울=연합뉴스) 김주성 기자 = 30일 오후 서울 강남구 호텔리베라 청담에서 열린 우리WON 2023-2024 여자프로농구 개막 미디어데이 행사에서 KB스타즈 김완수 감독(가운데)과 박지수(오른쪽), 강이슬이 포즈를 취하고 있다. 2023.10.30 utzza@yna.co.kr
           </figcaption>
</figure>
<p dmcf-pid="bMNnKj8Cup" dmcf-ptype="general">[※ 편집자 주 = 2023-2024시즌 여자프로농구 정규리그가 오는 5일 개막해 5개월 동안 열전을 이어갑니다. 이에 연합뉴스는 새 시즌 판도와 주요 이적생, 전문가 전망 기사 3건을 송고합니다.]</p>
<p dmcf-pid="KRjL9A6hU0" dmcf-ptype="general">(서울=연합뉴스) 안홍석 기자 = 2023-2024시즌 여자프로농구가 내달 5일부터 5개월의 대장정에 들어간다.</p>
<p dmcf-pid="9iEN4DMT33" dmcf-ptype="general">우리은행이 새 시즌 타이틀 스폰서를 맡으면서 공식 대회명은 '우리은행 우리WON 2023-2024 여자프로농구'로 정해졌다.</p>
<p dmcf-pid="2nDj8wRy7F" dmcf-ptype="general">공식 개막전은 5일 오후 2시 충남 아산이순신체육관에서 지난 시즌 챔피언 아산 우리은행과 준우승팀 부산 BNK의 대결로 치러진다.</p>
<p dmcf-pid="VLwA6reWzt" dmcf-ptype="general">지난 시즌 정규리그에서도 1위를 해 통합 우승을 차지한 우리은행은 우승 전력을 거의 지켜내며 통산 11번째 정상 등극에 도전한다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="fryhoWcpu1" dmcf-ptype="figure">
<p class="link_figure"><img alt="몸으로 표현하는 우리은행의 출사표 (서울=연합뉴스) 김주성 기자 = 30일 오후 서울 강남구 호텔리베라 청담에서 열린 우리WON 2023-2024 여자프로농구 개막 미디어데이 행사에서 우리은행의 위성우 감독(가운데)과 김단비(오른쪽), 박지현이 포즈를 취하고 있다. 2023.10.30 utzza@yna.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070021480jtak.jpg" data-org-width="1200" dmcf-mid="UvrcPmdY3B" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070021480jtak.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            몸으로 표현하는 우리은행의 출사표 (서울=연합뉴스) 김주성 기자 = 30일 오후 서울 강남구 호텔리베라 청담에서 열린 우리WON 2023-2024 여자프로농구 개막 미디어데이 행사에서 우리은행의 위성우 감독(가운데)과 김단비(오른쪽), 박지현이 포즈를 취하고 있다. 2023.10.30 utzza@yna.co.kr
           </figcaption>
</figure>
<p dmcf-pid="4mWlgYkUF5" dmcf-ptype="general">리그 공헌도 1, 2위였던 김단비와 박지현, 베테랑 박혜진이 건재하고, 인천 신한은행에서 뛰던 가드 유승희도 영입했다. 유승희는 6개 구단 선수, 팬, 미디어 관계자를 대상으로 진행한 설문 조사에서 가장 기대되는 이적생(30.6%)으로 뽑혔다. </p>
<p dmcf-pid="8sYSaGEu3Z" dmcf-ptype="general">하지만 우승 후보 1순위로 꼽히는 건 우리은행이 아닌 '대들보' 박지수가 돌아온 청주 KB다. </p>
<p dmcf-pid="6ESOivNFuX" dmcf-ptype="general">박지수는 공황장애 치료를 받느라 지난 시즌 초중반 결장했다. 지난해 12월 복귀했으나 올해 2월 손가락 부상으로 '시즌 아웃' 됐고, KB는 결국 5위에 그쳤다.</p>
<p dmcf-pid="PDvInTj3UH" dmcf-ptype="general">KB는 모처럼 건강한 몸으로 시즌을 시작하는 박지수를 앞세워 2년 만의 왕좌 탈환에 도전한다.</p>
<p dmcf-pid="QwTCLyA00G" dmcf-ptype="general">미국여자프로농구(WNBA) 출신 키아나 스미스를 앞세운 용인 삼성생명과 이소희, 진안, 김한별 등 지난해 준우승 전력이 그대로인 BNK는 KB와 우리은행의 '양강 구도'에 균열을 내고자 한다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="xiEN4DMTuY" dmcf-ptype="figure">
<p class="link_figure"><img alt="'여자프로농구 기대하세요' (서울=연합뉴스) 김주성 기자 = 30일 오후 서울 강남구 호텔리베라 청담에서 열린 우리WON 2023-2024 여자프로농구 개막 미디어데이 행사에서 6개 구단 감독과 선수들이 우승트로피를 앞에 두고 포즈를 취하고 있다. 2023.10.30 utzza@yna.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070021861ejbb.jpg" data-org-width="1200" dmcf-mid="uLz0hqWQFq" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070021861ejbb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            '여자프로농구 기대하세요' (서울=연합뉴스) 김주성 기자 = 30일 오후 서울 강남구 호텔리베라 청담에서 열린 우리WON 2023-2024 여자프로농구 개막 미디어데이 행사에서 6개 구단 감독과 선수들이 우승트로피를 앞에 두고 포즈를 취하고 있다. 2023.10.30 utzza@yna.co.kr
           </figcaption>
</figure>
<p dmcf-pid="yZz0hqWQuW" dmcf-ptype="general">6개 구단 사령탑 면면은 변함이 없으나, 선수 중에서는 주전급의 이동이 적지 않았다. </p>
<p dmcf-pid="WtbuvKHR0y" dmcf-ptype="general">그중에서도 우리은행을 떠나 2017년까지 뛰었던 부천 하나원큐로 복귀한 김정은에게 눈길이 쏠린다.</p>
<p dmcf-pid="YFK7T9XeuT" dmcf-ptype="general">지난해 꼴찌를 한 하나원큐 팬들은 우리은행에서 3차례 우승을 경험한 김정은이 친정팀 후배들에게 '위닝 멘털리티'를 전수해주기를 기대할 터다.</p>
<p dmcf-pid="G39zy2Zd3v" dmcf-ptype="general">우리은행에 새 둥지를 튼 유승희는 2012-2013시즌 프로 입문 뒤 잇단 무릎 부상 등으로 고전하다가 최근 두 시즌 평균 12점, 9점을 올리며 뒤늦게 부활한 선수다.</p>
<p dmcf-pid="HklsJSatFS" dmcf-ptype="general">활동량, 스피드에 득점력까지 갖춘 그가 우리은행이라는 강팀에서 얼마나 높이 날아오를지 주목된다. </p>
<p dmcf-pid="XESOivNFul" dmcf-ptype="general">8시즌을 뛴 하나원큐를 떠나 신한은행 유니폼을 입은 가드 김지영, 삼성생명에서 우리은행으로 이적한 포워드 이명관의 활약도 기대된다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="ZDvInTj3uh" dmcf-ptype="figure">
<p class="link_figure"><img alt="하나원큐로 돌아온 김정은 [WKBL 제공. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070022683rqhb.jpg" data-org-width="1200" dmcf-mid="7wwA6reW3z" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070022683rqhb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            하나원큐로 돌아온 김정은 [WKBL 제공. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="5IHTjXwz7C" dmcf-ptype="general">올 시즌 정규리그는 내년 3월 1일까지 진행된다. 6개 팀이 팀당 30경기씩, 6라운드를 치른다. </p>
<p dmcf-pid="1CXyAZrq3I" dmcf-ptype="general">지난 시즌까지 3전 2승제였던 4강 플레이오프는 챔피언결정전과 같이 5전 3승제로 바뀌었다. </p>
<p dmcf-pid="thZWc5mB3O" dmcf-ptype="general">부산 농구 팬들은 부산 사직체육관에서 11월 25일과 12월 17일, 두 차례에 걸쳐 남녀 프로농구 '더블 헤더'를 즐길 수 있다.</p>
<p dmcf-pid="FPodqgVsUs" dmcf-ptype="general">BNK가 2021-2022시즌부터 사직체육관을 홈구장으로 사용해온 가운데, 남자 프로농구 KCC가 전주에서 부산으로 연고지를 옮기면서 두 구단이 한 지붕 아래 있게 됐다.</p>
<p dmcf-pid="3QgJBafOUm" dmcf-ptype="general">ahs@yna.co.kr</p>
<p dmcf-pid="peAo2cPlFw" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
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