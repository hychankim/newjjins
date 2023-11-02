
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
    <h3>박성현·이보미, KLPGA 투어 2023시즌 최종전 출전</h3><h6>강명주 기자  2023. 11. 1. 07:13</h6>
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
<section dmcf-sid="QyjRMInXWP">
<div dmcf-pid="xXDnivNFS6" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="312783" data-type="photo" dmcf-pid="yJq5ZP0gy8" dmcf-ptype="figure">
<p class="link_figure"><img alt="2023년 한국여자프로골프(KLPGA) 투어 SK쉴더스·SK텔레콤 챔피언십에 출전할 예정인 박성현, 이보미 프로. 사진제공=KLPGA" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/golfhankook/20231101071304186cfjy.jpg" data-org-width="600" dmcf-mid="PgZhCzyPCQ" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/golfhankook/20231101071304186cfjy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2023년 한국여자프로골프(KLPGA) 투어 SK쉴더스·SK텔레콤 챔피언십에 출전할 예정인 박성현, 이보미 프로. 사진제공=KLPGA
           </figcaption>
</figure>
<div dmcf-pid="W3IjNHD7y4" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="Y0CAjXwzTf" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="GphcAZrqSV" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="HOJfVkQSS2" dmcf-ptype="general">
<p>[골프한국 강명주 기자] 스타플레이어 박성현(30)과 이보미(35)가 한국여자프로골프(KLPGA) 투어 2023시즌 마지막 대회인 SK쉴더스·SK텔레콤 챔피언십(총상금 10억원)에 출전한다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="XIi4fExvT9" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="ZCn84DMTTK" dmcf-ptype="general">
<p>대회조직위원회는 10월 31일 이같은 내용을 발표하면서 박성현과 이소미의 출전 소감도 전했다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="5KGOsUS4Wb" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="19HIOuv8CB" dmcf-ptype="general">
<p>박성현은 "내년에도 LPGA 투어에 집중할 생각이며, 가능하면 많은 한국 대회에 출전해 팬들을 만나고 싶다"고 밝혔고, KLPGA 투어 영구 시드를 보유한 이보미는 "안선주 언니처럼 KLPGA 투어에서 좋은 모습을 보여드리는 게 목표다"며 국내 무대 은퇴설을 일축했다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="t2XCI7T6vq" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="FphcAZrqhz" dmcf-ptype="general">
<p>박성현은 10월 KLPGA 투어 하이트진로 챔피언십, 미국여자프로골프(LPGA) 투어 BMW 챔피언십에 이은 출격이다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="3Ulkc5mBh7" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="0Ulkc5mBhu" dmcf-ptype="general">
<p>이보미는 10월 일본여자프로골프(JLPGA) 투어 노부타그룹 마스터즈GC 레이디스 대회에서 일본 무대 고별전을 치른 바 있다. 가장 최근 KLPGA 투어 참가 대회는 올해 5월 NH투자증권 레이디스 챔피언십이었다.</p>
<br/>
<br/>
</div>
<div dmcf-pid="puSEk1sbhU" dmcf-ptype="general">
<p> </p>
<br/>
<br/>
</div>
<div dmcf-pid="U7vDEtOKvp" dmcf-ptype="general">
<p>SK쉴더스·SK텔레콤 챔피언십은 오는 10일부터 사흘간 강원도 춘천의 라비에벨 컨트리클럽(파72)에서 개최된다. 박민지가 지난 시즌 우승으로 피날레를 장식했던 무대다.<br/> /골프한국 www.golfhankook.com /뉴스팀 ghk@golfhankook.com</p>
</div>
</section>
</div></p></section></div><h6>[Source : 골프한국]</h6></div>
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