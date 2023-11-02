
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
    <h3>더이상 중립국은 없다… ‘전략적 균형’ 배척하는 지구촌 新질서[창간 32주년 특집]</h3><h6>이현욱 기자  2023. 11. 1. 09:12</h6>
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
<section dmcf-sid="GscdJo2mlE">
<figure class="figure_frm origin_fig" dmcf-pid="Hq3yWXwzCk" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091214995goko.jpg" data-org-width="650" dmcf-mid="Y5FTyHD7WD" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091214995goko.jpg" width="658"/></p>
</figure>
<p dmcf-pid="XB0WYZrqCc" dmcf-ptype="general">극단적인 대립이 전 세계로 확산하고 공고해지면서 중립국의 역사가 종말을 맞고 있다. 진영 간 갈등이 심화한 요즘 시대에서 ‘전략적 모호성’은 오히려 양 진영으로부터 불신받고 배척되며 국익까지 피해를 볼 수 있기 때문이다. 지난해 러시아·우크라이나 전쟁에 이어 최근 발발한 이스라엘·팔레스타인 전쟁이 이러한 새로운 국제질서 재편에 촉매제 역할을 하고 있다는 분석이 나온다. </p>
<p dmcf-pid="ZtYsOlg1hA" dmcf-ptype="general">국제사회 내 대표적인 중립국은 스웨덴과 핀란드, 오스트리아, 스위스, 인도 등이다. 이 중 각각 200여 년과 70여 년간 중립국 지위를 고수하던 스웨덴과 핀란드는 지난해 2월 우크라이나 전쟁으로 역내 안보가 불안해지자 나토(북대서양조약기구) 가입을 신청하며 중립국 지위를 포기했다. 안보적 측면에서 확실한 한 편에 설 때 얻는 실익이 더 크다는 판단에서다. 핀란드는 지난 4월 30개 나토 회원국의 만장일치 동의를 얻어 나토의 31번째 회원국이 됐고, 스웨덴은 튀르키예와 헝가리 의회의 비준을 기다리고 있는 상황이다. 이 두 국가는 친러시아와 반러시아로 양분화됐던 유럽을 반러시아 전선에 결집시키는 데 핵심적인 역할을 했다는 평가를 받는다. </p>
<p dmcf-pid="5FGOISatSj" dmcf-ptype="general">대표적 중립국인 오스트리아와 스위스도 급변하는 안보 질서에 동요된 듯 탈중립국 행보를 밟고 있다. 이들 국가는 7월 독일 주도의 방공 시스템인 유럽영공방어계획(ESSI)의 참여 의향서에 서명했다. 우크라이나에 대한 러시아 침공 이후 “침략 앞에 중립은 가해자 편에 서는 것”이라는 유럽연합(EU)의 비판을 의식한 것으로 풀이된다.</p>
<p dmcf-pid="13HICvNFlN" dmcf-ptype="general">ESSI에 참여한 19개국 중 스위스와 오스트리아를 제외한 17개국이 모두 나토 회원국이어서 앞으로 두 나라가 나토와 긴밀한 협력을 가질 것이라는 전망이 나온다. 스위스는 또 최근 이스라엘과 팔레스타인 무장정파 하마스 간 전쟁과 관련해 하마스를 테러단체로 분류하며 자신들이 친서방 국가라는 점을 분명히 했다. 그동안 스위스는 미국·EU와 달리 하마스를 테러단체로 지정하지 않고 있었다. 중동 평화 증진을 위해 이스라엘, 팔레스타인은 물론 하마스와의 대화에도 적극적으로 임하는 게 스위스의 외교 원칙이라는 이유에서다.</p>
<p dmcf-pid="t3HICvNFla" dmcf-ptype="general">하지만 하마스를 테러단체로 지정하지 않은 데 대한 서방의 비판이 거세지면서 결국 원칙을 수정했다. </p>
<p dmcf-pid="F0XChTj3Cg" dmcf-ptype="general">인도의 친서방 노선 선회도 주목할 만한 부분이다. 냉전 시대에 비동맹그룹의 맏형 역할을 해왔던 인도는 중국 견제를 위해 미국의 인도·태평양 전쟁의 한 축으로 활동하고 있다. 나렌드라 모디 인도 총리는 6월 월스트리트저널(WSJ)과의 인터뷰에서 자신이 ‘자유’ 인도에서 태어난 최초의 총리라는 점을 강조하며 “어떤 사람들은 우리가 중립적이라고 말한다. 그러나 우리는 중립적이지 않다. 우리는 평화의 편에 서 있다”고 말했다. 중국·러시아 등 권위주의 국가와 지향점을 달리한다는 의지를 나타낸 것으로 해석된다.</p>
<p dmcf-pid="3pZhlyA0vo" dmcf-ptype="general">실제 인도는 브릭스(BRICS, 브라질·러시아·인도·중국·남아프리카공화국)를 반서방 블록으로 재편하려는 중국·러시아와 각을 세우기도 했다. </p>
<p dmcf-pid="0XvDwOiHhL" dmcf-ptype="general">이현욱 기자 dlgus3002@munhwa.com</p>
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