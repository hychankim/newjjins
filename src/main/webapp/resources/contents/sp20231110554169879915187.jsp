
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
    <h3>이보미·박성현, 한국팬들 만난다… KLPGA 'SK쉴더스·SK텔레콤 챔피언십' 출격</h3><h6>한종훈 기자  2023. 11. 1. 05:54</h6>
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
<section dmcf-sid="uyS4PmdYqQ">
<figure class="figure_frm origin_fig" dmcf-pid="7lC24DMTbP" dmcf-ptype="figure">
<p class="link_figure"><img alt="이보미가 KLPGA 투어 시즌 최종전 SK쉴더스·SK텔레콤 챔피언십에 출전한다. /사진= 브리온컴퍼니" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneyweek/20231101055410050comz.jpg" data-org-width="680" dmcf-mid="pZDUzo2mKM" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneyweek/20231101055410050comz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이보미가 KLPGA 투어 시즌 최종전 SK쉴더스·SK텔레콤 챔피언십에 출전한다. /사진= 브리온컴퍼니
           </figcaption>
</figure>
<div dmcf-pid="z1ZdnTj3B6" dmcf-ptype="general">
           '스마일 캔디' 이보미와 '남달라' 박성현이 KLPGA 투어 대회에 출전한다. 
          </div>
<p dmcf-pid="qShV8wRyB8" dmcf-ptype="general">KLPGA 투어 시즌 마지막 대회 SK쉴더스·SK텔레콤 챔피언십이 오는 10일부터 사흘 동안 강원도 춘천 라비에벨CC 올드코스(파72)에서 열린다. 이 대회는 상금순위 상위 70명의 선수가 출전한다. 총상금은 10억원 이며 우승 상금은 2억원이다. </p>
<p dmcf-pid="Bp3oNHD7B4" dmcf-ptype="general">특히 올해 대회는 JLPGA 투어에서 은퇴한 이보미와 LPGA 투어에서 활약하고 있는 박성현이 출전 선수 명단에 이름을 올렸다. </p>
<p dmcf-pid="bhI9fExv9f" dmcf-ptype="general">이보미는 지난 2007년 KLPGA 투어에 데뷔했다. 4승을 거둔 후 2011년 JLPGA 투어에 진출했다. 2012년 첫 우승을 시작으로 무려 21승을 쓸어 담았다. </p>
<p dmcf-pid="Kzujk1sbfV" dmcf-ptype="general">지난 2015년과 2016년에는 JLPGA 투어 상금왕에 올랐다. 2017년 이토 엔 레이디스 우승으로 JLPGA 투어 20승을 채워 KLPGA 투어 영구 시드권을 얻었다. </p>
<p dmcf-pid="9ZHRJSatf2" dmcf-ptype="general">지난 2월 이보미는 자신의 소속사를 통해 올시즌을 끝으로 JLPGA 투어에서 은퇴하겠다고 밝혔다. 지난달 20일 노부타그룹 마스터즈 GC 레이디스 2라운드가 일본에서 마지막 경기였다. </p>
<p dmcf-pid="2q7AEtOKB9" dmcf-ptype="general">이보미는 한국 무대로 자리를 옮긴다. 영구시드권자 신분이라 정식 자격자로 KLPGA 투어 모든 대회에 나설 수 있다. 한국 복귀 첫 대회로 SK쉴더스·SK텔레콤 챔피언십을 선택했다. </p>
<p dmcf-pid="VU0gjXwzKK" dmcf-ptype="general">KLPGA 투어 대회 출전은 지난 5월 NH투자증권 레이디스 챔피언십 이후 6개월 만이다. 이보미는 "아직 KLPGA 투어는 끝이 아니니 아쉬워하실 필요 없다"며 "연습라운드 및 개인 훈련도 해왔던 거처럼 그대로다. 남편(이완)이 캐디를 맡아줄 예정이라 편안한 마음으로 임하려 한다"고 밝혔다.</p>
<p dmcf-pid="fnJGZP0gbb" dmcf-ptype="general">KLPGA 투어 활동을 꾸준하게 이어갈지는 아직 결정을 내리지 못했다. 이보미는 "대단한 (안)선주 언니처럼 KLPGA 투어에서 좋은 모습을 보여드리는 게 목표다"면서도 "그보다 팬들과 만남과 투어의 발전을 위해 작은 부분이라도 선배의 역할을 자처하고 싶다"고 말했다. </p>
<p dmcf-pid="4wEuqgVs2B" dmcf-ptype="general">그러면서 이보미는 "당분간은 절친들(최나연, 김하늘, 윤채영)과 함께 방송과 유튜브 등 촬영 계획이 약간 있는 상황이다"고 밝혔다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="8jat0dqkqq" dmcf-ptype="figure">
<p class="link_figure"><img alt="'남달라' 박성현은 SK쉴더스·SK텔레콤 챔피언십을 시즌 마지막 대회로 선택했다.  /사진= 브리온컴퍼니" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/moneyweek/20231101055412164dnwb.jpg" data-org-width="680" dmcf-mid="UBQSy2Zd9x" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/moneyweek/20231101055412164dnwb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            '남달라' 박성현은 SK쉴더스·SK텔레콤 챔피언십을 시즌 마지막 대회로 선택했다. /사진= 브리온컴퍼니
           </figcaption>
</figure>
<div dmcf-pid="6jat0dqkqz" dmcf-ptype="general">
           '남달라' 박성현은 올해를 정리하는 대회로 SK쉴더스·SK텔레콤 챔피언십을 선택했다. KLPGA 투어에서 10승을 거두고 LPGA 투어에 진출한 박성현은 2017년 US여자오픈을 제패했다. 
          </div>
<p dmcf-pid="P5XeivNFb7" dmcf-ptype="general">지난 2019년 6월 월마트 NW 아칸소 챔피언십까지 LPGA 투어에서 7승을 따냈다. 한때 세계 랭킹 1위에도 이름을 올렸다.</p>
<p dmcf-pid="QWT6xOiHqu" dmcf-ptype="general">지난달 한국에서 열린 LPGA 투어 BMW 레이디스 챔피언십에서 올해 최고 성적인 공동 16위를 기록했다. 이 때문에 본인과 팬들의 기대감도 커졌다. </p>
<p dmcf-pid="xGWQRCLZBU" dmcf-ptype="general">박성현은 "한국 경기는 항상 설렌다. 많은 분이 응원해 주시는 만큼 더 잘하고 싶다"며 "우승을 목표로 연습라운드와 개인 연습에 집중하고 있다. 최근 새로운 클럽으로 피팅까지 마쳤다. 컨디션까지 좋아 이번 대회에 기대가 크다"고 각오를 밝혔다. </p>
<p dmcf-pid="y2KwsUS4fp" dmcf-ptype="general">한편 SK쉴더스·SK텔레콤 챔피언십 티켓은 인터파크를 통해 구매할 수 있다. 오는 3일까지 50% 할인된 가격으로 얼리버드 티켓을 구매할 수 있다. 춘천 지역 주민과 SK쉴더스 고객은 현장에서 신분증 및 고객카드 앱을 제시하면 50% 할인된 가격으로 구매 가능하다.</p>
<p dmcf-pid="WXGMdlg1K0" dmcf-ptype="general">한종훈 기자 gosportsman@mt.co.kr<br/>&lt;저작권자 ⓒ '성공을 꿈꾸는 사람들의 경제 뉴스' 머니S, 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 머니S]</h6></div>
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