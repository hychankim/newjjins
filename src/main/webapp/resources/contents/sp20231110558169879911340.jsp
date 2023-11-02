
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
    <h3>이강철 감독 "마지막에 운 따르지 않아, 선수들 최대한 활용하겠다" [PO2]</h3><h6>유준상 기자  2023. 11. 1. 05:58</h6>
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
<section dmcf-sid="49gjc5mBpL">
<figure class="figure_frm origin_fig" dmcf-pid="82aAk1sbFn" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101055848198vjka.jpg" data-org-width="1200" dmcf-mid="2cRJnTj3ua" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101055848198vjka.jpg" width="658"/></p>
</figure>
<p dmcf-pid="60xeJSatzi" dmcf-ptype="general">(엑스포츠뉴스 수원, 유준상 기자) KT 위즈가 홈에서 2연패를 기록하면서 탈락 위기에 놓였다.</p>
<p dmcf-pid="HXWO0dqkUK" dmcf-ptype="general">KT는 31일 수원KT위즈파크에서 열린 2023 신한은행 SOL KBO 플레이오프 2차전에서 NC 다이노스에 2-3으로 패배했다. KT는 남은 시리즈에서 1패만 더 하면 가을야구를 마감하게 된다.</p>
<p dmcf-pid="QfjkDFI9zd" dmcf-ptype="general">전날 윌리엄 쿠에바스에 비하면 2차전 선발투수 웨스 벤자민은 실점을 최소화하려고 했다. 벤자민은 1회초 박건우에게 선제 투런포를 허용했고, 3회초 선두타자 김주원의 3루타 이후 손아섭의 1루수 땅볼 때 박병호의 포구 실책으로 1점을 더 내줬다.</p>
<p dmcf-pid="x4AEw3C23e" dmcf-ptype="general">4회초와 5회초를 무실점으로 틀어막은 벤자민은 5이닝까지 소화하고 마운드를 내려갔고, KT는 곧바로 손동현을 투입해 분위기 반전을 시도했다. 두 번째 투수 손동현은 2이닝 1탈삼진 무실점으로 제 몫을 다했고, 또 한 명의 필승조인 박영현도 2이닝 동안 1피안타 1탈삼진 무실점으로 사령탑의 기대에 부응했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="yhUzBafO0R" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101055849487bpco.jpg" data-org-width="1200" dmcf-mid="Vzt0UibDFg" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101055849487bpco.jpg" width="658"/></p>
</figure>
<p dmcf-pid="WsFpunKwzM" dmcf-ptype="general">문제는 타선이었다. 1회말부터 무득점에 그친 타자들은 7회말까지 침묵으로 일관했다. KT는 팀이 0-3으로 끌려가던 8회말 오윤석의 희생플라이와 김상수의 1타점 적시타로 2-3까지 따라붙었지만, 9회말 무사 1·3루에서 단 한 명의 주자도 불러들이지 못하고 그대로 주저앉았다.</p>
<p dmcf-pid="YO3U7L9rUx" dmcf-ptype="general">특히 KT는 2사 만루에서 오윤석이 친 타구가 안타로 이어지길 바랐지만, NC 유격수 김주원이 다이빙캐치로 공을 낚아채면서 그대로 경기가 마무리됐다. 혹시나 하는 마음에 KT 벤치에서는 비디오 판독을 요청했으나 결과는 원심 유지. 두 팀의 희비가 엇갈리는 순간이었다.</p>
<p dmcf-pid="GI0uzo2m3Q" dmcf-ptype="general">역대 KBO 플레이오프(5전3선승제 기준, 1999~2000 양대리그·1995·2008·2021년 제외) 1~2차전 승리 팀의 한국시리즈 진출 확률은 무려 88.2%(15/17)에 달한다. 다시 말해서 2연패 뒤 3연승, 이른바 '리버스 스윕'에 성공한 팀은 딱 두 팀뿐이었다. 확률적으로는 한국시리즈 진출 가능성이 희박해졌다.</p>
<p dmcf-pid="HzJLgYkUFP" dmcf-ptype="general">경기 후 사령탑이 가장 먼저 언급한 장면은 역시나 9회말 2사 만루였다. 인터뷰실에 들어선 이강철 KT 감독은 "투수들은 전반적으로 잘했고, 야수들도 전반적으로 잘했다. 마지막에 운이 따르지 않았다"고 아쉬워했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="XqioaGEuF6" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101055850701wcci.jpg" data-org-width="1200" dmcf-mid="f3OhSbGMuo" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101055850701wcci.jpg" width="658"/></p>
</figure>
<p dmcf-pid="ZBngNHD7z8" dmcf-ptype="general">82구를 던진 벤자민이 예상보다 일찍 마운드를 떠난 이유는 무엇일까. 5회초 선두타자 김주원의 땅볼 타구에 왼쪽 허벅지를 맞은 뒤 여파가 있었기 때문이다. 이 감독은 "와인드업 동작은 괜찮은데, (타구에 왼쪽 허벅지를 맞은 여파로) 세트 포지션 때 힘이 안 들어간다고 했다. 투구수도 80개를 넘어서 불펜으로 가려고 했다"고 벤자민의 교체 사유를 설명했다.</p>
<p dmcf-pid="5Cp7qgVs04" dmcf-ptype="general">이제 벼랑 끝에 서게 된 KT는 3차전부터 3연승을 해야 한국시리즈로 향할 수 있다. 한국시리즈 진출을 위한 경우의 수가 한 가지밖에 남지 않은 만큼 매 경기 모든 걸 쏟아부어야 하는 KT다. 이강철 감독은 "어차피 마지막이니까 있는 선수들을 다 활용해서 최대한 이길 수 있도록 하겠다"고 반격 의지를 드러냈다. <strong>다음은 이강철 감독과의 일문일답.</strong></p>
<p dmcf-pid="1hUzBafOpf" dmcf-ptype="general"><strong>▲2차전 총평을 해보자면.</strong><br/> -투수들은 전반적으로 잘했다. 야수들도 전반적으로 잘했는데, 마지막에 운이 따르지 않았다.</p>
<p dmcf-pid="tluqbN4IFV" dmcf-ptype="general"><strong>▲벤자민 선수 투구수 82개, 거기서 손동현으로 바꾸게 된 상황에 대해 설명을 부탁드린다.</strong><br/> -와인드업 괜찮은데 (타구에 왼쪽 허벅지를 맞은 여파로) 세트 포지션 때 힘이 안 들어간다고 했다. 투구수도 80개를 넘어서 불펜으로 가려고 했다.</p>
<p dmcf-pid="FesClBYxp2" dmcf-ptype="general"><strong>▲한 번만 지면 끝인데, 남은 시리즈 계획은.</strong><br/> -어차피 마지막이니까 있는 선수들 다 활용해서 최대한 이길 수 있도록 하겠다.</p>
<p dmcf-pid="3dOhSbGMU9" dmcf-ptype="general"><strong>▲3회초 박병호 실책을 비롯해서 수비에서 허점이 나오고 있는데, 선수들이 급해진 것인가.</strong><br/> -애매하다. 그걸 떠나서 9회말 (김주원의 다이빙캐치)로 끝났다.</p>
<p dmcf-pid="0JIlvKHR7K" dmcf-ptype="general"><strong>▲1차전 선발이었던 윌리엄 쿠에바스, 4차전 선발 가능한가.</strong><br/> -일단 3차전을 이기고 생각해보겠다.</p>
<p dmcf-pid="pQDmOuv8zb" dmcf-ptype="general">사진=수원, 김한준 기자/박지영 기자</p>
<p dmcf-pid="UxwsI7T60B" dmcf-ptype="general">유준상 기자 junsang98@xportsnews.com </p>
</section>
</div></p></section></div><h6>[Source : 엑스포츠뉴스]</h6></div>
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