
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
    <h3>“감염 살처분 소 유통 없다”…정부 설명에도 한우 먹기 불안한 소비자들</h3><h6> 2023. 11. 1. 09:31</h6>
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
<section dmcf-sid="tkCotplf0q">
<figure class="figure_frm origin_fig" dmcf-pid="FWFCfP0gpz" dmcf-ptype="figure">
<p class="link_figure"><img alt="1일 찾은 서울의 한 대형마트에서 손님이 한우를 살펴보고 있다. 정목희 기자." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101093114471wkru.jpg" data-org-width="1280" dmcf-mid="qXWk7bGM0g" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101093114471wkru.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            1일 찾은 서울의 한 대형마트에서 손님이 한우를 살펴보고 있다. 정목희 기자.
           </figcaption>
</figure>
<p dmcf-pid="3Y3h4Qpa07" dmcf-ptype="general">[헤럴드경제=정목희 기자] “불안해서 한우 말고 미국산으로 샀어요.” 지난 1일 찾은 서울 중랑구의 한 대형마트. 정육코너를 찾은 김모(81) 씨는 미국산 소고기 하나를 골랐다. 김씨는 “한우는 요새 전염병 때문에 불안하기도 하고, 비싸서 손이 잘 안 간다”라며 “소비자들 입장에선 소가 병 걸렸다고 하니 아무래도 불안하다”라고 말했다.</p>
<p dmcf-pid="0sycuBYxpu" dmcf-ptype="general">소 가축전염병의 일종인 럼피스킨병이 전국으로 확산하면서 소고기 소비 심리 역시 위축되는 모습이다. 럼피스킨병은 사람에게 전염되지 않지만, 한우 거래를 꺼리는 시민들의 모습이 역력했다. 정부가 럼피스킨병은 사람에게 전염되는 수인성 전염병이 아니고, 유통망에도 포함되지 않는다고 강조하고 있지만 소비자들은 여전히 불안감을 감추지 못하고 있는 모습이다.</p>
<p dmcf-pid="pOWk7bGM3U" dmcf-ptype="general">기자가 찾은 마트에서는 ‘한우 데이’라고 불리는 한우 가격 할인 행사가 진행중이었다. ‘한후 전품목 40%’이라고 써 있는 한우 코너에는 사람들이 모여 있었지만 선뜻 장바구니에 한우를 담는 시민은 많지 않았다. 주부 권모(35) 씨 역시 한우 코너에서 가격을 이리저리 살펴보다 가격 때문에 내려놓았다. 권씨는 “한우 가격이 전염병 때문인지 더 오른 것 같다”며 “가족들에게 불고기를 좀 해서 줄까 했는데, 100g 당 7500원이면 너무 비싸다고 느껴서 사지 않았다”고 말했다. 한우데이는 지난달 28일부터 이달1일까지다.</p>
<p dmcf-pid="UIYEzKHRup" dmcf-ptype="general">럼피스킨병에 전염된 소는 유통하지 않으니 소비자들은 안심해도 된다는 것이 정부 입장이다. 농림축산식품부 관계자는 역시 “유통망에는 병 걸린 소가 들어갈 이유도 없기 때문에 소비자들은 안심하고 드셔도 된다”며 “전염병은 계속 진행중이기는 하지만 전국적으로 백신을 접종하고 있고, 또 백신으로 방어 가능한 병이기 때문에 접종이 끝나면 안정화될 것으로 보인다”라고 했다. 그는 “항체 형성이 3주 정도 걸리는데 10일까지 백신 접종을 완료하면 11월말까지는 항체 형성이 전국적으로 될 것”이라고 말했다.</p>
<p dmcf-pid="utqYRibDz0" dmcf-ptype="general">정황근 농림축산식품부 장관(럼피스킨병 중앙사고수습본부장)도 “럼피스킨병은 사람에게는 전염되지 않으므로 과도한 불안감을 가질 필요가 없고, 감염된 소는 살처분하기 때문에 푸드 시스템에 들어갈 가능성이 없다”고 강조하며 “수급관리에 만전을 기하겠다”고 밝힌 바 있다.</p>
<p dmcf-pid="7FBGenKwp3" dmcf-ptype="general">정부의 대응에도 판매 현장에서는 소비위축을 체감하고 있다. 한 축산물 도매센터 관계자는 “언론에서 럼피스킨병에 대해 보도된 직후에 거래가 취소되는 경우도 있었고, 지금까지 판매량은 예전과 비교하면 5~10% 정도 덜 나오는 상황이다”라고 말했다. 그는 이어 <span>“전염병이 돌기 전 한우 가격은 1kg 당 9~10만원 정도였다면 럼피스킨병 유행 후에는 살처분된 소들이 꽤 되기 때문에 공급 물량이 줄어들어서 지금은 11~12만원까지도 나오는 상황”이라고 했다. 이날까지 살처분됐거나 살처분 예정인 한우와 젖소 육우 등은 총 4730마리다. 그중 살처분된 한우는 2000마리가 넘는다. </span></p>
<div dmcf-pid="z3bHdL9r7F" dmcf-ptype="general">
<p>축산물품질평가원 축산유통정보에 따르면 한우 거래 정육량은 지난달 24일부터 30일까지 4898t으로 전염병이 확산되기 전주보다 10t 가량 감소했다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="qIYEzKHR3t" dmcf-ptype="figure">
<p class="link_figure"><img alt="서울의 한 대형마트에서 1일까지 한우데이 행사가 진행 중이다. 정목희 기자." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101093116564ezff.jpg" data-org-width="1280" dmcf-mid="1b9ZigVszB" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101093116564ezff.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            서울의 한 대형마트에서 1일까지 한우데이 행사가 진행 중이다. 정목희 기자.
           </figcaption>
</figure>
<p dmcf-pid="BCGDq9Xep1" dmcf-ptype="general">마트 업계에서도 소비심리를 예의주시하고 있다. 한우 비축 물량이 있으니 당분간 가격 변동은 없지만 전염병 확산세가 장기화될 경우 조치를 취할 예정이라고 밝혔다. 홈플러스 관계자는 “비축 물량을 판매하고 있기 때문에 아직까지는 판매량이 꾸준히 나오고 있으며 가격 또한 유지 중이다”라며 “다만 전염병이 장기화될 경우 가격이 오르거나, 소비자 불안감이 심해질 수는 있어서 상황을 예의주시하고 있다”라고 말했다.</p>
<p dmcf-pid="bhHwB2Zd05" dmcf-ptype="general">한편 럼피스킨병 중앙사고수습본부(중수본)에 따르면 전날 8시 기준 럼피스킨병 확진 사례는 총 69건으로 늘었다. 현재까지 살처분된 소는 총 4730마리다.</p>
<p dmcf-pid="Kz4FgA6hUZ" dmcf-ptype="general">mokiya@heraldcorp.com</p>
</section>
</div></p></section></div><h6>[Source : 헤럴드경제]</h6></div>
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