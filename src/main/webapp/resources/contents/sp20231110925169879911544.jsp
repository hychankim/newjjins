
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
    <h3>“좀 잠잠하죠?” 이종열 단장의 웃음...조용하지만, 바쁘게 움직인다 [SS포커스]</h3><h6>김동영  2023. 11. 1. 09:25</h6>
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
<section dmcf-sid="V6vFOlg1eh">
<figure class="figure_frm origin_fig" dmcf-pid="fUcloj8CLC" dmcf-ptype="figure">
<p class="link_figure"><img alt="삼성 이종열 단장. 사진제공 | 삼성 라이온즈" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092544076vgyy.jpg" data-org-width="700" dmcf-mid="BHCZwOiHJy" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092544076vgyy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            삼성 이종열 단장. 사진제공 | 삼성 라이온즈
           </figcaption>
</figure>
<p dmcf-pid="4RGuSWcpMI" dmcf-ptype="general"><br/> [스포츠서울 | 김동영기자] “좀 잠잠하죠?”</p>
<p dmcf-pid="88Stsho5MO" dmcf-ptype="general">삼성의 신임 이종열(50) 단장이 바쁘게 움직이고 있다. 일본에서 박진만(47) 감독도 만나고 왔다. 한국에 돌아와서도 분주하기는 마찬가지. 단, 바빠도 행보 자체는 조용히 진행중이다.</p>
<p dmcf-pid="6LtKG5mBRs" dmcf-ptype="general">이종열 단장은 최근 일본을 다녀왔다. 미야자키 교육리그 현장을 찾았다. 여기서 박진만 감독과 만났다. 박진만 감독은 이병규 수석코치와 함께 미야자키로 날아가 선수단의 경기를 지켜봤다. 이후 오키나와로 이동, 마무리 캠프를 진행하고 있다.</p>
<p dmcf-pid="PrKRuBYxim" dmcf-ptype="general">이종열 단장은 “박진만 감독님과 만나 이야기를 나눴다. 속속들이 설명할 수는 없지만, 건설적인 이야기가 오갔다. 기본적으로 박진만 감독님이 원하는 대로 진행할 계획이다”고 설명했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="Q8Stsho5Rr" dmcf-ptype="figure">
<p class="link_figure"><img alt="삼성 박진만 감독이 31일 수원KT위즈파크에서 열린 2023 KBO리그 KT와 경기를 지켜보고 있다. 2023. 8. 31. 수원 | 최승섭기자 thunder@sportsseoul.com" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092544497dobv.jpg" data-org-width="700" dmcf-mid="b1EvacPlRT" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092544497dobv.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            삼성 박진만 감독이 31일 수원KT위즈파크에서 열린 2023 KBO리그 KT와 경기를 지켜보고 있다. 2023. 8. 31. 수원 | 최승섭기자 thunder@sportsseoul.com
           </figcaption>
</figure>
<p dmcf-pid="x6vFOlg1Jw" dmcf-ptype="general"><br/> 이종열 단장은 지난달 16일 삼성의 단장으로 선임됐다. 줄곧 내부에서 단장을 찾았던 삼성이 처음으로 외부에서 데려왔다. 프로 출신 단장은 창단 후 최초다.</p>
<p dmcf-pid="yvQaV63onD" dmcf-ptype="general">‘공부하는 지도자’라 했다. 경험이 풍부하다. 프로에서 선수로 19년을 뛰었다. 프로와 국가대표팀에서 코치로 오랜 시간 일했고, 해설위원으로서 경험 또한 풍부하다. 이런 이종열 단장에게 삼성 재건을 맡겼다.</p>
<p dmcf-pid="WYec6MujiE" dmcf-ptype="general">취임 후 이종열 단장은 “할 일이 많다”고 했다. 일단 육성을 천명했다. 1군도 하위권이지만, 퓨처스 또한 좋지 않은 것은 마찬가지다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="YPT3ISatJk" dmcf-ptype="figure">
<p class="link_figure"><img alt="삼성 이종열 단장. 사진제공 | 삼성 라이온즈" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092544902lhff.jpg" data-org-width="700" dmcf-mid="KjIXDsJGJv" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092544902lhff.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            삼성 이종열 단장. 사진제공 | 삼성 라이온즈
           </figcaption>
</figure>
<p dmcf-pid="GMYUlyA0nc" dmcf-ptype="general"><br/> 일단 마무리 캠프는 시작됐다. 지난 27일 비행기에 몸을 실었고, 오키나와에서 구슬땀을 흘리고 있다. 이쪽은 박진만 감독의 업무다. 이종열 단장의 일은 또 따로 있다.</p>
<p dmcf-pid="HEqQ07T6MA" dmcf-ptype="general">코칭스태프 구성, 선수단 정리, FA 전략, 2차 드래프트 전략 등이 1차적이다. 길게는 경산 볼파크 재정비도 추진하고 있다. 퓨처스를 강하게 만들기 위해 필요한 일이다. 이를 위해 친정 격인 LG의 이천 챔피언스파크 견학도 한다.</p>
<p dmcf-pid="XSPg28FLRj" dmcf-ptype="general">당장은 코칭스태프에 관심이 쏠릴 수밖에 없다. 정대현 동의대 코치를 퓨처스 감독으로 앉혔다. 강영식 투수코치도 영입했다. 추가 영입도 계속 추진하고 있다. 영입 이야기가 나오는 코치들이 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="Zi5BWXwzMN" dmcf-ptype="figure">
<p class="link_figure"><img alt="삼성 박진만 감독이 30일 인천SSG랜더스필드에서 2023 KBO리그 SSG전에서 그라운드를 응시하고 있다. 2023.05.30. 문학 | 강영조기자 kanjo@sportsseoul.com" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092545339lhru.jpg" data-org-width="700" dmcf-mid="9msGkreWiS" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092545339lhru.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            삼성 박진만 감독이 30일 인천SSG랜더스필드에서 2023 KBO리그 SSG전에서 그라운드를 응시하고 있다. 2023.05.30. 문학 | 강영조기자 kanjo@sportsseoul.com
           </figcaption>
</figure>
<p dmcf-pid="5a0VZFI9ea" dmcf-ptype="general"><br/> 이종열 단장은 “아직 포스트시즌이 진행중인 것도 있고, 논의가 진행중인 부분도 있다”며 “밖에서 보기에는 잠잠해 보일 수도 있다. 그러나 그냥 있는 것은 아니다. 한국과 일본을 왔다갔다 하고 있다. 조금만 더 기다려달라”며 웃었다. 육성에 최적화 된 코치진을 선임하고자 한다. 당연히 심사숙고가 필요한 부분이다.</p>
<p dmcf-pid="1Npf53C2ig" dmcf-ptype="general">무엇보다 이종열 단장이 박진만 감독에게 힘을 실어주고자 하는 모습에 눈길이 쏠린다. “결국 감독님이 잘되는 것이 나도 잘되는 것 아니겠나”고 강조했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="tg32XtOKMo" dmcf-ptype="figure">
<p class="link_figure"><img alt="삼성 이종열 단장. 사진제공 | 삼성 라이온즈" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092545678edtt.jpg" data-org-width="700" dmcf-mid="2gF9H1sbnl" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SPORTSSEOUL/20231101092545678edtt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            삼성 이종열 단장. 사진제공 | 삼성 라이온즈
           </figcaption>
</figure>
<p dmcf-pid="Fc76FUS4nL" dmcf-ptype="general"><br/> 기본적으로 현장과 프런트는 구분돼야 한다. 그러나 서로 얼마든지 관여할 수 있는 부분이기도 하다. 이 과정에서 감독과 단장이 틀어지는 경우도 종종 있다. 절대 지양해야 할 부분이다. 이 측면이라면, 일단 박진만 감독-이종열 단장의 조화는 괜찮아 보인다.</p>
<p dmcf-pid="3KsGkreWnn" dmcf-ptype="general">물론 시간이 필요하다. 이제 시작 단계다. 뚜렷하게 성과가 나올 시기도 아니다. 단장 선임 후 이제 보름 정도 지났을 뿐이다. 삼성 관계자는 “이종열 단장이 분주하게 움직이고 있다”며 “일본에 다녀왔고, 여러 업무를 추진하고 있다”고 귀뜸했다.</p>
<p dmcf-pid="0yMj4QpaLi" dmcf-ptype="general">보름이면 팀 파악하기에도 부족한 시간일 수 있다. 일본까지 다녀왔다. 과연 이종열 단장이 어떤 결과물을 내놓을까. 팬들의 관심이 집중되고 있다. raining99@sportsseoul.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠서울]</h6></div>
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