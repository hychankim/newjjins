
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
    <h3>“드웨인 존슨 닮았대요… 사람들 즐겁게 해주는 게 우리의 일”</h3><h6>윤민섭  2023. 10. 31. 22:35</h6>
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
<section dmcf-sid="qbuAxYkUnS">
<figure class="figure_frm origin_fig" dmcf-pid="B05i2CLZil" dmcf-ptype="figure">
<p class="link_figure"><img alt="올해 LoL 월드 챔피언십에서 베트남 e스포츠 돌풍을 이끈 GAM e스포츠의 TK 응우옌이 지난 26일 서울의 한 호텔에서 국민일보와 만나 인터뷰를 하고 있다. 그는 e스포츠가 차세대 엔터테인먼트 산업에서 큰 비중을 차지할 것이라 예상했다." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/kukminilbo/20231031223515867nuao.jpg" data-org-width="600" dmcf-mid="zIL5I4tnnv" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/kukminilbo/20231031223515867nuao.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            올해 LoL 월드 챔피언십에서 베트남 e스포츠 돌풍을 이끈 GAM e스포츠의 TK 응우옌이 지난 26일 서울의 한 호텔에서 국민일보와 만나 인터뷰를 하고 있다. 그는 e스포츠가 차세대 엔터테인먼트 산업에서 큰 비중을 차지할 것이라 예상했다.
           </figcaption>
</figure>
<p dmcf-pid="bPVOo3C2dh" dmcf-ptype="general"><br/>GAM e스포츠는 베트남을 연고로 하는 프로게임단이다. e스포츠 인프라가 열악한 지역에서 꾸준히 우승 기록을 쌓아 베트남 최강·최고 인기팀이 됐다. 최근에는 한국에서 개최 중인 e스포츠 축제 ‘LoL 월드 챔피언십(롤드컵)’ 본선에 진출하는 성과를 냈다. 지난 26일 서울에서 GAM의 CEO TK 응우옌을 만나 팀의 선전 비결과 운영 철학에 대해 들어봤다.</p>
<p dmcf-pid="55ZqLFI9nQ" dmcf-ptype="general"><strong>-CEO로서 운영 철학을 소개한다면.</strong></p>
<p dmcf-pid="989mntOKnI" dmcf-ptype="general">“CEO로 부임하고서 3개의 거시적인 목표를 세웠다. 첫 번째는 챔피언이 될 수 있는 실력 좋은 팀을 만드는 것, 두 번째는 게이머들을 위한 커뮤니티 구축, 세 번째가 온·오프라인 콘텐츠 제작이다. 나는 특히 오프라인 이벤트를 중요하게 보고 있다. 베트남엔 엔터테인먼트가 부족하다. 그래서 우리는 영화관에서 함께 e스포츠 경기를 관람하는 ‘뷰잉파티’를 개최하고, 뮤지션이나 인플루언서를 초청하기도 한다. 팀이 e스포츠뿐만 아니라 엔터테인먼트 산업 전반을 하나로 엮어내는 일종의 플랫폼이 됐으면 한다.</p>
<p dmcf-pid="2dQvczyPLO" dmcf-ptype="general">e스포츠가 차세대 엔터테인먼트 산업에서 큰 비중을 차지할 것으로 보고 있다. 한국은 케이팝이나 영화 등 즐길 거리가 많은 나라 아닌가. 반면 베트남은 축구를 제외하면 그렇지가 않다. 어디서나 언더도그(underdog) 포지션이다. 베트남의 젊은 세대가 자부심을 느낄 만한 산업을 만들고, 우리 팀이 거기서 허브 역할을 해냈으면 한다.”</p>
<p dmcf-pid="1XH7i1sbLP" dmcf-ptype="general"><strong>-오전 9시에 기상해서 운동으로 일과를 시작하는 독특한 팀 문화를 도입했다고.</strong></p>
<p dmcf-pid="frcUyR7AMm" dmcf-ptype="general">“앞서 얘기한 것들이 거시적 목표라면 미시적 목표는 팀의 문화를 바꾸는 것이었다. 이 문화가 롤드컵 진출 비결이기도 하다. GAM 선수단은 9시에 무조건 잠에서 깨고 숙소 바깥으로 나와서 햇빛을 본다. 현재 시간을 몸이 인지해야 올바른 리듬을 찾을 수 있다. 이후 스트레칭과 15분 동안 명상을 통해 서로의 호흡을 공유하고, 하나의 유기체로 거듭난다. 간단한 점심 식사, 팀 연습과 회의, 개인 시간, 저녁 식사와 팀 연습, 이후 자율적인 개인 연습 시간 등으로 하루를 마무리한다. 루틴을 반복하면 시스템이 되고, 시스템은 곧 문화가 된다. 이 문화가 GAM의 힘이다.</p>
<p dmcf-pid="4cgth63onr" dmcf-ptype="general">체력이 모든 것의 근간이라고 생각한다. 하이 레벨에서 경쟁해야 하는 프로게이머들 역시 체력이 좋지 않으면 훌륭한 성적을 낼 수 없다. 또한 신체와 정신을 건강하게 유지하는 것이 전문가다운 마음가짐이다. 결승전처럼 중요한 경기는 5판 3선승제로 열려서 치르는 데만도 몇 시간이 걸린다. 베트남 리그 결승전에서 GAM이 늘 이기는 것도 이 넘치는 에너지 덕분이다.</p>
<p dmcf-pid="8R6ljuv8Rw" dmcf-ptype="general">또한 우리 팀은 ‘하나 되어 비상하자(rise as one)’를 기치로 삼고 있다. 이것은 GAM 뿐만 아니라 베트남 e스포츠의 일원으로서도 마찬가지다. 산업은 인기 선수 같은 특정한 개인이 만드는 게 아니다. 언론과 팬, 콘텐츠 제작자 등 업계의 모든 구성원이 함께 발전시키고 키워나가는 것이다.”</p>
<p dmcf-pid="tniD1gVsn6" dmcf-ptype="general"><strong>-GAM의 향후 목표는 무엇인가.</strong></p>
<p dmcf-pid="PFXdKOiHiE" dmcf-ptype="general">“e스포츠를 통해 주류 문화 산업에 진입하고 싶다. 유명 아티스트들과 협업하는 한국의 젠지나 T1 같은 프로게임단이 우리의 레퍼런스다. 장기적으로는 훌륭한 선수를 육성하는 아카데미 사업을 목표로 하고 있다. 베트남의 e스포츠 유망주들은 소위 ‘게임 이론’을 모른다. 그걸 모르는데도 국제 대회에 진출하고 어느 정도 성적을 내는 날것의 재능들이다. 게임을 가르치는 학원이 있어야만 젊은 재능들이 오롯이 빛을 볼 수 있고, 그래야 생태계가 구축·순환될 것으로 보고 있다.</p>
<p dmcf-pid="Q73g8vNFnk" dmcf-ptype="general">최근 ‘리그 오브 레전드’ e스포츠가 뉴진스나 릴나스엑스처럼 세계적으로 유명한 가수들과 콜라보를 해 화제가 됐다. 이처럼 e스포츠에 관심이 없는 보편적인 대중도 흥미를 느낄 만한 멋진 일들을 베트남 내에서 해나가고 싶다.”</p>
<p dmcf-pid="Fgom3j8Cd8" dmcf-ptype="general"><strong>-롤드컵 대회 내내 열성적으로 응원하는 모습이 카메라에 잡혔다. 이제 한국 팬들한테도 낯익다.</strong></p>
<p dmcf-pid="yK7cMGEuMA" dmcf-ptype="general">“한국의 e스포츠 팬분들이 나와 GAM을 응원해 주신 걸 알고 있다. 나보고 미국의 프로레슬러 겸 영화배우 더락(드웨인 존슨)과 닮았다고 하시더라(웃음). 스포츠에서는 진지한 경쟁도 중요하지만, 팬분들에게 재미를 선사하고 흥미로운 스토리를 만들어나가는 것도 그에 못잖다. 우리는 재미를 위해서라면 뭐든 할 수 있다. 사람들을 더 즐겁게 해주는 게 우리의 일이라는 마음가짐으로 계속 나아가겠다.”</p>
<p dmcf-pid="WodGr9XeJj" dmcf-ptype="general">글·사진=윤민섭 기자 flame@kmib.co.kr</p>
<p dmcf-pid="YkaFlP0gdN" dmcf-ptype="general">GoodNews paper ⓒ <span>국민일보(www.kmib.co.kr)</span>, 무단전재 및 수집, 재배포금지</p>
</section>
</div></p></section></div><h6>[Source : 국민일보]</h6></div>
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