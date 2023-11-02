
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
    <h3>검찰, ‘강남 납치살해’ 일당 1심 판결에 항소</h3><h6>김동화  2023. 11. 1. 08:02</h6>
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
<section dmcf-sid="zOybFUS4MJ">
<figure class="figure_frm origin_fig" dmcf-pid="qU9aMJBEdd" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ ‘강남 납치·살인’ 3인조 (왼쪽부터 이경우, 황대한, 연지호) 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/kado/20231101080231116zlrj.jpg" data-org-width="640" dmcf-mid="uyeOjExvJn" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/kado/20231101080231116zlrj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ ‘강남 납치·살인’ 3인조 (왼쪽부터 이경우, 황대한, 연지호) 연합뉴스
           </figcaption>
</figure>
<div dmcf-pid="BG3xKf1iMe" dmcf-ptype="general">
<p>검찰이 ‘강남 납치·살해’ 사건을 저지른 일당에게 무기징역 등을 선고한 1심에 불복해 항소했다.<br/><br/> 서울중앙지검은 지난 31일 서울 강남 한복판에서 강도살인을 저지른 혐의로 재판에 넘겨진 주범 이경우(36)와 그 일당 7명 전원에 대해 양형부당 등을 이유로 법원에 항소장을 냈다고 밝혔다.<br/><br/> 이경우·황대한(36)·연지호(30)는 올해 3월 29일 오후 11시 46분쯤 서울 강남구 역삼동 아파트 단지 앞에서 A(사망 당시 48세)씨를 차로 납치해 이튿날 오전 살해하고 대전 대청댐 인근 야산에 암매장한 혐의(강도살인·강도예비·사체유기)로 재판에 넘겨졌다.<br/><br/> 유상원(51)·황은희(49) 부부는 가상자산 투자 실패로 갈등을 빚던 A씨를 납치해 가상자산을 빼앗고 살해하자는 이경우의 제안에 범죄자금 7000만원을 건넨 혐의로 함께 기소됐다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="bu2NRibDiR" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ ‘납치살인 배후’ 유상원·황은희 부부 [서울경찰청 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/kado/20231101080232744lzey.jpg" data-org-width="500" dmcf-mid="7aybFUS4di" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/kado/20231101080232744lzey.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ ‘납치살인 배후’ 유상원·황은희 부부 [서울경찰청 제공]
           </figcaption>
</figure>
<div dmcf-pid="K3BLPR7AJM" dmcf-ptype="general">
<p>검찰은 이경우·황대한·유상원·황은희 등 4명에 대해 사형을, 연지호에게는 무기징역을 구형했으나, 지난 25일 1심 법원은 이경우·황대한에게 그보다 낮은 무기징역을 선고했다.<br/><br/> 특히 유상원·황은희 부부에 대해서는 사전에 살해까지 모의했다고 인정하기 어렵다며 살인 혐의를 무죄로 판단해 검찰 구형(사형)과 크게 차이 나는 징역 8년과 징역 6년을 선고했다.<br/><br/> 피해자에게 케타민을 주사한 황대한·연지호의 마약류관리법 위반 혐의에 대해서도 “마취제로만 알았다”는 이들의 주장을 받아들여 무죄로 판단했다.<br/><br/> 피해자의 동선을 파악하는 등 범행에 조력한 혐의를 받는 이모 씨와 간호조무사로 일하는 병원에서 향정신성의약품을 빼돌려 3인조에 제공한 이경우 부인 허모 씨에는 각각 징역 5년이 선고됐다.<br/><br/> A씨의 유족은 예상보다 낮은 형량이 선고되자 법정에서 “무조건 사형을 내려주는 게 맞다”고 항의하면서 오열하기도 했다.<br/><br/> 검찰은 “1심처럼 수사 검사가 항소심을 직관하는 등 공소 유지에 만전을 기하고 죄에 상응하는 형이 선고될 수 있도록 양형 조건도 적극적으로 제시할 예정”이라며 “유족들에게 깊은 위로의 말씀을 전한다”고 말했다.</p>
</div>
</section>
</div></p></section></div><h6>[Source : 강원도민일보]</h6></div>
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