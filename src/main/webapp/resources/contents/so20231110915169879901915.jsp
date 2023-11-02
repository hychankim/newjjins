
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
    <h3>인구 절벽 → 생산인력 고갈… 이민 확대 없인 ‘미래동력’ 꺼진다[창간 32주년 특집]</h3><h6>정선형 기자  2023. 11. 1. 09:15</h6>
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
<section dmcf-sid="QwPHxdqkTu">
<figure class="figure_frm origin_fig" dmcf-pid="uDGc3uv8SO" dmcf-ptype="figure">
<p class="link_figure"><img alt="그래픽=하안송 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091809394edat.jpg" data-org-width="650" dmcf-mid="pGVMSWcpyC" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091809394edat.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            그래픽=하안송 기자
           </figcaption>
</figure>
<p dmcf-pid="7wHk07T6Ts" dmcf-ptype="general">‘신 부민강국’을 위해서 가장 먼저 필요한 것이 인구절벽 해소라는 각계의 목소리가 커지고 있다. 인구절벽 해소의 중요한 대책 중 하나로 거론되는 것이 이민청(가칭) 설립이다. 법무부는 이민청 신설을 ‘인구절벽’을 넘어 ‘인구소멸’로 치닫는 현재 상황에 주요한 돌파구로 보고 있다. 실제 한동훈 법무부 장관은 지난 1월 26일 청와대 영빈관에서 열린 법무부 업무보고에서 발표한 ‘2023년 5대 핵심 추진과제’에 이민청 설립을 포함시켰다.</p>
<p dmcf-pid="zrXEpzyPvm" dmcf-ptype="general">◇줄어가는 노동인구…해법으로 떠오른 이민청 = 한 장관은 업무보고 당시 “이민이 전혀 없는 상황에서 지금의 생산가능인구가 유지되려면 10년 내에 출산율이 3배 늘어나야 한다”고 말했다. 그러면서 “새로 태어나는 아이들이 생산 가능 연령으로 성장하는 15년간 국가의 성장 동력을 뒷받침하려면 이민 정책을 적극 추진해야 한다”고 강조했다.</p>
<p dmcf-pid="qghnG5mBlr" dmcf-ptype="general">산업계도 이민청 설립 방안을 환영하고 있다. 내국인 근로자를 구하기 어려워진 산업계는 적극적 이민 정책을 활로로 꼽고 있기 때문이다. 한국경영자총협회(경총)가 지난 8∼9월 제조·건설·서비스업 분야 중소기업(300인 미만) 615곳을 대상으로 ‘외국인 근로자 활용현황 및 정책 인식조사’를 벌인 결과, 중소기업 3곳 중 1곳(36.9%)은 외국인 근로자 도입 규모를 현재보다 늘리길 원하는 것으로 나타났다. 외국인 근로자 도입 규모 확대가 필요하다고 답변한 기업들은 내년 외국인 근로자 적정 규모를 15만1000명으로 잡았다. 고용노동부가 발표한 올해 외국인 근로자(E-9·단순근로비자) 도입 규모는 12만 명으로 지난해(6만9000명)에 비해 크게 늘었지만 기업의 수요에는 미치지 못하는 것이다.</p>
<p dmcf-pid="BalLH1sbhw" dmcf-ptype="general">설문에 참여한 기업들 가운데 이민청 설립에 찬성한다는 의견은 47.5%로 반대한다는 의견(17.6%)을 크게 상회한다. 경총은 “국가의 성장 동력 확보와 인력 수급 불균형에 대처하기 위해 이민청 설립을 포함한 종합적인 정책 검토가 필요하다”고 밝혔다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="bVoKEmdYvD" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091810817exgq.jpg" data-org-width="390" dmcf-mid="UbjfmCLZlI" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091810817exgq.jpg" width="658"/></p>
</figure>
<p dmcf-pid="XsM5enKwW1" dmcf-ptype="general">◇흩어진 이민 정책 ‘컨트롤타워’의 필요성 = 이민청의 필요성이 제기되는 것은 이민 관련 정책이 부처마다 흩어져 있어 각각의 정책이 시너지를 내지 못하기 때문이다. 현재 외국인 관련 업무를 보는 부처는 7곳에 달한다. 법무부 출입국·외국인정책본부는 출입국 관리 업무를, 여성가족부는 다문화가족 지원 업무를, 고용노동부 산하 한국산업인력공단은 외국인 근로자 지원 업무를 각각 담당하고 있다. 외교부도 재외동포청에서 재외동포 지원 업무를 보는 가운데 외국인 유학생 관리 업무는 교육부에서 담당한다. 농림축산식품부는 농촌 다문화 가정 지원과 계절 근로자 관리를, 행정안전부는 외국인의 주거와 범죄·치안 업무를 맡고 있다.</p>
<p dmcf-pid="ZOR1dL9rh5" dmcf-ptype="general">관련 정책 위원회도 4개나 된다. 외국인 정책 총괄은 법무부 주관의 ‘외국인 정책위원회’에서 하지만 이 가운데 다문화가족 정책은 여가부의 ‘다문화가족지원정책위원회’가 담당한다. 외국인 노동자 정책은 고용부의 ‘외국인력정책위원회’, 재외동포정책은 외교부 주관의 ‘재외동포정책위원회’가 도맡고 있다. 이 때문에 전문가들 사이에서는 4개 위원회를 통합해 총리실이 주관하는 ‘재외동포 외국인정책위원회’로 일원화하는 방안과 신설되는 이민청에서 컨트롤타워 역할을 해 정책들을 효과적으로 활용할 수 있도록 해야 한다는 목소리가 높아지고 있다.</p>
<p dmcf-pid="5IetJo2mCZ" dmcf-ptype="general">◇법무부, 취업비자 총량제 등 검토…외국인 근로자 유연하게 유입 = 이민청이 아직 신설되진 않았지만, 현재 시행 중인 정책에서 향후 이민 정책의 청사진을 엿볼 수 있다. 한 장관은 지난 9월 25일 “대한민국 국익에 기여할 것이 검증된 외국인 근로자에게 영주 정착할 수 있는 기회를 부여하겠다”며 ‘숙련기능인력 혁신적 확대 방안’을 발표했다. 이 방안은 국내에서 장기 체류가 가능한 숙련기능인력에게 부여하는 E-7-4 비자 발급 한도를 연 2000명에서 3만5000명으로 확대하는 것이다. E-7-4 비자는 지금까지 약 1만 명에게 발급됐는데 불법 체류자 수는 0.6%인 55명에 불과하다. 발급받은 30만 명 중 19%인 5만6000여 명이 불법 체류자로 전환된 E-9 비자와 상황이 다르다.</p>
<p dmcf-pid="18ZN10hVSX" dmcf-ptype="general">‘연간 취업비자 총량 사전 공표제’도 시범 시행한다. 비자 총량제는 경제적 상황과 안보 등을 고려해 특정 국가나 비자에 대해 연간 발급할 수 있는 비자의 총량을 정하는 것이다. 지금도 E-9 비자 등에 대해 부분적으로 적용되지만, 법무부는 데이터 분석을 바탕으로 적정 수준의 외국인 취업 인력을 산출함으로써 과학적인 정책을 펴겠다는 계획이다.</p>
<p dmcf-pid="t65jtplfhH" dmcf-ptype="general">◇적정 임금 문제와 문화적 차이 극복 등은 과제 = 다만 이민청을 속도감 있게 도입하는 것만이 능사는 아니라는 지적도 나온다. 당장 노동계에서는 외국인 근로자 도입 규모 확대를 놓고도 볼멘소리가 나오는 실정이다. 대표적으로 8월 고용부와 서울시 등이 외국인 가사근로자 100여 명을 서울시 전역에 우선 공급하는 시범사업을 계획하자 각계에서는 우려의 목소리가 나왔다. 최저임금 적용으로 월 200만 원 급여를 부담하기 어렵다는 지적과 함께 “외국인에게 아이를 맡길 수 없다”는 인식에 따른 신뢰 문제 등이 거론됐다. </p>
<p dmcf-pid="FP1AFUS4TG" dmcf-ptype="general">오세훈 서울시장은 지난달 16일 국회 행정안전위원회 국정감사에서 오는 12월 시범사업 추진안을 밝히며 “단점을 최소화하면서 이 제도가 어떤 순기능을 발휘할지 지켜볼 것”이라고 밝혔다. </p>
<p dmcf-pid="3M3EpzyPhY" dmcf-ptype="general">정선형 기자 linear@munhwa.com</p>
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