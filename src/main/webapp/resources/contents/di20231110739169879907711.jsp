
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
    <h3>카카오 회계조작? 국내 3대 회계법인 "문제없다"…쟁점은</h3><h6>이승진  2023. 11. 1. 07:39</h6>
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
<section dmcf-sid="Ulpmxdqk0g">
<figure class="figure_frm origin_fig" dmcf-pid="u5VWacPlUo" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/akn/20231101073906677qqrf.png" data-org-width="745" dmcf-mid="3QD1DsJG0j" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/akn/20231101073906677qqrf.png" width="658"/></p>
</figure>
<div dmcf-pid="7kYgbV5JuL" dmcf-ptype="general">
<p>카카오모빌리티의 내우외환이 끊이지 않는다. 공정거래위원회로부터 과징금을 부과 받은 데 이어, 이번엔 금융감독원이 ‘회계조작 의혹’과 관련한 감리 진행에 나섰다. 하지만 국내 3대 회계법인(삼일·삼정·한영)이 카카오 회계 방식에 문제가 없다는 의견을 냈다. 또 카카오모빌리티 측도 강하게 반발했으나 진통이 이어질 것으로 보인다.</p><strong>매출 부풀리기 vs 독립적 계약 </strong>
</div>
<p dmcf-pid="zm5cfP0g7n" dmcf-ptype="general">카카오모빌리티는 31일 금감원이 제기한 회계 조작 의혹에 대해 '오해'라고 해명했다. 금감원은 지난 7월 카카오모빌리티의 가맹택시 사업과 관련해 가맹과 업무제휴 계약의 회계처리 방식에 문제가 있다고 보고 회계 감리에 착수했다.</p>
<p dmcf-pid="qwXj28FL0i" dmcf-ptype="general">쟁점은 가맹계약과 업무제휴 계약을 독립된 계약으로 볼 수 있는지 여부다. 카카오모빌리티는 자회사인 케이엠솔루션을 통해 가맹 택시 운행 매출의 20%를 가맹금으로 받고 있다. 대신 카카오모빌리티는 가맹사 중 업무 제휴 계약을 맺은 사업자가 차량 운행 데이터를 제공하고 광고·마케팅에 참여하는 조건으로 제휴 비용을 지급한다. 이 비용이 통상 매출의 15~17%로 알려져 있다.</p>
<p dmcf-pid="BIFD6MujpJ" dmcf-ptype="general">카카오모빌리티는 가맹금 전체를 매출로 계상해왔다. 가맹계약과 업무제휴 계약은 별도라는 이유에서다. 하지만 금감원은 가맹금 전체를 매출로 잡으면 안 된다고 판단했다. 가맹 택시에 '업무 제휴 계약' 명목으로 지불하는 대가를 제외한 3~5%만을 매출로 잡아야 한다는 입장이다.</p>
<p dmcf-pid="bQkVG5mBzd" dmcf-ptype="general">카카오모빌리티 측은 "금감원이 두 계약 모두 '가맹택시 운임을 기준으로 가격이 결정된다는 점'을 핵심 근거로 동일 계약 및 '회계 기준 위반' 소지가 있다고 판단한 것으로 알려졌으나 실질은 다르다"며 "가맹 계약은 운임의 20%를 정률로 수취하고, 업무 제휴 계약은 계약 내 구성 항목별로 상이한 책정 기준을 갖고 있다"고 반박했다.</p>
<p dmcf-pid="Kt4GjExv7e" dmcf-ptype="general">그러면서 “실제 이익은 운임의 3~4%로 동일하기 때문에 매출만 부풀려 영업이익률을 떨어뜨릴 이유도 없다”고 덧붙였다.</p>
<div dmcf-pid="9JsQtplf0R" dmcf-ptype="general">
<p>카카오모빌리티는 두 계약이 별개라는 근거로 지난해 10월 카카오 데이터센터 화재에 따른 가맹계약 보상을 지목했다. 카카오모빌리티는 데이터 장애로 가맹 서비스를 일시적으로 제공하지 못한 기간에 대해 가맹회원사에 가맹금 20%를 청구하지 않았다. 반면 이 기간 가맹점에서 수행한 광고활동 및 데이터 제공에 대한 대가는 '업무 제휴 계약'에 따라 카카오모빌리티에서 가맹 회원사에 전액 정상 지급했다는 것이다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="2iOxFUS40M" dmcf-ptype="figure">
<p class="link_figure"><img alt="김범수 카카오 전 의장이 23일 SM엔터테인먼트 인수 주가 시세조종 의혹과 관련해 조사를 받기 위해 금융감독원으로 출석하고 있다. 사진=강진형 기자aymsdream@" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/akn/20231101073907959flmh.jpg" data-org-width="745" dmcf-mid="0RbSnafOFN" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/akn/20231101073907959flmh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김범수 카카오 전 의장이 23일 SM엔터테인먼트 인수 주가 시세조종 의혹과 관련해 조사를 받기 위해 금융감독원으로 출석하고 있다. 사진=강진형 기자aymsdream@
           </figcaption>
</figure>
<p dmcf-pid="V8jKyHD7zx" dmcf-ptype="general"><strong>돈 안 되고, 논란만 커지는 택시 사업</strong></p>
<p dmcf-pid="f8jKyHD7pQ" dmcf-ptype="general">카카오모빌리티를 둘러싼 논란은 끊이지 않는다. 카카오모빌리티의 택시 앱 호출 시장 점유율은 2021년 기준 93%로 사실상 독점적인 시장 지배력을 지니고 있다. 그러다보니 정치권과 당국의 관심이 집중되며 부담은 커지고 있다. 하지만 정작 택시 사업이 수익은 거의 내지 못해 계륵과 같은 존재가 되고 있다.</p>
<p dmcf-pid="4BJpOlg1pP" dmcf-ptype="general">카카오모빌리티는 지난해 매출 7915억원, 영업이익 195억원을 기록했다. 전년 대비 매출만 커지고 영업이익은 거의 늘지 않았다. 그마저 택시 사업이 매출에서 차지하는 비율은 절반에도 못 미치고 대리 호출과 주차장 사업을 제외하면 적자인 것으로 알려졌다.</p>
<p dmcf-pid="8JsQtplf76" dmcf-ptype="general">같은 기간 당기순손실은 277억원을 기록했다. 2021년 카카오로부터 분사한 뒤 처음 당기순손익 흑자를 냈지만 다시 적자로 돌아선 것이다. 공정위가 지난 2월 부과한 271억원의 과징금이 영향을 미쳤다. 공정위는 카카오모빌리티가 '카카오T' 애플리케이션의 중형택시 배차 알고리즘을 조작해 ‘카카오T블루’ 가맹택시를 우대했다며 시정명령과 함께 과징금 271억원을 부과했다.</p>
<p dmcf-pid="6s1k4Qpaz8" dmcf-ptype="general">카카오모빌리티는 공정위의 과징금 부과에 대해 다양한 해명을 내놓고 행정소송에 나섰다. 하지만 한 번 붙은 ‘콜 몰아주기’ 꼬리표는 떼기 어려운 상황이다. 이번 ‘매출 부풀리기’ 논란도 마찬가지다. 금감원은 이르면 내년 초 감리를 마무리하고 감리위원회에 상정할 계획으로, 결론이 나오기까지 관련 논란은 지속될 것으로 보인다.</p>
<p dmcf-pid="Per653C274" dmcf-ptype="general">금감원의 카카오모빌리티 감리는 카카오를 압박하기 위한 것이라는 시각도 있다. 삼일·삼정회계법인은 물론이고 한영회계법인도 카카오모빌리티의 회계처리 자문용역에서 20%를 매출로 인식하는 것이 적정하다는 의견을 보냈다. 작년 매출 기준 국내 3대 회계법인이 카카오의 손을 들어 준 셈이다. 비상장사를 임의로 골라 감리에 착수한 것은 카카오에 대한 압박 수위를 높이려는 의도라는 것이다. 최근 금감원은 SM엔터테인먼트 인수 과정에서 불거진 시세조종 혐의로 김범수 카카오 미래이니셔티브 센터장을 소환한 바 있다.</p>
<p dmcf-pid="QaSJuBYx7f" dmcf-ptype="general">정도진 중앙대 경영학부 교수는 “금감원이 두 계약 모두 '가맹택시 운임을 기준으로 가격이 결정된다는 점'을 근거로 문제 삼은 것은 회계의 대원칙인 총액 주의를 벗어난 것으로 보인다”며 “금감원의 논리대로 3~5%만을 매출로 잡게되면 카카오모빌리티가 어디서 돈을 벌고, 어디에 돈을 쓰는지에 대한 정보는 사라져 버려 회계의 기본 철학에 어긋나게 된다”고 설명했다.</p>
<p dmcf-pid="xNvi7bGMFV" dmcf-ptype="general">이승진 기자 promotion2@asiae.co.kr</p>
</section>
</div></p></section></div><h6>[Source : 아시아경제]</h6></div>
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