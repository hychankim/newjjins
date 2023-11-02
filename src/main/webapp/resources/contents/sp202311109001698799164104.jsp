
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
    <h3>DB 출신 드완 에르난데스, 모교 마이애미대 코치진 합류</h3><h6>민준구 MK스포츠(kingmjg@maekyung.com)  2023. 11. 1. 09:00</h6>
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
<section dmcf-sid="3LehzKHRXa">
<p dmcf-pid="0QfE10hVYg" dmcf-ptype="general">드완 에르난데스가 모교의 코치가 됐다.</p>
<p dmcf-pid="p05QmCLZYo" dmcf-ptype="general">마이애미 대학은 최근 에르난데스와 2023-24시즌을 함께한다고 전했다.</p>
<p dmcf-pid="Up1xsho5ZL" dmcf-ptype="general">에르난데스는 현재 마이애미 대학을 이끌고 있는 짐 라라냐가 감독이 지휘하던 시절 선수로서 활약한 바 있다. 2016년부터 2018년까지 함께했고 이후 NBA에 도전, 2019 신인 드래프트에서 2라운드 29순위(전체 59순위)로 토론토 랩터스에 지명됐다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="uAoW28FLXn" dmcf-ptype="figure">
<p class="link_figure"><img alt="마이애미 대학은 최근 에르난데스와 2023-24시즌을 함께한다고 전했다. 사진=마이애미 대학 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101090008773ohrf.jpg" data-org-width="550" dmcf-mid="5cmVcwRyXc" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101090008773ohrf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            마이애미 대학은 최근 에르난데스와 2023-24시즌을 함께한다고 전했다. 사진=마이애미 대학 SNS
           </figcaption>
</figure>
<div dmcf-pid="7cgYV63o5i" dmcf-ptype="general">
           NBA에 정착하지 못한 에르난데스는 G리그, 이스라엘, 푸에르토리코, KBL, CBA 등 여러 곳을 전전하다 마이애미 대학으로 돌아갔다.
          </div>
<p dmcf-pid="zkaGfP0gtJ" dmcf-ptype="general">에르난데스는 마이애미 대학의 코치로서 선수들의 경기 외적인 부분까지 관리하는 역할을 맡게 됐다.</p>
<p dmcf-pid="qGvKNkQS5d" dmcf-ptype="general">KBL 팬들에게는 익숙한 얼굴이기도 하다. 원주 DB 소속으로 2022-23시즌 29경기를 뛰었다. 기대와 달리 활약상이 좋지는 않았다. 평균 20분 37초 동안 14.6점 6.4리바운드 1.2어시스트를 기록했다. 결국 발바닥 부상으로 인해 말콤 토마스와 교체된 후 KBL에 돌아오지 못했다.</p>
<p dmcf-pid="BHT9jExvte" dmcf-ptype="general">에르난데스는 이후 CBA 소속 닝보 로케츠에서 뛰었고 이제는 마이애미 대학의 코치로서 새로운 커리어를 시작한다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="bympdL9rtR" dmcf-ptype="figure">
<p class="link_figure"><img alt="드완 에르난데스는 KBL 팬들에게는 익숙한 얼굴이기도 하다. 원주 DB 소속으로 2022-23시즌 29경기를 뛰었다. 사진=마이애미 대학 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101090010368nenw.jpg" data-org-width="550" dmcf-mid="FDRC7bGMXN" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101090010368nenw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            드완 에르난데스는 KBL 팬들에게는 익숙한 얼굴이기도 하다. 원주 DB 소속으로 2022-23시즌 29경기를 뛰었다. 사진=마이애미 대학 SNS
           </figcaption>
</figure>
<div dmcf-pid="KWsUJo2mXM" dmcf-ptype="general">
           [민준구 MK스포츠 기자]
          </div>
<p dmcf-pid="9vw3RibD5x" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : MK스포츠]</h6></div>
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