
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
    <h3>역도 남일반 67㎏급 2관왕 이상연(수원시청) [체전을 빛낸 향토스타]</h3><h6>김건주 기자  2023. 11. 1. 08:42</h6>
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
<section dmcf-sid="1BY6MJBETz">
<figure class="figure_frm origin_fig" dmcf-pid="9M3wOlg1CG" dmcf-ptype="figure">
<p class="link_figure"><img alt="제104회 전국체육대회 역도 남일반 67㎏급 용상서 이상연이 한국신기록을 들어올리고 있다. 대한역도연맹 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/kyeonggi/20231101084212918rbzb.jpg" data-org-width="512" dmcf-mid="5YgXtplfyq" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/kyeonggi/20231101084212918rbzb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제104회 전국체육대회 역도 남일반 67㎏급 용상서 이상연이 한국신기록을 들어올리고 있다. 대한역도연맹 제공
           </figcaption>
</figure>
<p dmcf-pid="F5m7bV5JWu" dmcf-ptype="general">   </p>
<p dmcf-pid="31szKf1iTU" dmcf-ptype="general">“노력 끝에 얻어낸 3연속 전국체전 2관왕이라는 좋은 결과여서 기분 좋습니다. 인상 기록 향상을 위해 맹연습해 다음엔 3관왕도 노려보겠습니다.” </p>
<p dmcf-pid="0tOq94tnSp" dmcf-ptype="general">지난달 열렸던 제104회 전국체육대회 역도 남자 일반부 67㎏급 용상서 183㎏의 한국신기록(종전 182㎏)을 세우며 우승한 뒤 합계 320㎏으로 2관왕에 오른 이상연(28·수원시청)은 파리 올림픽과 세계역도선수권대회에서 좋은 성적을 내기 위해 나아가겠다고 포부를 밝혔다. </p>
<p dmcf-pid="p3CbV63oW0" dmcf-ptype="general">지난달 항저우 아시안게임과 세계역도선수권대회서 연거푸 메달을 획득한 이상연은 제100회와 103회 전국체전서도 용상과 합계서 금메달을 획득하며 2관왕에 오른 바 있어 이번에 3연속(101회, 102회 대회는 코로나19로 미개최) 체급 최강자임을 입증했다. </p>
<p dmcf-pid="U0hKfP0gT3" dmcf-ptype="general">특히 지난 3월 제1회 대한역도연맹회장배 대회와 6월 제95회 전국역도선수권대회서 인상·용상·합계를 차례로 석권하며 3관왕에 오르는 등 꾸준한 기량을 과시하고 있다. </p>
<p dmcf-pid="upl94QpavF" dmcf-ptype="general">이상연은 중학교 2학년부터 역도를 시작했다. 당시 소질이 없다고 생각했지만 고등학교 2학년 때 전국춘계역도대회서 처음 입상하며 ‘하면 된다’는 것을 몸소 느꼈다. 이후 그는 역도의 매력에 빠졌다. </p>
<p dmcf-pid="7zy4Qezcyt" dmcf-ptype="general">자신감을 가진 그는 대학 때 허리와 어깨 부상으로 수술을 했다. ‘수술하면 선수 생활이 끝난다’는 말도 들었지만, 첫 입상 경험을 떠올리며 오히려 근육을 보강해 ‘나을 수 있다’는 믿음으로 본인을 지탱했다. 그리고 부단한 노력 끝에 태극마크도 달았다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="24XjEmdYSY" dmcf-ptype="figure">
<p class="link_figure"><img alt="제104회 전국체육대회 역도 남일반 67㎏급서 3회 연속 2관왕 오른 이상연. 대한역도연맹 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/kyeonggi/20231101084211426tjwt.jpg" data-org-width="512" dmcf-mid="Z2m7bV5JyB" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/kyeonggi/20231101084211426tjwt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제104회 전국체육대회 역도 남일반 67㎏급서 3회 연속 2관왕 오른 이상연. 대한역도연맹 제공
           </figcaption>
</figure>
<p dmcf-pid="qBY6MJBEh5" dmcf-ptype="general">이상연의 강점은 바벨을 뽑듯 시원하게 끌어올리는 것이다. 단순하지만 명확한 ‘하면 된다’는 주문은 그가 매일 새벽 훈련을 포함 5~6시간씩 스쿼트·데드리프트 등 고강도 훈련을 할 수 있게 만들었다. 주말에는 몸 회복과 심리적 안정을 도모하며 본인에게 최적화된 훈련법을 터득했다. </p>
<p dmcf-pid="BcPISWcpWZ" dmcf-ptype="general">보완해야 할 점도 명확히 인지하고 있다. 이상연은 “이번 체전 인상에서 아쉬운 결과가 나왔다. 인상 자세훈련을 늘리며 부족한 기록을 끌어올릴 수 있도록 맹연습할 것”이라고 강조했다. </p>
<p dmcf-pid="bkQCvYkUSX" dmcf-ptype="general">오는 5일 부터 진천선수촌에 입촌해 올림픽 대비 훈련에 돌입하는 이상연은 “내년 파리 올림픽 선발을 위해 인상에 신경을 쓰고, 또 이어질 세계역도선수권대회서도 금메달을 목에 걸기 위해 노력하겠다”며 “항상 적극 지도해주시는 윤석천 수원시청 감독님, 김미애 코치님과 많은 관심과 지원을 아끼지 않으시는 이재준 수원특례시장님, 박광국 시체육회장님께 감사드린다”고 말했다. </p>
<p dmcf-pid="KwRSWXwzlH" dmcf-ptype="general">김건주 기자 gun@kyeonggi.com </p>
</section>
</div></p></section></div><h6>[Source : 경기일보]</h6></div>
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