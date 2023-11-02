
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
    <h3>SSG 새 사령탑에 뜬소문만 무성, 모기업 간섭 의혹까지 제기</h3><h6>CBS노컷뉴스 김조휘 기자  2023. 11. 1. 08:03</h6>
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
<section dmcf-sid="Vk8qxdqkaN">
<figure class="figure_frm origin_fig" dmcf-pid="fPtypzyPAa" dmcf-ptype="figure">
<p class="link_figure"><img alt="SSG와 계약 해지한 김원형 감독. 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/nocut/20231101080328619aufo.jpg" data-org-width="710" dmcf-mid="KhjbRibDgc" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/nocut/20231101080328619aufo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            SSG와 계약 해지한 김원형 감독. 연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="4uhETGEuAg" dmcf-ptype="general">프로야구 SSG의 차기 감독 선임을 둘러싼 여러 소문이 쏟아지고 있다. 하지만 SSG는 이를 정면 반박했다.</p>
<p dmcf-pid="8eUXq9Xeco" dmcf-ptype="general">SSG는 10월31일 김원형 감독과 계약 해지를 발표했다. 그러면서 보도자료를 통해 "팀 운영 전반과 선수단 세대교체 등 변화와 혁신이 필요하다고 판단했다"면서 "팀을 쇄신하고 더욱 사랑받는 강한 팀으로 변모시키기 위해서 변화가 불가피했다"고 밝혔다.</p>
<p dmcf-pid="661T07T6NL" dmcf-ptype="general">SSG는 올해 정규 시즌을 3위로 마치고 준플레이오프에 직행했다. 하지만 준플레이오프에서 NC에 3경기 만에 무릎을 꿇고 가을 야구를 조기에 마감했다.</p>
<p dmcf-pid="Pob3V63oon" dmcf-ptype="general">김원형 감독과 계약 해지가 준플레이오프 탈락에 따른 결정이 아니냐는 추측이 있었지만, SSG는 이를 적극 해명했다. SSG는 "어렵고 힘든 결정이었다. 단언컨대 성적으로 인한 계약 해지는 절대 아니다"라고 선을 그었다. 이어 "먼저 지난 3년간 팀에 공헌해 주신 감독님께 감사드린다"면서 "이러한 결정을 내린 부분에 대해서 매우 송구스럽다"고 전했다.</p>
<p dmcf-pid="QmM2Jo2mji" dmcf-ptype="general">김원형 감독은 지난해 정규 시즌에서 SSG의 '와이어 투 와이어' 우승을 이끌었고, 한국 시리즈까지 제패하며 창단 첫 통합 우승을 달성했다.</p>
<p dmcf-pid="x61T07T6oJ" dmcf-ptype="general">SSG는 키움과 한국 시리즈 5차전을 앞두고 김원형 감독과 재계약을 체결할 정도로 두터운 신뢰를 보였다. 당시 김원형 감독의 계약 조건은 3년 총액 22억 원이었는데, 현역 감독 최고 대우이자 첫 번째 재계약 감독으로도 역대 최고 대우였다.</p>
<p dmcf-pid="yvoxjExvNd" dmcf-ptype="general">그런데 불과 1년 만에 계약 해지를 결정해 큰 충격을 안겼다. SSG는 "당초 선수 및 코칭스태프 구성에 대한 변화를 주려 했으나, 그 범위를 뛰어넘어 현장 리더십 교체까지 단행하게 됐다"면서 "포스트 시즌 종료 후 내부적으로 냉정한 리뷰를 치열하게 진행했고, 지속적으로 발전하는 팀을 위해서는 변화와 혁신이 필요하다고 봤다"고 설명했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="WTgMADMTae" dmcf-ptype="figure">
<p class="link_figure"><img alt="시구하는 박찬호. 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/nocut/20231101080330149jyuk.jpg" data-org-width="710" dmcf-mid="9jk2Jo2mNA" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/nocut/20231101080330149jyuk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            시구하는 박찬호. 연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="YGAJDsJGaR" dmcf-ptype="general">SSG는 "다양한 감독 후보군을 선정해 인선 작업을 시작할 계획"이라고 전했다. 그리고 이날 오후 한 매체는 SSG의 신임 감독으로 '코리안 특급' 박찬호가 물망에 오른 것으로 알려졌다고 보도했다.</p>
<p dmcf-pid="GQFWUqWQjM" dmcf-ptype="general">하지만 SSG 측은 해당 보도를 전면 부인하고 있다. SSG 관계자는 "전혀 사실이 아니다. 오늘 계약 해지를 결정했고, 아직 아무 것도 정해진 게 없는 상황이다"라면서 "현재 새 감독 후보들을 추리는 과정이며, 해당 기사는 근거 없는 보도다"라고 반박했다.</p>
<p dmcf-pid="HRpHzKHRax" dmcf-ptype="general">여기에 베테랑 추신수까지 신임 감독 후보로 거론된 데 대해서도 SSG 구단은 극구 부인했다. 추신수는 준플레이오프를 마치고 은퇴를 고민하는 듯한 발언을 남긴 바 있지만, 아직 은퇴를 공식화한 상태는 아니다. 그리고 설령 은퇴를 결심해도 지도자 경험 없이 곧바로 1군 감독 지휘봉을 가능성은 높지 않다.</p>
<p dmcf-pid="XDPbRibDkQ" dmcf-ptype="general">SSG의 새 사령탑에 대한 소문만 무성한 상황이다. 하지만 김원형 감독의 계약 해지가 발표되자마자 쏟아진 루머인 만큼 신뢰도는 높지 않은 것으로 보인다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="ZvoxjExvoP" dmcf-ptype="figure">
<p class="link_figure"><img alt="준플레이오프에서 탈락한 SSG. 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/nocut/20231101080331680zzfu.jpg" data-org-width="710" dmcf-mid="2PSdEmdYoj" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/nocut/20231101080331680zzfu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            준플레이오프에서 탈락한 SSG. 연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="5nqt94tna6" dmcf-ptype="general">구단이 강조한 것처럼 가장 시급한 문제는 세대교체다. SSG는 추신수, 한유섬 등 베테랑 야수들이 타선의 주축을 이루고 있고, 불펜에는 노경은, 고효준 등 30대를 훌쩍 넘긴 선수들이 버티고 있다. 최근에는 눈에 띄는 유망주를 발굴하지 못해 라인업은 갈수록 고령화가 되고 있다.</p>
<p dmcf-pid="1N2U8xUNg8" dmcf-ptype="general">감독을 교체한다고 세대교체가 이뤄지는 건 아니다. 하지만 SSG가 '변화와 혁신'을 강조하며 감독 교체 작업에 돌입한 만큼 대대적인 변화가 예상된다.</p>
<p dmcf-pid="tgK0fP0gk4" dmcf-ptype="general">SSG가 새 감독 선임 후 확실한 변화를 꾀하지 않는다면 모기업의 단순한 개입으로 볼 수밖에 없다. 야구계에서는 이미 김원형 감독의 계약 해지를 두고 구단주의 개입이 아니냐는 관측이 나오고 있다.</p>
<p dmcf-pid="Fc4zQezcAf" dmcf-ptype="general">SSG 정용진 구단주는 청라 돔구장 건립 등 야구단 운영에 많은 관심을 보이고 있다. 지원적인 부분에서는 바람직하지만 애정이 과하면 집착이 될 수 있다. 모기업의 간섭 의혹을 벗으려면 열정과 냉정 사이를 지켜야 한다.</p>
<p dmcf-pid="3k8qxdqkcV" dmcf-ptype="general">그동안 KBO 리그에서는 모기업의 내정간섭으로 팀이 와해된 사례가 적잖게 나타났다. 사령탑 교체를 결정한 SSG가 어떤 행보를 보일지 지켜볼 일이다.</p>
<div dmcf-pid="09YIZFI9c2" dmcf-ptype="general">
<strong>※CBS노컷뉴스는 여러분의 제보로 함께 세상을 바꿉니다. 각종 비리와 부당대우, 사건사고와 미담 등 모든 얘깃거리를 알려주세요.</strong>
<ul>
<li><strong>이메일 :</strong><span><span>jebo@cbs.co.kr</span></span></li>
<li><strong>카카오톡 :</strong><span>@노컷뉴스</span></li>
<li><strong>사이트 :</strong><span>https://url.kr/b71afn</span></li>
</ul>
</div>
<p dmcf-pid="pWNekreWa9" dmcf-ptype="general">CBS노컷뉴스 김조휘 기자 startjoy@cbs.co.kr</p>
<p dmcf-pid="U61T07T6NK" dmcf-ptype="general"><span>▶ 기자와 카톡 채팅하기</span><span>▶ 노컷뉴스 영상 구독하기</span> </p>
</section>
</div></p></section></div><h6>[Source : 노컷뉴스]</h6></div>
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