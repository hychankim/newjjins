
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
    <h3>김민재 분데스리가 정복 성공...10월 이달의 팀 선정 '케인-코망-사네 포함'</h3><h6>김대식 기자  2023. 11. 1. 06:55</h6>
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
<section dmcf-sid="G0SGVkQSm7">
<div dmcf-pid="HPUbgYkUIu" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="609243" data-type="photo" dmcf-pid="XQuKaGEuEU" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/interfootball/20231101065504750oqaz.jpg" data-org-width="650" dmcf-mid="WUVQr0hVIq" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/interfootball/20231101065504750oqaz.jpg" width="658"/></p>
</figure>
<div dmcf-pid="Zx79NHD7wp" dmcf-ptype="general">
<div>
</div>
<p>[인터풋볼] 김대식 기자 = 김민재는 독일에서도 성공적으로 안착했다.</p>
</div>
<p dmcf-pid="50SGVkQSr0" dmcf-ptype="general">축구 통계 매체 '후스코어드닷컴'은 31일(한국시간) 2023-24시즌 독일 분데스리가 10월 이달의 팀을 선정해 발표했다.</p>
<p dmcf-pid="1pvHfExvw3" dmcf-ptype="general">4-4-2 포메이션을 바탕으로 4백에 알렉스 그리말도, 마티아스 긴터, 김민재, 제레미 프림퐁이 선정됐다. 김민재의 이름이 반가웠다. 김민재는 평점 7.49점으로 수비진에서는 그리말도(7.53점) 다음으로 좋은 평가를 받았다.</p>
<p dmcf-pid="tUTX4DMTOF" dmcf-ptype="general">김민재의 평점이 더욱 놀라운 이유는 그리말도는 바이엘 레버쿠젠에서 굉장히 공격적인 역할을 맡은 윙백이라는 점 때문이다. 그리말도는 레버쿠젠이 공격을 펼칠 때에는 수비수처럼 행동하지 않는다. 중원까지 깊숙이 관여하거나 높은 위치까지 직접 올라가서 공격을 돕는다. </p>
<p dmcf-pid="F95peho5mt" dmcf-ptype="general">실제로 그리말도는 10월에만 1골 1도움을 터트리면서 좋은 활약을 펼쳤다. 평점은 계산하는 과정에 있어서는 공격 포인트를 기록한 선수가 더 좋은 평가를 받기 마련이다. 점수를 계산하면 센터백인 김민재가 불리할 수밖에 없는데 김민재는 그리말도와 거의 차이가 나지 않았다. 수비적으로 김민재가 완벽했다는 이야기다.</p>
<p dmcf-pid="321Udlg1w1" dmcf-ptype="general">10월의 김민재는 대한민국을 중간에 오가는 빡빡한 일정 속에서도 분데스리가 3경기에서 단 1실점밖에 기록하지 않았다. 김민재의 활약에 주목해야 할 또 다른 점은 경고 숫자다.</p>
<p dmcf-pid="080qLyA0O5" dmcf-ptype="general">뮌헨에서 김민재가 맡은 역할은 매우 리스크가 크다. 토마스 투헬 감독이 매우 공격적인 전술을 펼치기에 김민재 혼자서 감당해야 하는 수비 범위도 넓다. 빌드업 과정에서도 김민재가 맡은 역할은 비중이 상당하다.  </p>
<p dmcf-pid="p6pBoWcpsZ" dmcf-ptype="general">실수 1번만 저질러도 치명적인 상황을 연출할 수도 있는데 김민재는 10월 내내 리그에서 경고 1번 받지 않았다. 리그 데뷔전에서 받은 경고가 처음이자 마지막이었다. 김민재의 안정감이 얼마나 대단한지를 보여주는 지표다.</p>
<p dmcf-pid="UPUbgYkUIX" dmcf-ptype="general">중원에는 킹슬리 코망, 요나스 호프만, 플로리안 뷔르츠, 르로이 사네가 선정됐다. 최전방에는 해리 케인과 빅터 보니페이스가 자리했다. 평점이 가장 높았던 선수는 8.61점을 기록한 사네였다. 사네는 10월 리그 4경기에서 3골 2도움으로 최고의 활약을 펼쳤다.</p>
<div dmcf-pid="ug4MsUS4EH" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="609244" data-type="photo" dmcf-pid="7a8ROuv8rG" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/interfootball/20231101065506126jnfq.jpg" data-org-width="650" dmcf-mid="YHGtQsJGsz" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/interfootball/20231101065506126jnfq.jpg" width="658"/></p>
</figure>
<div dmcf-pid="zi96DFI9DY" dmcf-ptype="general">
<div>
</div>
<p>또한 뮌헨과 레버쿠젠의 강함을 느낄 수 있었던 10월 이달의 팀이다. 11명의 선수 중 뮌헨이 4명, 레버쿠젠이 5명이나 이름을 올렸다. 현재 레버쿠젠과 뮌헨은 분데스리가 무패행진을 기록하고 있다. 특히 레버쿠젠은 9경기 8승 1무로 완벽에 가까운 시즌을 보내고 있는 중이다.</p>
</div>
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