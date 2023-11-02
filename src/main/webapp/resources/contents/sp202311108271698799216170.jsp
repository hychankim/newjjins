
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
    <h3>'세대교체 성공' 신한은행, 4연속 5할 승률 도전</h3><h6>양형석  2023. 11. 1. 08:27</h6>
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
<section dmcf-sid="1l68XtOKDR">
<p dmcf-pid="t2IOMJBEIM" dmcf-ptype="general">[양형석 기자]</p>
<p dmcf-pid="FVCIRibDwx" dmcf-ptype="general">1990년대 현대산업개발 시절부터 2000년대 신한은행 에스버드 시절까지 신한은행을 상징하는 선수는 단연 '천재가드' 전주원(우리은행 우리원 코치)이었다. 1990년 현대산업개발에 입단한 전주원은 2010-2011 시즌이 끝나고 현역 생활을 마감할 때까지 선수로서 6개의 우승반지를 차지했고 정규리그 MVP 1회, 챔프전 MVP 2회, 7시즌 연속 어시스트 1위 등 화려한 기록을 남겼다. 지금도 전주원의 등번호 0번은 신한은행의 영구결번으로 남아있다. </p>
<p dmcf-pid="3UcA28FLwQ" dmcf-ptype="general">전주원이 2011년 은퇴를 선언한 이후 신한은행의 '적통'을 이어 받은 선수는 WKBL 최고의 만능포워드 김단비(우리은행)였다. 김단비는 전주원이 은퇴한 후에도 2011-2012 시즌 신한은행의 통합6연패 주역으로 활약했다. 김단비는 WKBL의 왕조를 우리은행에게 내준 후에도 오랜 기간 신한은행의 에이스로 활약하며 신한은행에서만 6번이나 정규리그 BEST5에 선정됐다. 2010년대부터 2022년까지 김단비는 신한은행 전력의 '시작과 끝'이었다.</p>
<p dmcf-pid="0ukcV63oOP" dmcf-ptype="general">하지만 현재 전주원과 김단비는 모두 신한은행이 아닌 각각 코치와 선수로 우리은행 유니폼을 입고 있다. 전주원이 2012년 위성우 감독을 따라 우리은행 코치로 부임했고 그로부터 10년이 지난 작년 김단비가 FA자격을 얻어 우리은행으로 이적했기 때문이다. 하지만 지난 시즌 신한은행의 성적은 16승14패로 김단비가 이끌던 2021-2022 시즌의 성적과 일치했다. 구나단 감독이 '김단비가 없는' 신한은행의 가능성을 발견한 것이다.</p>
<div dmcf-pid="p7EkfP0gD6" dmcf-ptype="general">
<strong>김단비 없이도 플레이오프 진출 성공</strong>
<br/> 
          </div>
<table align="center" border="0" cellpadding="0" cellspacing="0" dmcf-pid="U7EkfP0gs8" dmcf-ptype="general">
<tbody>
<tr>
<td>
<figure class="figure_frm origin_fig">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ohmynews/20231101082702613ncbv.jpg" data-org-width="600" dmcf-mid="XGgoq9XemJ" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ohmynews/20231101082702613ncbv.jpg" width="658"/></p>
</figure></td>
</tr>
<tr>
<td align="left"><strong>▲ </strong> 김소니아는 WKBL 역대 최초로 보상선수 이적 첫 시즌에 리그 득점왕에 등극했다.</td>
</tr>
<tr>
<td align="left">ⓒ 한국여자농구연맹</td>
</tr>
</tbody>
</table>
<div dmcf-pid="uzDE4QpaI4" dmcf-ptype="general">
            
           <br/>지난 2018-2019 시즌 신한은행의 성적은 6승29패(승률 .171)로 WKBL 위탁운영구단인 OK저축은행 읏샷(13승22패)에게도 뒤진 최하위였다. 한 때 국내 프로스포츠 최초로 통합 6연패를 달성하면서 WKBL을 지배했던 신한은행에게는 매우 굴욕적인 결과였다. 간판스타 김단비가 부상으로 28경기 출전에 그쳤을 뿐 아니라 부상을 참고 힘들게 출전한 경기에서도 제 기량을 발휘하지 못한 것이 치명적이었다.
          </div>
<p dmcf-pid="7qwD8xUNDf" dmcf-ptype="general">2018-2019 시즌이 끝난 후 신한은행은 OK저축은행 선수들을 중심으로 새로 창단한 BNK와의 트레이드를 통해 한채진을 영입했고 FA시장에서는 국가대표 출신 베테랑 포인트가드 이경은을 데려왔다. 한채진과 이경은이 가세한 이후 신한은행은 2020-2021 시즌과 2021-2022 시즌 연속으로 5할 승률을 돌파하며 플레이오프에 진출했다(2019-2020 시즌은 코로나19로 포스트시즌 없이 조기종료).</p>
<p dmcf-pid="zFagB2ZdEV" dmcf-ptype="general">하지만 2021-2022 시즌이 끝나고 신한은행에 비극적인 소식이 들려왔다. 선수생활을 마무리할 때까지 신한은행을 떠나는 일이 없을 거라고 믿어 의심치 않았던 프랜차이즈 스타 김단비가 우리은행으로 이적한 것이다. 게다가 180cm의 좋은 신장을 가진 1998년생 장신 포워드 한엄지마저 BNK행을 선택했다. 신한은행은 졸지에 현재의 에이스와 미래의 주역이 될 수 있는 선수를 동시에 잃고 말았다.</p>
<p dmcf-pid="q3NabV5JD2" dmcf-ptype="general">하지만 신한은행의 보상선수 지명은 탁월했다. 김단비의 보상선수로 혼혈선수 김소니아를 지명한 신한은행은 한엄지의 보상선수로 김진영을 선택했다. 두 선수 모두 신장은 크지 않지만 득점력이 뛰어나고 코트 안에서 투지가 좋은 선수들로 다소 얌전하던 신한은행의 팀 색깔에 활기를 불어넣을 수 있었다. 여기에 FA시장에서 슈터 구슬을 영입하면서 오히려 선수 기용 폭은 2021-2022 시즌보다 더 넓어졌다.</p>
<p dmcf-pid="B0jNKf1im9" dmcf-ptype="general">'보상선수 듀오' 김소니아와 김진영이 팀의 원투펀치로 활약한 신한은행은 지난 시즌 16승14패를 기록하며 세 시즌 연속 플레이오프 무대를 밟았다. 비록 정규리그 4위였지만 2위 BNK(17승13패)와는 단 한 경기 차이였다. 신한은행은 플레이오프에서 김단비가 속한 지난 시즌 통합우승팀 우리은행을 만나 2연패를 당하며 탈락했다. 하지만 김단비 없이도 충분히 좋은 성적을 올릴 수 있다는 가능성을 발견한 의미 있는 시즌이었다.</p>
<div dmcf-pid="bPTvnafOOK" dmcf-ptype="general">
<strong>한채진 은퇴 후 더 젊어진 신한은행  </strong>
<br/> 
          </div>
<table align="center" border="0" cellpadding="0" cellspacing="0" dmcf-pid="KQyTLN4IOb" dmcf-ptype="general">
<tbody>
<tr>
<td>
<figure class="figure_frm origin_fig">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ohmynews/20231101082704056ngvz.jpg" data-org-width="600" dmcf-mid="5IiJUqWQIe" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ohmynews/20231101082704056ngvz.jpg" width="658"/></p>
</figure></td>
</tr>
<tr>
<td align="left"><strong>▲ </strong> 만36세의 베테랑 포인트가드 이경은은 이번 시즌 팀의 주장으로 코트 안팎에서 젊은 후배들을 이끌 예정이다.</td>
</tr>
<tr>
<td align="left">ⓒ 한국여자농구연맹</td>
</tr>
</tbody>
</table>
<div dmcf-pid="9xWyoj8CDB" dmcf-ptype="general">
            
           <br/>신한은행은 지난 시즌이 끝난 후 리그 최고령 선수였던 한채진이 선수생활을 마감했다. 한채진은 은퇴 시즌에도 경기당 평균 26분52초를 소화했을 정도로 신한은행에서 궂은 일을 전담했던 선수다. 어느덧 신한은행은 2021-2022 시즌까지 팀의 원투펀치로 활약했던 김단비와 한채진이 모두 팀을 떠나게 됐다. 여전히 이경은(1987년생)과 김소니아(1993년생) 같은 30대 선수들이 있지만 신한은행의 선수단이 한결 젊어진 것은 분명했다.
          </div>
<p dmcf-pid="2EqzhTj3Oq" dmcf-ptype="general">신한은행은 지난 시즌이 끝난 후 12득점6.1리바운드2.7어시스트로 프로 데뷔 후 최고의 시즌을 보낸 김진영과 베테랑 가드 이경은이 FA자격을 얻었다. 신한은행은 김진영과 계약기간 3년, 연봉총액 2억4000만원, 이경은과는 계약기간 2년, 연봉총액 1억4000만원의 조건에 FA계약을 체결했다. 두 선수 모두 팀에 반드시 필요한 자원으로 너무 과하지도 않고 너무 적지도 않은 금액에 적절한 계약을 했다는 평가를 받았다.</p>
<p dmcf-pid="VDBqlyA0Oz" dmcf-ptype="general">비 시즌 동안 외부FA영입이 없었던 신한은행은 지난 5월1일 트레이드를 통해 유승희를 우리은행에 내주고 김정은의 보상선수로 우리은행으로 이적했던 가드 김지영을 영입했다. 물론 경험과 외곽슛에서는 프로에서 9시즌을 보낸 유승희가 한 수 앞서지만 스피드와 패스워크에서는 지난 시즌 평균 3.9개의 어시스트를 배달했던 김지영이 한 수 위다. 신한은행은 김지영이 장기적으로 이경은의 후계자로 성장해주길 기대하고 있다.</p>
<p dmcf-pid="fwbBSWcps7" dmcf-ptype="general">OK저축은행과 BNK 시절 세 시즌 연속 두 자리 수 득점을 기록했던 슈터 구슬은 신한은행으로 이적한 지난 시즌 5.3득점과 3점슛 성공률 27.3%의 성적으로 최근 6~7년 사이 가장 부진한 시즌을 보냈다. 김진영과 김아름이라는 경쟁자가 있는 데다가 2003년생 유망주 변소정도 호시탐탐 기회를 노리고 있는 만큼 구슬은 이번 시즌을 통해 농구팬들에게 자신의 입지와 존재감을 확실히 보여줄 필요가 있다. </p>
<p dmcf-pid="4xWyoj8CEu" dmcf-ptype="general">신한은행에는 김태연이라는 189cm의 신장을 가진 센터가 있지만 김태연은 지난 시즌 평균 출전시간이 12분03초에 머물렀다. 신한은행은 177cm의 김소니아가 골밑을 지키는 '스몰라인업'을 가동하는 시간이 많은 팀이다. 스몰 라인업이 위력을 발휘하려면 선수들이 코트에서 한 발 더 빨리 움직여야 한다. 신한은행 부임 세 번째 시즌을 맞는 구나단 감독이 선수단을 고루 활용하면서 팀 전력을 극대화하는 지도력이 필요한 시즌이라는 뜻이다.</p>
<p dmcf-pid="8MYWgA6hrU" dmcf-ptype="general">저작권자(c) 오마이뉴스(시민기자), 무단 전재 및 재배포 금지</p>
</section>
</div></p></section></div><h6>[Source : 오마이뉴스]</h6></div>
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