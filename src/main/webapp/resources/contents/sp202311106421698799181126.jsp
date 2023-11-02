
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
    <h3>“두 선수에게 올인, 시스템 맞춰놨다”…0% 기적 쓴 디펜딩 챔피언의 불안한 출발, 중고신인왕과 이적생 세터 믿는다</h3><h6>이정원 MK스포츠 기자(2garden@maekyung.com)  2023. 11. 1. 06:42</h6>
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
<section dmcf-sid="4vPYAZrqGk">
<p dmcf-pid="8wBOdlg1Gc" dmcf-ptype="general">“두 선수에게 올인할 수 있는 시스템을 만들어놨다.”</p>
<p dmcf-pid="6rbIJSatHA" dmcf-ptype="general">김종민 감독이 지휘하는 한국도로공사는 4연패로 시즌을 시작하고 있다. 지난 시즌 흥국생명과 챔피언결정전에서 1, 2차전을 내주고 3, 4, 5차전을 내리 가져오며 V-리그 사상 첫 리버스 스윕 우승으로 ‘0%의 기적’을 만들었기에 시즌 초반 부진이 아쉽기만 하다.</p>
<p dmcf-pid="PmKCivNF5j" dmcf-ptype="general">어쩌면 예상된 시나리오일 수 있다. 도로공사는 올 시즌 팀에 변화가 많았다. 주포 박정아와 베테랑 미들블로커 정대영이 자유계약(FA) 자격을 통해 각각 페퍼저축은행과 GS칼텍스로 떠났다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="QeGnBafOtN" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=KOVO 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101064203449hyol.jpg" data-org-width="600" dmcf-mid="9Zh45QpaXr" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101064203449hyol.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=KOVO 제공
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="xdHLbN4IYa" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=KOVO 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101064204695gdqh.jpg" data-org-width="600" dmcf-mid="2OzEPmdY1w" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101064204695gdqh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=KOVO 제공
           </figcaption>
</figure>
<div dmcf-pid="yHd1r0hV5g" dmcf-ptype="general">
           또 국제 대회 일정으로 문정원과 아시아쿼터 타나차 쑥솟(등록명 타나차)의 합류가 늦었고, 주전 세터 이윤정도 무릎 통증 부상으로 시즌 출발을 함께 하지 못했다.
          </div>
<p dmcf-pid="WmKCivNFXo" dmcf-ptype="general">무엇보다 주전 세터 이윤정의 이탈이 컸다. 이윤정은 V-리그 최초 중고 신인왕이며, 지난 시즌 우승 세터로 활약한 선수. 이윤정이 빠짐으로써 남은 세터는 박은지 한 명뿐이었다. 박은지는 지난 8월 2-2 트레이드를 통해 고의정과 정관장 레드스파크스에서 도로공사로 넘어왔다.</p>
<p dmcf-pid="Ys9hnTj3ZL" dmcf-ptype="general">물론 박은지도 유망한 세터다. 일신여상 졸업 후 지난 시즌 1라운드 4순위로 프로 무대에 뛰어들었다. 26경기에 나서며 경험을 쌓았다. 주전 세터 염혜선이 흔들릴 때 인상적인 경기력을 보여준 바 있다.</p>
<p dmcf-pid="GO2lLyA05n" dmcf-ptype="general">그렇지만 아직 2년차. 홀로 경기를 끌고 가기에는 무리가 있다. 또 이윤정이 예상보다 빠르게 지난 28일 IBK기업은행전에서 복귀를 했지만 아직 100% 컨디션이 아니다. 투 세터로 시즌을 끌고 가기에는 다소 위험요소가 크다.</p>
<p dmcf-pid="H3aulBYx5i" dmcf-ptype="general">지난 시즌에도 이윤정-안예림 투 세터 체제로 가긴 했지만 수련선수로 정소율이 있었다. 혹시 모를 대비책이 있었다. 그렇지만 정소율도 없고, 시즌 개막 전 열린 신인 드래프트에서 세터 자원을 수혈하지 못했다. 실업팀에서도 자원을 찾아보고, 테스트도 해봤지만 추가 영입은 없었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="X0N7SbGMXJ" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=KOVO 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101064206136pcqa.jpg" data-org-width="600" dmcf-mid="VwjzvKHR1D" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101064206136pcqa.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=KOVO 제공
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="ZpjzvKHRZd" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=KOVO 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101064207570mvuy.jpg" data-org-width="600" dmcf-mid="fu5a2cPltE" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101064207570mvuy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=KOVO 제공
           </figcaption>
</figure>
<div dmcf-pid="55n3Ouv85e" dmcf-ptype="general">
           결국 김종민 감독은 결단을 내렸다. 무슨 수를 써서라도 두 선수로 시즌을 끌고 가고 마치겠다는 것.
          </div>
<p dmcf-pid="11L0I7T6YR" dmcf-ptype="general">김종민 감독은 “물론 불의의 부상이 올 수 있다고 본다. 그러나 세터 3~4명으로 엔트리를 꾸리고 간다고 하더라도 주전과 백업은 정해져 있다. 만약 3번 세터가 들어가면 이기는 시합은 쉽지 않다. 힘들더라도 두 선수에게 올인할 수 있게 시스템을 맞춰놨다. (이)윤정이가 부상당했을 때 은지는 좋은 시간과 좋은 경험을 보냈다. 이제는 윤정이의 백업 자원으로 믿고 쓸 수 있을 만큼 올라왔다고 본다”라고 말했다.</p>
<p dmcf-pid="ttopCzyPGM" dmcf-ptype="general">아직 시즌 초반이다. 위기를 이겨내고 다시 올라서기에 충분한 시간이 있다.</p>
<p dmcf-pid="FKmfZP0g5x" dmcf-ptype="general">지난 시즌 0%의 기적을 쓴 도로공사는 다시 한번 올라설 수 있을까.</p>
<p dmcf-pid="39s45QpatQ" dmcf-ptype="general">김천=이정원 MK스포츠 기자</p>
<p dmcf-pid="02O81xUN5P" dmcf-ptype="general">[김천=이정원 MK스포츠 기자]</p>
<p dmcf-pid="pdHLbN4It6" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : MK스포츠]</h6></div>
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