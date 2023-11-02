
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
    <h3>난적 만난 T1-kt, 4강서 월즈 첫 통신사 내전 가능할까?</h3><h6>허탁  2023. 10. 31. 12:31</h6>
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
<section dmcf-sid="zwtQmZrqJv">
<figure class="figure_frm origin_fig" dmcf-pid="qm3MO1sbdS" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031123109125vxbg.jpg" data-org-width="1900" dmcf-mid="Ue8E1V5JnW" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031123109125vxbg.jpg" width="658"/></p>
</figure>
<div dmcf-pid="BaW9jvNFLl" dmcf-ptype="general">
            팬들의 가슴을 뛰게 할 롤드컵 4강 내전을 만들어내기 위해선 LPL의 두 강팀을 상대로 승리를 따내야만 한다. 
          </div>
<p dmcf-pid="bVAH4afOih" dmcf-ptype="general">29일 진행된 녹아웃 스테이지 추첨에서 T1과 kt는 각각 리닝 게이밍(LNG)와 징동 게이밍(JDG)과의 경기가 확정됐다. 현재 LPL 팀들 가운데 가장 강력한 경기력을 보이고 있는 두 팀을 꺾어야만 4강에서 통신사 내전을 진행할 수 있다. 만약 이 통신사 대전이 성사된다면, 롤드컵 무대에서 처음으로 성사되는 통신사 대전이 된다. </p>
<p dmcf-pid="KFxm063odC" dmcf-ptype="general">11월 4일 진행되는 kt 롤스터와 징동 게이밍의 경기에선 냉정하게 kt가 도전자의 입장이다. 두 차례의 LPL과 MSI에서 모두 우승을 차지하고 그랜드 슬램에 도전 중인 징동 게이밍은 현재 가장 강력한 우승후보 팀 중 하나다. 월즈에서 보인 경기력 역시 뛰어났다. LNG와의 경기에서 한 세트를 내준 것을 제외하고는 모두 승리를 거두며 3승 0패로 가장 먼저 8강 행을 확정지었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="9PwtxkQSnI" dmcf-ptype="figure">
<p class="link_figure"><img alt="kt의 핵심 라이너 역할을 맡아야 할 '기인'" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031123109357ubyh.jpg" data-org-width="1900" dmcf-mid="u6NYVo2mLy" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031123109357ubyh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            kt의 핵심 라이너 역할을 맡아야 할 '기인'
           </figcaption>
</figure>
<div dmcf-pid="22jGfgVsLO" dmcf-ptype="general">
           도전자의 입장에서 kt가 승리하기 위해선 탑에서 '기인' 김기인이 보여줄 활약이 관건이 될 전망이다. 물론 월즈에서 현재까지 kt의 에이스를 맡은 라인은 바텀이었다. '에이밍' 김하람이 매 경기 폭발적인 캐리력을 보이면서 팀의 에이스 역할을 수행했다. 그러나 JDG의 바텀에는 아시안게임 금메달리스트이자 현재 가장 좋은 폼의 원거리딜러인 '룰러' 박재혁이 버티고 있다. 원거리딜러의 활약 면에서 kt가 경기를 유리하게 끌고가기는 어려워보이는 이유다. 
          </div>
<p dmcf-pid="VVAH4afORs" dmcf-ptype="general">반면 탑에서 JDG의 '369' 바이자하오가 이번 대회 보여주는 폼은 정상급은 아니다. BDS를 상대했을 당시 '아담' 아담 마나네의 변수 픽에 당하기도 했고, LNG와의 경기에서도 '지카' 탕화위에게 라인전 우위를 내주면서 패배의 빌미를 제공하기도 했다. 상대의 약점을 공략해야 하는 다전제 경기에서, 탑이 중요 포인트로 꼽을 수 밖에 없는 원인이다.</p>
<p dmcf-pid="fJh7nOiHRm" dmcf-ptype="general">밴픽적으로 봐도 이번 대회에서 '369'는 탱커 챔피언으로 소위 방패를 드는 역할을 지속적으로 수행 중이다. 물론 선수 자체의 장점이 후반 한타 기여도가 높은 탱커 챔피언을 잘 다루는 것이기도 하지만 그만큼 한정적인 역할을 수행하기 때문에 준비 과정에서 대처하기 편하다는 관점으로도 바라볼 수 있다. 특히 스위스 스테이지 2주차가 되면서 핵심 카드로 떠오른 럼블을 '369'는 거의 다루지 않기 때문에, 밴픽 면에서 더욱 유리한 점이 있다. '기인' 김기인이 탑에서 보여준 라이즈나 리그에서 보여준 퀸 등의 조커 픽을 활용한다면 경기의 키맨이 될 수 있을 것이란 기대가 모아지는 이유다. </p>
<p dmcf-pid="4E56wHD7Lr" dmcf-ptype="general">11월 5일 펼쳐질 T1과 LNG의 경기에선 양 팀 중 어느 쪽이 더 우위에 있다고 보기 어렵다. T1이 젠지전 패배한 이후 C9전과 BLG전을 모두 압승하면서 기세를 올렸지만, LNG 역시 JDG에게 패배한 것을 제외하면 패배가 없이 강력한 경기력을 유지하고 있다. 전적 면으로 양팀 다 3승 1패를 기록했고, 패배한 팀 역시 우승후보인 JDG와 젠지라는 점에서 성적 상으론 우열을 가리기 어렵다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="8VAH4afOew" dmcf-ptype="figure">
<p class="link_figure"><img alt="바텀에서 물오른 폼을 보여주고 있는 '구마유시'" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031123109653xvkt.jpg" data-org-width="1900" dmcf-mid="7f3MO1sbJT" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031123109653xvkt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            바텀에서 물오른 폼을 보여주고 있는 '구마유시'
           </figcaption>
</figure>
<div dmcf-pid="64kZ6j8CRD" dmcf-ptype="general">
           그런 면에서 T1이 가장 신경써야 할 부분은 바텀에서의 밴픽 구도를 유리하게 만들어내는 것이다. '구마유시' 이민형이 인터뷰에서 "T1의 바텀 듀오가 롤드컵에서 최고"라고 말한 것만 봐도 알 수 있듯이, T1의 바텀은 최근 물오른 경기력을 보이고 있다. 특히 T1이 승리한 경기에서 바텀은 애쉬나 세나-탐켄치, 징크스-탐켄치 등 밴픽부터 유리한 구도를 만들어내면서 팀 승리를 이끌었다. 비슷한 전력을 지닌 LNG와의 경기에서도 바텀에서 유리한 구도를 만들어낸다면 T1의 큰 힘이 될 수 있을 전망이다. 
          </div>
<p dmcf-pid="PQrFMExveE" dmcf-ptype="general">통신사 더비는 LCK에서 가장 전통 깊은 라이벌전이면서도 월즈에선 단 한 차례도 찾아볼 수 없었던 매치업이기도 하다. 과연 kt와 T1이 LPL의 난적들을 꺾고 월즈 4강에서 통신사 더비를 만들어낼 수 있을지 귀추가 주목된다.</p>
<p dmcf-pid="Qh7iSplfek" dmcf-ptype="general">허탁 기자 (taylor@dailyesports.com)</p>
</section>
</div></p></section></div><h6>[Source : 데일리e스포츠]</h6></div>
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