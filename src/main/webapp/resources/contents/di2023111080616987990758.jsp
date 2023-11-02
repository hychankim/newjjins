
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
    <h3>[갈라파고스 K-통신]④"문제는 통신료"…LGU+ 턱밑까지 추격한 '이것'</h3><h6>김보경  2023. 11. 1. 08:06</h6>
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
<section dmcf-sid="bXMltplfUN">
<p dmcf-pid="KS4mG5mBpa" dmcf-ptype="general">'싼 게 비지떡'이라는 말이 있지만, 이동통신 시장에선 통용되지 않았다. 저렴한 요금제를 사용하는 알뜰폰 가입자의 만족도가 86%로 대형 이통 3사를 크게 제쳤다. KT, LG유플러스 가입자의 경우 데이터 속도에 대한 불만이 높았고, SK텔레콤은 비싼 요금제를 불만족 요인으로 꼽았다.</p>
<div dmcf-pid="9paZB2Zdug" dmcf-ptype="general">
<p>아시아경제는 지난달 30일 소비자 데이터 플랫폼 '오픈서베이'에 의뢰해 성인 1000명을 대상으로 '이동통신 만족도 설문'을 진행했다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="Ul1r94tn7h" dmcf-ptype="figure">
<p class="link_figure"><img alt="스마트폰 자료사진= 문호남 기자 munonam@" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/akn/20231101083032233mptr.jpg" data-org-width="745" dmcf-mid="pHPFNkQSzl" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/akn/20231101083032233mptr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            스마트폰 자료사진= 문호남 기자 munonam@
           </figcaption>
</figure>
<div dmcf-pid="Vqk3V63o7L" dmcf-ptype="general">
<p>이번 조사로 알뜰폰의 요금 절감 효과가 크다는 점을 알 수 있었다. 현재 이용 중인 요금제(기깃값, 부가서비스 제외)가 얼마인지 묻는 질문에 알뜰폰 가입자의 81%가 3만원 미만이라고 답했다. 대형 이통3사에서 3만원 미만 요금제를 쓰는 가입자는 10% 이하를 기록했고, '5만원 이상 7만원 미만'이라는 응답이 가장 많았다. SK텔레콤은 32.6%, KT는 31.2%, LG유플러스는 28.5%가 이에 해당했다.</p>
</div>
<p dmcf-pid="fyPIZFI9zn" dmcf-ptype="general">대기업 이통 3사가 긴장해야 할 이유는 또 있다. 통신 서비스에 얼마나 만족하는지 묻는 질문에 알뜰폰 가입자의 만족도가 이통3사보다 높았기 때문이다. 알뜰폰 가입자의 85.9%가 '만족한다' 또는 '매우 만족한다'고 응답했다. 같은 질문을 받은 SK텔레콤(64.9%), LG유플러스(59.6%), KT(43.5%)보다 상대적으로 만족도가 높았다. 알뜰폰 가입자가 만족하는 요인을 물어보니 '요금이 합리적이다'는 응답이 압도적(95.7%)으로 많았다.</p>
<p dmcf-pid="49ru6Muj7i" dmcf-ptype="general">자신이 가입한 이통사에 불만족한다는 응답자에게 그 이유도 물어봤다. 그 결과 SK텔레콤 가입자는 '요금이 과도하게 높다'는 응답이 38.7%로 가장 높았다. KT 가입자의 경우 '데이터 속도가 느리다(31.3%)'는 답변이 가장 많았고, '할인 혜택이 부족하다(18.7%)' '요금이 과도하게 높다(17.9%)' 순이었다. LG유플러스 가입자도 데이터 속도에 대한 불만 28.2%로 가장 높았다. '멤버십 등 차별화된 서비스가 부족하다(19.2%)' '할인 혜택이 부족하다(16.7%)' 등이 뒤를 이었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="yGyvTGEupt" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/akn/20231101091237019hhjt.jpg" data-org-width="745" dmcf-mid="x9RxMJBE3F" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/akn/20231101091237019hhjt.jpg" width="658"/></p>
</figure>
<div dmcf-pid="WGyvTGEu31" dmcf-ptype="general">
<p>현재 가입된 이통사를 물어보니 1위 사업자 SK텔레콤(40.5%)이 가장 많았다. 그다음으로 KT(23.7%), LG유플러스(19.3%), 알뜰폰(16.3%) 순이었다. 이통 3사 망을 빌려 서비스를 제공하는 중소·중견기업 위주의 알뜰폰(MVNO)이 대기업 LG유플러스 가입자 수에 3%포인트 차까지 추격한 것이다.</p>
</div>
<p dmcf-pid="YhOmsho5p5" dmcf-ptype="general">통신 가입자 만족도 개선을 위해 가장 고려해야 할 점이 무엇인지 묻자 1위도 역시 '통신 요금 인하(35.9%)'였다. 그다음으로 '결합 할인 및 고객 혜택 강화(27.7%)' '통신 품질 개선(13.6%)' '제휴처 추가 등 멤버십 서비스 확대(11.9%) 순으로 나타났다. 기타 의견에는 '고객과의 원활한 소통' '고객센터 응대 강화' '고객 서비스 강화' 등 고객서비스(CS) 개선에 대한 요구가 많았다.</p>
<div dmcf-pid="G0t510hVpZ" dmcf-ptype="general">
<p>최근 1년간 불편을 겪은 사례를 알려달라는 질문에는 10명 중 7명이 '서비스 품질 미흡(71.7%)'이라고 답해 압도적 1위를 차지했다. '요금제·부가서비스 부당 가입 유도(20%)' '약정 해지, 변경에 따른 위약금 부과(14%)' 등의 다른 피해사례와 비교해보면 그 비중이 크게 높았다. 이동통신 가입자의 대다수가 여전히 데이터 속도와 통화 불량에 불편을 느끼고 있는 것이다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="HP4VfP0gFX" dmcf-ptype="figure">
<p class="link_figure"><img alt="이동관 방송통신위원장이 지난 9월 15일 정부과천청사에서 진행된 이동통신 3사 대표이사와 첫 회동에서 기념촬영을 하고 있다. 왼쪽부터 유영상 SK텔레콤 대표, 이 위원장, 김영섭 KT 대표, 황현식 LG유플러스 대표. 2023.9.15" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/akn/20231101080626379bagj.jpg" data-org-width="745" dmcf-mid="BWY6gA6h7j" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/akn/20231101080626379bagj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이동관 방송통신위원장이 지난 9월 15일 정부과천청사에서 진행된 이동통신 3사 대표이사와 첫 회동에서 기념촬영을 하고 있다. 왼쪽부터 유영상 SK텔레콤 대표, 이 위원장, 김영섭 KT 대표, 황현식 LG유플러스 대표. 2023.9.15
           </figcaption>
</figure>
<div dmcf-pid="XF5XZFI9zH" dmcf-ptype="general">
<p>알뜰폰 가입자의 대다수(84%)는 LTE 통신 서비스를 사용하고 있었다. 이통 3사 가입자의 경우 5G를 사용한다는 응답이 공통적으로 60%대를 기록했고, 4G를 사용한다는 응답도 30%대로 적지 않았다. 이처럼 LTE 가입자가 적지 않은 상황에서 이통사들이 5G, 6G와 같은 신기술에만 몰두하는 것을 비판하는 전문가 목소리도 나왔다. </p>
</div>
<p dmcf-pid="ZqupUqWQUG" dmcf-ptype="general">박순장 소비자주권시민회의 사무처장은 "LTE 이용자도 3000만명 이상"이라며 "이통사들이 5G에만 전념하다 보니 LTE 사용자에 대한 서비스, 시설 보수 투자가 상당히 미약하다"고 말했다. 그는 "알뜰폰, LTE 가입자들은 저가 요금제를 사용하는 서민들이라는 점을 잊어선 안 된다"고 강조했다.</p>
<p dmcf-pid="59Bzq9XeFY" dmcf-ptype="general">한편 이번 설문은 20~50대 패널 1000명을 통계청 인구비례에 맞게 할당 추출해 진행했으며, 표본오차는 신뢰수준 80%에서 ±2.03%p 이다.</p>
<p dmcf-pid="1exPQezcUW" dmcf-ptype="general">김보경 기자 bkly477@asiae.co.kr</p>
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