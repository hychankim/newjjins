
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
    <h3>‘38년 만의 우승이 이렇게 어렵나’ 통한의 실책에 무너지다. 1차전 승리→2·3차전 패배 '위기'</h3><h6>길준영  2023. 11. 1. 06:00</h6>
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
<section dmcf-sid="p25sc5mBLj">
<figure class="figure_frm origin_fig" dmcf-pid="UYEMfExvRN" dmcf-ptype="figure">
<p class="link_figure"><img alt="오릭스 버팔로즈 공식 X 캡쳐" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060040669ovwo.jpg" data-org-width="650" dmcf-mid="t1ZYhqWQiE" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060040669ovwo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            오릭스 버팔로즈 공식 X 캡쳐
           </figcaption>
</figure>
<p dmcf-pid="uPpSmplfna" dmcf-ptype="general">[OSEN=길준영 기자] 한신 타이거즈가 일본시리즈에서 1차전 승리 이후 2차전과 3차전에서 연달아 패했다. </p>
<p dmcf-pid="7BGDaGEuMg" dmcf-ptype="general">한신은 지난 31일 일본 효고현 니시노미야시 한신 고시엔 구장에서 열린 일본시리즈 3차전 오릭스 버팔로즈와의 경기에서 4-5로 패했다. 시리즈 전적은 오릭스가 2승 1패로 앞서갔다. </p>
<p dmcf-pid="zBGDaGEuLo" dmcf-ptype="general">오릭스 홈구장 교세라돔에서 열린 1차전과 2차전에서 1승 1패를 나눠가진 한신은 3차전 홈구장으로 돌아왔다. 2회말에는 오오야마 유스케와 쉘든 노이지의 안타로 1사 1, 3루 찬스를 잡았고 사카모토 세이시로의 1타점 진루타로 선취점을 뽑았다. </p>
<p dmcf-pid="q3hgeho5dL" dmcf-ptype="general">하지만 오릭스는 곧바로 반격에 나섰다. 4회초 톤구 유마가 동점 솔로홈런을 터뜨리며 승부를 원점으로 되돌렸다. 5회에는 쿠레바야시 코타로와 와카츠키 켄야가 연속안타로 무사 1, 3루 찬스를 만들었고 히로오카 타이시 1타점 진루타로 역전에 성공했다. 아즈마 코헤이의 번트타구에는 투수 실책이 나왔고 나카가와 케이타는 2루수 뜬공으로 잡혔지만 무네 유마 2타점 2루타가 터지며 경기는 오릭스쪽으로 기울었다. 한신은 실책이 나오지 않았다면 추가실점을 막을 수 있었지만 승기를 내주고 말았다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="B60lr0hVdn" dmcf-ptype="figure">
<p class="link_figure"><img alt="한신 타이거즈 공식 인스타그램 캡쳐" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060040858zmqs.png" data-org-width="650" dmcf-mid="FSRP9A6hnk" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060040858zmqs.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            한신 타이거즈 공식 인스타그램 캡쳐
           </figcaption>
</figure>
<p dmcf-pid="bAPpZP0gMi" dmcf-ptype="general">오릭스의 공격은 계속됐다. 6회에도 톤구의 안타와 마윈 곤잘레스의 볼넷, 쿠레바야시의 희생번트로 1사 2, 3루 찬스를 만들었고 와카츠키가 1타점 희생플라이로 한 점을 더 추가했다. </p>
<p dmcf-pid="K4FCDFI9eJ" dmcf-ptype="general">패색이 짙어진 한신은 7회 뒷심을 발휘했다. 선두타자 사카모토와 키나미 세이야가 연속안타로 무사 1, 2루 찬스를 만들었다. 대타 이토하라 켄토는 중견수 뜬공으로 물러났지만 치카모토 코지가 볼넷을 골라내 만루 찬스를 연결했고 나카노 타쿠무의 1타점 진루타와 모리시타 쇼타의 2타점 적시타로 1점차까지 따라붙었다. </p>
<p dmcf-pid="9eqYhqWQMd" dmcf-ptype="general">한신은 9회 선두타자 대타 하라구치 후미히토가 볼넷을 골라내며 마지막 찬스를 만들었다. 치카모토는 진루타로 1사 2루를 연결했지만 나카노가 삼진으로 물러났다. 모리시타는 볼넷을 골라내며 2사 1, 2루를 만들었지만 오오야마가 삼진을 당하며 마지막 기회를 살리지 못하고 경기가 끝났다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="2n9ZT9Xede" dmcf-ptype="figure">
<p class="link_figure"><img alt="한신 타이거즈 공식 인스타그램 캡쳐" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060041375lhnl.png" data-org-width="650" dmcf-mid="3LsDaGEudc" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060041375lhnl.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            한신 타이거즈 공식 인스타그램 캡쳐
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Vweq3ezcJR" dmcf-ptype="figure">
<p class="link_figure"><img alt="오릭스 버팔로즈 공식 X 캡쳐" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101060042638fidu.jpg" data-org-width="650" dmcf-mid="0mcQ2cPlnA" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101060042638fidu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            오릭스 버팔로즈 공식 X 캡쳐
           </figcaption>
</figure>
<p dmcf-pid="fAPpZP0gLM" dmcf-ptype="general">1985년 처음이자 마지막 일본시리즈 우승을 차지한 한신은 38년 만의 우승에 도전하고 있다. 하지만 1차전에서 일본 최고의 에이스 야마모토 요시노부를 공략하는데 성공하고도 이후 2경기에서 모두 패하고 말았다. </p>
<p dmcf-pid="4M7yI7T6Rx" dmcf-ptype="general">선발투수 이토 마사시는 5이닝 5피안타(1피홈런) 2탈삼진 4실점(2자책) 패전을 기록했다. 타선에서는 키나미 세이야가 3안타 경기를 했고 모리시타 쇼타와 쉘든 노이지가 멀티히트를 때려냈지만 팀 패배를 막지 못했다. 5회 실책으로 이닝을 마무리하지 못하고 3실점으로 이어진 것이 아쉬웠다. </p>
<p dmcf-pid="8dBGlBYxMQ" dmcf-ptype="general">오릭스는 선발투수 아즈마 코헤이가 5이닝 5피안타 1볼넷 4탈삼진 1실점 호투로 승리를 기록했다. 마무리투수 히라노 요시히사는 1이닝 2볼넷 2탈삼진 무실점으로 아슬아슬하게 승리를 지키며 세이브를 올렸다. 타선에서는 모리 토모야와 톤구 유마가 멀티히트로 활약했다. </p>
<p dmcf-pid="6tILMInXJP" dmcf-ptype="general">일본매체 주니치 신문은 “한신이 3차전에서 패했지만 오카다 감독은 경기 이후를 내다보며 운영을 했다”라고 전했다. 한신 오카다 아키노부 감독은 “1승을 추월 당했지만 또 내일이 있다. 여러가지 생각을 많이 하고 있다”라며 역전을 다짐했다. /fpdlsl72556@osen.co.kr</p>
</section>
</div></p></section></div><h6>[Source : OSEN]</h6></div>
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