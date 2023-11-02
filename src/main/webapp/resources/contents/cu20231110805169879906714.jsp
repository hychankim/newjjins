
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
    <h3>‘족보’에 빠진 미국 학자, 외교관 부인의 묘지석 한국에 안겼다</h3><h6>노형석  2023. 11. 1. 08:05</h6>
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
<section dmcf-sid="tZ3nrInXxy">
<figure class="figure_frm origin_fig" dmcf-pid="u8rXtplfPc" dmcf-ptype="figure">
<p class="link_figure"><img alt="미국인 피터슨 교수가 40여년간 소장하다 기증한 초대주미공가 박정양의 첫 부인 양주 조씨의 묘지문. 백자판 위에 청화안료로 고인의 생애 행적 등을 122자의 한문으로 적었다. 국외소재문화재재단 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hani/20231101084002876essf.jpg" data-org-width="671" dmcf-mid="0obJoj8C4D" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hani/20231101084002876essf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            미국인 피터슨 교수가 40여년간 소장하다 기증한 초대주미공가 박정양의 첫 부인 양주 조씨의 묘지문. 백자판 위에 청화안료로 고인의 생애 행적 등을 122자의 한문으로 적었다. 국외소재문화재재단 제공
           </figcaption>
</figure>
<p dmcf-pid="7xItpzyP4A" dmcf-ptype="general">눈푸른 미국학자는 한국의 옛 족보에 미친 연구자였다. </p>
<p dmcf-pid="0gc3V63o4S" dmcf-ptype="general">40여년전 평화봉사단으로 머무를 때 종가집 등에서 본 족보 가계도의 정연한 구성과 내용 사이에 깃든 다기한 인간사 드라마에 빠졌다. 그 뒤로도 한국을 오가면서 조선시대 족보를 연구했다. 이를 바탕으로 유교사회 조선의 얼개를 정리해 2000년 ‘유교사회의 창출: 조선 중기 입양제와 상속제의 변화’(일조각)란 역저를 냈다.</p>
<p dmcf-pid="phy8oj8C4l" dmcf-ptype="general">미국 하버드대에서 동아시아학으로 석·박사학위를 받은 뒤 브리검 영 대학에서 30여년간 조선시대사를 강의하고 연구한 마크 에이(A). 피터슨(77) 명예교수의 내력이다. 역시 조선시대 족보학, 과거제도 연구의 대가이자 스승인 에드워드 와그너(1924~2001) 전 하버드대 교수와 더불어 미국 학계에서 한국학 연구를 반석 위에 올려놓은 주역 중 한명인 그가 최근 뜻깊은 유물 한점을 한국에 기증했다. 백자판에 청화안료로 죽은 이의 생애·행적·성품 등을 기록한 묘지(墓誌). 흥미롭게도 구한말 미국 현지에 공사로 파견된 최초의 조선 외교관인 박정양(1841~1905)의 첫 부인 양주 조씨(1841~1892)의 것이었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="ziTuB2Zdxj" dmcf-ptype="figure">
<p class="link_figure"><img alt="자신이 기증한 양주 조씨의 묘지문 앞에 선 마크 피터슨 교수. 국외소재문화재재단 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hani/20231101084003132unju.jpg" data-org-width="658" dmcf-mid="pqItpzyPPE" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hani/20231101084003132unju.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            자신이 기증한 양주 조씨의 묘지문 앞에 선 마크 피터슨 교수. 국외소재문화재재단 제공
           </figcaption>
</figure>
<p dmcf-pid="qVEYZFI9PN" dmcf-ptype="general">문화재청 산하 국외소재문화재재단(이사장 김정희)은 지난 30일 오후 서울 상암동 재단 사무실에서 피터슨 교수가 참석한 가운데 기증식을 열어 양주 조씨의 묘지를 박정양의 증손인 박찬수 고려대 경영학과 교수(반남박씨 죽천공파 종중 회장)에게 전달했다. 묘지의 공식 명칭은 ‘백자청화정부인양주조씨묘지’(白磁靑畵貞夫人楊州趙氏墓誌)다.</p>
<p dmcf-pid="7rCKenKwxI" dmcf-ptype="general">기증품은 1892년 만든 조선 말기의 전형적인 청화백자 묘지다. 양주 조씨의 생애를 백자 도자기판 1장에 122자로 기록해놓았고 판 측면의 책등 모양 여백에 묻을 당시 묘지의 명칭인 ‘조선국정부인양주조씨광지’(朝鮮國貞夫人楊州趙氏壙誌)를 적어 놓았다. 남편과 1남2녀를 두었고, 경기도 수원 이목동에 장사지냈다는 내용을 담고 있다. 1921년 조씨의 유해는 경기도 포천 박정양의 무덤에 합장되었는데, 묘지 아래 표면에 금이 가고 파손된 부위가 보이는 점으로 미뤄 합장 때 묻히지 않고 유출된 것으로 추정된다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="ByVojExv6a" dmcf-ptype="figure">
<p class="link_figure"><img alt="30일 오후 서울 상암동 국외소재문화재단 건물에서 열린 기증식 기념사진. 왼쪽부터 김정희 재단 이사장, 마크 피터슨 교수, 박정양의 증손인 박찬수 고려대 교수. 국외소재문화재재단 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/hani/20231101084003390kqlr.jpg" data-org-width="644" dmcf-mid="U2pPRibDPk" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/hani/20231101084003390kqlr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            30일 오후 서울 상암동 국외소재문화재단 건물에서 열린 기증식 기념사진. 왼쪽부터 김정희 재단 이사장, 마크 피터슨 교수, 박정양의 증손인 박찬수 고려대 교수. 국외소재문화재재단 제공
           </figcaption>
</figure>
<p dmcf-pid="bZQcwOiHPg" dmcf-ptype="general">재단 설명으로는, 피터슨은 대학 교수가 되기 전인 1978~83년 한국에 풀브라이트재단 디렉터로 파견돼 일하다가 서울 한 골동품가게에서 헐값에 묘지를 사들인 뒤 40여년간 연구사료이자 애장품으로 보관해왔다고 한다. 평소 이 묘지를 ‘미세스 조’라는 애칭으로 부르면서 사람처럼 대해온 그는 지난해 7월 자신이 운영하는 역사 유튜브 채널 ‘Frog Outside the Well’(우물 밖 개구리)에 유물을 소개하면서 후손에게 돌려줄 뜻이 있다는 의사를 밝혔고, 이것이 기증의 물꼬가 됐다. </p>
<p dmcf-pid="B50LmCLZPm" dmcf-ptype="general">유튜브 내용을 확인한 국외소재문화재재단 미국사무소 직원이 피터슨 교수의 생각을 박정양 후손 쪽에 전하면서 기증이 약정되기에 이르렀다. 앞서 재단은 묘지를 임시로 기탁 받아 지난해 10월 미국 워싱턴 디시에 있는 옛 주미대한제국공사관 건물에서 열린 한미수교 140주년 특별전 ‘초대 주미공사 박정양’에서 미리 선보였으며, 지난달까지 전시를 마친 묘지는 한국에 들어와 지난 30일 전달식을 통해 후손의 품으로 돌아갔다. 김상엽 재단 특임연구관은 “30일 식장에서 기증절차를 마치고 기념사진을 찍은 뒤 피터슨 교수가 ‘미세스 조’의 묘지를 마지막으로 꼭 만져보고 싶다면서 주름진 손으로 쓰다듬고 한참 유물을 주시해 모두가 숙연해졌다”고 전했다.</p>
<p dmcf-pid="beLHzKHR6r" dmcf-ptype="general">노형석 기자 nuge@hani.co.kr</p>
</section>
</div></p></section></div><h6>[Source : 한겨레]</h6></div>
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