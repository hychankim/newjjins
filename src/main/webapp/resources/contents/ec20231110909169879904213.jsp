
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
    <h3>4대 은행, 사회공헌 지출 늘렸지만…농협·지방은행은 되레 줄었다</h3><h6> 2023. 11. 1. 09:09</h6>
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
<section dmcf-sid="bFoDkreW0R">
<figure class="figure_frm origin_fig" dmcf-pid="KeY3tplfpM" dmcf-ptype="figure">
<p class="link_figure"><img alt="4대 시중은행 각 사 본점 전경.[각 사 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101090934045bgpz.jpg" data-org-width="1280" dmcf-mid="uK5t53C271" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101090934045bgpz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            4대 시중은행 각 사 본점 전경.[각 사 제공]
           </figcaption>
</figure>
<p dmcf-pid="9dG0FUS47x" dmcf-ptype="general">[헤럴드경제=김광우 기자] 정치권에서 은행들의 이자 이익 급증에 대한 비판의 목소리를 높이고 있는 가운데, 은행권이 사회공헌활동 금액을 늘리며 이를 상쇄하기 위해 안간힘을 쓰고 있다. 지난해 은행권이 사회공헌에 푼 금액은 1조2000억원대로, 이 중 4대 은행에서 1년 새 늘린 사회공헌액만도 2300억원에 육박한다. 다만 농협은행과 지방·외국계은행 등 여타 은행에서는 사회공헌액 규모가 줄면서 은행별 온도차가 있는 것으로 집계됐다.</p>
<p dmcf-pid="2FoDkreWUQ" dmcf-ptype="general">앞으로는 은행별 격차가 좁혀지고 은행권 전반의 사회적 활동이 늘어날 것으로 보인다. 윤석열 대통령이 지난달 30일 국무회의에서 “고금리로 어려운 소상공인들께서는 죽도록 일해서 번 돈을 고스란히 대출 원리금 상환에 갖다 바치는 현실이 ‘마치 은행의 종노릇을 하는 것 같다’”고 비판 수위를 높이면서, 은행 초과이익 환수나 횡재세 관련 논의가 속도를 낼 전망이기 때문이다. 이미 은행 초과이익을 서민금융원에 강제 출연하는 법안은 여러건 발의된 상태다.</p>
<p dmcf-pid="V3gwEmdYUP" dmcf-ptype="general">실제 이자이익도 증가 흐름을 보이고 있다. 국내 은행권의 이자 이익은 2020년 41조 2000억원에서 올해 58조 8000억원으로 42.7% 늘어날 것으로 추정된다.</p>
<div dmcf-pid="fDz4V63oU6" dmcf-ptype="general">
<div>
<strong><strong>은행권 사회공헌액 1년 새 1763억원↑…4대 은행은 2284억원↑</strong></strong>
</div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="4wq8fP0g38" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101090938077tven.gif" data-org-width="1260" dmcf-mid="GCR4V63o7w" dmcf-mtype="image" height="auto" src="https://t1.daumcdn.net/news/202311/01/ned/20231101090938077tven.gif" width="1260"/></p>
</figure>
<div dmcf-pid="8rB64Qpa74" dmcf-ptype="general">
<p>1일 은행연합회에서 발표한 ‘2022년 은행 사회공헌활동 보고서’에 따르면 지난해 은행권(은행 및 금융공기업 등)에서 사회공헌활동에 쓴 금액은 총 1조2380억원으로 전년(1조617억원)과 비교해 1763억원(16.6%)가량 증가했다. 이는 2019년(1조1359억원) 이후 가장 많은 금액으로, 역대 최대 규모에 해당한다.</p>
</div>
<p dmcf-pid="6Ap9bV5J7f" dmcf-ptype="general">은행들의 순이익 규모는 금리 인상이 본격화되며 늘어나기 시작했다. 대출금리 인상에 따라 예대금리차가 벌어지면서다. 자연스레 은행들이 고금리를 틈타 ‘이자장사’를 하고 있다는 비판이 가중됐다. 그 일환으로 은행들에 사회공헌 활동 확대를 요구하는 목소리도 계속됐다.</p>
<p dmcf-pid="PcU2Kf1ipV" dmcf-ptype="general">무엇보다 4대 시중은행(KB국민·신한·하나·우리)의 사회공헌 확대가 눈에 띄었다. 4대 은행의 지난해 사회공헌액은 8066억원으로 전년(5782억원)과 비교해 39.9%(2284억원)가량 늘었다. 같은 기간 은행권 전체 사회공헌액 중 4대 은행의 비중은 54.4%에서 65.1%로 증가했다.</p>
<p dmcf-pid="QkuV94tnF2" dmcf-ptype="general">심지어 지난해 4대 은행의 사회공헌액 증가폭(2284억원)은 전체 은행권 증가폭(1763억원)과 비교해서도 더 많았다. 4대 은행을 제외한 여타 은행권에서 순이익 증가에도 불구하고, 사회공헌 규모를 줄였다는 얘기다.</p>
<div dmcf-pid="xkuV94tnU9" dmcf-ptype="general">
<div>
<strong><strong>농협·지방·외국계 은행, 모두 사회공헌액 줄였다</strong></strong>
</div>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="y7cIsho50K" dmcf-ptype="figure">
<p class="link_figure"><img alt="서울 중구에 위치한 농협은행 본점 전경.[농협은행 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101090939626jcpv.jpg" data-org-width="1280" dmcf-mid="XRDlCvNF7E" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101090939626jcpv.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            서울 중구에 위치한 농협은행 본점 전경.[농협은행 제공]
           </figcaption>
</figure>
<p dmcf-pid="WzkCOlg13b" dmcf-ptype="general">예컨대 2021년 1911억원의 사회공헌활동액을 지출했던 NH농협은행은 지난해 1086억원을 사회공헌활동에 썼다. 1년 만에 약 825억원(43%)이 줄어든 수치다. 특히 소외계층 등에 지원하는 지역사회·공익 부문 공헌액이 2021년 1224억원에서 2022년 656억원 등으로 절반가량 감소했다.</p>
<div dmcf-pid="YaFBzKHRpB" dmcf-ptype="general">
<p>이에 농협은행 관계자는 “지난해 농협은행은 약 3247억원을 사회공헌 성격인 농업지원사업에 할애하고 있지만, 집계에 포함되지 않았다”며 “특수성을 고려해야 한다”고 설명했다. 농협은행은 농협법에 따라 매년 순이익의 일부를 농업지원사업비(옛 명칭사용료)를 지주사에 내고 있다. 그러나 이를 순수한 사회공헌 활동으로 볼 수 있을지에 대해서는 의견이 분분하다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="GN3bq9Xe0q" dmcf-ptype="figure">
<p class="link_figure"><img alt="대구은행과 부산은행 본사 전경.[각 사 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101090941064bzep.jpg" data-org-width="1280" dmcf-mid="z7Hp3uv8zJ" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101090941064bzep.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            대구은행과 부산은행 본사 전경.[각 사 제공]
           </figcaption>
</figure>
<p dmcf-pid="Hj0KB2Zd3z" dmcf-ptype="general">사회공헌액 감소는 여타 은행들에서도 나타났다. 주요 지방은행 5곳(부산·경남·대구·전북·광주)이 지난해 사회공헌활동으로 지출한 금액은 1456억원으로 전년(1485억원)과 비교해 29억원(1.9%) 소폭 감소했다. 같은 기간 이들이 거둔 순이익은 1조1402억원에서 1조6541억원으로 45%가량 크게 증가했다. 주요 시중은행들과 비교해 사회공헌 활동에 인색했다는 평가가 나오는 이유다.</p>
<p dmcf-pid="XnZupzyPp7" dmcf-ptype="general">가장 순이익 규모가 컸던 부산은행의 사회공헌액은 403억원으로 전년(523억원)과 비교해 120억원(22.9%) 줄어들었다. 이는 최근 5년 중 가장 적은 금액이다. 대구은행 또한 전년(323억원) 대비 23억원(7.1%) 줄어든 300억원을 사회공헌에 지출했다. 같은 기간 부산은행과 대구은행의 순이익은 각각 1156억원(46%), 1588억원(46%) 늘었다.</p>
<div dmcf-pid="ZL57UqWQzu" dmcf-ptype="general">
<p>지방은행 관계자는 “이번 보고서의 집계 대상에서 빠진 출연금 등 사항이 있어, 사회공헌액 감소세에 일부 영향을 끼친 것으로 보인다”면서도 “지역을 중심으로 한 사회환원 활동을 지속해서 늘려가고 있다”고 말했다.</p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="5o1zuBYxuU" dmcf-ptype="figure">
<p class="link_figure"><img alt="SC제일은행과 한국씨티은행 본사 전경.[각 사 제공]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101090942352gtpf.jpg" data-org-width="730" dmcf-mid="BEHp3uv8Fe" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101090942352gtpf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            SC제일은행과 한국씨티은행 본사 전경.[각 사 제공]
           </figcaption>
</figure>
<p dmcf-pid="1aFBzKHRpp" dmcf-ptype="general">유독 사회공헌에 인색하다는 비판을 받아온 외국계 은행의 경우도 지난해 사회공헌액을 줄인 것으로 나타났다. SC제일은행이 지난해 사회공헌에 지출한 금액은 107억원으로 2021년(113억원)과 비교해 5억원(4.4%) 줄었다. 같은 기간 순이익은 782억원에서 4625억원으로 6배가량 늘었다. 지난해 다시 흑자전환에 성공한 씨티은행 또한 사회공헌액을 2021년 100억원에서 2022년 74억8000만원으로 줄였다.</p>
<p dmcf-pid="tN3bq9Xe70" dmcf-ptype="general">이처럼 다수 은행서 사회공헌 규모가 줄어들며, 지난해 기준 은행권의 실적 대비 사회공헌비율은 6.5%로 전년(6.9%)보다 0.4%포인트 줄었다. 이에 이인균 은행연합회 본부장은 “사회공헌의 규모가 적절한지에 대해서는 늘 고민하고 있고, 정답이 없다고 생각한다”면서도 “해외나 국내 타 기업들과 비교해서 결코 적지 않은 숫자”라고 설명했다.</p>
<p dmcf-pid="Fj0KB2Zd03" dmcf-ptype="general">woo@heraldcorp.com</p>
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