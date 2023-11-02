
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
    <h3>화력발전소 석탄재로 해양구조물 제작…"자원순환 등에 기여"</h3><h6>정윤덕  2023. 11. 1. 09:29</h6>
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
<section dmcf-sid="31fQ94tn7C">
<figure class="figure_frm origin_fig" dmcf-pid="0t4x28FLzI" dmcf-ptype="figure">
<p class="link_figure"><img alt="화력발전소 석탄재 활용해 만든 'K-해양구조물' 소파블록 [한국서부발전 제공. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101092938124kfkw.jpg" data-org-width="1200" dmcf-mid="t83710hV7l" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101092938124kfkw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            화력발전소 석탄재 활용해 만든 'K-해양구조물' 소파블록 [한국서부발전 제공. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="p36RfP0gUO" dmcf-ptype="general">(태안=연합뉴스) 정윤덕 기자 = 화력발전소에서 나오는 석탄재를 활용해 해양구조물 등을 만드는 기술이 개발돼 중소기업에 이전됐다.</p>
<p dmcf-pid="U0Pe4Qpa0s" dmcf-ptype="general">1일 한국서부발전에 따르면 서부발전과 한국해양과학기술원(KIOST)이 공동 개발한 '석탄재 활용 차세대 K-해양구조물'은 방파제를 보호하는 소파블록과 인공어초·인공피복석에 들어가는 골재의 20%를 화력발전소 석탄재로 대체해 자원순환과 기후변화 대응에 기여할 수 있다.</p>
<p dmcf-pid="u7RnQezc0m" dmcf-ptype="general">특히 소파블록의 경우 대부분 해외기술로 제작돼 국산화가 시급한 테트라포드의 대체품이 될 것으로 기대된다.</p>
<p dmcf-pid="7zeLxdqkpr" dmcf-ptype="general">이번에 개발한 소파블록은 안정계수가 12 이상을 기록해, 6∼8 수준인 테트라포드보다 내구성이 뛰어나다. 추락 등 안전사고 위험도 고려해 형상을 설계했다.</p>
<p dmcf-pid="zqdoMJBEFw" dmcf-ptype="general">서부발전과 KIOST는 국내에 관련 특허 3건을 등록하고, 인도네시아에도 등록을 추진하고 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="qAyXSWcpuD" dmcf-ptype="figure">
<p class="link_figure"><img alt="'K-해양구조물 기술' 중소기업에 이전 왼쪽부터 강도형 한국해양과학기술원장, 박형덕 서부발전 사장, 이호석 대륙에너지기술 대표 [한국서부발전 제공. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101092938760egnl.jpg" data-org-width="1200" dmcf-mid="FMCTsho5Fh" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101092938760egnl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            'K-해양구조물 기술' 중소기업에 이전 왼쪽부터 강도형 한국해양과학기술원장, 박형덕 서부발전 사장, 이호석 대륙에너지기술 대표 [한국서부발전 제공. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="BcWZvYkUFE" dmcf-ptype="general">이 기술은 중소기업인 대륙에너지기술에 이전됐다.</p>
<p dmcf-pid="bkY5TGEu0k" dmcf-ptype="general">전날 기술 사업화 업무협약을 체결한 대륙에너지기술은 KIOST의 한·인도네시아 해양과학 공동연구센터를 활용해 해외 수요처를 발굴하고 있다.</p>
<p dmcf-pid="KwXFYZrqFc" dmcf-ptype="general">박형덕 서부발전 사장은 "초강력 태풍에도 방파제를 보호할 수 있는 K-해양구조물은 발전소 석탄재를 활용한 자원순환형 제품이라는 측면에서 탄소중립과 순환경제사회 달성 등에 시사하는 바가 크다"며 "성공적인 사업화를 위해 지원을 아끼지 않겠다"고 말했다.</p>
<p dmcf-pid="9rZ3G5mBpA" dmcf-ptype="general">cobra@yna.co.kr</p>
<p dmcf-pid="VZ26bV5JUN" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
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