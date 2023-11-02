
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
    <h3>토트넘 큰 결단...'LW' 손흥민 후계자 물색, 영입 시점은 고민</h3><h6>김대식 기자  2023. 11. 1. 07:35</h6>
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
<section dmcf-sid="uns0G5mBma">
<div dmcf-pid="7bdCkreWOg" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="609261" data-type="photo" dmcf-pid="zZKaRibDIo" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/interfootball/20231101073505774xdrm.jpg" data-org-width="650" dmcf-mid="pVh753C2Ij" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/interfootball/20231101073505774xdrm.jpg" width="658"/></p>
</figure>
<div dmcf-pid="qAvBFUS4sL" dmcf-ptype="general">
<div>
</div>
<p>[인터풋볼] 김대식 기자 = 토트넘은 좌측 윙포워드를 새롭게 영입할 계획이다.</p>
</div>
<p dmcf-pid="BEW9pzyPrn" dmcf-ptype="general">영국 '풋볼 인사이더'에서 토트넘 전담 기자로 활동하는 폴 오 키프는 31일(한국시간) 개인 SNS를 통해서 토트넘의 향후 이적시장 계획에 대해서 언급했다.</p>
<p dmcf-pid="bDY2UqWQDi" dmcf-ptype="general">한 토트넘 팬이 그에게 "현재 토트넘의 좌측 윙포워드 자원을 고려할 때 다가오는 1월 이적시장에 팀이 좌측 윙포워드 영입을 고려하는가? 마노르 솔로몬과 이반 페리시치는 부상이고, 브리안 힐은 여전히 불안하다. 히샬리송은 이미 바닥을 보여줬다"고 물었다.</p>
<p dmcf-pid="KwGVuBYxsJ" dmcf-ptype="general">그러자 폴 오 키프는 "그럴 수 있다. 토트넘은 이미 영입 목록을 가지고 있다. 하지만 토트넘이 1월에 데려올 것인지 여름 이적시장에 영입할 것인지가 문제다"고 언급했다.</p>
<p dmcf-pid="9HBoxdqkmd" dmcf-ptype="general">손흥민이 2016-17시즌부터 팀의 좌측 윙포워드로 자리매김한 뒤로, 토트넘은 좌측 공격에 대한 고민은 한 적이 없다. 손흥민의 백업을 검토한 뒤에 영입한 적이 있었어도 손흥민과 경쟁을 붙이기 위한 선수를 데려오지는 않았다. 그럴 필요도 없었으며 손흥민 이상의 윙포워드를 데려오는 건 토트넘에게 현실적으로 불가능한 일이었다. 그보다는 다른 포지션을 보강하는데 토트넘이 할 수 있는 최선의 선택이었다.</p>
<p dmcf-pid="2XbgMJBEEe" dmcf-ptype="general">하지만 2023-24시즌부터 토트넘은 좌측 윙포워드 자리를 고민해야 됐다. 히샬리송이 스트라이커 자리에서 부진하면서 손흥민이 좌측에 있다가 중앙으로 이동했고, 이는 엔제 포스테코글루 감독 체제에서 최고의 선택이 됐다. 스트라이커 자리에서의 손흥민이 보여주는 경쟁력을 보면 포스테코글루 감독이 토트넘과 이별하지 않는 이상, 손흥민은 계속해서 중앙에서 뛸 것으로 보인다.</p>
<div dmcf-pid="VZKaRibDOR" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="609262" data-type="photo" dmcf-pid="fzMsjExvrM" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/interfootball/20231101073507237fvdl.jpg" data-org-width="650" dmcf-mid="UtKaRibDIN" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/interfootball/20231101073507237fvdl.jpg" width="658"/></p>
</figure>
<div dmcf-pid="4qROADMTEx" dmcf-ptype="general">
<div>
</div>
<p>손흥민이 비워둔 좌측 윙포워드 자리는 히샬리송이 출전하고 있다. 스트라이커 자리에 있을 때보다는 경기력이 괜찮은 편이지만 정통 윙어가 아닌 탓에 한계점을 드러내고 있다. 득점력 문제도 여전하다.</p>
</div>
<p dmcf-pid="8BeIcwRyEQ" dmcf-ptype="general">히샬리송을 대신해서 뛸 수 있는 선수는 현재 부상으로 빠져있는 솔로몬 정도다. 페리시치는 장기 부상을 당했고, 힐은 아직 프리미어리그(PL)에서 경쟁력을 보여주지 못했다. 히샬리송과 솔로몬만으로는 토트넘이 우승을 향해 나아간다고 가정했을 때 아쉬운 게 사실이다.</p>
<p dmcf-pid="6S0RV63oIP" dmcf-ptype="general">히샬리송의 아쉬운 모습 속에도 불구하고, 토트넘이 무턱대로 새로운 윙포워드를 영입할 수 없는 이유로는 타 포지션 보강 때문으로 추측된다. 2달 뒤에 열릴 이적시장에서 토트넘은 여전히 센터백을 최우선 타깃으로 삼고 있는 것으로 알려졌다.</p>
<p dmcf-pid="PvpefP0gw6" dmcf-ptype="general">크리스티안 로메로와 미키 판 더 펜과 경쟁할 수 있는 선수를 데려오는 건 당연히 많은 돈이 필요하다. 해리 케인 매각 비용이 남았다고 해도, 토트넘은 1월 이적시장에서 역사적으로 많은 돈을 투자한 적이 많지 않다.</p>
</section>
</div></p></section></div><h6>[Source : 인터풋볼]</h6></div>
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