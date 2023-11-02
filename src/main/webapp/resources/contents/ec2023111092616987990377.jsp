
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
    <h3>“회식부터 줄이자” 허리띠 졸라매는 기업들…법인카드 승인금액 5% ‘뚝’[머니뭐니]</h3><h6> 2023. 11. 1. 09:26</h6>
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
<section dmcf-sid="bYcXDsJG3G">
<figure class="figure_frm origin_fig" dmcf-pid="Kph7vYkU0Y" dmcf-ptype="figure">
<p class="link_figure"><img alt="서울 시내 기업들. 이상섭 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101092617490vzzn.jpg" data-org-width="1280" dmcf-mid="z1r1mCLZUZ" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101092617490vzzn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            서울 시내 기업들. 이상섭 기자
           </figcaption>
</figure>
<p dmcf-pid="9sdCnafO7W" dmcf-ptype="general">[헤럴드경제=홍승희 기자] 고금리 기조 속에 기업들이 어려움을 겪으며 법인카드 승인금액이 전년 동기 대비 감소한 것으로 나타났다. 당장 비용 절감에 나선 기업의 영향으로 법인카드 평균승인금액이 크게 줄었다. 한편 개인카드의 평균승인금액도 감소해 일반 소비자들도 소비 씀씀이를 줄인 것으로 집계됐다. 다만 국내외 출입국 규제가 완화되는 등 해외여행 정상화 추세에 힘입어 항공/숙박 등 운수업 부문의 카드 실적은 증가했다.</p>
<p dmcf-pid="2OJhLN4Izy" dmcf-ptype="general">1일 여신금융협회가 발표한 ‘카드승인실적 분석’에 따르면 올 3분기 전체 카드의 승인금액은 292조3000억원으로 전년 동기 대비 2.4% 증가하는 등 상승세를 이어가고 있다.</p>
<p dmcf-pid="VIiloj8C7T" dmcf-ptype="general">그중 신용카드 승인금액 및 승인건수는 각각 229조원, 44억4000억 건으로 전년 동기 대비 2.7%, 7.1% 증가했으며 체크카드 역시 각각 61조5000억원, 26억6000만건으로 전년 동기 대비 0.7%, 3.6% 증가했다.</p>
<div dmcf-pid="fvaWADMTpv" dmcf-ptype="general">
<p>하지만 법인과 개인 모두 씀씀이는 대폭 줄였다. 3분기 신용카드 평균승인금액은 5만1569원으로 전년 동기 대비 4.2% 감소했으며, 전 분기 대비해서도 1.6% 감소했다. 체크카드의 평균승인금액 역시 2만3134원으로 전년 동기 대비 2.8% 줄어든 것으로 나타났다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="4TNYcwRyuS" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101092619311wrez.jpg" data-org-width="630" dmcf-mid="qH3MUqWQzX" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101092619311wrez.jpg" width="658"/></p>
</figure>
<div dmcf-pid="8SgyjExv0l" dmcf-ptype="general">
<p>특히 기업들이 본격 비용절감에 나섰다. 법인카드의 경우 3분기 승인금액이 50조7000억원으로 전년 동기 대비 5% 감소한 것으로 나타났다. 최근 이자를 내지 못하는 한계기업이 늘어나는 등 어려운 기업의 재정상황에 따른 것으로 풀이된다.</p>
</div>
<p dmcf-pid="6vaWADMTph" dmcf-ptype="general">법인카드의 평균 승인금액 역시 12만5210원으로 전년 동기 대비 8.1%, 전분기 대비 7.6% 감소했다. 리오프닝으로 회식/행사 등이 늘어나며 건당 결제금액이 대폭 증가했던 지난해의 모습과 대조적이다. 개인카드의 평균 승인금액은 3만5719원으로 전년 동기 대비 1.9% 감소했다.</p>
<p dmcf-pid="PTNYcwRy0C" dmcf-ptype="general">한편 소비가 더 늘어난 업종은 운수업이었다. 해외여행 증가 및 지난해 항공/철도 이용 저조의 기저 효과로 운수업 부문의 카드승인실적은 전년 동기 대비 30.9% 증가했다. 코로나 이전인 2019년 3분기와 비교했을 땐 12.3% 증가했다.</p>
<div dmcf-pid="QHE5rInXFI" dmcf-ptype="general">
<p>또 해외입국자 및 외식이 증가하며 숙박 및 음식점업의 카드승인실적도 3.6% 늘어난 것으로 집계됐다. 여행 관련 업종의 매출 회복으로 여행사 등이 포함된 사업시설관리 및 사업지원 서비스업 역시 전년 동기 대비 36.2% 증가했다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="xXD1mCLZuO" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101092619810uckj.jpg" data-org-width="1280" dmcf-mid="B0LvacPlzH" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101092619810uckj.jpg" width="658"/></p>
</figure>
<p dmcf-pid="yJqLKf1iUs" dmcf-ptype="general">hss@heraldcorp.com</p>
</section>
</div></p></section></div><h6>[Source : 헤럴드경제]</h6></div>
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