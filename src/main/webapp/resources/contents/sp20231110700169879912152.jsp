
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
    <h3>KS만 두 차례 경험한 김성욱도 놀랐다 "부담 없이 즐기는 분위기, 느낌 다르더라" [PO]</h3><h6>유준상 기자  2023. 11. 1. 07:00</h6>
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
<section dmcf-sid="BfEFI7T67Z">
<figure class="figure_frm origin_fig" dmcf-pid="b6rplBYx0X" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101070035208niob.jpg" data-org-width="1200" dmcf-mid="73NQpJBE0t" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101070035208niob.jpg" width="658"/></p>
</figure>
<p dmcf-pid="KYfDMInXuH" dmcf-ptype="general">(엑스포츠뉴스 수원, 유준상 기자) 와일드카드 결정전부터 단 한 번도 지지 않은 NC 다이노스가 KBO 포스트시즌 역사에 이름을 남겼다. 팬들과 전문가들은 물론이고 직접 더그아웃에서 뛰고 있는 선수들도 놀라움을 감추지 못한다.</p>
<p dmcf-pid="9G4wRCLZ0G" dmcf-ptype="general">NC는 31일 수원KT위즈파크에서 열린 2023 신한은행 SOL KBO 플레이오프 2차전에서 KT 위즈를 3-2로 꺾고 시리즈 전적 2승으로 한국시리즈 진출까지 1승만을 남겨놓게 됐다.</p>
<p dmcf-pid="2tMCLyA0uY" dmcf-ptype="general">또한 NC는 2020 KBO 한국시리즈 4차전 두산 베어스전부터 이어진 포스트시즌 연승을 '9'로 늘리면서 KBO 포스트시즌 최다연승 타이기록까지 세웠다. 해태 타이거즈(1987년 플레이오프 4차전~1988년 한국시리즈 3차전)와 어깨를 나란히 한 NC는 이제 2일 진행될 3차전까지 잡는다면 이 부문 신기록과 함께 3년 만의 한국시리즈 진출까지 확정한다.</p>
<p dmcf-pid="VFRhoWcpUW" dmcf-ptype="general">일반적으로 단기전을 치르는 팀이면 정규시즌 순위가 낮을수록 불리한 부분이 많다. 당장 NC와 KT만 놓고 봐도 준비 기간이 달랐다. NC는 정규시즌 이후 하루만 쉬고 곧바로 포스트시즌을 시작한 반면 KT는 3주간 재정비의 시간을 가지면서 전력을 가다듬었다. 가을야구 무대를 밟는 팀들이 한 계단이라도 위로 올라가서 시즌을 끝내고 싶은 이유다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="f3elgYkUpy" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101070036578xbmq.jpg" data-org-width="1200" dmcf-mid="zIOgVkQS71" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101070036578xbmq.jpg" width="658"/></p>
</figure>
<p dmcf-pid="4AZQpJBE0T" dmcf-ptype="general">그런데 올핸 흐름이 뭔가 다르다. 정규시즌 4위 팀 NC가 와일드카드 결정전에서 두산에 14-9로 승리한 이후 상승세를 탔고, SSG 랜더스와의 준플레이오프를 3연승으로 끝내면서 분위기를 끌어올렸다. 플레이오프를 준비할 시간을 나흘이나 벌었다는 건 팀 입장에서 큰 소득이었다.</p>
<p dmcf-pid="8c5xUibD3v" dmcf-ptype="general">더 높은 곳을 바라본 선수들은 플레이오프에서도 힘을 내고 있다. 1차전에서 9-5로 승리한 NC는 2차전에서도 1점 차 승리로 연승을 유지했고, 특히 9회말 2사 만루에서 유격수 김주원이 오윤석의 애매한 타구를 다이빙 캐치로 낚아채면서 그림같은 장면을 연출했다. 강인권 NC 감독은 "형들이 상황을 어렵게 만들었는데, 막내가 팀을 승리로 이끌었다"며 미소를 보였다.</p>
<p dmcf-pid="6k1MunKw3S" dmcf-ptype="general">2014년 LG 트윈스와의 준플레이오프부터 30경기 이상 포스트시즌에 출전한 외야수 김성욱은 현재 팀 분위기를 어떻게 느끼고 있을까. 김성욱은 2차전을 앞두고 "팀 분위기가 좋은 걸 잘 느끼고 있다. 선수들이 부담을 느끼거나 그런 건 하나도 없는 것 같고 정말 즐기는 분위기인 것 같다"며 "포스트시즌을 해봤지만, 올핸 느낌이 좀 다르다"고 밝혔다.</p>
<p dmcf-pid="Pw3dqgVsUl" dmcf-ptype="general">이어 그는 "예전에는 시즌을 시작할 때부터 팀이 상위권에 갈 수 있는 전력이었고, 그땐 나성범-에릭 테임즈-이호준-박석민으로 이어지는 중심타선도 있었다. 지금도 전력이 나쁜 건 아니지만, 정규시즌 개막 전에 팀 전력이 저평가됐던 게 선수들이 더 뭉치는 계기가 된 것 같다"며 "과거에는 뭔가 당연히 이겨야 한다는 느낌이었다면, 지금은 도전자의 입장으로 '한 번 해보자'는 느낌이다"고 덧붙였다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="Qr0JBafOph" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101070038044adlk.jpg" data-org-width="1200" dmcf-mid="qpktOuv8F5" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101070038044adlk.jpg" width="658"/></p>
</figure>
<p dmcf-pid="xmpibN4IpC" dmcf-ptype="general">플레이오프 2차전을 포함해 김성욱의 통산 포스트시즌 출전 경기 수는 33경기에 달한다. 팀에 포진된 젊은 선수들에 비하면 비교적 가을야구 경험이 많은 편에 속한다. 그렇다고 해서 후배들에게 특별한 얘기를 건넬 일은 없다. 김성욱은 "딱히 해줄 말은 없는데, 점수가 날 때마다 젊은 선수들의 흥이 올라서 '아직 끝나려면 멀었고, 조금만 침착하자'고 얘기하고 있다"고 웃었다.</p>
<p dmcf-pid="yLyV5QpazI" dmcf-ptype="general">준플레이오프 1차전에서 결승포를 쏘아 올린 김성욱은 준플레이오프 2차전과 플레이오프 1~2차전까지 모두 교체로 출전했으나 타석에 설 기회가 찾아오진 않았다. 그래도 김성욱은 언제든지 타격에 임할 준비를 하고 있다. 그는 "루틴을 계속 반복하고, 항상 긍정적으로 생각한다. 마인드 컨트롤을 하는 게 가장 좋은 것 같다"며 "워낙 형들이 잘하고 있기 때문에 (라인업을) 바꿀 필요는 없는 것 같아서 나는 하던 대로 그냥 뒤에서 준비하고 있는 게 맞는 것 같다"고 말했다.</p>
<p dmcf-pid="WoWf1xUN0O" dmcf-ptype="general">이제 팀의 한국시리즈 진출까지 남은 건 단 1승이다. 묵묵히 자신의 역할을 수행하고 싶은 김성욱은 "경기 후반에 나가고 있는데, 또 결정적인 상황이 찾아온다면 내 모습을 한번 보여주는 게 가장 큰 목표인 것 같다"고 앞으로의 활약을 다짐했다.</p>
<p dmcf-pid="YgY4tMuj3s" dmcf-ptype="general">사진=엑스포츠뉴스 DB</p>
<p dmcf-pid="GEtR7L9rzm" dmcf-ptype="general">유준상 기자 junsang98@xportsnews.com </p>
</section>
</div></p></section></div><h6>[Source : 엑스포츠뉴스]</h6></div>
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