
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
    <h3>日정부, 北 3차 위성 발사 계속 주시…경계에 만전</h3><h6>김예진 기자  2023. 11. 1. 09:34</h6>
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
<section dmcf-sid="9FGgUqWQfu">
<figure class="figure_frm origin_fig" dmcf-pid="24BhQezc2U" dmcf-ptype="figure">
<p class="link_figure"><img alt="[서울=뉴시스] 김명년 기자 = 10월 중 군사정찰위성 3차 발사를 하겠다던 북한의 계획이 결국 무산된 것으로 추정되는 가운데, 일본 정부는 계속 경계·감시에 만전을 기하고 있다고 1일 일본 공영 NHK가 보도했다. 사진은 지난 8월 24일 오전 서울 중구 서울역 대합실에서 시민들이 관련 뉴스를 시청하고 있는 모습. 2023.11.01.kmn@newsis.com" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsis/20231101093451824oxka.jpg" data-org-width="720" dmcf-mid="KiLuwOiH27" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsis/20231101093451824oxka.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [서울=뉴시스] 김명년 기자 = 10월 중 군사정찰위성 3차 발사를 하겠다던 북한의 계획이 결국 무산된 것으로 추정되는 가운데, 일본 정부는 계속 경계·감시에 만전을 기하고 있다고 1일 일본 공영 NHK가 보도했다. 사진은 지난 8월 24일 오전 서울 중구 서울역 대합실에서 시민들이 관련 뉴스를 시청하고 있는 모습. 2023.11.01.kmn@newsis.com
           </figcaption>
</figure>
<p dmcf-pid="V4BhQezcVp" dmcf-ptype="general"><br/> [서울=뉴시스] 김예진 남빛나라 기자 = 10월 중 군사정찰위성 3차 발사를 하겠다던 북한의 계획이 결국 무산된 것으로 추정되는 가운데, 일본 정부는 계속 경계·감시에 만전을 기하고 있다고 1일 일본 공영 NHK가 보도했다. </p>
<p dmcf-pid="fq3D94tnB0" dmcf-ptype="general">지난 8월24일 2차 발사에 실패한 직후 대외매체 조선중앙통신을 통해 10월 3차 발사를 하겠다고 발표했지만 1일 현재까지 별다른 조짐이 보이지 않고 있다.</p>
<p dmcf-pid="4d6HLN4I23" dmcf-ptype="general">NHK에 따르면 일본 정부 내에서는 ▲더 이상 실패는 허용되지 않기 때문에 북한이 신중하게 준비를 진행한다는 추측 ▲러시아로부터 기술 협력을 얻는 데 시간이 걸리고 있는 게 아니냐는 견해가 나오고 있다. </p>
<p dmcf-pid="8mAKCvNFKF" dmcf-ptype="general">또한 북한이 11월과 12월에 발사를 시도할 가능성이 있다는 견해도 일본 정부 내에서 나오고 있다. </p>
<p dmcf-pid="6R4YigVsVt" dmcf-ptype="general">이에 일본 정부는 위성이 자국 영역 내로 낙하할 경우에 대비해 ▲동중국해에 요격미사일을 탑재한 이지스함 ▲오키나와(沖縄)현에 지상배치형 요격미사일(PAC3) 부대를 각각 전개하고 있다. 계속 경계·감시에 만전을 기하고 있다.</p>
<p dmcf-pid="PgeFADMTb1" dmcf-ptype="general">앞서 북한은 5월, 8월 2차례 정찰위성을 발사하고 대외매체 조선중앙통신을 통해 실패 사실을 빠르게 인정했다. 2차 실패 당시 북한은 사소한 결함 때문이라고 주장하면서 10월 중 3차 발사를 하겠다고 예고했으나 11월 1일 현재까지 발사 조짐은 보이지 않고 있다. </p>
<p dmcf-pid="QAnUDsJGq5" dmcf-ptype="general">위성 발사는 평화로운 우주개발 활동 일환이라고 주장해온 북한은 정당성 확보를 위해 발사에 앞서 국제해사기구(IMO)에 발사 계획을 통보해왔다. 이번에도 통보 후 발사할 가능성이 있다. </p>
<p dmcf-pid="xhw4TGEufZ" dmcf-ptype="general">북한이 대륙간탄도미사일(ICBM)에 사용되는 것과 사실상 동일한 기술을 사용하는 위성 발사를 하는 건 유엔 안전보장이사회(안보리) 결의 위반이다.</p>
<p dmcf-pid="ybprV63o9X" dmcf-ptype="general"><span>☞공감언론 뉴시스</span> aci27@newsis.com, south@newsis.com </p>
</section>
</div></p></section></div><h6>[Source : 뉴시스]</h6></div>
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