
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
    <h3>‘운수오진날’ 이성민 유연석의 숨 막히는 동행, 이정은의 처절한 추적</h3><h6>박수인  2023. 11. 1. 08:10</h6>
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
<section dmcf-sid="qHfAMJBERI">
<figure class="figure_frm origin_fig" dmcf-pid="BoTBZFI9nO" dmcf-ptype="figure">
<p class="link_figure"><img alt="티빙 ‘운수 오진 날’" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsen/20231101081029342vhss.jpg" data-org-width="650" dmcf-mid="feEZISatMq" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsen/20231101081029342vhss.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            티빙 ‘운수 오진 날’
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="bSqnfP0gns" dmcf-ptype="figure">
<p class="link_figure"><img alt="티빙 ‘운수 오진 날’" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsen/20231101081029481gyca.jpg" data-org-width="650" dmcf-mid="8EvqXtOKe7" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsen/20231101081029481gyca.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            티빙 ‘운수 오진 날’
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="KHfAMJBELm" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/newsen/20231101081029932gsaf.jpg" data-org-width="650" dmcf-mid="PEO0TGEuMU" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/newsen/20231101081029932gsaf.jpg" width="658"/></p>
</figure>
<p dmcf-pid="9X4cRibDer" dmcf-ptype="general"> [뉴스엔 박수인 기자]</p>
<p dmcf-pid="2rFQzKHRMw" dmcf-ptype="general">'운수 오진 날'이 2차 포스터와 2차 예고편을 공개했다.</p>
<p dmcf-pid="VaWK10hVnD" dmcf-ptype="general">오는 11월 24일 첫 공개되는 티빙 오리지널 시리즈 '운수 오진 날'(연출 필감성, 극본 김민성·송한나, 기획 스튜디오드래곤, 제작 더그레이트쇼·스튜디오N, 제공 티빙)은 ‘꿈빨’ 죽이는 하루가 ‘악몽’ 같은 하루가 되어버린 오택(이성민 분)과 금혁수(유연석 분)의 숨 막히는 동행부터 그들을 쫓는 황순규(이정은 분)의 처절한 추적까지 숨 막히는 서스펜스가 기대감을 고조시킨다.</p>
<p dmcf-pid="fVAGmCLZJE" dmcf-ptype="general">동명의 인기 네이버웹툰을 원작으로 하는 '운수 오진 날'은 평범한 택시기사 오택이 고액을 제시하는 묵포행 손님을 태우고 가다 그가 연쇄 살인마임을 깨닫게 되면서 공포의 주행을 시작하게 되는 이야기다. 더는 멈출 수 없는 이들의 목숨을 건 동행이 차원이 다른 스릴과 서스펜스를 안긴다.</p>
<p dmcf-pid="4Cud94tnJk" dmcf-ptype="general">영화 '인질'로 리얼 타임 스릴러의 정수를 보여준 필감성 감독의 OTT 드라마 첫 진출작이라는 점 역시 이목을 집중시킨다. 무엇보다 이름만으로 신뢰를 더하는 이성민, 유연석, 이정은이 의기투합해 기대 심리를 더욱 자극한다. 짜임새 있는 구성과 스토리로 웹툰 팬들로부터 절대적 지지를 받은 원작의 장르적 쾌감을 극대화할 배우, 제작진의 ‘믿고 보는’ 조합이 기대를 뜨겁게 달구고 있는 것. 특히 제28회 부산국제영화제에 공식 초청, 단 1~2화 공개만으로 큰 호응을 일으키며 하반기 기대작으로도 주목받고 있다.</p>
<p dmcf-pid="80Rsoj8Cec" dmcf-ptype="general">그런 가운데 공개된 2차 포스터와 2차 예고편은 아찔한 반전으로 소름을 유발한다. 먼저 2차 포스터 속 평범한 택시 기사 오택이 거부할 수 없는 제안을 하는 손님에게 호의적인 미소를 짓고 있다. 하지만 이들 사이로 떠오른 ‘나는 살인마를 태웠다’라는 문구는 손님의 수상한 정체를 의심케 한다. 동시에 오택의 위험천만한 여정을 암시하며 간담을 서늘하게 한다.</p>
<p dmcf-pid="61kXOlg1nA" dmcf-ptype="general">함께 공개된 2차 예고편에서 ‘꿈빨’ 제대로 장착한 오택은 기분 좋은 운행을 시작한다. 간밤에 꾼 돼지꿈 덕분인지 출발부터 승객은 끊이지 않고, 웃돈을 약속한 장거리 손님 금혁수까지 태우게 됐으니 이보다 더 좋을 순 없다. 하지만 밀항을 위해 묵포에 간다며 “제가 사람이라도 죽였을까 봐요?”라고 의미심장한 말을 남기는 금혁수. 룸미러 너머 낮과는 또 다른 그의 비릿한 미소에 오택의 등줄기에는 식은땀이 흐른다.</p>
<p dmcf-pid="PtEZISatLj" dmcf-ptype="general">이어 금혁수가 “재미있는 거 하나 보여드릴까요?”라며 광기 어린 본모습을 드러내고, 오택은 브레이크 없는 공포의 질주에 돌입한다. 그리고 “사람을… 죽인 겁니까?”라는 오택의 질문은 “우리 아들을 죽인 놈을 쫓고 있어요”라는 황순규의 사연으로 이어진다. 메마른 얼굴과 공허한 눈빛을 한 황순규의 절규가 그의 절박함을 짐작게 한다. 여기에 ‘멈출 수 없는 처절한 동행이 시작된다’라는 문구는 세 사람의 위험천만한 여정을 예고해 귀추가 주목된다.</p>
<p dmcf-pid="QZAGmCLZMN" dmcf-ptype="general">이성민, 유연석, 이정은의 열연은 단연 최고의 관전 포인트다. 이성민은 돼지꿈을 꾼 날, 딸의 등록금에 보탤 수 있는 고액의 묵포행을 제안받은 택시 기사 ‘오택’을 맡았다. 이성민은 깨져버린 일상, 벗어날 수 없는 목숨의 위협에서 극한의 감정을 오가는 오택의 내면을 치밀하게 그려내며 다시 한번 진가를 발휘한다. 유연석은 살인을 덮기 위해 밀항을 결심한 연쇄살인마 ‘금혁수’로 분한다. 광기로 점철된 온전한 악인 그 자체를 연기할 유연석의 역대급 변신을 기대케 한다. 아들을 죽인 자를 처절하게 추적하는 ‘황순규’는 이정은이 맡아 열연한다. 금혁수를 쫓는 집요하고도 외로운 싸움을 통해 극의 긴장감을 증폭하는 대체불가 활약을 펼친다.</p>
<p dmcf-pid="x9TBZFI9da" dmcf-ptype="general">'운수 오진 날' 제작진은 “제목만큼 강렬한 반전이 짜릿한 쾌감을 느끼게 한다. 택시라는 한정된 공간과 제한된 시간이 현실 공포를 극대화할 것”이라며 “차원이 다른 살인 동행 스릴러를 완성할 이성민, 유연석, 이정은의 연기 열전도 기대해도 좋다”고 전했다.</p>
<p dmcf-pid="ygqnfP0gLg" dmcf-ptype="general">한편 '운수 오진 날'은 11월 24일 Part1(1~6회) 전편이 티빙을 통해 공개된다. (사진=티빙 '운수 오진 날')</p>
<p dmcf-pid="WheOgA6hdo" dmcf-ptype="general">뉴스엔 박수인 abc159@</p>
<p dmcf-pid="YL7J28FLdL" dmcf-ptype="general">기사제보 및 보도자료 newsen@newsen.com copyrightⓒ 뉴스엔. 무단전재 &amp; 재배포 금지 </p>
</section>
</div></p></section></div><h6>[Source : 뉴스엔]</h6></div>
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