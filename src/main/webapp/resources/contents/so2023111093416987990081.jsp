
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
    <h3>'제2 검단아파트 막는다'…LH 부실시공 책무 강화 법률 개정안 발의</h3><h6>강남주 기자  2023. 11. 1. 09:34</h6>
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
<section dmcf-sid="fyCucwRy7c">
<figure class="figure_frm origin_fig" dmcf-pid="497iZFI97A" dmcf-ptype="figure">
<p class="link_figure"><img alt="인천시 서구 검단의 한 아파트 지하주차장 슬래브 붕괴 현장.(뉴스1DB)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101093415022rbhu.jpg" data-org-width="1400" dmcf-mid="VuCucwRyuk" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101093415022rbhu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            인천시 서구 검단의 한 아파트 지하주차장 슬래브 붕괴 현장.(뉴스1DB)
           </figcaption>
</figure>
<p dmcf-pid="82zn53C20j" dmcf-ptype="general">(인천=뉴스1) 강남주 기자 = 인천 검단아파트 지하주차장 붕괴사고 등 한국토지주택공사(LH)의 부실시공 사태에 대해 책임과 의무를 강화하는 방안을 담은 법률 개정안이 발의됐다.</p>
<p dmcf-pid="60Z8lyA0pN" dmcf-ptype="general">허종식 더불어민주당 국회의원(인천 동·미추홀갑)은 이같은 내용을 담은 ‘건설산업기본법 일부개정법률안’(이하 건산법 개정안), ‘건설기술진흥법 일부개정법률안’(이하 건기법 개정안)을 대표발의했다고 1일 밝혔다.</p>
<p dmcf-pid="Pp56SWcpUa" dmcf-ptype="general">건산법 개정안은 공공기관이 발주자인 경우 국토교통부장관이 발주자 책무를 점검‧확인하도록 의무를 부과했다. 또 이에 관한 자료요구 및 시정조치‧보완 요구 등에 대해 정당한 사유 없이 이행하지 않을 경우 2000만원 이하의 과태료를 부과할 수 있도록 하는 내용이 담겼다.</p>
<p dmcf-pid="QU1PvYkUpg" dmcf-ptype="general">지난 4월 인천 검단아파트 지하주차장 붕괴사건에 따라 정부는 GS건설에 영업정지 10개월 등 설계‧시공‧감리업체에 대한 행정처분을 추진했지만 현행법 상 발주청인 LH를 대상으로 한 처분은 명확한 규정이 없다는 지적에 따라 개정안을 마련한 것이다.</p>
<p dmcf-pid="x4bgFUS43o" dmcf-ptype="general">건기법 개정안은 임의규정인 ‘품질관리 적절성 확인’을 의무규정으로 명시하고 관련 자료를 공사 완료 후 10년 동안 보관하게 함으로써 건설공사의 책임을 강화하는 내용을 담았다. </p>
<p dmcf-pid="yhrFgA6h7L" dmcf-ptype="general">허 의원은 앞서 LH가 발주한 전체 건설 현장 123개 사업장 중 검단아파트를 포함한 71개 사업장에 대해 품질관리 적절성 확인을 이행하지 않았다는 점을 국정감사에서 밝혀낸 바 있다.</p>
<p dmcf-pid="Wlm3acPlpn" dmcf-ptype="general">LH가 사업장에 대해 품질관리 적절성 확인에 나섰다면 미인증 순활골재 사용을 비롯해 설계, 시공, 감리 등 건설현장 전반을 파악하는 한편 붕괴사고 등을 사전에 막을 수 있었다는 지적이다.</p>
<p dmcf-pid="YOE5nafOpi" dmcf-ptype="general">허 의원은 “국토부는 LH의 부실시공 사태 원인을 ‘전관카르텔’로 지목했지만, 국정감사를 통해 건설과정 전반에 대한 LH의 관리체계가 부족했다는 사실이 밝혀졌다”며 “품질관리 적절성 확인 등 발주청의 책무를 강화하고 이에 대한 처벌규정을 마련함으로써 공공기관 발주사업의 부실시공을 예방할 수 있을 것”이라고 말했다.</p>
<p dmcf-pid="GID1LN4IpJ" dmcf-ptype="general">inamju@news1.kr </p>
</section>
</div></p></section></div><h6>[Source : 뉴스1]</h6></div>
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