
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
    <h3>이보미·박성현, SK쉴더스·SK텔레콤 챔피언십 출전</h3><h6>이상필 기자  2023. 10. 31. 14:13</h6>
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
<section dmcf-sid="XTPYF4tnn7">
<figure class="figure_frm origin_fig" dmcf-pid="ZN3cO1sbLu" dmcf-ptype="figure">
<p class="link_figure"><img alt="이보미 / 사진=브리온 컴퍼니 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/sportstoday/20231031141304448xeec.jpg" data-org-width="1441" dmcf-mid="GI6Wtf1iiq" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/sportstoday/20231031141304448xeec.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            이보미 / 사진=브리온 컴퍼니 제공
           </figcaption>
</figure>
<p dmcf-pid="5GRZUQpaeU" dmcf-ptype="general">[스포츠투데이 이상필 기자] 이보미와 박성현이 한국여자프로골프(KLPGA) 투어 2023시즌 최종전에 출격한다.</p>
<p dmcf-pid="1O9hGBYxMp" dmcf-ptype="general">올해 KLPGA 투어 마지막 우승컵 주인공을 가리는 'SK쉴더스·SK텔레콤 챔피언십 2023'이 오는 11월 10일부터 12일까지 사흘간 개최된다. </p>
<p dmcf-pid="tHe5uxUNn0" dmcf-ptype="general">이번 대회는 강원도 춘천에 있는 라비에벨 컨트리클럽 올드코스(파72)에서 진행되며, 총상금은 10억 원에 우승 상금 2억 원이 걸려있다. 올해도 대회 전통에 따라 우승 상금이 담긴 '머니 박스'가 우승자에게 전달된다. </p>
<p dmcf-pid="FyQG38FLM3" dmcf-ptype="general">지난 2004년 창설 이후 20주년을 맞은 이번 대회에는 상금 순위 상위 70명의 선수가 출전해 '왕중왕전' 형식으로 치러지며 전년도 우승자 박민지와 올해 3승을 거둔 이예원, 박지영, 임진희가 모두 참가한다. </p>
<p dmcf-pid="3VO8dreWJF" dmcf-ptype="general">최고 선수들의 경쟁 속에 모처럼 KLPGA 투어 우승 사냥에 나선 이보미와 박성현의 출전도 관심을 모으고 있다. 두 선수를 응원하는 팬들에게는 매우 반가운 소식이다. </p>
<p dmcf-pid="0fI6JmdYRt" dmcf-ptype="general">▲ 이보미 "은퇴 경기 아니에요"<br/> 2007년 KLPGA 투어에 데뷔한 이보미는 4승을 거둔 후 2011년 일본여자프로골프(JLPGA) 투어 무대로 자리를 옮겼다. 2012년 첫 우승을 시작으로 무려 21승을 쓸어 담았다. </p>
<p dmcf-pid="pyQG38FLi1" dmcf-ptype="general">이보미는 2015년과 2016년 JLPGA 투어 상금왕에 올랐으며, 2017년 이토 엔 레이디스 우승으로 JLPGA 20승을 채워 KLPGA 투어 영구시드권을 얻었다. 2019년 12월 배우 김태희의 동생 이완과 결혼해 화제가 됐다.</p>
<p dmcf-pid="UnZgDGEud5" dmcf-ptype="general">일본 투어 역사상 가장 사랑을 많이 받은 한국 선수였던 이보미는 지난 2월 자신의 소속사를 통해 이번 시즌을 끝으로 일본 무대를 은퇴하겠다고 밝혔다. 그리고 지난 20일 JLPGA 투어 노부타그룹 마스터즈 GC 레이디스 2라운드를 끝으로 일본 투어와 작별을 고했다.</p>
<p dmcf-pid="uMydNSatMZ" dmcf-ptype="general">당시 팬들과 성대한 은퇴식을 벌인 이보미는 "지난 13년 동안 너무나도 많은 사랑과 관심을 보내주신 일본 팬분들에게 진심으로 감사할 따름이다. 그리고 최종전이었던 노부타 마스터즈에서 저의 은퇴를 기념하는 여러 이벤트들에 매우 감동받았다. 그간 있었던 희로애락이 모두 끝이라고 생각하니 울컥한 순간도 많았지만 이젠 시원한 마음이 더 크다"고 소감을 전했다. </p>
<p dmcf-pid="7MydNSatMX" dmcf-ptype="general">이보미는 한국 무대로 자리를 옮긴다. 영구시드권자 신분이라 정식 자격자로 모든 대회에 나설 수 있다. 풀타임을 소화할지는 아직 결정되지 않았지만 한국 복귀 첫 대회로 SK쉴더스·SK텔레콤 챔피언십을 선택했다.</p>
<p dmcf-pid="zhfvZ9XeJH" dmcf-ptype="general">지난 5월 NH투자증권 레이디스 챔피언십 이후 6개월 만에 KLPGA 투어에 모습을 보이는 이보미는 "후원기업이 주최하는 대회지만 매년 오랜만에 팬들과 만나는 기회이기 때문에 항상 즐겁고 설레는 마음이다. 그리고 저의 선수 은퇴 경기로 알고 계신 분들도 있는데 아직 KLPGA 투어는 끝이 아니니 아쉬워하실 필요 없다"며 "연습라운드 및 개인 훈련도 해왔던 거처럼 그대로다. 이번에도 오빠(이완)가 캐디를 맡아줄 예정이라 편안한 마음으로 임하려 한다"고 밝혔다.</p>
<p dmcf-pid="qrBOy7T6RG" dmcf-ptype="general">국내 무대로 복귀했지만 투어 활동에 대해서는 아직 미지수다. 이보미는 "대단한 (안)선주 언니처럼 KLPGA 투어에서 좋은 모습을 보여드리는 게 목표다. 하지만 그보다 팬들과의 만남과 투어의 발전을 위해 작은 부분이라도 선배의 역할을 자처하고 싶다"고 말했다. </p>
<p dmcf-pid="BsKCYqWQiY" dmcf-ptype="general">이어 이보미는 "인생 후반전의 구체적인 계획은 '미정'이다. 길게 보면 어쨌든 골프판에서 한자리 해야겠지만 교습가, 방송인 등의 특정한 롤에 고민하지는 않았다. 당분간은 절친들(최나연, 김하늘, 윤채영)과 함께 방송, 유튜브 등의 계획이 약간 있는 상황"이라고 덧붙였다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="bN3cO1sbRW" dmcf-ptype="figure">
<p class="link_figure"><img alt="박성현 / 사진=DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/sportstoday/20231031141305659zrmm.jpg" data-org-width="650" dmcf-mid="HiI6JmdYnz" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/sportstoday/20231031141305659zrmm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            박성현 / 사진=DB
           </figcaption>
</figure>
<p dmcf-pid="Kj0kItOKRy" dmcf-ptype="general"><br/> ▲ 박성현 "언제나 내 목표는 우승이다"<br/> 박성현은 올해를 정리하는 대회로 SK쉴더스·SK텔레콤 챔피언십을 선택했다. 최근 출전 대회에서 예전의 샷 감각을 뽐내고 있어 우승 후보로도 손색이 없다. </p>
<p dmcf-pid="94CPisJGRT" dmcf-ptype="general">KLPGA 투어에서 10승을 거두고 미국여자프로골프(LPGA) 투어에 진출한 박성현은 2017년 US여자오픈을 제패한 것을 시작으로 2019년 6월 월마트 NW 아칸소 챔피언십까지 미국 무대에서 7승을 거뒀다. 한때 세계 랭킹 1위에도 이름을 올렸다.</p>
<p dmcf-pid="20au2L9riv" dmcf-ptype="general">그러나 2019년 하반기를 시작으로 조금씩 내리막에 걷더니 최근까지 부진을 겪고 있다. 다만 한국에서 열린 BMW 레이디스 챔피언십에서 올해 최고 성적인 공동 16위에 올라 본인은 물론 팬들의 기대감도 높아지고 있는 상황이다. </p>
<p dmcf-pid="VxTealg1LS" dmcf-ptype="general">박성현은 "작년보다 모든 면에서 좋아진 점들이 많다. 하지만 결과로 나오지 않아서 아쉽다. 골프가 역시 쉽지 않음을 다시 한번 느낀 한 해였고, 그래도 점점 나아지고 있어서 만족스럽게 1년을 마무리할 수 있을 것 같다"고 1년을 돌아봤다. </p>
<p dmcf-pid="ffI6JmdYLl" dmcf-ptype="general">올 시즌 KLPGA 투어 마지막 메이저대회 하이트진로 챔피언십 이후 한 달여 만에 다시 나선 박성현은 자신의 팬클럽 '남달라' 회원들의 뜨거운 응원 속에 경기를 치를 전망이다. </p>
<p dmcf-pid="4iXoEYkUnh" dmcf-ptype="general">박성현은 "한국 경기는 항상 설렌다. 많은 분들이 응원해 주시는 만큼 더 잘하고 싶다"며 "우승을 목표로 연습라운드와 개인 연습에 집중하고 있다. 최근 새로운 클럽으로 피팅까지 마쳤다. 컨디션까지 좋아 이번 대회에 기대가 크다"고 말했다. </p>
<p dmcf-pid="8DzmvUS4dC" dmcf-ptype="general">이번 대회를 끝으로 1년을 정리하는 박성현은 "우승을 못하더라도 한 샷 한 샷 더 나은 샷을 하고 싶은 마음이다"며 "내년에도 LPGA 투어에 집중할 생각이며 가능하면 많은 한국 대회에 출전해 팬들을 만나고 싶다"고 바람을 전했다. </p>
<p dmcf-pid="6fI6JmdYLI" dmcf-ptype="general">한편, 이번 대회는 참여선수의 집중력을 끌어 올리기 위해 각종 특별상을 마련한다. 코스 레코드를 기록한 선수는 300만 원 상금을 받게 되며, 모든 파3홀에서는 홀인원 상품이 준비되어 있다. 대회 코스 4번 홀과 7번 홀에서 최초로 홀인원에 성공한 선수에게는 각각 신동아 골프 다이아몬드 1캐럿, 도이치모터스 BMW 차량이 주어진다. 또한, 12번홀, 17번홀에서 홀인원 한 선수에게는 각각 덕시아나 침대와 누하스 안마의자 가구세트가 홀인원 부상으로 주어질 예정이다.</p>
<p dmcf-pid="P8hQnOiHnO" dmcf-ptype="general">주최사인 SK쉴더스는 국내 대표 물리보안 브랜드 ADT캡스의 서비스를 활용하여 안전한 대회장 환경 구축에 나선다. 사고 발생에 대비하여 자사의 전문 경호팀 등 보안 요원을 배치하며, 선수 및 갤러리를 대상으로 호신술 강의와 같은 안전 프로그램을 제공한다. 이외에도 New ICT 기반의 서비스를 활용하여 현장과 갤러리의 안전을 지킬 수 있는 다양한 이벤트를 검토하고 있다.</p>
<p dmcf-pid="QxTealg1ns" dmcf-ptype="general">SK텔레콤은 지난해 화제가 됐던 AI하이라이트 기술을 올해도 선보인다. 대회 중계영상을 기반으로 참가 선수별 하이라이트를 실시간으로 추출해 제공하는 서비스로 A.tv(에이닷티비)를 통해 시청자에게 재미를 선사할 예정이다. 하이라이트 영상은 매 라운드 종료 후 선수들에게도 제공된다.</p>
<p dmcf-pid="xl4T52ZdJm" dmcf-ptype="general">SK쉴더스·SK텔레콤 챔피언십 2023의 티켓은 인터파크를 통해 구매할 수 있다. 11월 3일까지 구매하는 팬들은 50% 할인된 가격으로 얼리버드 티켓을 구매할 수 있으며, 춘천 지역 주민과 SK 쉴더스 고객은 현장에서 신분증 및 SK 쉴더스 고객카드, 앱을 제시하면 50% 할인된 가격으로 구매가 가능하다.</p>
<p dmcf-pid="y8hQnOiHnr" dmcf-ptype="general">SK쉴더스와 SK텔레콤이 공동으로 주최하고 KLPGA가 주관하는 이번 대회는 SBS골프와 네이버, A.tv를 통해 생중계된다.</p>
<p dmcf-pid="WQvRgho5Lw" dmcf-ptype="general">[스포츠투데이 이상필 기자 sports@stoo.com]</p>
</section>
</div></p></section></div><h6>[Source : 스포츠투데이]</h6></div>
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