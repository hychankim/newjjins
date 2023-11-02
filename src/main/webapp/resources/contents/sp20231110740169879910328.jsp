
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
    <h3>‘SON 옆에 HWANG?’ 황희찬의 토트넘 이적설 등장…현재 경기력 반영</h3><h6>김환 기자  2023. 11. 1. 07:40</h6>
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
<section dmcf-sid="2WTrADMT5M">
<figure class="figure_frm origin_fig" dmcf-pid="VhIALN4IYx" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101074006182evmu.png" data-org-width="600" dmcf-mid="b4VBpzyPHd" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101074006182evmu.png" width="658"/></p>
</figure>
<div dmcf-pid="flCcoj8CHQ" dmcf-ptype="general">
<p>[포포투=김환]</p>
<br/>
<p>황희찬의 토트넘 훗스퍼 이적설이 등장했다.</p>
<br/>
<p>영국 ‘더 부트 룸’은 “토트넘은 지난 5월 황희찬과 연결됐다. 프리미어리그(PL) 57경기에서 8골을 넣은 황희찬과 연결된다고 해서 팀의 분위기가 좋아지지는 않았다. 그러나 지금의 상황은 다르다. 토트넘은 황희찬과 계약을 맺지 않았지만 맺어야 했을 수도 있다. 황희찬은 이번 시즌이 자신의 PL 커리어 중 최고가 될 것이라 확신했다. 그는 10경기에서 6골을 넣으며 이번 시즌 뛰어난 활약을 펼치고 있다. 엔제 포스테코글루 감독은 1월 이적시장을 앞두고 많은 고민을 해야 할 것으로 보인다”라고 했다.</p>
<br/>
<p>이어 매체는 “토트넘이 우승 경쟁을 이어간다면 겨울 이적시장에서 더 강해질 것이다. 토트넘은 해리 케인이 떠난 이후 아직 확실한 공격수를 영입하지 못했다. 주의가 필요한 포지션 중 하나다. 아마도 손흥민은 국가대표팀 동료인 황희찬에게 앞으로 몇 주 동안 좋은 말을 할 것이다”라며 이적설의 이유를 설명했다.</p>
<br/>
<p>황희찬은 최고의 시즌을 보내는 중이다. 매체의 설명처럼 PL 10경기에 출전해 6골을 터트렸다. 엘링 홀란드(11골), 손흥민, 모하메드 살라(이상 8골), 칼럼 윌슨(7골)에 이어 리그 득점 5위다. 이미 자신의 PL 커리어 하이 때와 득점 동률을 이룬 황희찬은 커리어 첫 PL 두 자릿수 득점에 도전하고 있다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="4ShkgA6hHP" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101074007833tzsy.jpg" data-org-width="600" dmcf-mid="KAtHvYkUHe" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101074007833tzsy.jpg" width="658"/></p>
</figure>
<div dmcf-pid="8TSDNkQSY6" dmcf-ptype="general">
<p>이런 상황에서 제기된 토트넘 이적설은 황희찬의 현재 경기력이 절정에 올랐다는 걸 대변한다. 다른 팀도 아닌 토트넘 이적설은 더욱 반갑다. 손흥민이 뛰고 있기 때문이다. 국가대표팀 동료인 손흥민과 황희찬이 한 팀에서 뛰는 모습은 상상만 해도 즐겁다.</p>
<br/>
<p>하지만 현실적으로 토트넘이 황희찬을 영입할 가능성은 상당히 낮은 게 사실이다. 우선 시즌이 한창인 1월에 핵심 자원을 매각하는 팀은 거의 없다. 황희찬이 이번 시즌 뛰어난 모습을 보여주고 있는 만큼, 울버햄튼 역시 엄청난 제안이 오지 않는 이상 황희찬을 지키려고 할 공산이 크다.</p>
<br/>
<p>토트넘이 굳이 황희찬을 영입할 이유도 많지 않다. 케인의 공백은 손흥민과 제임스 메디슨 등 다른 선수들이 힘을 합쳐 메우고 있다. 게다가 황희찬은 측면 자원이다. 기존 자원들이 추가로 부상을 당하지 않는 이상 측면 공격수를 더 영입할 이유는 없다.</p>
<br/>
<p>또한 황희찬은 손흥민과 마찬가지로 1월에 열리는 아시아축구연맹(AFC) 아시안컵에 차출될 전망이다. 황희찬의 토트넘 이적 가능성을 낮게 보는 이유 중 하나다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="6yvwjExvY8" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101074009061lhkx.jpg" data-org-width="600" dmcf-mid="9SCcoj8C5R" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101074009061lhkx.jpg" width="658"/></p>
</figure>
<div dmcf-pid="PWTrADMTZ4" dmcf-ptype="general">
<br/>
<p>김환 기자 hwankim14@fourfourtwo.co.kr</p>
<p>ⓒ 포포투(https://www.fourfourtwo.co.kr) 무단전재 및 재배포금지</p>
</div>
</section>
</div></p></section></div><h6>[Source : 포포투]</h6></div>
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