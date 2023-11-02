
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
    <h3>[밀당365] 당뇨 환자가 쓰면 안 되는 피임약도 있나요?</h3><h6>최지우 기자  2023. 11. 1. 08:40</h6>
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
<section dmcf-sid="FFsfPR7APB">
<div dmcf-pid="39GigA6hPq" dmcf-ptype="general">
           피임약은 피임 효과 외에도 월경전증후군, 월경 곤란증, 다낭성 난소 증후군 등 여러 여성 질환을 개선해줍니다. 한 독자분이 피임약에 대한 궁금증 보내주셨습니다.
          </div>
<p dmcf-pid="0euDsho5Qz" dmcf-ptype="general"><strong>&lt;궁금해요!&gt;</strong><br/>“생리 주기 변화로 인해 피임약을 복용하려고 합니다. 당뇨병 환자가 피임약 복용해도 괜찮은지 궁금합니다.”</p>
<p dmcf-pid="pFsfPR7A87" dmcf-ptype="general"><strong>Q. 당뇨병 있는데, 피임약 복용해도 되나요?</strong></p>
<p dmcf-pid="U0I8xdqkQu" dmcf-ptype="general"><u>&lt;조언_이세정 강남차병원 내분비내과 교수&gt;</u><br/>A. 쓰면 안 되는 피임약도… 처방 전에 당뇨 사실 알려야</p>
<figure class="figure_frm origin_fig" dmcf-align="left" dmcf-pid="u7SxdL9rQU" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=클립아트코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/healthchosun/20231101084017496nigy.jpg" data-org-width="350" dmcf-mid="tOvMJo2m6b" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/healthchosun/20231101084017496nigy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=클립아트코리아
           </figcaption>
</figure>
<div dmcf-pid="7NVlyHD76p" dmcf-ptype="general">
<div>
            피임약을 처방받을 때, 본인이 당뇨병이 있다는 사실을 꼭 알리세요. 일반적으로 처방되는 복합피임약은 체내 탄수화물과 지질 대사나 인슐린 저항성 등에 영향을 끼칩니다. 혈전증 위험 또한 높아지기 때문에 상황에 맞는 적절한 피임약을 처방받아야 합니다.
           </div>
</div>
<p dmcf-pid="zc8TG5mBP0" dmcf-ptype="general">현재 복용중인 당뇨약제와의 상호작용도 고려해야 합니다. 피임약 성분 중 하나인 합성 에스트로겐은 간에서 분해되는데요. 다른 약물과 상호작용하면 배설 및 대사변화가 나타나 약효가 떨어질 수 있습니다. 메트포르민, 글리메페리드 등 약제와 피임약을 병용하면 혈당 강하 작용이 감소할 수 있다는 보고가 있습니다. DPP-4 억제제나 GLP-1 계열 약물은 피임약과 상호작용이 없습니다.</p>
<p dmcf-pid="qyNuB2Zdx3" dmcf-ptype="general">당뇨병 환자는 합병증 유무, 나이, 흡연 여부 등에 따라 복용할 수 있는 피임약의 종류가 다릅니다. 미세혈관 또는 심혈관질환 합병증이 없는 경우에는 저용량 에스트로겐이나 프로게스틴 성분의 복합 피임약이 비교적 안전하게 쓰입니다. 이외에 ▲혈관 합병증이 있거나 ▲당뇨병 유병 기간 20년 이상이거나 ▲고혈압, 고지혈증이 있거나 ▲35세 이상이거나▲흡연하거나 ▲혈전 위험이 있는 등 하나라도 해당되는 환자는 복합 피임약 사용이 권고되지 않습니다. 이때는 프로게스틴 성분만 포함된 피임약이나 자궁 내 장치를 통한 피임법이 추천됩니다.</p>
<div dmcf-pid="B3O4QezcPF" dmcf-ptype="general">
<div>
            ✔ 밀당365 앱-혈당 관리의 동반자
            <br/>매일 혈당 관리의 필요성을 일깨워주는 당뇨병 명의들의 주옥 같은 충고를 받아보실 수 있습니다.
           </div>​
          </div>
</section>
</div></p></section></div><h6>[Source : 헬스조선]</h6></div>
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