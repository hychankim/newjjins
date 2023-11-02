
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
    <h3>北 석도 인근서 '불법 환적' 정황… "10월에만 최소 10건"</h3><h6>최소망 기자  2023. 11. 1. 09:25</h6>
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
<section dmcf-sid="8MRkPR7AzY">
<figure class="figure_frm origin_fig" dmcf-pid="6ogIigVsuW" dmcf-ptype="figure">
<p class="link_figure"><img alt="인천 옹진군 대연평도에서 바라본 북한 석도, 2022.10.22/뉴스1 ⓒ News1 장수영 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092517795mfzw.jpg" data-org-width="1400" dmcf-mid="4PrGkreW3G" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/NEWS1/20231101092517795mfzw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            인천 옹진군 대연평도에서 바라본 북한 석도, 2022.10.22/뉴스1 ⓒ News1 장수영 기자
           </figcaption>
</figure>
<p dmcf-pid="PgaCnafOUy" dmcf-ptype="general">(서울=뉴스1) 최소망 기자 = 북한 서해의 석도 인근 해상에서 선박 간 '불법 환적' 정황이 포착됐다고 1일 미국의소리(VOA) 방송이 보도했다.</p>
<p dmcf-pid="QaNhLN4IpT" dmcf-ptype="general">VOA에 따르면 인공위성 사진 업체 '플래닛 랩스'가 지난달 29일 석도 북쪽 해상 일대를 촬영한 위성사진에 길이 약 100m의 선박 2척이 약 40m 길이 선박 1척을 사이에 둔 채 선체를 맞대고 있는 모습이 찍혔다.</p>
<p dmcf-pid="xckTNkQSuv" dmcf-ptype="general">또 이 해역으로부터 북동쪽으로 약 1㎞ 떨어진 곳에도 약 80m 길이의 선박 2척이 작은 선박을 사이에 두고 밀착해 있는 모습이 포착됐다.</p>
<p dmcf-pid="yu7Q07T6US" dmcf-ptype="general">VOA는 "위성사진 확인 결과, 10월11·19·22·29일에도 최소 10건의 환적 정황이 포착됐다"며 "지난달 11일 하루 동안엔 5건의 환적 정황이 발견되기도 했다"고 설명했다. </p>
<p dmcf-pid="W7zxpzyPul" dmcf-ptype="general">또 같은 달 19일엔 약 100m 길이의 대형 선박 3척이 소형 선박 2척을 사이에 두고 있는 모습도 위성사진에 찍혔다.</p>
<p dmcf-pid="Y6PNfP0gUh" dmcf-ptype="general">유엔안전보장이사회는 북한의 핵·미사일 개발 및 도발 등에 따라 지난 2017년 12월 채택한 대북제재 결의 제2397호에서 북한이 유엔 회원국들로부터 연간 수입할 수 있는 정제유 규모를 50만배럴(약 7만톤)로 제한하는 등 각종 물자 수출입을 규제하고 있다.</p>
<p dmcf-pid="GPQj4QpaUC" dmcf-ptype="general">그러나 북한은 이런 안보리 제재 결의에도 불구하고 그간 공해상 또는 북한 인근 해역에서 선박 간 환적 방식으로 수출입 제한 물자를 불법적으로 거래해온 것으로 파악된다. 이 같은 환적 행위 역시 안보리 대북제재 결의 2375호 위반 사항이다.</p>
<p dmcf-pid="HVfLKf1izI" dmcf-ptype="general">선박 3척이 이 같은 불법 환적에 동원된 경우 가운데 선박이 양옆 선박 간에 물건을 옮겨 싣는 크레인용 바지선 역할을 하는 것으로 알려져 있다.</p>
<p dmcf-pid="Xf4o94tn3O" dmcf-ptype="general">석도는 북한 서해와 대동강 최하류가 만나는 지점에 있는 섬이다. 안보리 대북제재위원회 전문가패널은 지난달 27일 펴낸 중간보고서에서 이곳을 북한 선박들의 새로운 환적지로 지목했다.</p>
<p dmcf-pid="Z48g28FLps" dmcf-ptype="general">VOA는 그동안 북한 초도 인근 해상에서 포착돼온 불법 환적 정황이 올 5월 이후 사라진 뒤 석도 인근에서 유사한 정황이 확인됐다며 "북한이 환적 장소를 옮겼을 가능성이 있다"고 전했다. VOA는 초도 인근 해상에선 작년에만 36건, 올 들어선 38건의 환적 정황이 위성사진에 포착됐다고 설명했다.</p>
<p dmcf-pid="5pU6FUS4Um" dmcf-ptype="general">somangchoi@news1.kr </p>
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