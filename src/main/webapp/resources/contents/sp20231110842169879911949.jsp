
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
    <h3>[PO]+1승은 곧 KS 진출, 그리고 새로운 역사의 탄생…ERA 15.00 '금쪽 외인'에 달렸다. '국대 특급 잠수함'과 운명의 3차전</h3><h6>이종서  2023. 11. 1. 08:42</h6>
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
<section dmcf-sid="tSdwOlg1Ej">
<figure class="figure_frm origin_fig" dmcf-pid="3fW7bV5JIa" dmcf-ptype="figure">
<p class="link_figure"><img alt="2023 KBO 포스트시즌 두산 베어스와 NC 다이노스의 와일드카드 결정전 1차전이 19일 창원NC파크에서 열렸다. NC 태너가 숨을 고르고 있다. 창원=박재만 기자pjm@sportschosun.com/2023.10.19/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084205179ikrr.jpg" data-org-width="1200" dmcf-mid="XmRADsJGsE" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084205179ikrr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2023 KBO 포스트시즌 두산 베어스와 NC 다이노스의 와일드카드 결정전 1차전이 19일 창원NC파크에서 열렸다. NC 태너가 숨을 고르고 있다. 창원=박재만 기자pjm@sportschosun.com/2023.10.19/
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="0usZFUS4mg" dmcf-ptype="figure">
<p class="link_figure"><img alt="25일 창원 NC파크에서 열린 SSG와 NC의 준PO 3차전. NC 태너가 역투하고 있다. 창원=박재만 기자 pjm@sportschosun.com/2023.10.25/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084205398ahkz.jpg" data-org-width="1200" dmcf-mid="Zs0V6MujOk" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084205398ahkz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            25일 창원 NC파크에서 열린 SSG와 NC의 준PO 3차전. NC 태너가 역투하고 있다. 창원=박재만 기자 pjm@sportschosun.com/2023.10.25/
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="p7O53uv8Io" dmcf-ptype="figure">
<p class="link_figure"><img alt="25일 창원 NC파크에서 열린 SSG와 NC의 준PO 3차전. NC 태너가 역전 만루포를 허용한 뒤 아쉬워하고 있다. 창원=박재만 기자 pjm@sportschosun.com/2023.10.25/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084205577kpcs.jpg" data-org-width="1200" dmcf-mid="58AhTGEuEc" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084205577kpcs.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            25일 창원 NC파크에서 열린 SSG와 NC의 준PO 3차전. NC 태너가 역전 만루포를 허용한 뒤 아쉬워하고 있다. 창원=박재만 기자 pjm@sportschosun.com/2023.10.25/
           </figcaption>
</figure>
<p dmcf-pid="UzI107T6IL" dmcf-ptype="general"> [수원=스포츠조선 이종서 기자] NC 다이노스가 한국시리즈 1승을 남겨두고 홈으로 돌아간다.</p>
<p dmcf-pid="uzI107T6sn" dmcf-ptype="general">NC의 '파죽지세' 가을 연승 행진이 계속 이어졌다. NC는 31일 수원KT위즈파크에서 열린 KT 위즈와의 포스트시즌 플레이오프 2차전도 3대2로 잡았다.</p>
<p dmcf-pid="7qCtpzyPOi" dmcf-ptype="general">NC는 와일드카드부터 준플레이오프를 거쳐 플레이오프 1,2차전까지 6전 전승을 거뒀다. 3년 전 한국시리즈 4~6차전 3연승을 더하면 9연승이다. </p>
<p dmcf-pid="zBhFUqWQsJ" dmcf-ptype="general">역대 포스트시즌 최다 연승 타이기록. 1987년~1988년 해태 타이거즈의 9연승 이후 무려 35년 만의 대기록이다. </p>
<p dmcf-pid="q3DYZFI9Dd" dmcf-ptype="general">1,2차전을 모두 잡은 NC는 2일 창원에서 열리는 3차전까지 1승을 더하면 7전 전승으로 LG 트윈스가 기다리고 있는 한국시리즈 진출에 성공한다. 포스트시즌 최다 10연승 신기록 달성은 곧 한국시리즈 진출 티켓이 된다.</p>
<p dmcf-pid="B0wG53C2Oe" dmcf-ptype="general">역대 5전 3선승제로 진행된 플레이오프에서 2승을 먼저 거둔 팀이 한국시리즈에 올라간 건 88.2%(총 17회 중 15회)다.</p>
<p dmcf-pid="bprH10hVsR" dmcf-ptype="general">수원에서 2경기를 모두 NC가 잡은 가운데 11월1일 하루 휴식 후 2일부터 창원에서 경기를 치른다. NC는 태너 털리를 선발 투수로 예고했고, KT는 고영표가 3차전에 나선다.</p>
<p dmcf-pid="KUmXtplfsM" dmcf-ptype="general">태너는 올 시즌 대체 외국인 선수로 NC 유니폼을 입어 11경기에서 5승2패 평균자책점 2.92를 기록했다.</p>
<p dmcf-pid="9x594QpaOx" dmcf-ptype="general">NC가 태너를 대체 선수로 낙점한 건 6이닝을 안정적으로 막아줄 수 있는 안정성의 모습을 높이 샀기 때문. 정규시즌에는 11경기 중 8경기가 퀄리티스타트(선발 6이닝 이상 3자책점 이하)였다. 5이닝 이전에 마운드를 내려온 적이 없었다. </p>
<p dmcf-pid="2M128xUNDQ" dmcf-ptype="general">하지만 가을야구에서는 전혀 딴판이다. 2경기 모두 조기 강판했다. 두산 베어스와의 와일드카드 결정전에서 4이닝 7안타(1홈런) 3볼넷 5실점, SSG 랜더스와의 준플레이오프에서는 2이닝 5안타(1홈런) 3볼넷 2탈삼진 5실점으로 악화됐다. </p>
<p dmcf-pid="VRtV6MujmP" dmcf-ptype="general">강인권 NC 감독은 "변화구에 정타 허용 비율이 높다. 커맨드가 조금 안 돼 당황하는 모습이 보였다"라며 "스스로 자기 모습을 잘 찾아가면 이겨내리라 생각한다"고 말했다.</p>
<p dmcf-pid="fw4gADMTO6" dmcf-ptype="general">KT를 상대로는 한 차례 등판해 6이닝 2실점을 기록했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="4r8acwRys8" dmcf-ptype="figure">
<p class="link_figure"><img alt="2023 KBO리그 KT 위즈와 KIA 타이거즈 경기가 3일 수원 KT위즈파크에서 열렸다. KT 고영표가 역투하고 있다. 수원=박재만 기자pjm@sportschosun.com/2023.10.03/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084205823qaps.jpg" data-org-width="1200" dmcf-mid="1OeDsho5rA" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084205823qaps.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2023 KBO리그 KT 위즈와 KIA 타이거즈 경기가 3일 수원 KT위즈파크에서 열렸다. KT 고영표가 역투하고 있다. 수원=박재만 기자pjm@sportschosun.com/2023.10.03/
           </figcaption>
</figure>
<p dmcf-pid="8m6NkreWs4" dmcf-ptype="general"> 창원 원정 두 경기를 모두 이기고 홈으로 돌아와야 하는 KT는 '국가대표 출신' 언더 투수 고영표가 나선다.</p>
<p dmcf-pid="6RtV6Mujwf" dmcf-ptype="general">고영표는 올 시즌 28경기에서 12승7패 평균자책점 2.78을 기록했다. 21차례 퀄리티스타트(선발 6이닝 이상 3자책점 이하)를 기록할 정도로 안정적인 피칭을 뽐냈다. 올 시즌 NC를 상대로는 2경기에 나와 2승1패 평균자책점 3.55의 성적을 남겼다. 2021년 한국시리즈 우승 당시에는 불펜 투수로 3경기에 나와 4⅔이닝을 던져 2홀드 평균자책점 3.86을 기록했다.<br/>수원=이종서 기자 bellstop@sportschosun.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠조선]</h6></div>
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