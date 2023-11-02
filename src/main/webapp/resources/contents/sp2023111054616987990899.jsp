
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
    <h3>FA컵 우승 확정해도 ACLE 직행 여부는 모른다…출전권 배분 미정</h3><h6>이성필 기자  2023. 11. 1. 05:46</h6>
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
<section dmcf-sid="uB8OaGEuSv">
<figure class="figure_frm origin_fig" dmcf-pid="7Xpo6reWSS" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ FA컵 4강에 오른 전북 현대-인천 유나이티드, 포항 스틸러스-제주 유나이티드. ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054607075bcuo.jpg" data-org-width="900" dmcf-mid="16gaQsJGyX" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054607075bcuo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ FA컵 4강에 오른 전북 현대-인천 유나이티드, 포항 스틸러스-제주 유나이티드. ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="zZUgPmdYyl" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054608300djky.jpg" data-org-width="900" dmcf-mid="tMVfpJBEyH" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054608300djky.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="qfRvEtOKWh" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054609568cwqh.jpg" data-org-width="900" dmcf-mid="Fu2V0dqkvG" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054609568cwqh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="B4eTDFI9SC" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054610820huuc.jpg" data-org-width="900" dmcf-mid="0EnGsUS4SW" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054610820huuc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="b8dyw3C2TI" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054612059oseb.jpg" data-org-width="900" dmcf-mid="pLHxBafOTy" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054612059oseb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="KKPCjXwzvO" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054613250civj.jpg" data-org-width="900" dmcf-mid="UMmzX63oCT" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101054613250civj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ FA컵 우승을 해도 ACLE 직행 여부는 아직 모른다. ⓒ대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="99QhAZrqls" dmcf-ptype="general">[스포티비뉴스=이성필 기자] 프로와 아마추어 최강을 가리는 FA컵 우승을 해도 아시아 축구연맹 챔피언스리그 엘리트(ACLE) 출전권 획득 여부는 미지수다. </p>
<p dmcf-pid="22xlc5mBlm" dmcf-ptype="general">한국프로축구연맹은 31일 서울 신문로 축구회관에서 주간 브리핑을 열었다. 현대 K리그1 순위 구도에 따른 ACL 출전권이나 잔류, 강등 싸움, 영플레이어상 수상 후보자 등 다양한 현안에 대해 밝혔다. </p>
<p dmcf-pid="VdN1lBYxlr" dmcf-ptype="general">눈에 띄는 부분 중 하나는 2024-25 ACLE 출전권 획득 여부다. 아시아 축구연맹(AFC)은 2023-24 시즌부터 추춘제로 대회 운영을 바꿨다. 이어 2024-25 시즌부터는 현행 ACL을 ACLE로 확대 개편한다고 지난 8월 집행위원회에서 정리했다. 외국인 선수 출전 제한도 없앴다. </p>
<p dmcf-pid="fJjtSbGMhw" dmcf-ptype="general">ACLE에는 동, 서아시아 각 12개 팀이 출전한다. 사우디아라비아, 일본이 각각 본선 직행 티켓 3장을 얻었고 한국과 카타르, 이란, 중국이 2+1(직행+플레이오프)장을 배분받았다. </p>
<p dmcf-pid="4iAFvKHRyD" dmcf-ptype="general">ACLE 아래에 ACL2를 신설했다. 현행 유럽축구연맹 챔피언스리그(UCL) 아래에 유로파리그(UEL)가 있는 개념이다. 기존 ACL처럼 4개 팀씩 8개 조로 나눠 조별리그를 진행한다. 기존 AFC컵은 AFC챌린지리그(ACGL)로 변경됐다. 주로 개도국 팀들이 나서며 유로파 컨퍼런스리그(UECL)로 보면 된다. </p>
<p dmcf-pid="8Dh9FR7ATE" dmcf-ptype="general">한국은 ACLE에 2+1, ACL2에 1장의 출전권을 확보받았다. ACLE에 두 팀이 직행하고 1팀은 플레이오프를 거친다. AFC는 각국에 개편된 대회에 따른 출전권 배분을 자율적으로 정하라고 전달한 것으로 확인 됐다. </p>
<p dmcf-pid="6wl23ezcyk" dmcf-ptype="general">프로연맹 관계자는 "일단 K리그1 우승팀은 ACLE 출전이 확정이다"라고 전했다. 3경기를 남기고 우승한 울산 현대는 ACLE 진출권을 얻었다. </p>
<p dmcf-pid="PrSV0dqkyc" dmcf-ptype="general">올 시즌 방식이라면 2위와 FA컵 우승팀까지 직행 티켓을 얻고 3위는 플레이오프를 통해 본선행 여부를 타진한다. 현재 조별리그를 치르는 중인 인천 유나이티드가 PO를 통해 본선에 오른 바 있다. </p>
<p dmcf-pid="Q8dyw3C2WA" dmcf-ptype="general">하지만, 개편된 상황에서는 출전권 배분에 대한 숙고가 필요하다. 프로연맹도 브리핑에서 'K리그1 2~3위 팀, FA컵 우승팀의 (ACLE, ACL2) 출전권 배분은 미정'이라고 전했다. 만약 K리그1 1~3위 중 FA컵 우승팀이 있으면 K리그1 4위까지도 ACL 출전권 확보가 가능하다. 다만, 현시점에서 4위가 ACL2로 갈 것인지는 미정이다. </p>
<p dmcf-pid="x6JWr0hVlj" dmcf-ptype="general">축구협회와 아직 배분을 놓고 논의가 되지 않았다는 것이 프로연맹의 설명이다. 기존처럼 FA컵 우승팀이 직행하는 것이 축구협회 주장이라는 것은 변함이 없는 것으로 보인다. 축구협회 한 고위 관계자는 "프로연맹 논의를 해야겠지만, FA컵 권위를 위해서라도 ACLE 직행 혜택이 있어야 하지 않을까 싶다"라고 설명했다. </p>
<p dmcf-pid="ySXMbN4ITN" dmcf-ptype="general">하지만, FA컵은 단 7경기(ACL 진출팀들은 5경기)로 ACLE 직행 자격이 주어진다는 점에서 자격 시비가 끊이질 않는 것도 사실이다. 대회 운영도 주먹구구식이라 FA컵 권위는 땅에 떨어진 지 오래됐다. 올해는 외부적 요인이 있었으나 일정도 제대로 맞추지 못해 비판이 쏟아졌다. </p>
<p dmcf-pid="WT5e9A6hSa" dmcf-ptype="general">우승으로 인해 출전 자격이 생긴 팀의 성적이 그리 좋지 않지 않았다는 결과물이 있어 리그에 더 혜택이 필요하고 축구협회 누구와 이 문제를 놓고 논의 해야 하는지 대상자도 모르겠다는 것이 프로연맹 측 주장이기도 하다. </p>
<p dmcf-pid="Yy1d2cPlvg" dmcf-ptype="general">유럽의 경우 리그 성적이 최상위 클럽대항전 출전권 우선인 경우가 많다. 잉글랜드 프리미어리그(PL)는 리그 1~4위가 UCL, FA컵 우승팀과 5위가 UEL, 리그컵 우승팀이 UECL로 향한다. 스페인도 프리메라리가 1~4위가 UCL, 5위와 코파 델 레이 우승팀이 UEL 본선, 6위가 UECL 플레이오프로 향한다. </p>
<p dmcf-pid="GWtJVkQSlo" dmcf-ptype="general">현재 FA컵 4강에는 포항 스틸러스-제주 유나이티드, 전북-인천이 대기 중이다. 포항은 K리그1 2위, 전북 4위, 인천 5위다. 제주는 9위다. 누가 우승하느냐에 따라 출전권 구도도 요동치겠지만, 결승전 전까지도 직행과 PO가 미정인 것은 FA컵을 바라보는 시선을 더 흐리게 만든다.</p>
<p dmcf-pid="HXpo6reWhL" dmcf-ptype="general">&lt;저작권자 ⓒ SPOTV NEWS. 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 스포티비뉴스]</h6></div>
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