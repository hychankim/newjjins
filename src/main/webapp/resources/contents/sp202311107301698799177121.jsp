
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
    <h3>레이나, 중원서 터졌다! "미들블로커 투입, 놀랐지만 도움되어 기뻐요"</h3><h6>권수연 기자  2023. 11. 1. 07:30</h6>
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
<section dmcf-sid="0uHZjExvGk">
<figure class="figure_frm origin_fig" data-idxno="244586" data-type="photo" dmcf-pid="U7X5ADMTXA" dmcf-ptype="figure">
<p class="link_figure"><img alt="흥국생명 레이나, KOVO" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073007728qbzc.jpg" data-org-width="720" dmcf-mid="fyI5ADMTYH" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073007728qbzc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            흥국생명 레이나, KOVO
           </figcaption>
</figure>
<p dmcf-pid="7tvynafOtN" dmcf-ptype="general">(MHN스포츠 장충, 권수연 기자) "조금 놀랐지만, 팀에 도움이 될 수 있어서 기쁩니다" </p>
<p dmcf-pid="zFTWLN4IZa" dmcf-ptype="general">31일, 서울 장충체육관에서 열리는 2023-24시즌 도드람 V-리그 여자부 1라운드 경기에서 흥국생명이 GS칼텍스를 세트스코어 3-0(25-22, 26-24, 25-23)로 제압했다.</p>
<p dmcf-pid="q87qCvNFYg" dmcf-ptype="general">직전 경기인 정관장전 역스윕패, 개 중에서도 4세트 '7-25'의 악몽을 훌훌 털어버린 경기였다. </p>
<p dmcf-pid="B6zBhTj35o" dmcf-ptype="general">이 날은 '티켓파워'도 함께 터졌다. 총 관중 3,438명을 기록하며 올 시즌 여자부 첫 매진을 기록했다.</p>
<p dmcf-pid="bPqblyA0HL" dmcf-ptype="general">옐레나 19득점, 김연경 18득점으로 쌍포가 굳건히 자기 역할을 해냈고, 이 날 레이나가 중원에 들어오며 존재감을 톡톡히 드러냈다. </p>
<p dmcf-pid="KQBKSWcpXn" dmcf-ptype="general">현재 흥국생명은 미들블로커 두 명이 모두 부상이다. 이주아가 지난 경기 블로킹 도중 손가락 부상을 입었고, 김채연은 팔꿈치 부상을 당했다. </p>
<p dmcf-pid="9kJnUqWQZi" dmcf-ptype="general">이에 아본단자 감독은 텅 빈 해당 포지션에 레이나를 투입했다. 레이나는 본디 아웃사이드 히터지만 이 날 중원에서 블로킹 포인트를 만들며 듀스 접전에서 상대의 기를 꺾었다. 블로킹 2포인트를 포함해 총 8득점, 공격성공률 75%를 기록하며 준수한 활약을 펼쳤다. </p>
<p dmcf-pid="2EiLuBYx5J" dmcf-ptype="general">레이나는 프로로 전향한 이후 미들블로커 경험이 없다. 고교시절 3개월 정도 거친 것이 전부다. </p>
<p dmcf-pid="VDno7bGMXd" dmcf-ptype="general">경기 후 수훈선수로 인터뷰실에 자리한 레이나는 "GS칼텍스가 간단치 않은 팀이라 생각했는데 지난 번 정관장 결기 결과로 많은 훈련을 거쳤다. 원정경기를 기분 좋게 끝낼 수 있어서 기쁘다"고 소감을 전했다.</p>
<figure class="figure_frm origin_fig" data-idxno="244587" data-type="photo" dmcf-pid="4xb9vYkUHR" dmcf-ptype="figure">
<p class="link_figure"><img alt="흥국생명 레이나가 GS칼텍스의 블로킹을 뚫고 공격한다, KOVO" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073009017dcue.jpg" data-org-width="720" dmcf-mid="8pv0wOiHXY" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073009017dcue.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            흥국생명 레이나가 GS칼텍스의 블로킹을 뚫고 공격한다, KOVO
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" data-idxno="244590" data-type="photo" dmcf-pid="PgQM10hVXQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="31일, 장충체육관에서 열린 GS칼텍스와 흥국생명 경기가 23-24시즌 여자부 첫 매진을 달성했다ⓒMHN스포츠 이지숙 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073013858vvxp.jpg" data-org-width="720" dmcf-mid="3ADr8xUNXE" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073013858vvxp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            31일, 장충체육관에서 열린 GS칼텍스와 흥국생명 경기가 23-24시즌 여자부 첫 매진을 달성했다ⓒMHN스포츠 이지숙 기자
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" data-idxno="244588" data-type="photo" dmcf-pid="yuHZjExvX8" dmcf-ptype="figure">
<p class="link_figure"><img alt="흥국생명 김연경(좌)-레이나, KOVO" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073010497xida.jpg" data-org-width="720" dmcf-mid="thzblyA01w" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073010497xida.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            흥국생명 김연경(좌)-레이나, KOVO
           </figcaption>
</figure>
<p dmcf-pid="Y6zBhTj3Gf" dmcf-ptype="general">기존 아웃사이드 히터 포지션에서는 출전 기회가 많지 않았다. 리시브에서 생각보다 고전했고, 득점도 크게 눈에 띄지 않았다. 레이나는 "기존에는 김미연이 자리를 잘 잡고 있어 안정된 팀이라 생각했다"면서도 "감독님이 팀에서 부족한 부분을 도와달라고 말씀하셨지만 미들블로커로 들어가게 되어 놀랐다. 그래도 팀에 도움이 된 것 같아서 좋다"고 말했다. </p>
<p dmcf-pid="GPqblyA0YV" dmcf-ptype="general">이 날 18득점(공격성공률 69.57%)을 터뜨린 김연경은 레이나에 대해 "공격력과 점프 탄력이 워낙 좋다"며 "합류하고 부상이 좀 있어 훈련이 길지 않았는데, 앞으로는 점점 더 좋아지겠다"고 호평했다.</p>
<p dmcf-pid="HQBKSWcp52" dmcf-ptype="general">분위기와 환경에 영향을 받을 수 밖에 없는 원정경기다. 하지만 이 날 셧아웃 승을 거둘 정도로 경기내용이 매끄러웠다. 범실이 적은 점이 승리에 큰 몫을 보탰다. 이 날 옐레나는 범실 2개, 김연경이 1개만을 기록했다.  옐레나의 공격 해결력도 준수했고 특히 아본단자 감독은 이원정의 토스에 만족감을 표했다. </p>
<figure class="figure_frm origin_fig" data-idxno="244589" data-type="photo" dmcf-pid="Z4uzISatYK" dmcf-ptype="figure">
<p class="link_figure"><img alt="흥국생명 김연경ⓒMHN스포츠 이지숙 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073012349mvfx.jpg" data-org-width="720" dmcf-mid="Fmt0wOiHZD" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/HockeyNewsKorea/20231101073012349mvfx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            흥국생명 김연경ⓒMHN스포츠 이지숙 기자
           </figcaption>
</figure>
<p dmcf-pid="1UGXNkQStB" dmcf-ptype="general">김연경은 이 부분에 대해 "(세터가 잘 해준 것이) 맞다. 세터의 볼이 잘 오면 공격수가 잘 때릴 수 있는 확률이 올라간다. 그게 리시브에도 반영이 됐을 것이다"라며 "결국 (배구는) 팀 스포츠이기 때문에 누군가를 도와서 다 잘할 수 있는 상황을 만들어야하는데, 그 부분이 잘됐다"고 짚었다.</p>
<p dmcf-pid="tuHZjExvXq" dmcf-ptype="general">또 그는 "(지난 정관장전은) 다 이긴 경기를 놓쳐서 선수들끼리 반성도 하고, 경기를 복기하며 어떤 부분에서 잘 안됐는지 돌아봤다. 우리 집중력이 갑자기 흩어지면 반격이 들어오기에 그런 부분을 집중해서 하면 이길 수 있는 팀이라 생각했다"고 말했다.</p>
<p dmcf-pid="F7X5ADMTHz" dmcf-ptype="general">김연경은 이 날 2세트에서 하이라이트 블로킹을 선보인 레이나에게 와락 올라타는 장면이 중계 카메라에 잡히기도 했다. </p>
<p dmcf-pid="3zZ1cwRy17" dmcf-ptype="general">해당 이야기가 나오자 그는 "너무 기분이 좋아서 안기려고 했는데 제가 무거웠는지 넘어졌다"고 입을 열었다. 곁에서 통역의 말을 듣던 레이나가 "놀라서, 놀라서 (넘어졌다)"라고 해명(?)에 나섰고, 김연경은 "(레이나가) 강한 줄 알았는데 이제 안기면 안될 것 같다"며 미소지었다.</p>
<p dmcf-pid="0bt3DsJGGu" dmcf-ptype="general">한편, 흥국생명은 오는 11월 4일, IBK기업은행을 상대로 1라운드 마지막 대결에 나선다.  </p>
</section>
</div></p></section></div><h6>[Source : MHN스포츠]</h6></div>
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