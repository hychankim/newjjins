
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
    <h3>[더 한장] 고단한 민족... 파키스탄에서 쫓겨나는 아프간 난민들</h3><h6>전기병 기자  2023. 11. 1. 07:04</h6>
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
<section dmcf-sid="4Y6g5Qpa0B">
<figure class="figure_frm origin_fig" dmcf-pid="8qjh2cPluq" dmcf-ptype="figure">
<p class="link_figure"><img alt="아프간 난민들이 지난 10월 30일 아프가니스탄 낭가르하르주 토르캄 국경에 트럭을 타고 도착하고 있다. /AFP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/chosun/20231101070426659yzaa.jpg" data-org-width="5000" dmcf-mid="2peVmplfz9" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/chosun/20231101070426659yzaa.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            아프간 난민들이 지난 10월 30일 아프가니스탄 낭가르하르주 토르캄 국경에 트럭을 타고 도착하고 있다. /AFP연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="6BAlVkQSFz" dmcf-ptype="general">10월 30일 파키스탄과 인접한 아프가니스탄 낭가하르주 토르캄 국경 도로가 짐을 실은 트럭들로 가득차 있습니다. 트럭에는 각종 가재도구가 가득 실려있고 그 위에는 아이들이 올라 앉아 있습니다. 이들은 그동안 파키스탄에 불법거주하던 아프가니스탄 사람들입니다.</p>
<p dmcf-pid="P1ekpJBEz7" dmcf-ptype="general">파키스탄 내 아프가니스탄 미등록 난민과 이민자들이 대거 아프가니스탄으로 돌아가고 있다고 외신들이 보도했습니다. 아프가니스탄 탈레반 정부는 지난 한달 사이 아프가니스탄인 약 6만 명이 파키스탄에서 돌아왔다고 밝혔습니다.</p>
<p dmcf-pid="QtdEUibD3u" dmcf-ptype="general">앞서 파키스탄 정부는 자국 내 440만 명의 아프가니스탄 난민과 이민자 중 약 170만여 명이 미등록 상태라면서, 이들이 돌아가지 않으면 11월 1일 이후 이들을 강제추방하겠다고 밝혔었습니다.</p>
<p dmcf-pid="xfrYQsJG3U" dmcf-ptype="general">2021년 탈레반이 아프가니스탄을 탈환한 후 많은 이주민이 파키스탄으로 유입됐지만, 이미 1979년 소련의 침공 이후부터 많은 이주민이 파키스탄으로 넘어와 살고 있었습니다.</p>
<p dmcf-pid="yCbRT9Xepp" dmcf-ptype="general">추방 위협은 올해 파키스탄 정부가 증거를 제시하지 않은 채 아프간인이 연루되었다고 말한 자살 폭탄 테러 이후에 나왔다고 로이터는 보도했습니다. 기록적인 인플레이션과 힘든 국제통화기금(IMF) 구제금융 프로그램을 겪고 있는 파키스탄의 경제 사정도 이 정책이 나온 배경입니다.</p>
<p dmcf-pid="WhKey2Zd00" dmcf-ptype="general">탈레반의 폭정과 경제적 어려움 때문에 고국을 떠났던 아프간 난민들은 이제 다시 고향으로 돌아가야 하는 처지가 되었습니다. 하지만 탈레반 통치 아래에서 더 나빠진 아프가니스탄의 사정은 이들에게 암울할 뿐입니다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="YLG7jXwzz3" dmcf-ptype="figure">
<p class="link_figure"><img alt="아프간 난민들이 10월 31일 파키스탄-아프가니스탄 국경을 넘기 위해 트럭을 타고 차만에 도착하고 있다./AFP 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/chosun/20231101070428567jaem.jpg" data-org-width="3679" dmcf-mid="VOfnH8FL0K" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/chosun/20231101070428567jaem.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            아프간 난민들이 10월 31일 파키스탄-아프가니스탄 국경을 넘기 위해 트럭을 타고 차만에 도착하고 있다./AFP 연합뉴스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="GoHzAZrq3F" dmcf-ptype="figure">
<p class="link_figure"><img alt="10월 30일 파키스탄 노세라 아자헬 마을의 아프간 난민 어린이들이 가족과 함께 아프가니스탄으로 돌아가기위해  짐이 가득 실린 트럭에 앉아 있다. /로이터 뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/chosun/20231101070430237rhng.jpg" data-org-width="5000" dmcf-mid="f32JYf1i7b" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/chosun/20231101070430237rhng.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            10월 30일 파키스탄 노세라 아자헬 마을의 아프간 난민 어린이들이 가족과 함께 아프가니스탄으로 돌아가기위해 짐이 가득 실린 트럭에 앉아 있다. /로이터 뉴스1
           </figcaption>
</figure>
</section>
</div></p></section></div><h6>[Source : 조선일보]</h6></div>
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