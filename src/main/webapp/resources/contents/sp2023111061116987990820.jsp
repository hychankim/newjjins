
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
    <h3>[442.review] ‘조규성 풀타임’ 미트윌란, 코펜하겐에 0-1 패…덴마크컵 8강행 좌절</h3><h6>김환 기자  2023. 11. 1. 06:11</h6>
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
<section dmcf-sid="QahoG4tnZB">
<figure class="figure_frm origin_fig" dmcf-pid="xNlgH8FLHq" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=미트윌란" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061143705kqvq.jpg" data-org-width="600" dmcf-mid="V6cXQsJGXf" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061143705kqvq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=미트윌란
           </figcaption>
</figure>
<div dmcf-pid="yuQpnTj3Yz" dmcf-ptype="general">
<p>[포포투=김환]</p>
<br/>
<p>조규성이 풀타임을 소화한 가운데 미트윌란이 코펜하겐에 패배하며 컵 대회 8강행이 좌절됐다.</p>
<br/>
<p>미트윌란은 1일 오전 4시 15분(한국시간) 덴마크 코펜하겐에 위치한 파켄 스타디움에서 열린 2023-24시즌 덴마크컵(DBU 포칼렌) 16강에서 코펜하겐에 0-1로 패배했다. 이번 패배로 미트윌란은 대회 16강에서 탈락했다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="W7xULyA0Z7" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=코펜하겐" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061145261jfog.png" data-org-width="544" dmcf-mid="fkOxCzyP1V" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061145261jfog.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=코펜하겐
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Y6N4r0hVGu" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=미트윌란" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061146889mogw.png" data-org-width="600" dmcf-mid="4aZA1xUNY2" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061146889mogw.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=미트윌란
           </figcaption>
</figure>
<div dmcf-pid="GPj8mplfYU" dmcf-ptype="general">
<p>코펜하겐은 4-3-3 포메이션을 사용했다. 곤살베스, 코르넬리우스, 라르손, 회이룬, 폴크, 레라허, 쇠렌센, 딕스, 바브르, 안케르센이 선발로 출전했고 그라바라가 골키퍼 장갑을 꼈다.</p>
<br/>
<p>원정팀 미트윌란은 4-4-2 포메이션으로 맞섰다. 조규성, 브륀힐센, 심시르, 기고비치, 올손, 쇠렌센, 파울리뉴, 베흐, 잉가손, 달스가르드가 선발로 나섰고 골문은 프라이슬이 지켰다. 이한범은 벤치에서 경기를 시작했다.</p>
<br/>
<p>코펜하겐이 경기 시작을 알렸다. 전반 3분 후방에서 날아온 긴 패스를 코르넬리우스가 가슴으로 받은 뒤 수비와의 경합을 이겨내고 오른발 슈팅을 시도했다. 그러나 코르넬리우스의 슈팅은 크게 벗어났다. 미트윌란은 전반 7분과 8분 코너킥으로 반격을 노렸지만 유효타를 입히지는 못했다.</p>
<br/>
<p>경기는 코펜하겐이 주도하는 분위기 속에 흘러갔다. 미트윌란은 낮은 위치에서부터 역습을 노렸지만 코펜하겐의 압박을 벗겨내는 데에 어려움을 겪었다. 조규성은 전방에서 브륀힐센과 함께 수비 대형을 유지한 채 적절한 타이밍에 압박을 시도하거나 공을 뺏은 뒤에는 연계를 통해 역습 기회를 살리는 데 집중했다.</p>
<br/>
<p>미트윌란이 위기를 넘겼다. 전반 21분 문전에서 패스를 받은 폴크가 슈팅을 시도했지만 수비가 적절한 타이밍에 경합을 펼쳐 헛발질로 끝났다. 이후에도 경기는 같은 흐름으로 진행됐다. 코펜하겐이 주도권을 잡고 두드렸고, 미트윌란은 라인을 낮게 내린 채 수비 진영에 많은 선수들을 배치했다. 수비에 성공하면 역습을 노렸지만 쉽게 공격을 풀어나가지 못했다. 결국 두 팀은 득점을 기록하지 못한 채 전반전을 마무리했다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="HQA6sUS4tp" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=미트윌란" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061148139ngrm.jpg" data-org-width="600" dmcf-mid="8hreSbGM19" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061148139ngrm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=미트윌란
           </figcaption>
</figure>
<div dmcf-pid="Xfo2EtOKZ0" dmcf-ptype="general">
<p>코펜하겐은 후반전 시작과 동시에 곤살베스를 오스카르손과 교체했다. 후반전 포문은 조규성이 열었다. 후반 3분 스로인 상황에서 동료가 길게 던진 공이 경합을 거쳐 조규성에게 왔다. 조규성은 슈팅으로 득점을 노렸지만 각이 좁았던 탓에 골키퍼에게 막혔다. 조규성은 후반 8분에도 중거리 슈팅을 시도해봤으나 수비에 맞고 나왔다.</p>
<br/>
<p>0의 균형이 유지되자, 두 팀 모두 교체카드를 활용해 변화를 줬다. 코펜하겐은 후반 14분 라르손을 루니와 바꿨다. 미트윌란은 후반 21분 파울리뉴를 다이어와 교체했다.</p>
<br/>
<p>미트윌란이 선제골 기회를 놓쳤다. 후반 22분 상대 수비 실책으로 공을 잡은 브륀힐센이 조규성에게 공을 넘겼고, 조규성이 박스 안 오른편에서 슈팅을 시도했지만 조규성의 슈팅은 살짝 빗나갔다. 코펜하겐도 반격했다. 후반 29분 교체로 들어온 두 선수들이 좋은 기회를 만들어냈다. 클라이손의 패스를 받은 엘러르트가 문전에서 슈팅을 시도했으나 위로 높게 떴다.</p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="Z4gVDFI9H3" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=미트윌란" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061149436ybxk.jpg" data-org-width="600" dmcf-mid="6ImdvKHRHK" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061149436ybxk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=미트윌란
           </figcaption>
</figure>
<div dmcf-pid="58afw3C2GF" dmcf-ptype="general">
<p>미트윌란도 교체카드를 추가로 사용했다. 후반 31분 브륀힐센과 심시르가 빠지고 프란쿨리노와 오소리오가 들어왔다. 공격에 변화를 더 주겠다는 의도였다.</p>
<br/>
<p>미트윌란이 선제골을 허용했다. 후반 32분 미트윌란 박스 앞에서 폴크와 레라허를 거친 패스가 문전으로 침투하는 루니에게 향했고, 루니가 침착한 왼발 슈팅으로 골망을 흔들었다. 리드를 허용한 미트윌란은 이전보다 라인을 높게 올리며 공격의 고삐를 당겼다. 하지만 여전히 경기를 주도한 쪽은 코펜하겐이었다.</p>
<br/>
<p>코펜하겐이 쐐기를 박을 기회를 놓쳤다. 후반 추가시간 4분 루니가 다시 한번 문전에서 기회를 잡았지만 슈팅이 제대로 맞지 않았다. 승기를 잡은 코펜하겐은 시간을 끌며 굳히기에 들어갔다. 미트윌란은 전방에 있는 조규성에게 향하는 한 번의 패스로 기회를 만들려고 했으나 조규성은 상대 수비와의 경합에 고전했다. 결국 경기는 미트윌란의 0-1 패배로 막을 내렸다. </p>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="1UP0ivNFZt" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=미트윌란" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061150684quff.jpg" data-org-width="600" dmcf-mid="P4nKc5mBYb" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fourfourtwo/20231101061150684quff.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=미트윌란
           </figcaption>
</figure>
<div dmcf-pid="tuQpnTj3Z1" dmcf-ptype="general">
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