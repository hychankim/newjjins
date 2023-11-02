
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
    <h3>좋은 분위기의 벨호, ‘만리장성’ 넘어 ‘파리행’ 바라본다</h3><h6>강예진  2023. 11. 1. 08:01</h6>
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
<section dmcf-sid="0C48zKHRM3">
<figure class="figure_frm origin_fig" dmcf-pid="pXin6MujeF" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080111117zpld.jpg" data-org-width="700" dmcf-mid="FySvwOiHRp" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080111117zpld.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="UAu7ZFI9et" dmcf-ptype="general"><br/> [스포츠서울 | 강예진기자] 파리행을 위해선 일단 ‘만리장성’ 중국을 넘어야 한다.</p>
<p dmcf-pid="uwbK3uv8J1" dmcf-ptype="general">콜린 벨 감독이 이끄는 한국 여자축구대표팀은 1일 중국 푸젠성의 샤먼 이그렛 스타디움에서 열리는 2024 파리 올림픽 아시아 2차 예선 조별리그 B조 최종전에서 중국을 상대한다.</p>
<p dmcf-pid="7EqBtplfd5" dmcf-ptype="general">조별리그 2차예선은 12개국이 3개조로 나뉘어 자웅을 겨룬다. 각 조 1위와 2위팀 중 성적이 좋은 한 팀이 4강 토너먼트에 나설 수 있다. 또 4강에서 승리한 두 팀은 올림픽 본선 티켓을 얻는 방식이다.</p>
<p dmcf-pid="zs2VUqWQLZ" dmcf-ptype="general">한국은 북한과 중국, 태국과 함께 ‘죽음의 B조’에 묶였는데 현재 승점 4(골득실 +9)로 북한(승점 4·골득실 +1)을 제친 선두에 자리하고 있다.</p>
<p dmcf-pid="q6vTrInXiX" dmcf-ptype="general">대회 출발이 산뜻했다. 한국은 태국과 1차전에서 10-1 대승을 거뒀다. 말그대로 ‘골잔치’였다. ‘한국축구의 미래’로 불리는 케이시 유진 페어와 천가람이 나란히 해트트릭을 작렬, 강채림의 멀티골, 이금민 문미라까지 골맛을 봤다.</p>
<p dmcf-pid="B5LoQezciH" dmcf-ptype="general">‘최대 고비’로 여겼던 북한과도 귀중한 승점 1을 획득했다. 북한의 공세에 탄탄한 수비벽을 세우면서 무실점으로 경기를 마치면서 파리행에 한 걸음 더 다가섰다.</p>
<p dmcf-pid="beHXhTj3dG" dmcf-ptype="general">이제는 중국이다. 중국은 국제축구연맹(FIFA) 랭킹에서 한국(20위)보다 5계단 위인 15위다. 상대 전적에서도 5승 7무 29패로 열세다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="KVChkreWdY" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080111413ppsa.jpg" data-org-width="700" dmcf-mid="3jzq10hVd0" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101080111413ppsa.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="9VChkreWiW" dmcf-ptype="general"><br/> 중국전에 앞서 북한과 태국의 경기가 열린다. 한국과 북한이 1~2위에 있고 중국(승점 3·골득실 +2)과 북한(승점 0· 골득실 -12)이 3~4위다. 앞서 열리는 경기 결과에 따라 한국의 전술 전략도 바뀔 가능성이 짙다.</p>
<p dmcf-pid="2fhlEmdYiy" dmcf-ptype="general">북한이 태국에 승리할 경우 한국은 반드시 중국을 잡은 후 골득실까지 따져봐야 한다. 또 중국과 비길 경우 조 2위가 되는데, 다른조 2위 팀과 승점·골득실을 비교해야 한다. 만약 패할 경우에는 3위로 내려앉는다. 북한이 태국과 비길 경우엔 한국이 중국과 비기기만 해도 골 득실에서 앞서 조 1위가 된다.</p>
<p dmcf-pid="VzDwoj8CMT" dmcf-ptype="general">가장 최근 중국과 치른 경기는 지난해 7월 동아시안컵과 2월 아시안컵이었다. 동아시안컵에서는 1-1 무승부, 아시안컵에서는 2-0으로 앞서다 내리 3골을 내주며 ‘쓰라린’ 2-3 역전패였다.</p>
<p dmcf-pid="feHXhTj3Mv" dmcf-ptype="general">쉽지 않은 상대인 건 분명하다. 하지만 태국전에서의 화력과 북한전에서 보여준 단단한 수비의 흐름을 이어간다면 승리를 기대해볼 만하다다. kkang@sportsseoul.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠서울]</h6></div>
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