
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
    <h3>전세계에서 유대인 혐오 범죄 폭증, 외교관계 단절도</h3><h6>박형기 기자  2023. 11. 1. 09:26</h6>
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
<section dmcf-sid="q0OFOlg13G">
<figure class="figure_frm origin_fig" dmcf-pid="BCJOJo2mpY" dmcf-ptype="figure">
<p class="link_figure"><img alt="가자지구로 돌진하는 이스라엘군의 탱크. ⓒ 로이터=뉴스1 ⓒ News1 정윤경 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092629804nsoj.jpg" data-org-width="1400" dmcf-mid="HTA3ISatuz" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092629804nsoj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            가자지구로 돌진하는 이스라엘군의 탱크. ⓒ 로이터=뉴스1 ⓒ News1 정윤경 기자
           </figcaption>
</figure>
<p dmcf-pid="bhiIigVs0W" dmcf-ptype="general">(서울=뉴스1) 박형기 기자 = # 장면1 : 미국 로스앤젤레스에서 한 남성이 "유대인을 죽이라"고 외치며 한 유대인 가정에 침입을 시도하다 경찰에 체포됐다. </p>
<p dmcf-pid="KlnCnafOFy" dmcf-ptype="general"># 장면 2 : 영국 런던 한 놀이터에서 아이들이 "악취나는 유태인"이라며 한 유대인 아이에게 미끄럼틀에서 떨어져 있을 것을 강요했다. </p>
<p dmcf-pid="9qv7vYkU0T" dmcf-ptype="general"># 장면 3 : 중국에서는 유대인을 기생충, 뱀파이어, 뱀에 비유하는 게시물이 소셜 미디어에서 급증하고 있으며, 수많은 '좋아요'를 받고 있다. </p>
<p dmcf-pid="2BTzTGEuuv" dmcf-ptype="general">이는 지난달 7일 팔레스타인 무장세력 하마스가 이스라엘을 기습한 이후 이스라엘이 팔레스타인에 무차별 폭격을 가해 사망자가 8000명 이상 발생하는 등 이스라엘의 독주가 지속되자 전 세계에서 반유대주의 물결이 일어나고 있기 때문이라고 로이터통신이 1일 보도했다. </p>
<p dmcf-pid="VbyqyHD73S" dmcf-ptype="general"><strong>◇ 러시아 남부 공항 반유대 시위대에 점거돼</strong> : 가장 대표적인 사건이 러시아 남부 다게스탄 공항이 반유대 시위대에 의해 점령된 사건이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="ftr5rInX3l" dmcf-ptype="figure">
<p class="link_figure"><img alt="블라디미르 푸틴 러시아 대통령이 30일(현지시간) 다게스탄 자치공화국 공항에서 발생한 폭력 시위 관련 정부 고위급 회의를 주재하고 있다. 2023.10.31 ⓒ AFP=뉴스1 ⓒ News1 우동명 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092630418czhg.jpg" data-org-width="1400" dmcf-mid="XwWP3uv8p7" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092630418czhg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            블라디미르 푸틴 러시아 대통령이 30일(현지시간) 다게스탄 자치공화국 공항에서 발생한 폭력 시위 관련 정부 고위급 회의를 주재하고 있다. 2023.10.31 ⓒ AFP=뉴스1 ⓒ News1 우동명 기자
           </figcaption>
</figure>
<p dmcf-pid="4Fm1mCLZUh" dmcf-ptype="general">지난달 29일 러시아 남부 다게스탄 공항에 반유대 시위대가 몰려들면서 활주로가 일시 폐쇄됐다. 이에 따라 이 공항에 착륙 예정이던 항공기는 다른 공항으로 우회했다.</p>
<p dmcf-pid="83stsho5FC" dmcf-ptype="general">공항 당국은 "공항이 다음달 6일 오전 2시59분까지 폐쇄될 예정"이라고 발표했다. </p>
<p dmcf-pid="62GKG5mB3I" dmcf-ptype="general">다게스탄 인구의 대부분은 무슬림으로, 이스라엘에서 출발한 비행기에 유대인들이 대거 탑승했다는 소문이 퍼지자 이들을 잡기 위해 공항에 난입한 것으로 알려졌다. </p>
<p dmcf-pid="PVH9H1sbpO" dmcf-ptype="general">'X'(옛 트위터)를 통해 퍼진 영상에는 팔레스타인 국기를 든 인파가 공항 내부를 장악한 모습이 담겨 있다. 시위대는 더 나아가 이스라엘인을 찾아내겠다며 공항 터미널 출입구를 부수기도 했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="QfX2XtOK7s" dmcf-ptype="figure">
<p class="link_figure"><img alt="활주로를 점거하고 있는 시위대 - 트위터 갈무리" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092631655nozc.jpg" data-org-width="662" dmcf-mid="UOJYcwRyp5" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092631655nozc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            활주로를 점거하고 있는 시위대 - 트위터 갈무리
           </figcaption>
</figure>
<p dmcf-pid="xKWBWXwz3m" dmcf-ptype="general"><strong>◇ 미국서도 반유대주의 사건</strong> : 이뿐 아니라 이스라엘을 강력하게 후원하고 있는 미국에서도 반유대주의 사건이 포착되고 있다. </p>
<p dmcf-pid="ymMwMJBE0r" dmcf-ptype="general">미국 명문대로 꼽히는 코넬대학교 온라인 학생 커뮤니티에 유대인 위협 예고가 올라 오자 유대인 식당이 있는 건물이 일시 폐쇄됐다. </p>
<p dmcf-pid="WUC0CvNFFw" dmcf-ptype="general">지난달 29일 코넬대학교의 유대인 단체 '힐렐'은 "코넬대학교의 온라인 학생 커뮤니티에 반유대주의적 비방과 유대인 위협 예고가 올라 왔다"며 "유대인 학생들은 코셔(Kosher·유대교 율법에 따른 음식) 식당이 있는 건물에서 멀리 떨어져 있으라"고 권고했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="YuhphTj37D" dmcf-ptype="figure">
<p class="link_figure"><img alt="코넬대학 게시판에 올라온 글" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092632852zqhl.jpg" data-org-width="609" dmcf-mid="u8RTNkQS7Z" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092632852zqhl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            코넬대학 게시판에 올라온 글
           </figcaption>
</figure>
<p dmcf-pid="G7lUlyA0uE" dmcf-ptype="general">이스라엘의 최대 동맹 미국에서도 이 정도이니 다른 나라에서는 말할 필요도 없다. </p>
<p dmcf-pid="HsRrRibDpk" dmcf-ptype="general">아르헨티나의 부에노스아이레스의 한 유명 유태인학교의 학생들은 평소 입던 교복을 입지 말아 달라는 요청을 받았다. 남아공 요하네스버그에서는 지난 토요일 친팔레스타인 시위대가 유대인 공동체가 있는 지역으로 행진해 유대인들의 안식일 예배를 방해했다. </p>
<p dmcf-pid="XOemenKw7c" dmcf-ptype="general"><strong>◇ 영국 거주 유대인 “내 생애에서 가장 무서운 시기”</strong> : 영국 런던에 거주하고 있는 유대인 앤서니 앤들러는 "지금은 제2차 세계대전 이후 유대인으로 살기에 가장 무서운 시기"라며 "전에도 문제가 있었지만 내 인생에서 이렇게 나빴던 적은 없었다"고 말했다. </p>
<p dmcf-pid="ZIdsdL9r3A" dmcf-ptype="general">3개의 유대인 학교를 운영하는 그는 유대인 공격에 대한 두려움으로 지난달 7일 이후 3개 중 2개를 폐쇄하고, 나머지 한 학교는 보안을 강화했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="5x3P3uv80j" dmcf-ptype="figure">
<p class="link_figure"><img alt='런던의 반 이스라엘 시위에 참여한 참가자들이 "팔레스타인에 자유를＂이란 팻말을 들고 있다. ⓒ 로이터=뉴스1 ⓒ News1 박형기 기자' class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092633098suqr.jpg" data-org-width="1400" dmcf-mid="75c0CvNFzX" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092633098suqr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            런던의 반 이스라엘 시위에 참여한 참가자들이 "팔레스타인에 자유를＂이란 팻말을 들고 있다. ⓒ 로이터=뉴스1 ⓒ News1 박형기 기자
           </figcaption>
</figure>
<p dmcf-pid="1M0Q07T6FN" dmcf-ptype="general"><strong>◇ 반유대주의 사건 수백% 폭증</strong> : 미국, 영국, 프랑스, 독일, 남아공 등 경찰이나 시민사회단체의 통계를 입수할 수 있는 국가에서는 지난 7일 이후 반유대주의 사건이 전년 동기 대비 수백% 증가했다. </p>
<p dmcf-pid="tRpxpzyPFa" dmcf-ptype="general">반유대주의 사건의 경우, 언어폭력, 온라인 비방 또는 위협, 낙서, 유태인 재산, 사업체 또는 종교적 중요성이 있는 장소의 훼손 등이다. 이중 신체적 폭행의 비중이 가장 크다. </p>
<p dmcf-pid="F85f53C23g" dmcf-ptype="general">미국과 서유럽 정부는 대부분 이스라엘에 강력한 지지를 표하고 있지만 자국 내에서 반유대주의 증오범죄가 급증하고 있어 매우 당혹해하고 있다고 로이터는 전했다.</p>
<p dmcf-pid="361410hVpo" dmcf-ptype="general"><strong>◇ 볼리비아 이스라엘과 단교</strong> : 외교 관계를 단절하는 경우도 나오고 있다. 남미 볼리비아 정부가 지난달 31일(현지시간) 이스라엘과의 외교관계를 단절한다고 발표했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="0Pt8tplf7L" dmcf-ptype="figure">
<p class="link_figure"><img alt="루이스 아르세 볼리비아 대통령. 2023.7.20 ⓒ 로이터=뉴스1 ⓒ News1 강민경 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092633457vnpj.jpg" data-org-width="1400" dmcf-mid="zDzA8xUNzH" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092633457vnpj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            루이스 아르세 볼리비아 대통령. 2023.7.20 ⓒ 로이터=뉴스1 ⓒ News1 강민경 기자
           </figcaption>
</figure>
<p dmcf-pid="pPt8tplfUn" dmcf-ptype="general">이스라엘이 팔레스타인 가자지구를 공격하며 비인도적 범죄를 저질렀다는 이유에서다.</p>
<p dmcf-pid="UQF6FUS4zi" dmcf-ptype="general">프레디 마마니 볼리비아 외무부 차관은 이날 기자회견에서 "볼리비아는 가자지구에서 일어나는 이스라엘의 군사적 공세를 규탄하며, 이스라엘과의 외교 관계를 모두 단절키로 했다"고 밝혔다.</p>
<p dmcf-pid="ux3P3uv8UJ" dmcf-ptype="general">이로써 볼리비아는 중동전쟁 발생 이후 이스라엘과 단교를 선언한 첫 번째 국가가 됐다.</p>
<p dmcf-pid="7CJOJo2mzd" dmcf-ptype="general">sinopark@news1.kr </p>
</section>
</div></p></section></div><h6>[Source : 뉴스1]</h6></div>
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