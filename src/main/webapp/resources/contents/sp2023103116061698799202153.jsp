
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
    <h3>[김용우가 만난 사람] NRG '소아즈' 코치, "우리 팀의 장점은 멘탈...좋은 성적? 가능성 있는 이야기"</h3><h6>김용우  2023. 10. 31. 16:06</h6>
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
<section dmcf-sid="xzizrP0geQ">
<figure class="figure_frm origin_fig" dmcf-pid="yBLBsxUNMP" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031160609313wdrq.jpg" data-org-width="1900" dmcf-mid="PNJ7w63oRM" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031160609313wdrq.jpg" width="658"/></p>
</figure>
<div dmcf-pid="Wovo0mdYM6" dmcf-ptype="general">
            2023 리그 오브 레전드 월드 챔피언십(롤드컵)서 화제의 팀은 북미 LCS 1번 시드인 NRG다. 카운터 로직 게이밍(CLG)을 인수해 올해부터 LCS에 참가한 NRG는 롤드컵 스위스 스테이지서 유럽 1번 시드인 G2 e스포츠를 꺾고 LCS 팀으로선 2년 만에 롤드컵 8강 진출에 성공했다. 
          </div>
<p dmcf-pid="YkXkBSate8" dmcf-ptype="general">NRG의 특징은 코칭스태프만 7명이라는 것이다. 기존 LoL 팀의 코칭스태프가 3명인 걸 감안하면 2배 정도 많은 셈이다. NRG는 감독인 '씽크카드' 토마스 슬로트킨를 필두로 6명의 코치가 '씽크카드'를 보좌하고 있는데 그중 '소아즈' 폴 부아예는 2012년부터 2015년까지 프나틱의 전성기를 이끈 탑 라이너 출신이다. </p>
<p dmcf-pid="GKgKIR7AL4" dmcf-ptype="general">2010년 어게인스트 올 어쏘리티(against All authority)에서 데뷔한 '소아즈'는 2011년 스웨덴 옌셰핑 엘미아 경기장에서 열린 롤드컵 첫 번째 시즌서 프나틱에 이어 준우승을 차지했다. </p>
<p dmcf-pid="HeOeZcPldf" dmcf-ptype="general">프랑스 게임단인 밀레니엄을 거쳐 2012년 프나틱에 합류한 '소아즈'는 '엑스페케' 엔리케 세데뇨 마르티네스, '레클레스' 마르틴 라르손 등과 함께 활동했다. 이후 신생팀인 오리젠(이후 아스트랄리스로 바뀌었다가 2024년부터는 카르민 코프(카민 코프)가 시드를 구입해 참가할 예정)으로 이적해 '엑스페케'와 함께 2015년 유럽 LCS 서머 2위, 롤드컵 4강을 이끌었다. </p>
<p dmcf-pid="XmFmVYkURV" dmcf-ptype="general">이후 프나틱으로 돌아온 '소아즈'는 2018년 한국 인천에서 열린 롤드컵 결승전에 올랐지만, 인빅터스 게이밍(IG)에게 패배 준우승에 머물렀다. 이후 미스핏츠, 임모탈스를 거쳐 유럽 2부 팀에서 활동한 그는 NRG에 합류해 코치로 롤드컵에 다시 한번 참가했다. </p>
<p dmcf-pid="6cG9CezcRI" dmcf-ptype="general"><strong><span>Q, NRG가 북미 LCS 팀으로선 2년 만에 롤드컵 8강에 합류했다. 소감을 듣고 싶다.</span></strong></p>
<p dmcf-pid="5ArxGN4IL9" dmcf-ptype="general">A, 정말 좋다. 상대가 유럽 최강팀인 G2 e스포츠라는 걸 고려하면 더 뜻깊은 거 같다. G2가 스크림에서 굉장히 강했다. LEC 팀 중에서 가장 강한 상대라고 생각했는데 승리했고, 롤드컵 8강에 진출해 개인적으로 특별하게 다가온다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="1DId5kQSdK" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031160609871dvyr.jpg" data-org-width="1900" dmcf-mid="QiWNuInXex" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/DAILYESPORTS/20231031160609871dvyr.jpg" width="658"/></p>
</figure>
<div dmcf-pid="PURmVYkUnO" dmcf-ptype="general">
<strong><span>Q, 개인적인 생각인데 북미 팀에서 코치하고 있으면서 유럽 팀을 꺾고 롤드컵 8강을 가는 것에 대한 기분이 남다를 거 같다.(참고로 '소아즈'는 프랑스 국적이다)</span></strong>
</div>
<p dmcf-pid="FksRXA6hLB" dmcf-ptype="general">A, 만약에 LEC 팀이 LCK, LPL 팀을 상대한다면 저는 LEC 팀을 응원했을 거다. 오늘 같은 경우 예전 팀원('캡스' 라스무스 뷘터)이 상대 팀에 있었고, 프나틱에서도 오래 활동했지만 잘하는 팀이 이기는 게 우선인 거 같다.(웃음)</p>
<p dmcf-pid="QZ8cqlg1Js" dmcf-ptype="general"><strong><span>Q, NRG가 LCS 챔피언십서 우승할 거라고 예상한 사람은 거의 없었을 거 같다. 코치 입장서 봤을 때 팀의 우승 이유는 뭐라고 생각하나.</span></strong></p>
<p dmcf-pid="05pI8Xwzdz" dmcf-ptype="general">A, 항상 선수들과 코치진에게 이야기한 게 있는데 우리 팀의 최고 장점은 멘탈이 강하다는 거다. 스크림 성적 유무 등 다양한 일을 겪더라도 멘탈만 강하면 우리는 해낼 수 있다고 생각한다. 그걸 기반으로 롤드컵 무대서 좋은 성적이 나온다고 봤다. 일부 사람들은 NRG 개개인을 놓고 봤을 때 '최강이 아니다'라고 생각할 수 있다. 하지만 우린 멘탈적인 부분을 바탕으로 본 무대서 좋은 모습을 거뒀다. 그러기에 롤드컵 8강에 올라갈 수 있었다. </p>
<p dmcf-pid="xFxw9yA0im" dmcf-ptype="general"><strong><span>Q, NRG의 또 다른 장점은 코칭스태프가 7명이라는 거다. 개인적으로는 많다고 생각하는 데 긍정적인 부분은 무엇인가.</span></strong></p>
<p dmcf-pid="U8Rpkf1iJu" dmcf-ptype="general">A, 이것도 시스템이 잘 갖춰져야 장점이 발휘하는 거 같다. 우리 팀은 코치가 많은데 각자 잘하는 일에 집중할 수 있는 시스템이 되어 있다. 또한 포지션 코치가 있다는 것도 긍정적인 부분이다. 사실 롤드컵서는 평소 하는 대로 실력을 발휘하는 게 쉽지 않지만 개인적으로 봤을 때 (이런 부분은) 긍정적인 면 밖에 없다. 코치 개인으로 봤을 땐 업무량이 축소돼서 만족감이 덜할 수 있지만 선수, 분석적인 측면서는 굉장히 좋은 접근인 거 같다. </p>
<p dmcf-pid="yiluD8FLnr" dmcf-ptype="general"><strong><span>Q, 2018년 한국서 열린 롤드컵서 선수로서 준우승을 기록했다. 코치로 참가한 올해 NRG도 좋은 성적을 기대할 수 있을까?</span></strong></p>
<p dmcf-pid="x3qLyo2mLa" dmcf-ptype="general">A, 뚜껑을 열어봐야 알겠지만 지금까지 보여준 경기력을 봤을 땐 가능성이 있다고 생각한다. 더불어 스크림 등 준비 과정에서 안정적인 부분이 계속 이어지는 것도 굉장히 중요하다. 전체적으로 팀이 보여준 게임 소통과 경기력을 놓고 봤을 땐 가능성 있는 이야기라고 생각한다. </p>
<p dmcf-pid="zRLBsxUNe0" dmcf-ptype="general">KBS 아레나=김용우 기자 (kenzi@dailyesports.com)</p>
<p dmcf-pid="qlYj7CLZd3" dmcf-ptype="general">김용우 기자 (kenzi@dailyesports.com)</p>
</section>
</div></p></section></div><h6>[Source : 데일리e스포츠]</h6></div>
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