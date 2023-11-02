
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
    <h3>'한국판 나사' 우주항공청법 통과될까…경남도 입법 총력전</h3><h6>이정훈  2023. 11. 1. 07:05</h6>
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
<section dmcf-sid="pEn8I7T6zy">
<figure class="figure_frm origin_fig" dmcf-pid="UcJfsUS4zT" dmcf-ptype="figure">
<p class="link_figure"><img alt="경남도청과 경남도청 앞 누리호 발사체 모형 [연합뉴스 자료사진]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070506062xgxc.jpg" data-org-width="1200" dmcf-mid="FIdVmplfpG" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070506062xgxc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            경남도청과 경남도청 앞 누리호 발사체 모형 [연합뉴스 자료사진]
           </figcaption>
</figure>
<p dmcf-pid="uki4Ouv8Uv" dmcf-ptype="general">(창원=연합뉴스) 이정훈 기자 = "우주항공청 설립에 걸림돌이 이제 없다고 생각한다"</p>
<p dmcf-pid="7maxSbGM7S" dmcf-ptype="general">지난달 30일 경남도 실국장회의 때 박완수 지사가 "빠른 시일내 우주항공청 특별법이 국회를 통과해야 한다"며 한 발언이다.</p>
<p dmcf-pid="zsNMvKHRul" dmcf-ptype="general">박 지사는 "항공우주연구원 원장과 노조가 항공우주연구원을 우주항공청 직속기관으로 하고 우주항공청에 연구개발(R&amp;D) 기능을 두는 데 동의했다. 우주항공청 특별법 통과에 반대하는 사람은 이제 없다"라고까지 했다.</p>
<p dmcf-pid="qOjRT9XeFh" dmcf-ptype="general">박 지사는 "그런데도 국회 통과가 안 되면 국민을 무시하는 것"이라고 목소리를 높였다.</p>
<p dmcf-pid="BPB1JSatFC" dmcf-ptype="general">국민의힘과 우주항공청 예정지 경남도가 지난 4월 정부가 국회에 법안을 제출한 후 상임위원회 문턱조차 넘지 못했던 '우주항공청 설립 및 운영에 관한 특별법안'(이하 우주항공청 특별법) 연내 통과에 나선다.</p>
<p dmcf-pid="bQbtivNFzI" dmcf-ptype="general">윤재옥 국민의힘 원내대표, 박완수 경남지사 모두 여야가 국회 본회의를 열기로 합의한 오는 9일 우주항공청 특별법이 처리되도록 하겠다는데 한목소리를 냈다.</p>
<p dmcf-pid="KxKFnTj3zO" dmcf-ptype="general">9일 본회의 전까지 법안 심사 일정이 빠듯하다.</p>
<p dmcf-pid="9Fyrzo2m0s" dmcf-ptype="general">지난 7월 말 국회 과학기술정보방송통신위원회(이하 과방위)는 우주항공청 특별법 쟁점을 심의하고자 위원 6명이 참여한 안건조정위원회(이하 안건위)를 구성했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="23WmqgVsum" dmcf-ptype="figure">
<p class="link_figure"><img alt="경남도청 전경과 누리호 발사체 모형 [연합뉴스 자료사진]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070506342tlro.jpg" data-org-width="1200" dmcf-mid="3U1SfExvpY" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070506342tlro.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            경남도청 전경과 누리호 발사체 모형 [연합뉴스 자료사진]
           </figcaption>
</figure>
<p dmcf-pid="V0YsBafOUr" dmcf-ptype="general">항공우주연구원이나 천문연구원 등 관련 연구기관이 있음에도, 우주항공청이 연구개발을 직접 수행하는 것은 '옥상옥'이라는 논리로 안건위 참여 민주당 의원이 줄곧 반대했다.</p>
<p dmcf-pid="fLPqc5mBuw" dmcf-ptype="general">결국 안건위는 성과를 내지 못하고 지난달 23일 90일 활동을 마무리했다.</p>
<p dmcf-pid="4oQBk1sbuD" dmcf-ptype="general">그러나 10월 국정감사를 거치면서 과학기술정보통신부가 산하 국가과학기술연구회(NST) 소속 항공우주연구원, 천문연구원을 우주항공청 소속으로 법제화하는 것에, 항공우주연구원이 우주항공청에 연구개발 기능을 두는 것에 각각 동의하는 쪽으로 입장을 정리해 입법 돌파구가 열리는 분위기다.</p>
<p dmcf-pid="8gxbEtOKuE" dmcf-ptype="general">박완수 경남지사 등 경남도 관계자들이 노조 등 항공우주연구원 구성원들을 직접 접촉한 점도 주효했다.</p>
<p dmcf-pid="6xKFnTj30k" dmcf-ptype="general">여야, 정부, 항우연 등이 합의한 내용이 우주항공청 특별법에 담겨 9일 본회의까지 가려면 과방위 법안소위, 과방위 전체회의, 법사위 등을 먼저 거쳐야 한다.</p>
<p dmcf-pid="PM93LyA0Fc" dmcf-ptype="general">여기다 우주항공청이란 정부 기구를 새로 만드는 사안이라 국회 행정안전위 소관 정부조직법 개정까지 함께 이뤄져야 한다.</p>
<p dmcf-pid="QR20oWcpuA" dmcf-ptype="general">여야는 11월 9일 외에 11월 23일, 11월 30일, 12월 1일, 12월 8일 국회 본회의를 열어 법안 처리를 하기로 합의했다.</p>
<p dmcf-pid="xR20oWcp3j" dmcf-ptype="general">경남도는 우선 11월 예정 본회의 때 반드시 우주항공청 특별법이 국회를 통과하길 기대한다.</p>
<p dmcf-pid="yYONtMuj3N" dmcf-ptype="general">박완수 경남지사는 이날 낮 국회 정문에서 우주항공청 특별법 제정 촉구 1인 시위를 하는 방법으로 국회를 압박한다.</p>
<p dmcf-pid="WGIjFR7A0a" dmcf-ptype="general">박 지사는 '우주항공청법 모든 쟁점은 해소되었다. 국회는 11월 정기국회 내 우주항공청법을 통과시켜라'란 피켓을 들고 1인 시위를 한다.</p>
<p dmcf-pid="YhkJYf1iug" dmcf-ptype="general">박 지사는 이어 국회 소통관에서 같은 내용으로 기자회견을 한다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="GlEiG4tn3o" dmcf-ptype="figure">
<p class="link_figure"><img alt="우주항공청 발목 잡기 중단하라 (창원=연합뉴스) 이정훈 기자 = 경남도의회 국민의힘 의원들이 24일 경남도의회 본회의 시작 전 민주당이 우주항공청 특별법 통과에 발목을 잡고 있다며 조속한 국회 통과를 촉구하는 기자회견을 하고 있다. 2023.10.24" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070506475mhkc.jpg" data-org-width="1200" dmcf-mid="07yrzo2mzW" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070506475mhkc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            우주항공청 발목 잡기 중단하라 (창원=연합뉴스) 이정훈 기자 = 경남도의회 국민의힘 의원들이 24일 경남도의회 본회의 시작 전 민주당이 우주항공청 특별법 통과에 발목을 잡고 있다며 조속한 국회 통과를 촉구하는 기자회견을 하고 있다. 2023.10.24
           </figcaption>
</figure>
<p dmcf-pid="HSDnH8FL0L" dmcf-ptype="general">seaman@yna.co.kr</p>
<p dmcf-pid="ZuXC9A6h3i" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
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