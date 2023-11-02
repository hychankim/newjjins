
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
    <h3>왜 이 선수 칭찬은 별로 없지...BBC가 나서서 극찬한 토트넘 최고의 혜자 영입</h3><h6>김대식 기자  2023. 11. 1. 08:54</h6>
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
<section dmcf-sid="BeMssho5Dm">
<div dmcf-pid="bcjGG5mBwr" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="609267" data-type="photo" dmcf-pid="KkAHH1sbDw" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/interfootball/20231101085433101nrzk.jpg" data-org-width="650" dmcf-mid="q5HffP0gIs" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/interfootball/20231101085433101nrzk.jpg" width="658"/></p>
</figure>
<div dmcf-pid="9EcXXtOKDD" dmcf-ptype="general">
<div>
</div>
<p>[인터풋볼] 김대식 기자 = 굴리엘모 비카리오는 이번 시즌 토트넘 최고의 영입이라고 해도 과언이 아니다.</p>
</div>
<p dmcf-pid="2NgyyHD7wE" dmcf-ptype="general">영국 'BBC'는 1일(한국시간) "토트넘의 골키퍼인 비카리오는 왜 그가 완벽한 골키퍼인지를 보여준다"며 비카리오를 높게 평가했다.</p>
<p dmcf-pid="VjaWWXwzIk" dmcf-ptype="general">지난 여름 토트넘은 새로운 골키퍼 영입이 반드시 필요했다. 위고 요리스가 더 이상 팀의 1순위 골키퍼로 뛰지 않는다는 게 명백해졌기 때문이다. 여러 선수를 검토한 끝에 토트넘이 데려온 선수는 엠폴리에서 뛰고 있던 비카리오였다. 토트넘이 비카리오 영입에 투자한 금액은 단 1900만 유로(약 271억 원)에 불과했다.</p>
<p dmcf-pid="fANYYZrqwc" dmcf-ptype="general">프리미어리그(PL)를 좋아하는 팬들에게 익숙하지 않은 선수였고, 빅리그에서 뛴 경험이 많지 않았던 비카리오에게는 의심의 눈초리가 향했다. 요리스를 충분히 대체할 수 있을지도 걱정이었다. 걱정도 잠시, 비카리오는 리그 개막전부터 미친 듯한 활약을 선보였다.</p>
<p dmcf-pid="4MQrrInXmA" dmcf-ptype="general">토트넘이 손흥민, 제임스 메디슨, 파페 마타 사르, 이브 비수마 등의 활약으로 인해서 1위를 질주하는 것도 사실이지만 비카리오의 결정적인 선방이 없었다면 승리를 장담할 수 없는 경기들이 많았다.</p>
<p dmcf-pid="8RxmmCLZmj" dmcf-ptype="general">이에 'BBC'는 이탈리아 세리에A에 있을 때부터 비카리오가 받았던 칭찬을 하나씩 언급했다. 먼저 토트넘 감독을 맡기도 했었던 조세 무리뉴 감독은 "비카리오를 상대로 골을 넣는 것은 어려웠고, 그는 세계 최고의 골키퍼처럼 보였다"고 칭찬한 바 있다.</p>
<p dmcf-pid="6eMssho5IN" dmcf-ptype="general">비카리오의 롤모델로 알려진 잔루이지 부폰 역시 "비카리오는 전체적으로 가장 뛰어난 골키퍼다"라고 엄지를 치켜세운 적이 있다. 세계적인 명장과 역사상 최고의 골키퍼 중 한 명이 보기에도 비카리오는 완벽한 골키퍼였고, 토트넘에 매우 성공적으로 안착했다.</p>
<p dmcf-pid="PidCCvNFEa" dmcf-ptype="general">비카리오는 이번 시즌 PL 주전 골키퍼 중에서 선방률이 가장 높다. 알리송 베케르, 에데르송, 안드레 오나나처럼 이미 세계적으로 인지도가 높은 골키퍼들을 모두 제쳤다. 이번 시즌 PL 최고의 영입으로 주로 메디슨이 거론되지만 혜자 영입은 분명히 비카리오다.</p>
<p dmcf-pid="QnJhhTj3Eg" dmcf-ptype="general">비카리오 영입은 엔제 포스테코글루 토트넘 감독의 혜안이기도 했다. 그는 "사람으로서 이야기를 나눈 후 비카리오가 이 팀에 완벽하게 어울릴 것이라고 봤다. 그는 가능한 한 최고의 골키퍼가 되기 위해서 이곳에 왔다"고 말한 적이 있다.</p>
<p dmcf-pid="xLillyA0so" dmcf-ptype="general">사진=토트넘</p>
</section>
</div></p></section></div><h6>[Source : 인터풋볼]</h6></div>
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