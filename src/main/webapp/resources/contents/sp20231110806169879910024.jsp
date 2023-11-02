
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
    <h3>사우디, 2034 월드컵 단독 유치 신청</h3><h6>김재호 MK스포츠 기자(greatnemo@maekyung.com)  2023. 11. 1. 08:06</h6>
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
<section dmcf-sid="16WF28FLGx">
<p dmcf-pid="tuwSFUS41Q" dmcf-ptype="general">2034 FIFA 월드컵은 중동에서 열릴 예정이다.</p>
<p dmcf-pid="FqsypzyPZP" dmcf-ptype="general">국제축구연맹(FIFA)은 1일(한국시간) 2030, 2034 월드컵에 대한 유치 의향서를 접수받았다고 발표했다.</p>
<p dmcf-pid="3BOWUqWQ16" dmcf-ptype="general">앞서 발표한 대로 2030 월드컵은 모로코 포르투갈 스페인 3국이 공동 개최하며 우루과이 아르헨티나 파라과이에서 개막 경기를 치르는 방식으로 신청서가 접수됐다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="0bIYuBYxH8" dmcf-ptype="figure">
<p class="link_figure"><img alt="지아니 인판티노 FIFA 회장과 모하메드 빈 살만 사우디 왕자. 사진=ⓒAFPBBNews = News1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101080607588iprn.jpg" data-org-width="512" dmcf-mid="5RY3V63otM" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101080607588iprn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            지아니 인판티노 FIFA 회장과 모하메드 빈 살만 사우디 왕자. 사진=ⓒAFPBBNews = News1
           </figcaption>
</figure>
<div dmcf-pid="pTeNCvNFH4" dmcf-ptype="general">
           아시아(AFC) 오세아니아(OFC)가 개최할 차례인 2034 월드컵에는 사우디아라비아 한 곳만 유치 신청서를 접수했다.
          </div>
<p dmcf-pid="UydjhTj31f" dmcf-ptype="general">원래 2034 월드컵은 사우디아라비아와 호주의 이파전으로 예상됐으나 호주가 막판에 유치 의사를 철회하면서 사우디 아라비아가 단독으로 신청하게됐다.</p>
<p dmcf-pid="uWJAlyA05V" dmcf-ptype="general">FIFA는 유치 신청 국가에 대한 평과 과정을 거쳐 2024년 4분기 총회에서 최종 결정할 예정이라고 밝혔다.</p>
<p dmcf-pid="7d1zQezc12" dmcf-ptype="general">아직 공식적으로 확정된 것은 아니지만, 유치 의사를 드러낸 곳이 단 한 곳이기에 남은 절차는 사실상 형식적으로 진행될 예정이다.</p>
<p dmcf-pid="zJtqxdqkG9" dmcf-ptype="general">사우디아라비아가 2034 월드컵 개최지로 최종 선정될 경우 2022 카타르 월드컵에 이어 중동에서 열리는 두 번째, 아시아에서 열리는 세 번째 월드컵이 될 예정이다.</p>
<p dmcf-pid="qiFBMJBEGK" dmcf-ptype="general">카타르 월드컵이 그랬듯, 서방 세계의 반발도 적지 않을 것으로 우려된다.</p>
<p dmcf-pid="Bop9dL9rtb" dmcf-ptype="general">사우디아라비아는 여성 인권을 탄압하는 인권 탄압국으로 알려져 있고 지난 2018년에는 언론인 자말 카슈끄지를 암살했다는 의혹을 받고 있다.</p>
<p dmcf-pid="bgU2Jo2mYB" dmcf-ptype="general">이들은 이같은 이미지를 불식시키기 위해 스포츠에 막대한 돈을 투자하고 있고, 일각에서는 이를 ‘스포츠워싱’이라 부르고 있다.</p>
<p dmcf-pid="KauVigVsHq" dmcf-ptype="general">앞서 호주와 뉴질랜드에서 공동 개최된 여자월드컵에서도 사우디아라비아 관광청이 대회 공식 후원사가 되면서 개최국 축구협회와 참가 선수들의 강한 반발을 일으키기도 했다.</p>
<p dmcf-pid="9TeNCvNF5z" dmcf-ptype="general">[피닉스(미국) =김재호 MK스포츠 특파원]</p>
<p dmcf-pid="2ydjhTj3Y7" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
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