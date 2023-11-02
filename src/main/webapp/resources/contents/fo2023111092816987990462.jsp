
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
    <h3>日 '금융완화 수정'에도 엔저 지속…엔/달러 환율 151엔 넘어</h3><h6>박상현  2023. 11. 1. 09:28</h6>
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
<section dmcf-sid="GcbkLN4IUZ">
<figure class="figure_frm origin_fig" dmcf-pid="Hm4sADMTUX" dmcf-ptype="figure">
<p class="link_figure"><img alt="10월 26일 도쿄 외환 시세판 앞 지나가는 여성 [EPA 연합뉴스 자료사진. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101092838695uayl.jpg" data-org-width="1200" dmcf-mid="YFa5TGEuz5" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101092838695uayl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            10월 26일 도쿄 외환 시세판 앞 지나가는 여성 [EPA 연합뉴스 자료사진. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="XVvfzKHR7H" dmcf-ptype="general">(도쿄=연합뉴스) 박상현 특파원 = 일본 중앙은행인 일본은행이 엔화 약세의 주된 요인으로 꼽히는 낮은 금리의 상승을 허용하는 쪽으로 금융정책을 수정했음에도 엔화 가치 하락(엔저)이 지속되고 있다.</p>
<p dmcf-pid="ZfT4q9XeFG" dmcf-ptype="general">교도통신과 니혼게이자이신문(닛케이) 등에 따르면 1일(일본시간) 엔/달러 환율은 뉴욕 외환시장에서 한때 달러당 151.74엔까지 올랐다. 이는 지난해 10월 21일 이후 최고치다.</p>
<p dmcf-pid="54y8B2ZduY" dmcf-ptype="general">엔/달러 환율은 전날 오전 8시께 149.1엔대였으나 낮 12시 무렵 일본은행 금융정책결정회의 결과가 알려진 뒤 150엔을 돌파했고, 이후에도 상승세를 이어갔다.</p>
<p dmcf-pid="1PGQ94tn3W" dmcf-ptype="general">올해 엔/달러 환율은 지난달 몇 차례 달러당 150엔을 돌파했지만, 151엔을 넘어 152엔에 육박한 것은 처음이다.</p>
<p dmcf-pid="tQHx28FLuy" dmcf-ptype="general">이 같은 엔저가 계속되면 엔화 가치가 1990년 이후 33년 만에 가장 낮은 수준까지 떨어질 수 있다고 교도통신은 전망했다.</p>
<p dmcf-pid="FxXMV63o0T" dmcf-ptype="general">아울러 엔/유로 환율도 상승해 전날 유로당 160엔을 넘어서며 약 15년 만에 최고치를 기록했다.</p>
<p dmcf-pid="3wVrNkQSzv" dmcf-ptype="general">간다 마사토 재무성 재무관은 이날 엔저 흐름에 대해 "급격한 움직임을 우려하며, 과도한 변동에 대해서는 모든 수단을 배제하지 않고 행동할 것"이라고 말했다.</p>
<p dmcf-pid="0rfmjExv7S" dmcf-ptype="general">이어 엔화 약세에 제동을 걸기 위한 외환시장 개입과 관련해 "스탠바이 상태"라고 강조했다.</p>
<p dmcf-pid="pm4sADMTpl" dmcf-ptype="general">일본은행은 전날 장기금리 지표인 10년물 국채 금리의 변동 폭 상한 목표를 기존 0.5%에서 1%로 올리되 시장 동향에 따라 1%를 어느 정도 초과해도 용인하기로 했다.</p>
<p dmcf-pid="USRvmCLZuh" dmcf-ptype="general">다만 기존에는 10년물 국채 금리가 일본은행이 정한 변동 폭을 넘으면 국채를 무제한 매입하며 이를 억제했지만, 이번에는 개입에 나설 상한선을 명시하지 않고 유연하게 대응하기로 했다.</p>
<p dmcf-pid="uveTsho5zC" dmcf-ptype="general">이에 따라 일본 10년물 국채 금리가 1%를 넘을 가능성이 생겼지만, 엔화 가치는 오히려 떨어졌다.</p>
<p dmcf-pid="7TdyOlg1zI" dmcf-ptype="general">교도통신은 "시장이 일본은행의 금융정책 수정이 미세한 수준이 머물렀다고 판단한 듯하다"며 "미국과 일본 금리 차 확대를 의식해 달러를 매입하고 엔화를 파는 움직임이 거세지고 있다"고 짚었다.</p>
<p dmcf-pid="zABcnafOUO" dmcf-ptype="general">한편, 지난달 3일 엔/달러 환율이 달러당 150엔을 넘어섰다가 갑자기 147엔대로 급락했을 당시 일본 당국이 개입하지 않았다는 사실이 확인됐다.</p>
<p dmcf-pid="qcbkLN4I3s" dmcf-ptype="general">재무성은 9월 28일부터 10월 27일까지 외환시장에 개입한 바가 없다고 전날 발표했다.</p>
<p dmcf-pid="Bi3nQezc7m" dmcf-ptype="general">당시 재무성 관계자는 외환시장 개입 여부에 대해 확실한 입장을 밝히지 않았으나, 시장에서는 개입하지 않았을 가능성이 있다는 분석이 제기됐다.</p>
<p dmcf-pid="bn0Lxdqkur" dmcf-ptype="general">닛케이는 지난달 3일 엔/달러 환율 변동에 대해 "컴퓨터 분석으로 매매 타이밍을 판단하는 '알고리즘 거래'가 영향을 미쳤다는 분석이 확산하고 있다"고 전했다.</p>
<p dmcf-pid="KLpoMJBE3w" dmcf-ptype="general">psh59@yna.co.kr</p>
<p dmcf-pid="29l2uBYxuE" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
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