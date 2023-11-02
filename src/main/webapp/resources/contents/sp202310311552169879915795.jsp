
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
    <h3>이예원, 경쟁자 박지영 ‘텃밭’에서 상금왕 확정할까</h3><h6>주미희  2023. 10. 31. 15:52</h6>
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
<section dmcf-sid="pHPT7CLZAy">
<figure class="figure_frm origin_fig" dmcf-pid="UIqwXA6hgT" dmcf-ptype="figure">
<p class="link_figure"><img alt="왼쪽부터 김민별, 박지영, 이예원, 이소미, 황유민, 방신실이 31일 열린 KLPGA 투어 S-OIL 챔피언십 공식 포토콜에 참석했다.(사진=KLPGA 제공)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/Edaily/20231031155221451funm.jpg" data-org-width="670" dmcf-mid="tfgUxtOKcH" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/Edaily/20231031155221451funm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            왼쪽부터 김민별, 박지영, 이예원, 이소미, 황유민, 방신실이 31일 열린 KLPGA 투어 S-OIL 챔피언십 공식 포토콜에 참석했다.(사진=KLPGA 제공)
           </figcaption>
</figure>
<div dmcf-pid="uteHKTj3kv" dmcf-ptype="general">
           [이데일리 스타in 주미희 기자] 이예원(20)이 상금왕 경쟁자인 박지영(27)의 ‘텃밭’에서 상금왕 확정에 도전한다.
          </div>
<p dmcf-pid="7s7EGN4IgS" dmcf-ptype="general">한국여자프로골프(KLPGA) 투어가 2023시즌 단 2개 대회 만을 남겨놓은 가운데, 다음달 2일부터 나흘간 제주시의 엘리시안 제주 컨트리클럽(파72)에서 S-OIL 챔피언십(총상금 9억원)이 열린다.</p>
<p dmcf-pid="zpn1fGEucl" dmcf-ptype="general">특히 이번 대회는 올 시즌 치열했던 개인 타이틀 경쟁의 윤곽이 잡힐 전망이다. 올 시즌 27개 대회에 출전해 컷 통과 26회를 기록하고 3승을 거둔 이예원(20)은 현재 시즌 상금 13억2668만4197원으로 상금왕 등극을 눈앞에 두고 있다. 다만 올해 9억7247만9385원을 모아 상금 2위에 자리한 박지영에게도 역전 가능성은 남아 있다.</p>
<p dmcf-pid="qY8SUOiHoh" dmcf-ptype="general">2위 박지영이 순위를 뒤집을 수 있는 전제 조건은 이번 대회에서의 우승이 필수적이다. 박지영이 이번 대회에서 우승해 상금 1억6200만원을 누적하고, 이예원이 단독 29위 이하로 경기를 마쳐 779만5188원 미만의 상금을 벌어들일 경우에만 시즌 최종전 SK쉴더스·SK텔레콤 챔피언십에서 순위가 뒤집힐 가능성이 생긴다.</p>
<p dmcf-pid="BULt4HD7NC" dmcf-ptype="general">이예원은 “현재 퍼트 감은 괜찮지만 샷 감이 좋은 편이 아니다”라면서 “타이틀에 연연하면 좋은 플레이가 나오지 않을 것 같다. 최대한 타이틀에 대한 생각은 하지 않고, 내 플레이에만 집중하여 톱텐 안에 들 수 있도록 최선을 다하겠다”고 말했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="bFdX9yA0gI" dmcf-ptype="figure">
<p class="link_figure"><img alt="타깃 바라보는 이예원(사진=KLPGA 제공)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/Edaily/20231031155222702clpz.jpg" data-org-width="670" dmcf-mid="FfvRw63oaG" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/Edaily/20231031155222702clpz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            타깃 바라보는 이예원(사진=KLPGA 제공)
           </figcaption>
</figure>
<div dmcf-pid="KeSPcV5JaO" dmcf-ptype="general">
           이번 대회가 도전자 박지영의 ‘텃밭’이라는 점에 주목해야 한다. 박지영은 2016년과 2021년 같은 골프장에서 열린 S-OIL 챔피언십에서 우승했다. 통산 7승 중 2승을 이 대회에서 거뒀다. 박지영은 “이번 대회는 내가 2승을 기록했던 대회인만큼 좋은 기억으로 가득하다. 그 기억과 기분을 십분 살려 최선을 다해 플레이할 것이다. 목표는 일단 톱10”이라고 포부를 내비쳤다.
          </div>
<p dmcf-pid="9teHKTj3As" dmcf-ptype="general">대상 포인트 경쟁도 치열하다. 609포인트를 획득한 이예원은 558포인트를 누적한 임진희(25)의 거센 추격을 받고 있다. 둘의 포인트 차는 단 51포인트로, 60포인트가 걸린 이번 대회를 통해 순위가 뒤바뀔 수도 있다.</p>
<p dmcf-pid="2kFaSibDcm" dmcf-ptype="general">임진희는 “남은 두 개 대회에서 모두 대상 포인트를 받는 것이 목표다. 2주 연속 감이 좋은 편이기 때문에 일단 이번 대회부터 톱텐에 들기 위해 최선을 다해겠다”고 힘줘 말했다. 임진희가 이번 대회를 통해 이예원과의 격차를 70포인트 이내로만 유지한다면, 시즌 최종전에서 대상의 주인공이 바뀔 가능성이 생긴다.</p>
<p dmcf-pid="VE3NvnKwkr" dmcf-ptype="general">김민별(19), 황유민(20)의 2파전으로 압축된 신인상의 향방 또한 오리무중이다. 신인상 랭킹 1위 김민별과 2위 황유민의 점수 차는 단 220점.</p>
<p dmcf-pid="faXiOMujkw" dmcf-ptype="general">김민별은 “요즘 샷 감이 좋은데 퍼트만 잘 따라준다면 목표로 하는 우승을 할 수 있지 않을까 생각한다. 우승하면 신인상은 따라올 것”이라는 포부를 내비쳤다. 추격자 황유민은 “나 역시 우승이 목표다. 신인상에 대한 욕심은 내려놓은 상태”라 말하며 “샷과 퍼트감이 나쁜 편이 아니기 때문에 최선을 다해 우승을 노려보겠다”고 응수했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="4aXiOMujjD" dmcf-ptype="figure">
<p class="link_figure"><img alt="박지영의 우드 샷(사진=KLPGA 제공)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/Edaily/20231031155224911ucbh.jpg" data-org-width="670" dmcf-mid="3l0jTL9roY" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/Edaily/20231031155224911ucbh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            박지영의 우드 샷(사진=KLPGA 제공)
           </figcaption>
</figure>
<div dmcf-pid="8XQyzho5oE" dmcf-ptype="general">
           지난주 SK네트웍스·서울경제 레이디스 클래식에서 2년 5개월 만에 통산 4번째 우승을 차지한 박현경(23)은 2주 연속 우승에 도전한다.
          </div>
<p dmcf-pid="6TVC3reWjk" dmcf-ptype="general">박현경은 “오랜만에 우승해서 기분이 정말 좋은 상태인데, 들뜨지 않고 차분히 플레이 하는 것이 중요할 것 같다”면서 “결과보다는 매 홀마다 한 타, 한 타에 집중한다면 지난주처럼 좋은 성적을 낼 수 있을 거라 믿고 있다”는 각오를 내비쳤다.</p>
<p dmcf-pid="PW4lpsJGoc" dmcf-ptype="general">이어 ”시즌 막바지로 접어들고 있다 보니 약간의 피로감이 생기는 등 컨디션이 그렇게 좋은 편은 아니지만, 샷 감이 좋은 편이라 이번 대회까지 이 감을 유지할 수 있도록 노력하고 있다. 이번주 역시 변수는 날씨다. 그렇지만 내가 좋아하는 코스에서 열리는 대회인만큼, 날씨에 맞는 현명한 플레이로 경기를 풀어나가겠다”고 밝혔다.</p>
<div dmcf-pid="Qs7EGN4INA" dmcf-ptype="general">
           디펜딩 챔피언 이소미(24)와 최근 부활 조짐을 보이는 임희정(23) 등은 시즌 첫 우승에 도전하고, 안신애(33)가 스폰서 추천 선수 자격으로 2년 4개월 만에 골프 팬 앞에 나선다.
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="xdvQkf1iNj" dmcf-ptype="figure">
<p class="link_figure"><img alt="SK네트웍스·서울경제 레이디스 클래식에서 우승한 박현경(사진=KLPGA 제공)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/Edaily/20231031155226990nqrx.jpg" data-org-width="670" dmcf-mid="00XiOMujgW" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/Edaily/20231031155226990nqrx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            SK네트웍스·서울경제 레이디스 클래식에서 우승한 박현경(사진=KLPGA 제공)
           </figcaption>
</figure>
<p dmcf-pid="yHPT7CLZgN" dmcf-ptype="general">주미희 (joomh@edaily.co.kr) </p>
</section>
</div></p></section></div><h6>[Source : 이데일리]</h6></div>
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