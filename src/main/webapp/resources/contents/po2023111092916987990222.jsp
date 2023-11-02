
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
    <h3>與혁신위 1호 안건 ‘통큰 징계취소’에서 ‘조건부’로 전환 모색 [이런정치]</h3><h6> 2023. 11. 1. 09:29</h6>
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
<section dmcf-sid="YTmHlyA00X">
<figure class="figure_frm origin_fig" dmcf-pid="GWOZvYkUzH" dmcf-ptype="figure">
<p class="link_figure"><img alt="김기현 국민의힘 대표(왼쪽)와 인요한 혁신위원장이 지난달 31일 오전 서울의 한 호텔에서 열린 제55회 대한민국 국가조찬기도회에서 대화를 나누고 있다. [연합]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101092914851mgii.jpg" data-org-width="1280" dmcf-mid="WeFV7bGM3Z" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101092914851mgii.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김기현 국민의힘 대표(왼쪽)와 인요한 혁신위원장이 지난달 31일 오전 서울의 한 호텔에서 열린 제55회 대한민국 국가조찬기도회에서 대화를 나누고 있다. [연합]
           </figcaption>
</figure>
<p dmcf-pid="HYI5TGEu3G" dmcf-ptype="general">[헤럴드경제=박상현·신현주 기자] 국민의힘 혁신위원회가 통합을 기치로 이준석 전 대표와 홍준표 대구시장 등의 징계 취소를 당 지도부에 건의하기로 했지만, 정작 대상자들의 거센 반발에 직면하면서 그 의미가 퇴색하는 모양새다. 여기에 앞서 징계를 받았던 김재원 전 수석최고위원이 ‘사퇴’를 통한 반성의 시그널을 보내면서 당내에선 ‘조건부 취소’ 전환 기류도 감지된다.</p>
<p dmcf-pid="XZS3G5mBFY" dmcf-ptype="general">1일 여권에 따르면 혁신위는 오는 2일 열릴 최고위원회의에 1호 안건인 ‘일괄 징계 취소’를 건의할 예정이다. 혁신위는 지난달 30일 인요한 혁신위원장 주재로 회의를 열고 당 지도부에 1호 안건을 건의하기로 의결했다. 오신환 혁신위원(서울 광진을 당협위원장)은 회의 후 기자들과 만나 “전달을 하면 그다음에 어떻게 조치할 것인지는 당 지도부가 판단할 문제”라고 말했다.</p>
<p dmcf-pid="Z5v0H1sbFW" dmcf-ptype="general">혁신위가 지난달 27일 징계 취소를 1호 안건으로 검토하고 사흘 만에 의결까지 했지만, 이에 대한 ‘반성’ 측과 ‘반발’ 측의 온도차는 더욱 선명해지고 있다. 이에 당 내부에선 ‘반성의 기미가 보이는 사람들만 해야 한다’는 조건부 취소에 대한 목소리도 나온다. 당 핵심 관계자는 “사면(징계 취소)이란 것도 죄를 뉘우쳤을 때 정부나 대통령이 해주는 것인 만큼, 반성을 해야 징계를 해제할 거라는 조건을 걸 것으로 보인다”며 “포용이란 건 적어도 체제 안에서 하나가 될 준비가 된 사람에게 하는 것”이라고 말했다.</p>
<p dmcf-pid="51TpXtOKzy" dmcf-ptype="general">앞서 이 전 대표와 홍 시장은 혁신위의 검토 사실이 알려지자 자신들의 SNS를 통해 공개적으로 이를 비판한 반면, 김 전 최고위원은 전날 최고위원직에서 자진 사퇴하며 몸을 낮췄다. 당 지도부 내에선 김 전 최고위원의 사퇴에 대해 “자숙과 반성의 시그널”, “당에 부담을 덜어주기 위한 나름의 노력”이란 평가가 나온다.</p>
<p dmcf-pid="1d4oMJBEuT" dmcf-ptype="general">다만, 현재까진 ‘전권을 준 만큼 혁신위의 의견을 그대로 수용한다’는 게 당 지도부 내 중론이다. 국민의힘의 한 최고위원은 “어렵게 삼고초려해서 모셔 왔을 때도 혁신위에서 내는 의견, 목소리에 대해서 전적으로 존중하기로 한 만큼 다른 목소리를 낼 이유는 없는 것 같다”고 말했다. 또 다른 최고위원도 “이준석 전 대표나 홍준표 시장의 반응과 무관하게 인요한 혁신위원장이 통 큰 행보 보이는 것에 대해서는 최고위에서도 좀 힘을 실어줘야 되지 않느냐는 게 저희의 입장”이라고 말했다.</p>
<p dmcf-pid="tJ8gRibDFv" dmcf-ptype="general">하지만 혁신위가 대통령실과 당의 거리 재설정이 아닌, ‘일괄 징계 취소’를 꺼내든 점에 대한 비판이 이어지며 ‘1호 안건’의 의미 또한 퇴색하는 형국이다. 김용태 국민의힘 전 청년최고위원은 지난달 30일 CBS라디오 ‘박재홍의 한판승부’에 출연해 “혁신위에 전권을 주겠다고 했고 1호 혁신안은 의원총회 추인이 필요한 부분도 아니고 절차적으로 복잡한 부분은 아니기 때문에 최고위가 이것을 거절할 이유는 없다고 본다”면서도 “본질적인 것을 다루지 못하고 수박 겉핥기식으로 뭔가 혁신하려고 했던 것 아닌가, 이런 생각이 든다”고 말했다.</p>
<p dmcf-pid="Fi6aenKwzS" dmcf-ptype="general">또한, 김 전 최고위원의 공석에 대한 논의 역시 2일 최고위에서 이뤄질 것으로 보인다. 김 전 최고위원이 지난해 3월 대구시장 출마를 위해 최고위원직을 사퇴했을 당시엔 공석이 그대로 유지됐다. 하지만 지난 6월 태영호 전 최고위원 사퇴 당시엔 보궐선거라 치러져 김가람 최고위원이 당선된 전례가 있다.</p>
<p dmcf-pid="3oxAigVszl" dmcf-ptype="general">pooh@heraldcorp.com</p>
<p dmcf-pid="0gMcnafOuh" dmcf-ptype="general">newkr@heraldcorp.com</p>
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