
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
    <h3>소문 무성했던 애플 행사, 어떤 게 맞고 어떤 게 틀렸나</h3><h6>이정현 미디어연구소  2023. 11. 1. 08:53</h6>
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
<section dmcf-sid="ZMf553C205">
<p dmcf-pid="58bYYZrqpZ" dmcf-ptype="general">(지디넷코리아=이정현 미디어연구소)애플이 30일(이하 현지시간) 온라인 행사를 열고 M3 시리즈 칩을 갖춘 14·16인치 맥북 프로와 24인치 아이맥 등 맥 신제품을 공개했다.</p>
<p dmcf-pid="1U5rrInX3X" dmcf-ptype="general">IT매체 맥루머스는 31일 그 동안 나왔던 애플 가을 행사 관련한 소문 중 어떤 것이 정확했는지 평가하는 기사를 실었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="tzFOOlg1pH" dmcf-ptype="figure">
<p class="link_figure"><img alt="애플이 M3 칩 탑재 맥북프로 14·16형을 공개했다. (사진=애플)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ZDNetKorea/20231101085301407kbwu.jpg" data-org-width="640" dmcf-mid="HqZwwOiHFt" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ZDNetKorea/20231101085301407kbwu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            애플이 M3 칩 탑재 맥북프로 14·16형을 공개했다. (사진=애플)
           </figcaption>
</figure>
<p dmcf-pid="Fsc66MujUG" dmcf-ptype="general">블룸버그 마크 거먼은 애플이 10월 30일이나 31일 맥 출시 이벤트를 개최할 것이라고 예상했다. 또 24인치 아이맥 새 모델은 M2칩을 건너뛰고 바로 M3칩으로 전환할 것이라고 전망했다.  </p>
<p dmcf-pid="3SmeenKw3Y" dmcf-ptype="general">이런 예측은 그대로 적중했다. 새 맥북프로 모델은 M3 프로·M3 맥스 칩을 탑재했으며 CPU, GPU 코어 수, 램 용량도 거먼의 예상 그대로였다. </p>
<p dmcf-pid="0xVZZFI9zW" dmcf-ptype="general">애플 전문 분석가 궈밍치와 마크 거먼은 올해 새 아이패드가 나올 것 같지 않다고 전망했다. 전망대로 애플은 이번 행사에서 아이패드 새 모델은 내놓지 않았다. 최근 중국 웨이보에 유출된 새 맥북 프로 상자 사진도 사실로 드러났다.</p>
<p dmcf-pid="pe8ttplfpy" dmcf-ptype="general">반면에 틀린 전망도 적지 않았다. 맥루머스는 지난 주 애플 공급사들이 아이패드미니, 맥북 프로 등 제품 배터리를 중국 규제 데이터베이스에 다시 제출했다며 7세대 아이패드 미니 출시 가능성을 점쳤다. 하지만 이번 행사에서 아이패드 미니는 볼 수 없었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Usc66MujFT" dmcf-ptype="figure">
<p class="link_figure"><img alt="M3 칩 탑재 아이맥 24형 상품 페이지. 매직 키보드·마우스 충전용 라이트닝 케이블을 기본 제공한다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ZDNetKorea/20231101085301871oocg.jpg" data-org-width="640" dmcf-mid="XX5rrInX71" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ZDNetKorea/20231101085301871oocg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            M3 칩 탑재 아이맥 24형 상품 페이지. 매직 키보드·마우스 충전용 라이트닝 케이블을 기본 제공한다.
           </figcaption>
</figure>
<p dmcf-pid="uvsddL9rzv" dmcf-ptype="general">블룸버그 마크 거먼은 애플이 행사에서 USB-C 포트를 갖춘 맥용 매직 키보드, 매직 마우스, 매직 트랙패드를 발표할 가능성이 있다고 전망했지만, 공개된 액세서리에는 여전히 라이트닝 포트가 탑재됐다.</p>
<p dmcf-pid="7jiBB2ZdFS" dmcf-ptype="general">일본 IT 블로그 맥오타카라는 차기 24인치 아이맥이 M2·M2 프로 칩이 탑재될 것이라고 전망했으나 아이맥에는 M3 칩이 탑재됐다.</p>
<p dmcf-pid="zAnbbV5Jul" dmcf-ptype="general">아직 사실 여부가 확인되지 않은 전망들도 있다. 행사에 앞서 궈밍치는 24인치 아이맥이 내년에 업데이트될 것이라고 전망했는데, 애플은 이번 행사에서 새 아이맥을 공개했으나 올해 안에 출시할 지는 밝히지 않았다.</p>
<p dmcf-pid="qJP33uv8Fh" dmcf-ptype="general">이정현 미디어연구소(jh7253@zdnet.co.kr)</p>
</section>
</div></p></section></div><h6>[Source : 지디넷코리아]</h6></div>
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