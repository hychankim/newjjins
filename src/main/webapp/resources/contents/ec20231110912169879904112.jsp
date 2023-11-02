
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
    <h3>잠재성장률 7년뒤 0%대 추락 ‘OECD 꼴찌’… 규제철폐·구조개혁 시급[창간 32주년 특집]</h3><h6>조해동 기자  2023. 11. 1. 09:12</h6>
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
<section dmcf-sid="B2FTyHD7lY">
<figure class="figure_frm origin_fig" dmcf-pid="btlkEmdYSW" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091210230zcjs.jpg" data-org-width="650" dmcf-mid="7lISvYkUCX" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091210230zcjs.jpg" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="K6uHXtOKWy" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091211446ahhc.jpg" data-org-width="650" dmcf-mid="zRnaNkQSWH" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091211446ahhc.jpg" width="658"/></p>
</figure>
<p dmcf-pid="9P7XZFI9vT" dmcf-ptype="general">우리나라의 잠재성장률이 세계 주요국 중에서 유례를 찾기 어려울 정도로 빠른 속도로 하락하고 있다. 2030∼2060년에는 우리나라의 1인당 잠재성장률이 경제협력개발기구(OECD) 회원국 38개국 중 캐나다와 함께 ‘꼴찌’를 기록할 것이라는 충격적인 전망까지 나오고 있다. 1997년 외환위기 이전 연평균 7.3%를 기록했던 잠재성장률이 올해와 내년에는 사상 처음으로 2% 아래로 내려앉고, 2030년 이후에는 0%대까지 추락할 것이라는 추정으로, 노동 및 교육개혁과 연구·개발을 통해 경제체질 및 구조개혁에 빨리 나서야 한다는 목소리가 높아지고 있다.</p>
<p dmcf-pid="22FTyHD7Tv" dmcf-ptype="general">1일 OECD의 주요국 장기 재정전망 보고서 ‘더 롱 게임(The Long Game)’에 따르면 가장 확률이 높은 ‘기본 시나리오’에서 한국의 2030∼2060년 1인당 잠재성장률은 연간 0.8%로 추정됐다. OECD는 우리나라 1인당 잠재성장률이 2000∼2007년 3.8%에서 2007∼2020년 2.8%, 2020∼2030년 1.9%로 계속 급격하게 추락한 뒤 2030∼2060년에는 연평균 0%대까지 떨어지는 것으로 전망한 것이다. 잠재성장률이란 한 나라의 노동·자본·자원 등 생산요소를 모두 동원하면서도 물가상승을 유발하지 않는 최대 성장률을 말한다. 한 나라 경제의 ‘기초체력’을 보여주는 대표적인 지표다.</p>
<p dmcf-pid="VV3yWXwzWS" dmcf-ptype="general">특히 보고서에서 가장 충격적인 내용은 이 기간 우리나라의 1인당 잠재성장률이 OECD가 분석 대상으로 삼은 회원국 38개국 중 캐나다와 함께 ‘꼴찌’를 기록할 것으로 예상됐다는 점이다. 칠레, 체코, 에스토니아, 폴란드, 슬로바키아, 터키보다도 더 낮아진다는 것으로, 현 상황이 지속하면 한국 경제의 앞날이 개발도상국 수준으로까지 떨어질 수 있을 정도로 캄캄하다는 의미다.</p>
<p dmcf-pid="ff0WYZrqyl" dmcf-ptype="general">더 큰 문제는 한국의 잠재성장률 추락이 가파르다는 데 있다. 최근 한국은행이 국회 기획재정위원회 강준현(더불어민주당) 의원에게 제출한 ‘최근 20년 한국 포함 주요국 연도별 국내총생산(GDP) 갭(gap) 현황’ 자료를 보면 OECD는 지난 6월 우리나라의 올해와 내년 잠재성장률을 각 1.9%, 1.7%로 추정했다. 우리나라 잠재성장률이 2001년 5.4%, 2011년 3.8%, 2016년 2.9%였다는 사실을 고려하면 추락 속도가 빠르다. 특히 OECD 전망대로라면 내년에는 우리나라의 잠재성장률(1.7%)이 미국(1.9%)보다도 0.2%포인트 낮아지게 된다. 세계 1위의 경제 대국인 미국의 잠재성장률보다 우리나라 잠재성장률이 낮아지는 것은 역대 처음으로, 한국 경제에 과연 미래가 있느냐는 근본적인 회의마저 불러일으키고 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="4iVpUqWQyh" dmcf-ptype="figure">
<p class="link_figure"><img alt="그래픽=권호영 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091212631fotb.jpg" data-org-width="650" dmcf-mid="qhkJigVsCG" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091212631fotb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            그래픽=권호영 기자
           </figcaption>
</figure>
<p dmcf-pid="8nfUuBYxTC" dmcf-ptype="general">우리나라 잠재성장률이 이처럼 추락한 데는 자본투입, 노동투입, 총요소생산성 등 3대 요인 모두가 하락세이기 때문이다. 세계에서 가장 빠른 저출산·고령화로 인해 노동 투입이 급격하게 줄 것으로 예상되면서 노동이 무서운 속도로 잠재성장률을 갉아먹고 있다. 고급 인력 양성을 위한 교육개혁도 지지부진하다. 자본의 해외 유출도 빨라지면서 자본투입 기여도 역시 급락하고 있다. 결국 우리나라 잠재성장률 하락을 그나마 늦출 수 있는 것은 총요소생산성밖에 없지만, 이 역시 큰 폭의 증가는 기대하기 어려운 것이 현실이다. 새로운 정부가 들어설 때마다 규제 완화를 외치지만 속도와 폭에 있어서는 여전히 만족할 만한 성과를 내지 못하는 데다, OECD 평균보다도 높은 법인세율에 OECD 평균의 6배에 달하는 총 조세 대비 상속·증여세 비율(2.4%)도 기업 활동을 저해하는 환경으로 꼽힌다. 민간 투자가 부족하면 나랏돈인 재정을 동원해서라도 집중 투자를 해야 하는데, 날로 악화하는 재정 건전성도 정부 투자를 늘리는 것을 어렵게 하고 있다.</p>
<p dmcf-pid="6L4u7bGMWI" dmcf-ptype="general">이 때문에 경제 구조조정 또는 구조개혁이 절실하다는 의견이 커지고 있지만, 정치권은 생산성을 높이는 데 집중하기보다는 국민의 표(票)를 얻기 위한 포퓰리즘에 몰두하면서 잠재성장률 제고를 위한 경제 관련 법안 처리는 뒷전이다. </p>
<p dmcf-pid="Prn86MujWO" dmcf-ptype="general">미래 경제의 운명을 좌우할 노동·교육개혁 역시 정쟁으로 한없이 지체되고 있다. 구조조정이나 구조개혁 이야기가 하루에도 몇 번씩 나오던 1997∼1998년 외환위기 같은 위기를 겪어야 체질 개선이 가능한 게 아니냐는 자조적인 목소리가 경제계에서 커지고 있는 이유다. 이창용 한국은행 총재도 지난 10월 12일 국제통화기금(IMF)·세계은행(WB) 연차총회 참석차 모로코 마라케시에서 열린 기자간담회에서 “우리의 성장 문제는 구조적으로 해결할 문제이지 재정으로 해결할 문제는 아니다”라며 “구조개혁을 하면 (성장률이) 2%로 올라가는 것이고 그 선택은 국민과 정치에 달려 있다”고 밝힐 정도다. </p>
<p dmcf-pid="QmL6PR7Ahs" dmcf-ptype="general">이 총재는 그동안 한국의 잠재성장률을 올리기 위해서는 재정·통화정책보다는 근본적으로 구조개혁을 해야 한다고 주장해왔다. 석병훈 이화여대 경제학과 교수도 “생산성을 끌어올릴 수 있는 인공지능(AI) 등 최첨단 기술은 빠른 속도로 발달하고 있으나, 산업 현장에 적용되기까지는 상당한 시일이 걸릴 것으로 전망된다”면서 “기업이 단기 성과에 집착하지 않고, 기술 접목을 통한 장기 성과에 집중할 수 있도록 해묵은 규제를 철폐하는 노력이 필요하다”고 강조했다. </p>
<p dmcf-pid="xsoPQezcvm" dmcf-ptype="general">조해동·전세원 기자</p>
</section>
</div></p></section></div><h6>[Source : 문화일보]</h6></div>
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