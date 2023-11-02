
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
    <h3>[WKBL 팀별 프리뷰] 지난 시즌 체면 구긴 KB, 그렇기에 더 간절하다</h3><h6>박종호  2023. 11. 1. 07:10</h6>
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
<section dmcf-sid="uuVv7L9rwl">
<figure class="figure_frm origin_fig" dmcf-pid="78JF6reWrh" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/basketkorea/20231101071003988vvsp.jpg" data-org-width="800" dmcf-mid="UQ2SunKwIS" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/basketkorea/20231101071003988vvsp.jpg" width="658"/></p>
</figure>
<div dmcf-pid="z6i3PmdYrC" dmcf-ptype="general">
<p>청주 KB스타즈의 목표는 당연하게도 우승이다. <br/><br/>KB는 최근 몇 시즌 간 리그 강팀으로 군림했다. 박지수(196cm, C) 효과였다. 2021~2022시즌까지만 해도 압도적인 모습으로 리그를 재패했다. <br/><br/>하지만 지난 시즌 상황은 다소 달랐다. 박지수를 포함해 주축 선수들이 부상으로 고전했다. 그 결과, 10승 20패를 기록. 플레이오프 진출에도 실패했다. 한 번의 실패를 맞본 KB는 독하게 비시즌 훈련에 임했다. 누구보다 긴 비시즌을 보내고 있는 KB다. <br/><br/><strong><span># 건강한 KB는 강력한 우승 후보</span></strong><br/><br/>앞서 언급한 것처럼 KB는 강력한 우승 후보로 뽑힌다. 골밑에는 리그 최고의 선수인 박지수가 있다. 외곽에는 WKBL 역사상 가장 훌륭한 슈터라고 불리는 강이슬(180cm, F)이 있다. 그 외에도 허예은(165cm, G), 심성영(165cm, G), 염윤아(177cm, G), 김민정(181cm, F) 등이 있다. 또한, 이번 비시즌에는 실패를 만회하기 위해 FA로 김예진(174cm, F)까지 품었다. <br/>부상이 없는 KB는 강력한 우승 후보로 뽑힌다. 실제로 개막 미디어데이 투표에서 가장 많은 표를 받으며 우승 후보로 선정됐다. <br/>각오도 엄청나다. 한 번의 실패를 경험한 KB는 독하게 훈련에 임했다. 김완수 KB 감독은 출정식을 통해 “지난 시즌 아쉬운 시즌을 보냈다. 이번에는 다를 것이다. 선수들과 독하게 비시즌을 보냈다. 기대하셔도 좋을 것이다”라는 말을 남겼다. <br/>선수들의 각오도 남달랐다. 강이슬은 “작년에 아쉬웠던 모습을 KB에서 회복하고 싶은 마음이 컸다. 팀이랑 같이 자존심을 세우고 싶었다”라고 말했고 심성영도 “다가오는 시즌에는 진짜 이 악물고 절치부심해서 잘하고 싶다는 생각을 많이 했다”라는 각오를 남겼다. <br/><br/><span><strong># 부진했던 강이슬, KB와 함께 반등할 수 있을까?</strong></span><br/><br/>박지수가 빠진 KB에서 강이슬은 외로웠다. 다른 선수들의 도움이 있었지만, 상대의 집중 견제를 받았기 때문. 이에 매우 고전했던 강이슬이다. 팀의 에이스로 경기당 평균 15.2점 6.5리바운드 2.6어시스트를 기록했다. 하지만 장점인 외곽 득점이 쉽게 터지지 않았다. 지난 시즌 강이슬의 평균 3점슛 성공률은 29%에 불과했다. (강이슬의 2021~2022시즌 평균 3점슛 성공률은 42%였다)<br/>아쉬운 시즌을 보낸 강이슬은 “작년에 아쉬웠던 모습을 KB에서 회복하고 싶은 마음이 컸다. 팀이랑 같이 자존심을 세우고 싶었다”라는 각오를 전했다. <br/>하지만 차기 시즌 강이슬은 더 이상 외롭지 않다. 박지수가 코트 위에 돌아오기 때문. 두 선수의 시너지는 이미 2021~2022시즌과 국가대표에서 증명했다. 박지수가 골밑을, 강이슬이 외곽을 지킬 예정이다. 거기에 허예은, 김민정, 심성영 등 강이슬을 도울 자원들도 충분하다. 그럼에도 강이슬의 외곽 득점이 터지지 않는다면 KB는 고전할 수 있다. 이는 강이슬의 반등이 필요한 이유다. <br/><br/><strong><span>[청주 KB, 2022~2023시즌 주요 지표(경기당 평균 기준)]</span><br/>1. 득점 : 65.7점 (5위)<br/> 1) 2점슛 성공률 : 43.9% -&gt; (5위)<br/> 2) 3점슛 성공률 : 25.1% -&gt; (5위)<br/>2. 실점 : 70.8점 (4위)<br/>3. 리바운드 : 38.8 (6위)<br/>4. 어시스트 : 16개 (6위)<br/>5. 스틸 : 6.6개 (4위)<br/>6. 블록슛 : 1.6개 (5위)</strong><br/><br/>사진 제공 = WKBL</p>
</div>
</section>
</div></p></section></div><h6>[Source : 바스켓코리아]</h6></div>
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