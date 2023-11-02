
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
    <h3>지드래곤, '마약 좀비 영상' 풀버전 보니..정상 걸음? '악의적 짜깁기'[★FOCUS]</h3><h6>한해선 기자  2023. 11. 1. 09:33</h6>
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
<section dmcf-sid="9XRL10hVS8">
<div dmcf-pid="2rz2Olg1W4" dmcf-ptype="general">
           [스타뉴스 | 한해선 기자] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="KSOkbV5JSb" dmcf-ptype="figure">
<p class="link_figure"><img alt="/사진=온라인 커뮤니티" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101093722260mvxi.jpg" data-org-width="370" dmcf-mid="zvqbISatvV" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101093722260mvxi.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            /사진=온라인 커뮤니티
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="9vIEKf1iSB" dmcf-ptype="figure">
<p class="link_figure"><img alt="/사진=온라인 커뮤니티" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101093722611zrkc.jpg" data-org-width="370" dmcf-mid="qriL07T6W2" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101093722611zrkc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            /사진=온라인 커뮤니티
           </figcaption>
</figure>
<div dmcf-pid="4jF7kreWy2" dmcf-ptype="general">
<br/>그룹 빅뱅의 드래곤이 마약 투약 의혹을 적극 부인한 가운데, 그의 마약 관련 증상이란 짧은 컷의 풀영상이 공개됐다. 
          </div>
<p dmcf-pid="84OvPR7AT9" dmcf-ptype="general">한 네티즌은 지난 31일 온라인상에 "지드래곤 목 꺾는 영상 원본을 찾았습니다"라는 제목과 함께 관련 영상을 게재했다.</p>
<p dmcf-pid="68ITQezcyK" dmcf-ptype="general">해당 영상은 지드래곤이 마약 투약 혐의가 불거지자 많은 이들이 SNS, 온라인에 "좀비 같은 지디"라며 공유했던 그의 마약 중독 의심 증상 영상이었다. </p>
<p dmcf-pid="P6CyxdqkTb" dmcf-ptype="general">짧은 버전의 영상에선 지드래곤이 한 샵에 들어가는 순간 목을 심하게 꺾으며 금방이라도 쓰러질 것 같은 모습을 보였다. 그러나 긴 버전의 무편집 영상에선 지드래곤이 샵에 들어가기 전 해외 팬들에게 정상적인 모습으로 인사를 하다가 샵에 들어가며 목을 돌리는 스트레칭을 했다. </p>
<p dmcf-pid="Qv4MWXwzSB" dmcf-ptype="general">풀버전 영상으로 보면 지드래곤이 마약 중독 증상을 보이는 게 아닌 단순 스트레칭을 한 것으로 보인다. 풀버전을 올린 네티즌은 지드래곤이 2013년 등 과거부터도 팬들이나 취재진 앞에서 스트레칭하는 모습을 자주 보였기 때문에 문제될 게 없다고 주장했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="2YSmfP0gvq" dmcf-ptype="figure">
<p class="link_figure"><img alt="가수 지드래곤이 6일 오후 서울 강남구 청담 샤넬 서울 플래그십 스토어에서 진행된 '샤넬 X 프리즈 칵테일 리셉션'에 참석해 포즈를 취하고 있다. 2023.09.06 /사진=김창현" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101093722854dcnr.jpg" data-org-width="745" dmcf-mid="BmqbISatW9" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101093722854dcnr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            가수 지드래곤이 6일 오후 서울 강남구 청담 샤넬 서울 플래그십 스토어에서 진행된 '샤넬 X 프리즈 칵테일 리셉션'에 참석해 포즈를 취하고 있다. 2023.09.06 /사진=김창현
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="VqpZgA6hlz" dmcf-ptype="figure">
<p class="link_figure"><img alt="/사진=온라인 커뮤니티" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101093723329ovin.jpg" data-org-width="630" dmcf-mid="bqU5acPlWK" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101093723329ovin.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            /사진=온라인 커뮤니티
           </figcaption>
</figure>
<div dmcf-pid="WEUbrInXS7" dmcf-ptype="general">
<br/>이에 팬들은 "짜깁기 영상에 넘어간 건가", "지디는 원래 스트레칭 자주 함. 팬이라면 다 아는 건데", "대부분이 짜깁기를 한 악의적 편집이었다"고 반응했다. 반면 "암튼 기다리면 결과 나오겠지"라는 의견도 다수 있었다. 
          </div>
<p dmcf-pid="YDuKmCLZWu" dmcf-ptype="general">한편 경찰은 지난달 25일 지드래곤을 마약류 관리에 관한 법률 위반 혐의로 입건했다. 경찰은 지난달 서울 강남의 한 유흥업소에서 마약이 유통된다는 첩보를 입수, 수사하는 과정에서 지드래곤에 대한 혐의를 포착한 것으로 알려졌다.</p>
<p dmcf-pid="GAW5nafOSU" dmcf-ptype="general">그러나 지드래곤은 마약 투약 혐의를 부인했다. 그는 지난달 27일 법무법인 케이원챔버 김수현 변호사를 통해 "우선 저는 마약을 투약한 사실이 없다"며 "또한 최근 언론에 공개된 '마약류 관리 법률 위반'에 관한 뉴스 보도 내용과도 무관함을 밝히는 바다. 다만, 많은 분들이 우려하고 계심을 알기에 수사기관의 조사에는 적극적으로 협조하고 보다 성실히 임하겠다"고 밝혔다. 또한 오는 6일 경찰에 자진 출석해 조사를 받을 예정이다.</p>
<p dmcf-pid="HcY1LN4Ihp" dmcf-ptype="general">한해선 기자 hhs422@mtstarnews.com</p>
</section>
</div></p></section></div><h6>[Source : 스타뉴스]</h6></div>
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