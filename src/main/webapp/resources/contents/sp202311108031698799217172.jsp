
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
    <h3>WWE·UFC 모회사, 골프 PGA투어 투자 무산</h3><h6>강대호 MK스포츠 기자(dogma01@maekyung.com)  2023. 11. 1. 08:03</h6>
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
<section dmcf-sid="5Gm1vYkUZY">
<p dmcf-pid="1HstTGEuZW" dmcf-ptype="general">미디어 에이전시 Endeavor가 미국프로골프 PGA투어와 인연을 맺길 원했지만, 뜻을 이루지 못했다.</p>
<p dmcf-pid="tIavwOiHGy" dmcf-ptype="general">마크 셔피로(54·미국) 엔데버 최고운영책임자(COO)는 10월30일(한국시간) “PGA투어에 투자를 제의했지만, 거절당했다. 파트너십 제안 역시 거부됐다”고 밝혔다.</p>
<p dmcf-pid="FCNTrInXtT" dmcf-ptype="general">‘엔데버’는 프로레슬링 WWE 및 종합격투기 UFC 등 체육 두 분야 세계 최고 단체를 거느린 시가총액 100억 달러(약 14조 원) 규모의 대기업이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="3ZI3WXwztv" dmcf-ptype="figure">
<p class="link_figure"><img alt="종합격투기 UFC와 프로레슬링 WWE의 통합 법인이 상장된 2023년 9월13일(한국시간) 미국 뉴욕 증권거래소 모습. 앞줄 왼쪽 챔피언 벨트는 UFC, 오른쪽은 WWE다. 사진=TKO Group Holdings" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101080308010drpl.png" data-org-width="640" dmcf-mid="Xc8IADMT1H" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101080308010drpl.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            종합격투기 UFC와 프로레슬링 WWE의 통합 법인이 상장된 2023년 9월13일(한국시간) 미국 뉴욕 증권거래소 모습. 앞줄 왼쪽 챔피언 벨트는 UFC, 오른쪽은 WWE다. 사진=TKO Group Holdings
           </figcaption>
</figure>
<div dmcf-pid="05C0YZrqZS" dmcf-ptype="general">
           아리엘 이매뉴얼(62·미국) ‘엔데버’ 최고경영자(CEO)는 “내가 (취미생활 차원의) 골퍼라서 하는 말이 아니라 골프는 훌륭한 종목이다. 꼭 우리 회사 스포츠 부문에 추가하고 싶다”며 UFC 및 WWE에 만족할 생각이 없음을 숨기지 않고 있다.
          </div>
<p dmcf-pid="p1hpG5mB1l" dmcf-ptype="general">‘엔데버’는 사업을 함께 하는 ‘동반자 관계’가 되기를 원한 것으로 전해진다. PGA투어는 “사우디아라비아 공공투자기금(PIF)과 통합에만 집중하기 위함”이라며 투자 거부 이유를 설명했다.</p>
<p dmcf-pid="UHstTGEu5h" dmcf-ptype="general">PIF 회장은 무함마드 빈살만 알사우드(38) 사우디아라비아 왕세자 겸 총리다. ‘무엇이든 다할 수 있는 남자’라는 Mr. Everything으로 불린다. 세계에서 가장 큰 부와 권력을 가졌다는 평가다.</p>
<p dmcf-pid="uXOFyHD7ZC" dmcf-ptype="general">잉글랜드프로축구 프리미어리그(EPL) 뉴캐슬 유나이티드 지분 80%를 가지고 있는 사우디아라비아 공공투자기금은 2021년 만든 ‘LIV 골프’와 미국 PGA투어 및 유럽투어의 통합 법인을 만들겠다고 2023년 6월 선언하여 문자 그대로 세상을 놀라게 했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="7ZI3WXwzYI" dmcf-ptype="figure">
<p class="link_figure"><img alt="유럽투어(DP월드), 미국 PGA투어, 리브 골프 로고" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101080309261xfan.png" data-org-width="640" dmcf-mid="Zkv7ZFI9tG" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101080309261xfan.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            유럽투어(DP월드), 미국 PGA투어, 리브 골프 로고
           </figcaption>
</figure>
<div dmcf-pid="zQzdfP0gHO" dmcf-ptype="general">
           PGA투어는 올해 10월 초 2022-23시즌 참가선수한테 발송한 공문을 통해 “다른 회사로부터 투자를 제안받았지만, 유럽투어와 함께 사우디아라비아 공공투자기금과 통합을 목표로 한다”는 방침을 재확인했다.
          </div>
<p dmcf-pid="qxqJ4QpaGs" dmcf-ptype="general">그러나 4달 전 발표는 ‘사우디아라비아 공공투자기금이 주도하여 PGA투어와 유럽투어 그리고 리브 골프를 합치겠다’는 기본 줄거리만 언급한 것이다. 추가적인 합의가 없는 이상 2023년 12월31일까지 계약을 마무리해야만 효력이 발휘된다.</p>
<p dmcf-pid="BMBi8xUNHm" dmcf-ptype="general">아직 사우디아라비아 공공투자기금이나 PGA투어는 유럽투어 및 리브 골프와 구체적인 통합 계획을 밝히지 않고 있다.</p>
<p dmcf-pid="b5C0YZrqXr" dmcf-ptype="general">[강대호 MK스포츠 기자]</p>
<p dmcf-pid="K1hpG5mB1w" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : MK스포츠]</h6></div>
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