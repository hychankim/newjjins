
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
    <h3>평택시, '가상 건축심의' 제도 활용해 고도제한 완화 추진</h3><h6>최해민  2023. 11. 1. 09:00</h6>
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
<section dmcf-sid="uEQYV63opc">
<p dmcf-pid="7wMH4Qpa0A" dmcf-ptype="general">(평택=연합뉴스) 최해민 기자 = 경기 평택시가 관내 주한미군기지 2곳 주변의 고도제한을 완화하기 위해 '가상의 건축심의' 제도를 활용하는 방안을 추진한다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="zo9C7bGM0j" dmcf-ptype="figure">
<p class="link_figure"><img alt="평택지역 비행안전구역(위쪽 K-55, 아래쪽 K-6) [평택시 제공. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101090007791ekmm.jpg" data-org-width="500" dmcf-mid="UnXLTGEu0k" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101090007791ekmm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            평택지역 비행안전구역(위쪽 K-55, 아래쪽 K-6) [평택시 제공. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="qg2hzKHRuN" dmcf-ptype="general">1일 연합뉴스 취재를 종합하면 평택시는 주거 환경 개선 등을 위해 지난해부터 고도제한 완화를 위한 '군공항 비행안전영향 검토 및 원도심 활성화 방안 수립 용역'을 진행 중이다.</p>
<p dmcf-pid="BaVlq9XeUa" dmcf-ptype="general">현재 관내에 캠프 험프리스(K-6), 오산에어베이스(K-55) 등 2곳의 미군기지가 있는 평택은 전체 면적(487.8㎢)의 38%에 해당하는 185.4㎢가 건축물 층고 제한을 받는 비행안전구역으로 지정돼 있다.</p>
<p dmcf-pid="bVZoyHD7pg" dmcf-ptype="general">비행안전구역은 활주로 위치와 경사도 등에 따라 1∼6구역까지 나뉘는데, 주로 기지 밖 민가에 적용되는 구역은 5·6구역이다.</p>
<p dmcf-pid="Kf5gWXwzuo" dmcf-ptype="general">해당 구역에서는 건축물 고도제한 규제가 적용돼 두 미군기지 주변에서는 사실상 15층 이상 건물은 짓지 못한다.</p>
<p dmcf-pid="941aYZrq3L" dmcf-ptype="general">이에 따라 시는 국가 안보와 직결되는 비행안전에 방해가 되지 않는 선에서 고도제한을 완화하기 위한 세부 계획을 추진하기로 했다.</p>
<p dmcf-pid="20C6wOiH7n" dmcf-ptype="general">시가 추진하는 계획 중 하나가 건축법상 '건축 사전결정 신청 제도'를 활용해 군 당국에 '가상의 건축심의'를 신청하는 것이다.</p>
<p dmcf-pid="VphPrInX7i" dmcf-ptype="general">가상의 건축심의는 시가 특정 지점에 15층 이상의 건축물을 짓는 것을 가정해 군 당국에 건축심의를 요청한 뒤 심의 과정에서 해당 지점 건축물 층고를 몇층까지 완화할 수 있는지 협의하는 것이다.</p>
<p dmcf-pid="fUlQmCLZ3J" dmcf-ptype="general">이를 통해 구역별 건축이 가능한 층고 기준이 설정되면 향후 실제 건축민원이 제기됐을 때 층고 적용이 가능하다는 것이 평택시의 설명이다.</p>
<p dmcf-pid="4RuDtplfFd" dmcf-ptype="general">시는 이번 달 중 비행안전구역이면서 실제로는 군 항공기 이착륙 경로와 관련성이 떨어지는 사각지대 2~3곳을 골라 군 당국에 가상의 건축심의를 신청할 계획이다.</p>
<p dmcf-pid="8e7wFUS4ue" dmcf-ptype="general">비행안전구역 내 건축심의는 지자체장이 우리 공군작전사령부에 '군사기지 및 보호에 관한 심의'(이하 군보심의)를 요청하면, 공군작전사령부가 공군본부 및 미군기지 부대장과 협의한 결과를 반영해 결론을 내리게 돼 있다.</p>
<p dmcf-pid="66FjH1sb0R" dmcf-ptype="general">이 과정에 3~4개월 걸리는 것을 고려할 때 군보심의 결과는 이르면 내년 상반기 중 나올 것으로 전망된다.</p>
<p dmcf-pid="PP3AXtOKzM" dmcf-ptype="general">평택시 관계자는 "고도제한은 법률로 정해져 있어 일률적으로 완화할 수는 없으나 개별 건축 민원 시 군 당국과 협의를 통해 일부 완화할 수 있다"며 "이런 점을 활용해 가상의 건축심의를 고도제한 완화의 방안으로 추진하는 것"이라고 설명했다.</p>
<p dmcf-pid="QQ0cZFI97x" dmcf-ptype="general">이어 "아직까진 국내에서 미군기지 측과 협의를 통해 고도제한을 완화한 사례는 없는 것으로 안다"며 "이번에 선례를 남기면 향후 평택뿐 아니라 전국 어디에서도 실제 건축 민원이 제기됐을 때 이 방안이 유용할 것"이라고 덧붙였다.</p>
<p dmcf-pid="xaVlq9Xe7Q" dmcf-ptype="general">goals@yna.co.kr</p>
<p dmcf-pid="W2XLTGEuF6" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
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