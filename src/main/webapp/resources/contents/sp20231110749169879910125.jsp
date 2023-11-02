
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
    <h3>텐 하흐의 눈은 다 틀렸나...'6757억 지출' 완벽한 영입 성공은 0명</h3><h6>김대식 기자  2023. 11. 1. 07:49</h6>
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
<section dmcf-sid="VwEDADMTDf">
<div dmcf-pid="fANjoj8CsV" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="609263" data-type="photo" dmcf-pid="4jaNLN4Iw2" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/interfootball/20231101074914979uthm.jpg" data-org-width="650" dmcf-mid="9x86V63om8" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/interfootball/20231101074914979uthm.jpg" width="658"/></p>
</figure>
<div dmcf-pid="8ANjoj8Cs9" dmcf-ptype="general">
<div>
</div>
<p>[인터풋볼] 김대식 기자 = 지출의 관점에서 본다면 에릭 텐 하흐 감독은 비판을 피해갈 수 없다.</p>
</div>
<p dmcf-pid="68f494tnOK" dmcf-ptype="general">영국 '풋볼 데일리'는 31일(한국시간) 텐 하흐 감독 체제에서 맨체스터 유나이티드가 어떤 선수를 얼마를 주고 영입했는지를 분석했다. 갑자기 텐 하흐 감독 체제에서의 영입을 검토한 이유는 비판적인 의견이 나올 수밖에 없는 현실이기 때문이다.</p>
<p dmcf-pid="P64828FLwb" dmcf-ptype="general">텐 하흐 감독이 맨유의 지휘봉을 잡은 뒤로 영입한 선수는 타릴 말라시아, 크리스티안 에릭센, 리산드로 마르티네스, 카세미루, 안토니, 메이슨 마운트, 안드레 오나나, 라스무스 회이룬, 알타이 바인드르, 조니 에반스까지 총 10명이다.</p>
<p dmcf-pid="QP86V63orB" dmcf-ptype="general">이적료 없이 영입한 에릭센과 에반스를 제외한 8명을 데려오는데 무려 4억 1090만 파운드(약 6757억 원)를 지출했다. 선수 1명을 영입하는데 평균적으로 한화로 845억 정도를 지출한 셈이다. 아무리 이적시장 인플레이션 현상이 강하게 발생하고 있다고 해도, 선수 1명을 영입할 때마다 큰 돈을 지출했다는 걸 부정할 수는 없다.</p>
<p dmcf-pid="xTSvCvNFrq" dmcf-ptype="general">그런데 10명의 선수 중 성공적인 영입이라고 평가할 수 있는 선수는 몇 명이나 될까. 2022-23시즌만 기준으로 놓고 본다면 영입들이 대부분 성공했다고 평가를 받았다. 이적료 없이 데려와 팀의 주축으로 쓴 에릭센부터 월드 클래스 미드필더의 존재감을 보여준 카세미루, 단신 센터백에 대한 선입견을 깨버린 리산드로까지는 괜찮았다.</p>
<div dmcf-pid="yQ6PfP0gsz" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="609264" data-type="photo" dmcf-pid="WxPQ4Qpar7" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/interfootball/20231101074916160azls.jpg" data-org-width="650" dmcf-mid="242VbV5JO4" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/interfootball/20231101074916160azls.jpg" width="658"/></p>
</figure>
<div dmcf-pid="YDkEjExvmu" dmcf-ptype="general">
<div>
</div>
<p>실패작은 가장 큰 돈을 투자한 안토니였다. 아약스 시절부터 지적받던 고집스러운 플레이 패턴과 뛰어나지 않은 속도과 신체조건에서 오는 아쉬운 경쟁력 문제가 고스란히 드러났다. 말라시아는 성공도, 실패도 아니었다. 앞서 언급한 세 명의 선수도 2023-24시즌 들어서는 경기력이나 부상 등의 문제로 비판을 받고 있는 실정이다.</p>
</div>
<p dmcf-pid="GwEDADMTwU" dmcf-ptype="general">문제는 2023-24시즌 영입생들이다. 등번호 7번까지 준 마운트는 존재감이 전혀 없다. 회이룬은 매 경기 가능성만 보여주고 있지만 효율은 저조하다. 다비드 데 헤아를 잡지 않고 데려온 오나나를 두고는 시선이 엇갈리고 있다. 제일 괜찮은 영입생이 레스터 시티에서 방출당했다가 운이 좋게 합류한 에반스라는 게 맨유의 처참한 현실이다.</p>
<p dmcf-pid="HrDwcwRymp" dmcf-ptype="general">성공보다는 실패한 영입생이 많아지면서 텐 하흐 감독도 비판을 피해갈 수 없게 됐다. 현재 맨유는 텐 하흐 감독이 요구하는 선수들만 영입해주고 있는 상황이라 영입 실패는 온전히 감독 책임이다. 부상자가 많고, 구단의 인수 문제로 대외적으로도 시끄럽다고 해도 텐 하흐 감독도 분명 문제가 있는 건 사실이다.</p>
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