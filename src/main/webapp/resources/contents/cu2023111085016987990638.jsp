
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
    <h3>[아미랑] 항암 치료 중 면역력 저하, 네 가지 지키고 감염 막아야</h3><h6>최지혜 이대서울병원 영양팀 임상영양사  2023. 11. 1. 08:50</h6>
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
<section dmcf-sid="11z2Qezcxk">
<figure class="figure_frm origin_fig" dmcf-pid="tbPdacPlQc" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=클립아트코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/healthchosun/20231101085016461bqcd.jpg" data-org-width="1000" dmcf-mid="5iLAmCLZPE" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/healthchosun/20231101085016461bqcd.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=클립아트코리아
           </figcaption>
</figure>
<div dmcf-pid="FMgkOlg14A" dmcf-ptype="general">
<div>
            우리 몸의 골수는 여러 가지 혈구 세포를 생성합니다. 그 중 백혈구 세포는 외부의 물질로부터 우리 몸을 보호하는 역할을 합니다. 암 환자는 항암 치료로 인해 이런 면역 기능이 떨어집니다. 항암제가 골수 능력을 저하시켜, 백혈구의 수가 감소하기 때문입니다. 면역력 저하로 감염에 매우 취약한 상태인 만큼, 기본적인 개인위생 관리뿐 아니라 식품 섭취를 통한 감염도 조심해야 합니다. 항암 후 면역력이 떨어졌을 때 감염을 막는 식품 섭취법에 대해 알려드립니다.
           </div>
</div>
<p dmcf-pid="31z2QezcPj" dmcf-ptype="general">첫 번째, 위생적인 식품을 선택하세요. 식품의 표면이나 포장 상태를 꼼꼼히 확인하고 흠이 있는 것은 구입하지 않는 게 좋습니다. 사용 기한 역시 초과하지 않았는지 확인하세요. 시식 음식, 길거리 음식, 기타 무허가·무표시 식품은 비위생적일 수 있으니 드시지 않아야 합니다. 또 건조 상태로 장기간 보관하는 식품도 주의해야 합니다. 견과류, 건과일, 건채소, 쥐포 등이 해당합니다. 건조하는 과정이 청결하지 않을 수 있고, 장기간 보관으로 인해 식품이 변질됐을 수 있습니다.</p>
<p dmcf-pid="0FBfMJBE4N" dmcf-ptype="general">두 번째, 가열 조리 된 식품을 섭취하세요. 식품을 가열하면 대부분의 세균이나 독소가 파괴됩니다. 식품 중심부의 온도가 육류는 75도 이상, 어패류는 85도 이상인 상태에서 1분 이상 가열하고, 두부나 난류 역시 완전히 익혀서 섭취하면 좋습니다. 식수 또한 100도 이상 끓여서 식힌 뒤 마시거나 밀봉 포장 된 생수를 권장합니다.</p>
<p dmcf-pid="pU2PJo2mPa" dmcf-ptype="general">세 번째, 교차오염에 주의하세요. 교차오염이란 오염되지 않은 식재료나 음식이 오염된 식재료, 조리도구, 사람과의 접촉으로 인해 오염되는 현상을 말합니다. 교차오염을 막기 위해서는 조리 전에 반드시 깨끗이 손을 씻고, 음식을 담는 그릇을 청결하게 유지하고, 칼과 도마는 용도별(육류용, 생선용, 채소용)로 구분해서 사용해야 합니다. 식품도 구분해서 보관해야 합니다. 조리된 음식은 냉장고 상부 칸에, 날것의 식재료는 하부 칸에 보관하길 권합니다.</p>
<p dmcf-pid="UgwCWXwz4g" dmcf-ptype="general">네 번째, 식사 후 양치질도 중요합니다. 입과 위장에는 자연적으로 많은 박테리아가 존재합니다. 평상시에는 문제가 되지 않지만, 미국치과협회에 따르면 항암 치료 시 면역력이 저하되면 이 박테리아가 감염증 위험을 높일 수 있다고 합니다. 식사하고 입안에 음식물 찌꺼기가 남으면 박테리아가 더 많아질 수 있기 때문에, 양치질로 마무리를 철저히 해주세요.</p>
<p dmcf-pid="ujsSH1sbQo" dmcf-ptype="general">사실 항암 치료를 받는다고 모두가 면역이 떨어지는 건 아닙니다. 사용하는 약제에 따라 면역저하가 발생하지 않을 수 있습니다. 그래서 뭐든 입에 맞는 것으로 잘 먹어서 체력을 키우는 게 우선이지요. 하지만 암 치료만으로도 힘든데 다른 감염증이 생기지 않도록 조심해서 나쁠 것은 없겠죠. 힘든 시기여도 힘내셨으면 좋겠습니다. 그 힘든 시기는 반드시 지나갈 것입니다. 건강하게 드시고 건강하게 회복하시길 바랍니다.</p>
<div dmcf-pid="7v5pbV5JQL" dmcf-ptype="general">
           &lt;항암 후 감염 막는 식사법&gt;
           <div>
<div>
<span>https://youtu.be/YfTFkLgr78s?si=nxzeNqDd9Xa0okuO</span>
</div>
</div>
</div>
<div dmcf-pid="ztqVxdqkPn" dmcf-ptype="general">
           ✔ 외롭고 힘드시죠?
           <br/>암 환자 지친 마음 달래는 힐링 편지부터, 극복한 이들의 노하우까지!
           <br/><span>https://health.chosun.com/amirang/amirang.jsp?ref=page</span>
<br/>↑지금 바로 무료 구독 신청하세요.
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