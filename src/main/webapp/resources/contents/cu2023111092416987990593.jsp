
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
    <h3>"인공 관절 치환술 후 반코마이신, 염증 차단 효과 없어"</h3><h6>한성간  2023. 11. 1. 09:24</h6>
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
<section dmcf-sid="bGLyjExvzp">
<figure class="figure_frm origin_fig" dmcf-pid="KD2c6MujU0" dmcf-ptype="figure">
<p class="link_figure"><img alt="인공관절 치환술 [게티이미지뱅크 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101092401969bwhf.jpg" data-org-width="500" dmcf-mid="BxWVZFI93U" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101092401969bwhf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            인공관절 치환술 [게티이미지뱅크 제공]
           </figcaption>
</figure>
<p dmcf-pid="9oUiB2ZdU3" dmcf-ptype="general">(서울=연합뉴스) 한성간 기자 = 인구가 노령화됨에 따라 인공 관절 치환 수술을 받는 환자가 늘고 있다.</p>
<p dmcf-pid="2gunbV5J7F" dmcf-ptype="general">인공 관절 치환 수술 중에는 수술 후 감염을 예방하기 위해 보통 1세대 세팔로스포린계 항생제인 세파졸린이 투여된다. </p>
<p dmcf-pid="Va7LKf1i3t" dmcf-ptype="general">항생제 내성 박테리아가 늘어나면서 황색 포도상 구균 감염 차단에 사용되는 항생제 반코마이신을 함께 투여하는 경우도 많다. </p>
<p dmcf-pid="fVvKG5mB01" dmcf-ptype="general">특히 여러 종류의 항생제가 듣지 않는 다제 내성 황색 포도상 구균은 치명적일 수 있어 '슈퍼 박테리아'로 불린다.</p>
<p dmcf-pid="4fT9H1sb35" dmcf-ptype="general">그러나 인공 관절 치환술 환자에게 세파졸린과 함께 반코마이신을 추가 투여하는 것은 수술 후 감염을 차단하는 데 도움이 되지 않는다는 연구 결과가 나왔다. </p>
<p dmcf-pid="84y2XtOKpZ" dmcf-ptype="general">호주 모나쉬(Monash) 대학 의대 감염내과 전문의 트리샤 필 교수 연구팀이 호주 전국의 11개 의료기관에서 메티실린 내성 황색 포도상구균(MRSA) 감염 전력이 없는 인공 무릎 관절 치환술 환자 4천239명을 대상으로 진행한 임상시험(ASAP) 결과 이 같은 사실이 밝혀졌다고 의학 뉴스 포털 뉴스 메디컬 라이프 사이언스가 31일 보도했다. </p>
<p dmcf-pid="6lMIigVs0X" dmcf-ptype="general">인공 관절 치환술 환자는 수술 후 최대 3%가 감염이 발생해 재수술이 필요하거나 때로는 사망할 수 있다. </p>
<p dmcf-pid="PSRCnafO3H" dmcf-ptype="general">연구팀은 이들에게 무작위로 세파졸린과 함께 반코마이신 또는 위약(식염수)을 투여했다. 이 임상시험에서는 반코마이신이 추가된 환자 그룹은 수술 후 감염률이 5.7%, 식염수가 추가된 대조군 환자는 이보다 훨씬 낮은 3.7%로 예상외의 결과가 나타났다고 연구팀은 밝혔다. </p>
<p dmcf-pid="QvehLN4IpG" dmcf-ptype="general">이는 인공관절 치환술 환자에게 반코마이신 추가는 감염 차단에 도움이 되지 않으며 환자를 더 많은 감염에 드러낼 수 있음을 보여주는 것이라고 연구팀은 설명했다. </p>
<p dmcf-pid="x7mphTj37Y" dmcf-ptype="general">이러한 사실은 여러 의료기관에서 진행하는 대규모 무작위 임상시험이 아니고서는 밝혀지기 어려운 일이라고 연구팀은 지적했다.</p>
<p dmcf-pid="ykKj4Qpa3W" dmcf-ptype="general">따라서 항생제 내성 박테리아 증가를 막기 위해 부적절한 항생제 투여는 중단해야 한다고 연구팀은 강조했다. 항생제 내성 박테리아는 항생제 남용과 잘못된 사용이 주 원인이다. </p>
<p dmcf-pid="WNsUlyA07y" dmcf-ptype="general">항생제를 많이 쓴다고 좋은 결과가 오는 것은 아니며 일부 환자들에게는 상태를 악화시킬 수 있다고 연구팀은 말했다.</p>
<p dmcf-pid="YjOuSWcp7T" dmcf-ptype="general">항생제 추가가 유독 무릎관절 수술 환자의 염증 위험을 높이는 이유는 분명치 않으며 앞으로 이를 규명할 필요가 있다고 연구팀은 덧붙였다. </p>
<p dmcf-pid="GAI7vYkUpv" dmcf-ptype="general">드물지만 반코마이신은 생명을 위협할 수 있는 심각한 알레르기 반응인 아나필락시스 쇼크를 일으킬 수 있다. </p>
<p dmcf-pid="HamphTj3zS" dmcf-ptype="general">이 연구 결과는 미국의 의학 전문지 '뉴 잉글랜드 저널 오브 메디신' 최신호에 발표됐다. </p>
<p dmcf-pid="XNsUlyA0ul" dmcf-ptype="general">skhan@yna.co.kr</p>
<p dmcf-pid="5v1xpzyPpC" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
</section>
</div></p></section></div><h6>[Source : 연합뉴스]</h6></div>
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