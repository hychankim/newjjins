
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
    <h3>350억→3억 쪼그라든 순이익…은행계 저축은행 충격 성적표[머니뭐니]</h3><h6> 2023. 11. 1. 09:34</h6>
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
<section dmcf-sid="Zhh7kreWzR">
<figure class="figure_frm origin_fig" dmcf-pid="5UUdH1sb7M" dmcf-ptype="figure">
<p class="link_figure"><img alt="4대 금융지주. [사진=헤럴드경제DB]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101093415786nagt.jpg" data-org-width="1000" dmcf-mid="HHil8xUN7d" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101093415786nagt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            4대 금융지주. [사진=헤럴드경제DB]
           </figcaption>
</figure>
<p dmcf-pid="1uuJXtOK7x" dmcf-ptype="general">[헤럴드경제=김현경 기자] 은행계 저축은행들의 순이익이 1년 새 거의 제로(0) 수준으로 쪼그라들었다. 고금리로 저축은행 업황이 악화되면서 영업활동을 했지만 실제로 저축은행이 손에 쥐는 이익은 없어진 셈이다.</p>
<p dmcf-pid="tttQTGEu7Q" dmcf-ptype="general">1일 KB저축은행, 신한저축은행, 하나저축은행, 우리금융저축은행, NH저축은행, IBK저축은행의 실적 자료를 취합한 결과, 이들 은행계 저축은행 6곳의 올해 3분기 순이익 합계는 3억원으로 지난해 3분기 350억원 대비 347억원(-99.1%) 감소했다. 1년 전 같은 기간의 1%에도 못 미치는 규모다.</p>
<p dmcf-pid="FFFxyHD7uP" dmcf-ptype="general">저축은행별로 보면 KB저축은행은 지난해 3분기 61억원 순이익에서 올해 3분기 114억원 순손실로 돌아섰고, 우리금융저축은행(2억→-25억원)과 IBK저축은행(47억→-1억원)도 전년 동기 대비 적자 전환했다.</p>
<p dmcf-pid="333MWXwzF6" dmcf-ptype="general">하나저축은행과 NH저축은행은 흑자를 내긴 했으나 흑자 규모는 대폭 감소했다. 하나저축은행의 순이익은 64억원에서 7억원으로 89.4% 급감했고, NH저축은행은 82억원에서 36억원으로 56.1% 줄었다.</p>
<p dmcf-pid="022jpzyP38" dmcf-ptype="general">6개사 중 신한저축은행만 1년 전보다 6억원(6.6%) 늘어난 100억원 순이익을 기록하며 증익을 나타냈다.</p>
<p dmcf-pid="pVVAUqWQp4" dmcf-ptype="general">올해 들어 3분기까지 누적 순이익도 6곳 중 4곳이 적자를 보이고 있다. 우리금융저축은행(-284억원)과 KB저축은행(-226억원)은 누적 적자가 200억원을 넘어섰고, IBK저축은행(-95억원)과 NH저축은행(-39억원)도 마이너스(-)를 기록 중이다.</p>
<p dmcf-pid="UffcuBYxpf" dmcf-ptype="general">반면 신한저축은행과 하나저축은행은 각각 270억원, 33억원 누적 흑자로 파악됐다.</p>
<p dmcf-pid="uiil8xUN0V" dmcf-ptype="general">6개 저축은행의 자본총계는 3분기 기준 총 1조6585억원으로 1년 전보다 310억원(1.9%) 늘어나는 데 그쳤다.</p>
<p dmcf-pid="7nnS6Muju2" dmcf-ptype="general">하나저축은행, 우리금융저축은행, NH저축은행의 경우에는 자본총계가 각각 70억원(-2.0%), 286억원(-12.5%), 74억원(-2.1%)씩 감소했다.</p>
<p dmcf-pid="zLLvPR7A39" dmcf-ptype="general">6개사의 자본과 부채를 합친 자산총계는 총 15조5264억원으로 전년 동기 대비 6553억원(4.4%) 증가했다.</p>
<p dmcf-pid="quuJXtOKUK" dmcf-ptype="general">저축은행들의 실적 부진은 지난해 하반기 금리 상승과 수신 경쟁의 여파로 올해까지 조달비용 부담이 이어지고 있고, 부동산 프로젝트파이낸싱(PF) 대출 등 여신 건전성 강화를 위해 대손충당금을 늘린 영향이 크다.</p>
<p dmcf-pid="B77iZFI9Fb" dmcf-ptype="general">저축은행업계 관계자는 “올해 영업 환경의 악화로 저축은행업권 전반이 어려워서 시장 불확실성에 대비해 충당금을 쌓다보니 대부분의 저축은행 실적이 전년 동기 대비 하회하고 있다”고 말했다.</p>
<div dmcf-pid="bzzn53C2zB" dmcf-ptype="general">
<p>다만 4분기에는 상황이 좀 나아질 것이란 기대를 내비쳤다. 이 관계자는 “당행의 경우 상반기까지 시장 불확실성에 대비해 충당금을 선제적으로 적립해 3분기부터는 손실 폭이 크게 줄어들었다”면서 “4분기에는 플러스(+)로 턴어라운드(흑자 전환)될 것으로 예상한다”고 밝혔다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="KqqL10hV0q" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101093416166ocin.jpg" data-org-width="1280" dmcf-mid="X6dCfP0gze" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101093416166ocin.jpg" width="658"/></p>
</figure>
<p dmcf-pid="9bbgFUS43z" dmcf-ptype="general">pink@heraldcorp.com</p>
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