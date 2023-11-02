
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
    <h3>김헌 "아프로디테는 둘, 플라톤의 천상의 아프로디테와 지상의 아프로디테" (철파엠)</h3><h6>이연실  2023. 11. 1. 08:44</h6>
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
<section dmcf-sid="uihYsho5MM">
<div dmcf-pid="7pRoPR7AJx" dmcf-ptype="general">
<p>1일(수) 방송된 SBS 파워FM '김영철의 파워FM'에서는 서울대 인문학연구원 김헌 교수가 '그리스 로마 신화 도장 깨기'라는 테마로 아프로디테에 관한 이야기를 소개했다. <br/><br type="_moz"/></p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="zudaxdqkLQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="iMBC 연예뉴스 사진" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/iMBC/20231101084430806hhyq.jpg" data-org-width="750" dmcf-mid="UPjroj8CLR" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/iMBC/20231101084430806hhyq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            iMBC 연예뉴스 사진
           </figcaption>
</figure>
<div dmcf-pid="qBLcdL9reP" dmcf-ptype="general">
<br/>
<p>이날 김헌은 "지난 몇 주 동안 아름다움과 사랑의 여신 아프로디테에 관한 이야기를 했다. 그런데 이 아프로디테의 정체가 굉장히 모호하다. 오늘은 아프로디테에 관한 여러가지 이야기를 전해드리겠다"라고 말했다. </p>
</div>
<div dmcf-pid="BcH3yHD7d6" dmcf-ptype="general">
<p>이어 김헌은 "아프로디테는 우라노스의 거세한 남근이 바다에 빠져서 거품이 일어나면서 태어난 여신이라는 이야기를 해드린 적이 있다. 헤시오도스의 작품에 나오는 이 이야기 말고 '아프로디테는 우라노스의 거세된 남근에서 나온 게 아니라 제우스의 딸이다. 제우스와 디오네라는 여신 사이에서 태어난 딸이다' 라는 호메로스의 이야기도 있다"라고 전하고 "이런 점에서 아프로디테의 정체가 모호하다고 말씀드린 것이다"라고 덧붙였다. </p>
</div>
<div dmcf-pid="bD5UG5mBi8" dmcf-ptype="general">
<p>"이런 혼란은 고대인에게도 있었다"라며 김헌은 "그래서 철학자 플라톤이 '향연'이라는 작품에서 이렇게 설명한다. '이 세상에는 아프로디테가 둘이 있는 거야. 우리가 사는 감각적이고 물질적인 세상이 이 세상의 전부가 아니야. 모든 존재의 완전무결한 모습을 갖춘 저 천상의 이데아의 세계가 있어. 이런 것처럼 아름다움에도 육체적인 아름다움과 정신적이고 고결한 아름다움이 있는 거야. 그리고 사랑에도 우리가 육체로 나눌 수 있는 육체적인 사랑이 있는가 하면 정신적이고 순수한 사랑이 있는 거야. 그러니까 아프로디테도 두 명이야' 라고 천상의 아프로디테와 지상의 아프로디테에 대해 설명한다. 플라톤은 천상의 아프로디테는 우라노스의 남근에서 거품이 일면서 태어난 아프로디테다 해서 '아프로디테 우라니아'라고 표현했고 지상의 아프로디테는 '아프로디테 판데모스'라고 표현했다"라고 설명했다. </p>
</div>
<div dmcf-pid="KG2QB2Zdn4" dmcf-ptype="general">
<p>이에 DJ 김영철이 "그러면 그리스 로마 신화에서 다양한 사랑이야기 배경이 있는 아프로디테는 지상의 아프로디테인 거냐?"라고 묻자 김헌이 "그렇다. 그리스 로마 신화에서 재미있게 읽을 수 있는 사랑이야기는 거의 다 육체적이고 감각적인 사랑이다. 그러니까 플라톤의 구분에 따르면 지상의 아프로디테라고 할 수 있다. 플라토닉 러브 하면 정신적인 사랑을 이야기하는데 그것을 관장하는 건 아프로디테 우라니아, 천상의 여신이라고 이야기한다. 그런데 그게 칼로 자르듯 명확하게 구분되는 건 아닌 것 같다"라고 답했다. </p>
</div>
<div dmcf-pid="9UegQezcnf" dmcf-ptype="general">
<p>이후 김헌은 "아주 유명하지는 않지만 아프로디테의 탄생에 대한 또 다른 이야기도 있다"라며 알에서 태어났다는 아프로디테의 이야기와 키케로가 '신들의 본성'이라는 책에서 설명한 아프로디테의 이야기도 함께 소개했다. </p>
</div>
<div dmcf-pid="2O0B10hVdV" dmcf-ptype="general">
<p>'김영철의 파워FM'은 매일 오전 7시부터 9시까지 SBS 파워FM에서 방송되며, PC 및 스마트폰 애플리케이션 'SBS 고릴라'를 통해서도 들을 수 있다.</p>
</div>
<p dmcf-pid="VSzVpzyPJ2" dmcf-ptype="general">iMBC 이연실 | 사진캡쳐 SBS김영철의파워FM 인스타그램</p>
</section>
</div></p></section></div><h6>[Source : MBC연예]</h6></div>
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