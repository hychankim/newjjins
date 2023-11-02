
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
    <h3>10년 만에 정상 노리는 포항이냐, 첫 우승 도전하는 제주냐…누구도 FA컵 포기 못 한다</h3><h6>박준범  2023. 11. 1. 06:30</h6>
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
<section dmcf-sid="p9s9aGEuM7">
<figure class="figure_frm origin_fig" dmcf-pid="UL1LSbGMeu" dmcf-ptype="figure">
<p class="link_figure"><img alt="정조국(왼쪽) 제주 감독대행과 김기동 포항 감독. 제공 | 한국프로축구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063007805ozqj.jpg" data-org-width="500" dmcf-mid="FSKmFR7AeB" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063007805ozqj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            정조국(왼쪽) 제주 감독대행과 김기동 포항 감독. 제공 | 한국프로축구연맹
           </figcaption>
</figure>
<p dmcf-pid="ubrboWcpiU" dmcf-ptype="general"><br/> [스포츠서울 | 박준범기자] 제주 유나이티드도 포항 스틸러스도 포기할 수 없는 일전이다.</p>
<p dmcf-pid="76S6EtOKep" dmcf-ptype="general">제주와 포항은 1일 제주월드컵경기장에서 대한축구협회(FA)컵 4강을 치른다. 애초 지난 8월에 열렸어야 했지만, 당시 태풍 ‘카눈’의 여파로 연기됐다. 4강은 단판이며, 승리하는 팀은 홈에서 오는 4일 결승전을 치른다.</p>
<p dmcf-pid="zMWMmplfJ0" dmcf-ptype="general">제주는 19년 만에 FA컵 결승 진출에 도전한다. 제주는 전신인 부천SK 시절인 2004년에 FA컵 결승에 올랐으나, 승부차기 끝에 준우승에 머문 바 있다. 다시 한번 결승 무대에 오를 기회를 잡았다. 준결승에 오른 팀 중 파이널 B에 속한 팀은 제주가 유일하다.</p>
<p dmcf-pid="qjpjYf1iL3" dmcf-ptype="general">흐름은 나쁘지 않다. 부침을 겪던 제주는 지난달 22일 34라운드에서 수원 삼성(2-0 승)을 꺾고 정조국 대행 체제에서 첫 승을 따냈다. 8경기 무승(3무5패) 고리도 끊어냈다. 35라운드에서는 강원FC(1-1 무) 원정을 떠났는데, 극적인 정운의 동점골로 소중한 승점 1을 챙겼다. 분위기 반전에는 성공한 모습이다. 최영준, 정운 등 부상자들이 복귀해 정상 궤도에 오르고 있는 것도 이점이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="BL1LSbGMnF" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063008516gyiy.jpg" data-org-width="700" dmcf-mid="3TwBLyA0nq" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063008516gyiy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="b4h4c5mBJt" dmcf-ptype="general"><br/> 이에 맞서는 포항 역시 10년 만에 결승 진출을 노린다. 포항은 지난 2013년 FA컵 우승 이후 한 번도 결승 무대를 밟아보지 못했다. 특히나 올해가 창단 50주년이기에 그만큼 우승 트로피가 간절하다. 포항은 경기 이틀 전 제주도로 입도했다. 훈련장 찾기가 쉽지 않았는데 가까스로 적합한 곳을 찾았다.</p>
<p dmcf-pid="KPvPDFI9e1" dmcf-ptype="general">체력적인 부담은 확실히 크다. 포항은 리그, FA컵과 아시아 챔피언스리그(ACL)까지 병행하고 있다. 우라와 레즈(일본) 원정을 다녀온 뒤 전북 현대와 리그 35라운드 경기도 원정으로 치렀다. 원정 3연전으로 이어지는 빡빡한 일정이다. 전북전에서 일부 로테이션을 가동했지만 ‘교체 실수’로 인해 ‘캡틴’ 김승대의 체력 관리는 하지 못했다.</p>
<p dmcf-pid="9GeG2cPlM5" dmcf-ptype="general">측면 공격수 정재희가 이탈했지만, 수비수 심상민과 그랜트는 완전한 모습으로 복귀한 건 위안거리다. 올시즌 3차례 맞대결에서는 포항이 2승1패로 앞서 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="2totPmdYJZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="제공 | 대한축구협회" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063009127ewgt.jpg" data-org-width="700" dmcf-mid="0LKmFR7AJz" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101063009127ewgt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            제공 | 대한축구협회
           </figcaption>
</figure>
<p dmcf-pid="VN0NWV5JMX" dmcf-ptype="general"><br/> 한편, 우려됐던 경기장 잔디 문제도 큰 변수는 되지 않을 것으로 보인다. 지난달 27일과 28일 양일간 ‘서귀포글로컬페스타’가 제주월드컵경기장에서 열렸다. 잔디 훼손이 고민거리였는데, 잔디 상태가 나쁘지 않은 것으로 알려졌다.</p>
<p dmcf-pid="fcucH8FLJH" dmcf-ptype="general">beom2@sportsseoul.com</p>
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