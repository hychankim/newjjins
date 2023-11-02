
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
    <h3>"주 52시간으론 안 돼"… 정부, '주 69시간제' 재논의 초읽기</h3><h6>김동욱 기자  2023. 11. 1. 06:31</h6>
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
<section dmcf-sid="Xh7JCzyPV6">
<p dmcf-pid="ZBovqgVsb8" dmcf-ptype="general">[편집자주]정부가 노동개혁에 나선다. 근로시간 개편 관련 대국민 설문조사 결과를 공개한 후 구체적인 방안을 내놓을 전망이다. 반복 수급으로 인해 고용보험기금 재정 건전성 악화 등을 초래한 실업급여도 정비할 것으로 관측된다. 과도한 근무시간 및 실직자 보호를 위해 현행을 유지해야 한다는 반발도 만만찮은 가운데 핵심 쟁점과 앞으로 나아가야 할 정부 방향을 짚어 봤다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="5xmFQsJGb4" dmcf-ptype="figure">
<p class="link_figure"><img alt="정부가 근로시간 개편을 추진한다. 사진은 지난 3월 근로시간 개편안에 대해 설명하는 이정식 고용노동부 장관. /사진=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneyweek/20231101063110342xwnp.jpg" data-org-width="680" dmcf-mid="G516EtOK9Q" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneyweek/20231101063110342xwnp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            정부가 근로시간 개편을 추진한다. 사진은 지난 3월 근로시간 개편안에 대해 설명하는 이정식 고용노동부 장관. /사진=뉴스1
           </figcaption>
</figure>
<div dmcf-pid="1fcHVkQSBf" dmcf-ptype="general">
<span>▶기사 게재 순서</span>
<br/><span>①"주 52시간으론 안 돼"… 정부, '주 69시간제' 재논의 초읽기</span>
<br/>②'시럽급여 vs 실직자 보호'… 실업급여 개혁 쟁점은
           <br/>③"노동계에 휘둘리지 않겠다"… 시작된 윤석열式 노동개혁
          </div>
<div dmcf-pid="tfcHVkQS9V" dmcf-ptype="general">
           정부가 '주 69시간 근로제'(주 69시간제)로 불렸던 근로시간 개편안 논의를 재개할 전망이다. 이달 초 근로시간 개편안 관련 설문조사 결과를 공개한 후 여론을 살피며 입법에 나설 것으로 관측된다. 장시간 노동을 합법화한다는 역풍을 맞아 개편안 추진이 보류된 적 있는 만큼 최대 근로시간 하향 등의 조치가 이뤄져야 한다는 평가다.
           <br/>
<div></div>
<div>
<br/>
</div>
<div>
            ━
            <br/>
</div><strong>근로시간 개편 대국민 설문조사 11월 발표</strong>
<div>
<br/>━
           </div>
<div>
<br/>
</div>
<div></div>정부는 지난 6월부터 약 두 달 동안 국민 6000명을 대상으로 실시한 근로시간 제도 개편 관련 설문조사 결과를 11월 초 공개할 예정이다. 해당 조사는 현행 근로시간 제도에 대한 평가 및 문제점, 개선 방향 등에 중점을 두고 국민과 노사 의견을 수렴한 것으로 알려졌다. 정부는 이 조사를 바탕으로 개편안을 마련할 방침이다. 설문조사 결과와 함께 제도 보완 방향이 공개되고 실질적인 개편안 마련은 그 이후가 될 것으로 예상된다.
          </div>
<p dmcf-pid="FwtPDFI9b2" dmcf-ptype="general">정부는 지난 3월 '근로시간 제도 개편 방안'을 확정하고 4월17일까지 입법 예고할 계획이었다. 노사 합의를 전제로 주 단위로 관리되던 연장 근로시간을 월·분기·반기·연 단위로 관리하는 게 핵심이다. 연장 근로시간 관리를 유연하게 해 바쁠 때는 일을 많이 하고 한가할 때는 적게 일하는 등 탄력적 근로를 유도하겠다는 취지였다. 고용노동부는 개편안을 공개하며 "기존 제도는 기업과 근로자의 선택권을 제약하고 다양화되는 노사 수요를 담아내지 못한다"고 설명했다.</p>
<p dmcf-pid="3jG2NHD7V9" dmcf-ptype="general">개편안은 공개 직후 반발에 직면했다. 개편안이 도입되면 일주일에 최대 69시간 근로하는 게 가능했기 때문이다. 하루 24시간에서 개편안이 보장하는 '퇴근 후 다음 일하는 날까지 11시간 연속 휴식'을 제외하면 13시간이 남는다. 남은 13시간 중 근로기준법에 따른 휴식 시간(4시간마다 30분씩, 총 1시간30분)을 뺀 11시간30분을 하루에 근로할 수 있다. 휴일을 제외한 6일을 반복하면 일주일에 총 69시간을 일하게 된다. 개편안 공개 후 민주노총은 "노동자의 건강은 없고 오직 사업주의 이익만 있다", 한국노총은 "죽기 직전까지 일 시키는 것을 허용하는 것과 같다"고 지적했다. 국민 여론도 "근로시간이 과도하게 많다"는 의견이 주를 이뤘다.</p>
<div dmcf-pid="0cXfAZrq9K" dmcf-ptype="general">
           반발이 나오자 윤석열 대통령은 개편안 보완을 지시했다. "근로자들의 다양한 의견, 특히 MZ세대(1980년대~2000년대 초 출생자)의 의견을 면밀히 청취해 법안 내용과 대국민 소통에 관해 보완할 점을 검토하라"고 주문했다. 고용노동부는 "제도가 악용될 수 있다는 우려의 목소리가 많다"며 "각계각층의 의견 수렴을 토대로 보완방안을 강구하겠다"고 밝혔다.
           <br/>
<div></div>
<div>
<br/>
</div>
<div>
            ━
            <br/>
</div><strong>핵심은 근로시간 상한선 하향 조정</strong>
<div>
<br/>━
           </div>
<div>
<br/>
</div>
<div></div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="pJhudlg1fb" dmcf-ptype="figure">
<p class="link_figure"><img alt="지난 3월 진행된 민주노총 2023 투쟁선포대회. /사진=뉴스1" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneyweek/20231101063111770anph.jpg" data-org-width="680" dmcf-mid="H6UeOuv8fP" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneyweek/20231101063111770anph.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            지난 3월 진행된 민주노총 2023 투쟁선포대회. /사진=뉴스1
           </figcaption>
</figure>
<div dmcf-pid="UGVjYf1iBB" dmcf-ptype="general">
           다시 논의될 근로시간 개편안이 기존과 동일하게 추진될 경우 국민 반발이 재점화할 것으로 보인다. 반발을 이겨내기 위해선 '주 69시간제'로 낙인된 이미지를 벗어야 하는 게 중요한 만큼 일주일에 일할 수 있는 최대 근로시간을 낮춰야 한다는 지적이다.
          </div>
<p dmcf-pid="u9NWKj8Cfq" dmcf-ptype="general">노동인권단체 직장갑질119가 여론조사 전문기관 엠브레인퍼블릭에 의뢰해 직장인 1000명을 조사한 내용에 따르면 '일주일 최대 노동시간 상한을 새로 정한다면 몇 시간이 적절한가'라는 질문에 응답자의 46.7%가 '48시간 이하', 34.5%가 현재와 같은 '52시간'이라고 답했다. 응답자의 81.2%가 근로시간 연장에 반대 의견을 낸 것. 이 밖에 ▲56시간 6.2% ▲60시간 6.8% ▲64시간 3.5% ▲69시간 이상 2.3% 등으로 조사됐다.</p>
<p dmcf-pid="77ihunKw2z" dmcf-ptype="general">윤 대통령이 지난 3월 "주 60시간 이상 근무하는 것은 무리"라고 언급했던 것을 고려하면 근로시간 상한선이 하향 조정될 가능성이 높다. '윤 대통령의 언급은 다양한 의견을 수렴하라는 뜻이지 제도 개편 가이드라인을 준 것은 아니다'는 취지로 대통령실이 해명했으나 근로시간 상한선을 주 60시간 이상으로 설정할 경우 말 바꾸기 논란을 피하지 못할 것으로 보인다.</p>
<p dmcf-pid="z6D58wRyV7" dmcf-ptype="general">정부가 근로시간 개편안을 무리하게 추진하진 않을 것이란 관측도 나온다. 정부·여당의 정치적 상황이 좋지 않아서다. 여론조사기관 리얼미터가 조사한 '10월 셋째 주 윤 대통령 국정 수행 평가'를 보면 '잘하고 있다'는 평가는 32.5%에 그쳤다. 미국 뉴욕 순방길 욕설 논란이 불거졌던 지난해 10월 첫째 주(32.0%) 이후 최저다. 여당인 국민의힘은 최근 서울 강서구청장 보궐선거에서 더불어민주당에게 17.2%포인트 차이로 패배했다. 내년 4월 제22대 국회의원 총선거가 예정된 점을 고려하면 정부와 국민의힘 모두 역풍 방지에 힘쓸 것이란 의견이 많다.</p>
<p dmcf-pid="qoTBLyA02u" dmcf-ptype="general">김동욱 기자 ase846@mt.co.kr<br/>&lt;저작권자 ⓒ '성공을 꿈꾸는 사람들의 경제 뉴스' 머니S, 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 머니S]</h6></div>
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