
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
    <h3>공유오피스 신화 쓴 위워크, 빠르면 다음주 파산신청</h3><h6>실리콘밸리/오로라 특파원  2023. 11. 1. 08:30</h6>
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
<section dmcf-sid="x0d0ADMTul">
<figure class="figure_frm origin_fig" dmcf-pid="yNHNUqWQph" dmcf-ptype="figure">
<p class="link_figure"><img alt="위워크 로고./로이터 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/chosun/20231101083046464cjal.jpg" data-org-width="4011" dmcf-mid="QC6XnafO0S" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/chosun/20231101083046464cjal.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            위워크 로고./로이터 연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="WDFDbV5J0C" dmcf-ptype="general">공유오피스의 대표 주자였던 미국 위워크가 몰락을 앞두고 있다.</p>
<p dmcf-pid="Yw3wKf1i0I" dmcf-ptype="general">31일(현지 시각) 월스트리트저널(WSJ)은 소식통을 인용해 “한 때 470억 달러로 평가됐던 벤처기업이 다음주 뉴저지주 법원에 파산보호 신청서를 제출할 것을 고려하고 있다”고 전했다. 한 때 손정의 소프트뱅크 회장의 전폭적인 지지를 받으며 공유 경제의 꽃이 됐지만, 코로나에 따른 사업 어려움과 잇단 스캔들로 추락하게 된 것이다.</p>
<p dmcf-pid="yzqZpzyP7i" dmcf-ptype="general">위워크는 앞서 지난 2일 채권자들에 줘야할 9500만 달러(약 1300억원) 규모의 이자 지급에 실패했고, 이에 따른 30일의 유예 기간을 갖고 자금 마련에 나섰었다. 이 기간 안에 돈을 마련하지 못할 경우 디폴트(파산)하게 된다. 위워크는 이날 채권자들과 유예기간을 추가로 7일 연장하기로 합의했다며 파산 신청 소식을 일축했지만, 그 사이에 돈을 마련할 수 있을지는 미지수다.</p>
<p dmcf-pid="H2c2CvNFus" dmcf-ptype="general">2010년 설립된 위워크는 건물 전체나 일부 층을 임대하고, 내부 공간을 쪼개 개인 또는 스타트업에 빌려주는 사업을 운영해왔다. 2016년 말 손정의 소프트뱅크 회장이 애덤 뉴먼을 뉴욕 오피스에서 단 12분을 만나고 거액을 투자하기로 결정한 것도 유명한 일화다. 위워크는 손 회장이 투자한 169억 달러(약 22조원)을 밑거름 삼아 승승장구했다.</p>
<p dmcf-pid="XVkVhTj37m" dmcf-ptype="general">하지만 기대됐던 흑자 전환이 지연되면서 투자자들의 불만이 많아졌고, 2019년에는 공동 창업자 애덤 뉴먼의 의심스러운 현금 거래 정황 등이 포착되며 회사에서 쫓겨나기도 했다. 전통적인 기업공개(IPO)를 시도하다 실패해 2021년 특수목적합병법인(SPAC)과 합병을 통한 우회상장을 하기도 했다.</p>
<p dmcf-pid="Z8w8vYkUFr" dmcf-ptype="general">결정적인 건 코로나로 재택근무가 확산하면서 공유오피스 사업은 큰 타격을 입게된 것이다. 적자에서 벗어나지 못하고 있는 위워크는 올 상반기에만 5억 3000만 달러의 현금을 소진했고, 6월 말 현재 남은 현금 규모는 2억 500만 달러에 불과하다. 앞으로 3개월간의 운영이 겨우 가능한 정도의 규모인 것이다. 올 2분기에 3억 4900만 달러의 순손실을 낸 위워크는 사업을 계속 유지할 수 있을지 “상당한 의구심이 존재한다”고 밝히기도 했다.</p>
<p dmcf-pid="WzqZpzyPzJ" dmcf-ptype="general">2019년 470억 달러에 달했던 위워크의 기업 가치는 올들어 주가가 96% 폭락하며 현재 1억 2140만 달러 수준으로 쪼그라들었다. 3년 전의 387분의 1 수준이다.</p>
</section>
</div></p></section></div><h6>[Source : 조선일보]</h6></div>
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