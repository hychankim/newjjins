
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
    <h3>[출근길 인터뷰] 한미동맹 70년 기념 케네디센터 첫 한복 패션쇼</h3><h6>이경희  2023. 11. 1. 08:52</h6>
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
<section dmcf-sid="1iBWWXwz3u">
<div class="video_frm" dmcf-pid="tsdzzKHRFU" dmcf-ptype="kakaotv">
<div class="layer_vod">
<div class="vod_player">
<iframe allowfullscreen="" class="player_iframe" dmcf-mid="Z7yjjExv7z" dmcf-mtype="video/kakaotv/owner" dmcf-poster-mid="XCo994tn3q" frameborder="0" height="370" id="video@Z7yjjExv7z" poster="https://t1.daumcdn.net/news/202311/01/newsy/20231101085259590npnl.jpg" scrolling="no" src="//tv.kakao.com/embed/player/cliplink/442138609?service=daum_news&amp;m_use_inline=true&amp;ios_allow_inline=true&amp;m_prevent_sdk_use=true&amp;wmode=opaque" width="100%"></iframe>
</div>
</div>
</div>
<p dmcf-pid="FOJqq9Xe7p" dmcf-ptype="general">[앵커]</p>
<p dmcf-pid="3IiBB2Zd70" dmcf-ptype="general">올해는 한미동맹 70년을 맞는 해인데요. </p>
<p dmcf-pid="0HEQQezc73" dmcf-ptype="general">이를 기념해 미국 워싱턴DC에 있는 케네디 센터에서 처음으로 한복 패션쇼가 열렸습니다. </p>
<p dmcf-pid="pXDxxdqkpF" dmcf-ptype="general">감동의 순간을 다시 되새겨 보고, 세계 속의 한복 이야기도 해보겠습니다. </p>
<p dmcf-pid="UZwMMJBE7t" dmcf-ptype="general">뉴스캐스터 연결합니다. 박 어휘 캐스터.</p>
<p dmcf-pid="uc6FFUS4z1" dmcf-ptype="general">[캐스터] 수요일 출근길 인터뷰에서는 정사무엘 한문화진흥협회장을 만나 얘기 나눠보겠습니다. 안녕하세요.</p>
<p dmcf-pid="7kP33uv8u5" dmcf-ptype="general">[정사무엘 / 한문화진흥협회장] 안녕하십니까.</p>
<p dmcf-pid="zEQ007T6FZ" dmcf-ptype="general">[캐스터] 한문화진흥협회가 어떤 곳인가요?</p>
<p dmcf-pid="qsdzzKHR7X" dmcf-ptype="general">[정사무엘 / 한문화진흥협회장] 사단법인 한문화진흥협회는 소중한 우리 고유문화를 세계에 알리며 대한민국의 문화적 가치와 위상을 높이는 문화외교 활동을 하고 있는 기관으로, 한국에 주재하는 100여 개국 대사관 및 국제기구와 적극적인 교류뿐만 아니라 해외에 위치한 대한민국 대사관 및 문화원과의 패션쇼, 전시, 공연 등 협력을 통해 세계인을 대상으로 한국의 문화적 가치를 높이는 데 기여하고 있습니다. 대표적인 문화외교 행사로 세계에서 유일하게 각국 정부를 대표하는 외교 대사들께서 모두 한복을 입고 한날한시 한 공간에서 정치, 종교 등을 초월하여 하나가 되는 세계 의상 페스티벌을 선보이고, 한복에 대한 세계인의 관심을 높이기 위해 대한민국 한복 모델 선발대회를 한국, 프랑스, 태국에서 개최하며, 100여 개국 대사관 수교 행사를 지원하고, 지역 축제의 세계화를 위해 각국 외교 사절단과 함께 글로벌 콘텐츠 기획에 집중해 오고 있습니다.</p>
<p dmcf-pid="BOJqq9XeuH" dmcf-ptype="general">[캐스터] 지난달 미국 워싱턴DC에 있는 케네디센터에서 최초의 한복 패션쇼가 열렸다고요?</p>
<p dmcf-pid="bIiBB2ZduG" dmcf-ptype="general">[정사무엘 / 한문화진흥협회장] 맞습니다. 대한민국과 미국의 한미동맹 70주년을 기념하기 위하여 협회 산하기관인 한복 외교 사절단과 한문화 외교 사절단 그리고 대한민국 한복모델선발대회 소속의 한복 모델을 파견하여 미국 모델들과 함께 한복 패션쇼를 통해 양국의 문화교류를 선보였습니다. 성공적인 한복 패션쇼를 선보이기 위해 양국 한복 모델들은 각 의상에 대한 의미와 그에 걸맞은 포즈를 함께 연습하고 한복에 어울리는 워킹을 선보이면서 양국 참전용사와 가족들뿐만 아니라 정·재계의 주요 인사께서 크게 환영해 주셨습니다.</p>
<p dmcf-pid="KsdzzKHRUY" dmcf-ptype="general">[캐스터] 미국에서 한복 패션쇼의 반응은 어땠나요?</p>
<p dmcf-pid="9OJqq9XepW" dmcf-ptype="general">[정사무엘 / 한문화진흥협회장] 한미동맹 70주년이란 행사를 위해 우리 협회는 이번 한복 패션쇼의 콘셉트를 법고창신으로 정하고 몇 달 전부터 한 벌 한 벌 세심하게 준비하였습니다. 전국 각지에서 선발된 한복 외교 사절단 소속 디자이너분들께서 옛것을 본받아 새롭게 창조한다는 법고창신의 정신으로 한복의 전통, 현대적 작품 준비에 최선을 다해주셨고 마지막 순간에는 3층, 2층, 1층 순으로 각 층마다 관객들께서 일어나 주셔서 기립 박수로 사랑과 응원을 받으며 한미동맹 70주년을 기념할 수 있어 큰 영광이었습니다.</p>
<p dmcf-pid="2IiBB2Zd0y" dmcf-ptype="general">[캐스터] 이렇게 한복 패션쇼를 열게 된 배경도 궁금합니다.</p>
<p dmcf-pid="VvaVV63oFT" dmcf-ptype="general">[정사무엘 / 한문화진흥협회장] 인류 역사는 모두 의식주와 관련이 있는데요. 그중 의를 가장 먼저 언급하는 이유는 태어나서 처음 접하는 문화가 옷을 입는 것이고 생애 마지막도 옷을 입고 마무리되기에 문화에서 가장 중요한 부분이 복식이라 생각하였습니다. 그렇기 때문에 전통상 패션쇼는 해당 국가의 역사적 가치와 문화강국의 힘을 느끼게 해주는 가장 강력한 콘텐츠 중의 하나라고 생각하여 세계 각 권역 아프리카, 중동, 유럽, 아시아, 아메리카를 방문하여 대사관 및 문화원 협력으로 아름다운 대한민국 전통 의상 한복을 세계에 알려오고 있습니다.</p>
<p dmcf-pid="fTNffP0guv" dmcf-ptype="general">[캐스터] 앞으로 한국 고유의 문화를 세계에 어떻게 알릴 예정이신가요?</p>
<p dmcf-pid="4yj44Qpa7S" dmcf-ptype="general">[정사무엘 / 한문화진흥협회장] 제가 지금까지 우리 문화를 세계에 알리고 교류하면서 각국 정부 및 대사관 표창을 80여 회 받으면서 누적된 다양한 문화외교에 대한 노하우도 있지만 무엇보다 우리 문화가 이미 가지고 있는 가치는 세계 어느 문화와 비교해도 자랑스러울 수 있기 때문에 어느 분야가 되었던 계속해서 해외에 나가 한국을 알려야 된다고 생각합니다. 세계적인 한류 열풍으로 그 어느 때보다 한국에 대한 관심이 높아져 가고 있지만 아직도 한국과 중국, 일본의 문화를 구분하지 못하는 경우가 많습니다. 중국의 동북공정뿐만 아니라 AI가 정보를 수집하고 제시하는 새로운 시대에 세계 각국에서 이것이 우리의 전통이고 대한민국의 문화라는 사실들을 선보이면서 기록해야 다음 세대에서도 더욱 우리 문화를 알릴 수 있는 다채로운 방법과 문화적 저변이 넓어질 수 있다고 생각합니다.</p>
<p dmcf-pid="8iBWWXwzUl" dmcf-ptype="general">[캐스터] 오늘 좋은 말씀 고맙습니다.</p>
<p dmcf-pid="6nbYYZrqzh" dmcf-ptype="general">[정사무엘 / 한문화진흥협회장] 감사합니다.</p>
<p dmcf-pid="PLKGG5mBuC" dmcf-ptype="general">#한복 #한복패션쇼 #한미동맹70주년 #워싱턴DC</p>
<p dmcf-pid="QqyjjExvpI" dmcf-ptype="general">연합뉴스TV 기사문의 및 제보 : 카톡/라인 jebo23</p>
<p dmcf-pid="xBWAADMTUO" dmcf-ptype="general">(끝)</p>
<p dmcf-pid="ywMUUqWQus" dmcf-ptype="general"><span> 네이버에서 연합뉴스TV를 구독하세요</span><br/><span> 연합뉴스TV 생방송 만나보기 </span><br/><span> 균형있는 뉴스, 연합뉴스TV 앱 다운받기</span></p>
</section>
</div></p></section></div><h6>[Source : 연합뉴스TV]</h6></div>
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