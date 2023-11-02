
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
    <h3>'LCK 최약체' KT, 징동에 가장 까다롭다? [롤드컵 줌인]</h3><h6>이주현  2023. 11. 1. 07:01</h6>
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
<section dmcf-sid="zkjExOiHvM">
<figure class="figure_frm origin_fig" dmcf-pid="qGyHDFI9vx" dmcf-ptype="figure">
<p class="link_figure"><img alt="2023 리그오브레전드 월드 챔피언십 8강에서 중국리그 LPL 징동 게이밍(JDG)과 맞대결을 펼치는 KT 롤스터의 '커즈' 문우찬 (제공=라이엇 게임즈)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ked/20231101070104073ugce.jpg" data-org-width="600" dmcf-mid="utwOivNFle" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ked/20231101070104073ugce.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2023 리그오브레전드 월드 챔피언십 8강에서 중국리그 LPL 징동 게이밍(JDG)과 맞대결을 펼치는 KT 롤스터의 '커즈' 문우찬 (제공=라이엇 게임즈)
           </figcaption>
</figure>
<p dmcf-pid="BHWXw3C2vQ" dmcf-ptype="general"><br/>2023 리그오브레전드 월드 챔피언십(롤드컵) 스위스 스테이지가 지난달 29일 종료됐다. ‘적자생존’의 전장에서 살아남은 8팀이 오는 2일부터 녹아웃 스테이지에 진입한다. 녹아웃 스테이지는 8강부터 4강까지 부산 동래구에 위치한 사직실내체육관에서 진행된다. 8강부터 결승까지 모든 경기는 5전 3선승제 토너먼트다.</p>
<p dmcf-pid="bXYZr0hVvP" dmcf-ptype="general">8강 대진에서도 KT 롤스터의 불운은 계속됐다. 국내 리그 LCK(리그오브레전드 챔피언스 코리아) 3번 시드 KT는 중국리그 LPL 1번 시드 징동 게이밍(JDG)을 상대하게 됐다. JDG는 올해 LPL 봄과 여름 대회는 물론 2023 미드 시즌 인비테이셔널(MSI)까지 제패한 강력한 우승후보다. KT는 스위스 스테이지에 이어 LPL 4개 팀을 모두 만나며 ‘고난의 행군’을 이어가게 됐다.</p>
<p dmcf-pid="KWTGEtOKv6" dmcf-ptype="general">하지만 관계자들 사이에선 KT가 JDG를 상대로 이변을 만들어낼 수 있다는 분석도 나온다. 역설적이게도 그 근거는 KT가 젠지 e스포츠, T1에 밀려 3번 시드를 받은 사실상 ‘LCK 최약체’이기 때문이다. KT는 젠지와 T1에 밀려 MSI에도 진출하지 못했다. 올해 국제 대회 전적이 전무하다. 그만큼 JDG 입장에선 가장 정보가 적은 팀이라는 얘기다.</p>
<p dmcf-pid="9YyHDFI9T8" dmcf-ptype="general">또한 JDG에 소속된 한국인 선수인 정글러 ‘카나비’ 서진혁과 ‘룰러’ 박재혁이 항저우 아시안게임 대한민국 국가대표로 활동한 점도 이유로 꼽힌다. 당시 같은 대표팀으로 T1의 ‘제우스’ 최우제, ‘페이커’ 이상혁, ‘케리아’ 류민석과 젠지의 ‘쵸비’ 정지훈이 포함된 만큼 이들 입장에서 T1과 젠지에 대한 정보는 충분한 상태라는 것이다. 게다가 박재혁은 지난 2016년부터 지난해인 2022년까지 젠지에서 활약했다.<br/></p>
<figure class="figure_frm origin_fig" dmcf-pid="2TSWc5mBS4" dmcf-ptype="figure">
<p class="link_figure"><img alt="중국 리그오브레전드 프로리그 LPL 징동 게이밍(JDG)의 정글러 '카나비' 서진혁(제공=라이엇 게임즈)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ked/20231101070105384kcml.jpg" data-org-width="600" dmcf-mid="79jExOiHSR" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ked/20231101070105384kcml.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            중국 리그오브레전드 프로리그 LPL 징동 게이밍(JDG)의 정글러 '카나비' 서진혁(제공=라이엇 게임즈)
           </figcaption>
</figure>
<p dmcf-pid="VyvYk1sbvf" dmcf-ptype="general"><br/>물론 이는 LCK 입장에서 ‘희망’ 섞인 해석이다. KT가 이번 롤드컵 스위스 스테이지에서 총 5번의 경기를 펼친 만큼 KT의 전력은 이미 노출된 상태다. 심지어 그중 3번의 경기가 중국팀을 상대로 한 경기인 만큼 정보 공유가 이루어졌을 가능성도 높다.</p>
<p dmcf-pid="fWTGEtOKCV" dmcf-ptype="general">결국 KT가 JDG를 상대로 ‘업셋’에 성공하기 위해선 KT 선수들이 본 실력을 뽐내야 한다. KT는 ‘기인’ 김기인, ‘커즈’ 문우찬, ‘비디디’ 곽보성, ‘에이밍’ 김하람, ‘리헨즈’ 손시우 등 베테랑이 다수 포진한 만큼 고점은 우승권 전력이라는 평가를 받는다.</p>
<p dmcf-pid="4zuBYf1iS2" dmcf-ptype="general">승부처는 정글이 될 것으로 보인다. JDG 정글러 서진혁의 킬 관여율은 이번 롤드컵 스위스 스테이지 기준 86%로 정글러 중 1위다. 그만큼 서진혁을 중심으로 한 움직임이 많다는 얘기다. 문우찬이 서진혁의 움직임을 봉쇄하는 것이 중요한 이유다. 이를 위해선 커즈의 장점인 초반 정글 동선과 시야 확보 능력이 발휘돼야 한다. 커즈는 이번 스위스 스테이지 기준 15분 골드 격차가 402로 다른 정글러와 성장을 가장 많이 벌렸다. 또한 분당 평균 시야 점수가 1.85로 ‘피넛’ 한왕호에 이어 2위를 기록 중이다.</p>
<p dmcf-pid="8q7bG4tny9" dmcf-ptype="general">KT와 JDG의 8강전은 오는 4일 오후 5시에 펼쳐진다. 두 팀 간 대결의 승자는 T1과 리닝 게이밍(LNG) 중 5일에 승리하는 팀과 4강 준결승전을 벌인다. KT와 T1이 모두 올라올 경우 롤드컵 4강 첫 ‘통신사 대전’이 성사된다.</p>
<p dmcf-pid="6BzKH8FLyK" dmcf-ptype="general">이주현 기자 2JuHyun@hankyung.com</p>
<p dmcf-pid="P1ZFI7T6yb" dmcf-ptype="general">▶ <span>클래식과 미술의 모든 것 '아르떼'에서 확인하세요</span><br/>▶ <span>한국경제·모바일한경·WSJ 구독신청하기</span></p>
</section>
</div></p></section></div><h6>[Source : 한국경제]</h6></div>
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