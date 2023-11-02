
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
    <h3>남자부 이중서브 논란에 일침한 차상현 감독, “비신사적인 행위”…여자부 감독 전원 합의→논란 원천 차단</h3><h6>길준영  2023. 11. 1. 06:00</h6>
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
<section dmcf-sid="fOGCDFI9iJ">
<figure class="figure_frm origin_fig" dmcf-pid="4qPbpJBERd" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=장충, 조은정 기자]31일 서울 장충체육관에서 ‘도드람 2023-2024 V-리그’ GS칼텍스와 흥국생명의 경기가 열렸다.GS칼텍스 차상현 감독이 박수를 보내고 있다. 2023.10.31 /cej@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060023161cwgh.jpg" data-org-width="530" dmcf-mid="Q9o7tMujdW" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060023161cwgh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=장충, 조은정 기자]31일 서울 장충체육관에서 ‘도드람 2023-2024 V-리그’ GS칼텍스와 흥국생명의 경기가 열렸다.GS칼텍스 차상현 감독이 박수를 보내고 있다. 2023.10.31 /cej@osen.co.kr
           </figcaption>
</figure>
<p dmcf-pid="8l5vsUS4ie" dmcf-ptype="general">[OSEN=장충, 길준영 기자] GS칼텍스 KIXX 차상현 감독이 최근 V-리그 남자부에서 불거진 이중서브 논란에 대한 소신을 밝혔다. </p>
<p dmcf-pid="6W0GlBYxLR" dmcf-ptype="general">차상현 감독은 지난달 31일 서울 장충체육관에서 열린 ‘도드람 2023-2024 V-리그’ 1라운드 흥국생명과의 경기 전 인터뷰에서 “내 개인 소신으로는 그렇게 지도해서도, 그렇게 가르쳐서도 안될 것 같다”라고 이중서브에 대한 생각을 이야기했다. </p>
<p dmcf-pid="PTFWCzyPRM" dmcf-ptype="general">한국전력과 현대캐피탈은 지난 26일 경기도 수원체육관에서 열린 1라운드 경기에서 논란이 되는 장면을 잇따라 연출했다. 2세트 21-19로 한국전력이 앞서는 상황에서 한국전력 하승우가 서브를 넣는 과정에서 잠시 동작을 멈추면서 현대캐피탈의 포지션 폴트를 유도했다. 현대캐피탈은 최태웅 감독이 항의했지만 받아들여지지 않았고 결국 한국전력이 2세트를 가져갔다. </p>
<p dmcf-pid="Qoradlg1ex" dmcf-ptype="general">현대캐피탈은 3세트에 그대로 복수를 해줬다. 현대캐피탈이 17-13으로 앞선 상황에서 김선호가 하승우와 마찬가지로 서브를 넣다가 잠시 멈추고 다시 서브를 때리면서 한국전력의 포지션 폴트를 이끌어내는데 성공했다. 권영민 감독은 이에 대해 항의했지만 이번에도 항의는 받아들여지지 않았다. 경기 후에는 이중서브에 대한 논란이 일었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="xBQKUibDnQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=장충, 조은정 기자]31일 서울 장충체육관에서 ‘도드람 2023-2024 V-리그’ GS칼텍스와 흥국생명의 경기가 열렸다.1세트 GS칼텍스 차상현 감독이 작전을 지시하고 있다. 2023.10.31 /cej@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060023580ymgg.jpg" data-org-width="650" dmcf-mid="xIo7tMujLy" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060023580ymgg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=장충, 조은정 기자]31일 서울 장충체육관에서 ‘도드람 2023-2024 V-리그’ GS칼텍스와 흥국생명의 경기가 열렸다.1세트 GS칼텍스 차상현 감독이 작전을 지시하고 있다. 2023.10.31 /cej@osen.co.kr
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="yUf7tMujMP" dmcf-ptype="figure">
<p class="link_figure"><img alt="[OSEN=장충, 조은정 기자]31일 서울 장충체육관에서 ‘도드람 2023-2024 V-리그’ GS칼텍스와 흥국생명의 경기가 열렸다.1세트 흥국생명 아본단자 감독이 작전을 지시하고 있다. 2023.10.31 /cej@osen.co.kr" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060024765wvpu.jpg" data-org-width="650" dmcf-mid="V0WOk1sbLi" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060024765wvpu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [OSEN=장충, 조은정 기자]31일 서울 장충체육관에서 ‘도드람 2023-2024 V-리그’ GS칼텍스와 흥국생명의 경기가 열렸다.1세트 흥국생명 아본단자 감독이 작전을 지시하고 있다. 2023.10.31 /cej@osen.co.kr
           </figcaption>
</figure>
<p dmcf-pid="WHuZT9Xed6" dmcf-ptype="general">차상현 감독은 “솔직히 말하면 그 장면을 좋게 보지 않았다. 비신사적인 행위라고 생각한다”라고 이중서브에 대해 확실히 선을 그었다. 이어서 “나 혼자만의 생각이 아니다. 여자부 감독들이 있는 단톡방에서 여자부에서는 그러한 서브를 하지 말자고 했는데 모든 감독님이 동의하셨다. 다른 감독님들도 이번 논란에 대해 장문의 글을 올려주셔서 생각을 공유했다”라고 덧붙였다. </p>
<p dmcf-pid="YHuZT9XeM8" dmcf-ptype="general">차상현 감독은 이날 상대팀 감독인 마르첼로 아본단자 감독과도 이중서브에 대해 이야기를 나눴다. “아본단자 감독과도 이야기를 했다”라고 밝힌 차상현 감독은 “아본단자 감독도 우리 생각에 동의한다고 말했다. 혹시나 그런 상황이 벌어질까 걱정했는데 아본단자 감독도 그런 서브를 하지 말자고 말했기 때문에 여자부에서 그런 상황은 나오지 않을 것이다”라고 말했다. </p>
<p dmcf-pid="Gl5vsUS4e4" dmcf-ptype="general">“나 혼자만의 생각이 아니라 배구가 변질되어 가고 있는 것 같다”라고 지적한 차상현 감독은 “(규정 위반은 아니지만) 그런 방법을 찾아본다면 선수들이 얼마든지 머리를 쓸 수 있다. 모든 선수들이 그런 서브를 한다고 상상한다면 보는 사람으로 하여금 좋지 않은 장면이 연출될 수 있다고 생각한다. 정정당당하게 하는 것이 중요하다”라고 강조했다. /fpdlsl72556@osen.co.kr</p>
</section>
</div></p></section></div><h6>[Source : OSEN]</h6></div>
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