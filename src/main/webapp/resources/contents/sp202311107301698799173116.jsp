
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
    <h3>웸반야마 vs 듀란트, 신구 최강 사기유닛 격돌</h3><h6>김종수  2023. 11. 1. 07:30</h6>
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
<section dmcf-sid="y5DWLN4I7R">
<figure class="figure_frm origin_fig" dmcf-pid="WWNhRibDzM" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/jumpball/20231101073003366ogrx.jpg" data-org-width="593" dmcf-mid="2DSk28FLu0" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/jumpball/20231101073003366ogrx.jpg" width="658"/></p>
</figure>
<div dmcf-pid="YYjlenKw0x" dmcf-ptype="general">
<p><br/>샌안토니오 스퍼스의 미래 '웸비' 빅터 웸반야마(19‧223.5cm)와 피닉스 선즈의 주포 'KD' 케빈 듀란트(35‧208cm), NBA를 대표하는 신구 사기유닛이 오늘 오전과 모레 오전, 피닉스 홈 구장 풋프린트 센터에서 2연전 맞대결을 펼친다. 현재 피닉스는 2승 1패, 샌안토니오는 1승 2패를 기록 중인데 2연전 맞대결 결과에 따라 순위가 뒤바뀔 수도 있다.</p>
<p><br/>스테판 커리, 르브론 제임스와 함께 리그를 대표하는 슈퍼스타 중 한명인 듀란트는 어지간한 빅맨의 사이즈에 최상급 테크닉을 겸비한 스윙맨이다. 내외곽을 오가며 전천후로 득점을 쏟아내는 유형인데 미드레인저 점퍼, 3점슛 등 높은 타점에서 꽂아 넣는 슈팅은 수비 입장에서 알고도 제어가 안되는 극강의 무기로 평가받는다. 부드러운 볼 핸들링 등 장신에서 상상하기 힘든 스피드와 운동능력까지 겸비한지라 역대급 스코어러로 명성을 떨치고 있다.</p>
<p><br/>어느덧 그도 30대 중반의 적지 않은 나이인데 그런 만큼 커리어 보강에 많은 신경을 쓰고 있는 모습이다. 파이널 우승을 추가하기 위해 여러팀을 오가고 있는 행보가 이를 입증한다. 브루클린 네츠에서 제임스 하든, 카이리 어빙과 함께 슈퍼팀을 꾸리고도 내부분열로 제대로 쓴맛을 봤던 그는 지난 시즌부터 피닉스 선즈로 자리를 옮겨 우승에 도전하고 있다.</p>
<p><br/>브루클린 시절, 멤버는 우승 후보로 손색이 없었지만 부상과 트러블 등이 겹치며 제대로 빅3가 가동되지 못했다. 그로 인해 듀란트의 부족한 리더십이 도마 위에 오르기도 했다. 올시즌 유력한 우승 후보로 주목받는 피닉스같은 경우는 다르다. 하든, 어빙은 말은 우승을 원한다고 하면서도 팀보다는 각자 개인의 이기심에 더 치중하는 경향이 강했다.</p>
<p><br/>반면 피닉스는 급조됐던 브루클린보다 팀으로서의 완성도가 더 높은 것을 비롯 우승에 대한 갈증 역시 강렬하다. 지난 6월 19일 워싱턴 위저즈에 폴과 랜드리 샤멧, 2라운드 픽 다수를 넘기고 브래들리 빌(30‧193cm)을 받아오는 트레이드를 성사시키는 등 전력보강에 최선의 노력을 기울이고 있다.</p>
<p><br/>무엇보다 데빈 부커(27‧196cm)가 프랜차이즈 스타로서 중심을 잘 잡아주고 있는 점이 든든하다. 듀란트는 부커, 빌 등과 함께 ‘트리플 포’의 일원으로서 부담없이 자신의 플레이만 잘하면 된다. 패싱게임과 포스트 장악력에 장점이 있는 백인 센터 유서프 너키치(29‧211cm) 영입도 굿 초이스로 평가되고 있다.</p>
<p><br/>피닉스는 LA 레이커스에게 일격을 얻어맞으며 주춤하나 했으나 곧바로 유타 재즈를 꺾고 분위기를 반전시킨 상태다. 객관적인 전력에서는 피닉스가 샌안토니오에 앞서는 것이 사실이다. 하지만 이번 2연전의 결과는 예상하기 힘들다. 피닉스는 현재 풀전력을 가동하기 힘든 상태이기 때문이다.</p>
<p><br/>데빈 부커가 개막전 이후 발 부상으로 2경기를 결장한 가운데, 빌은 허리 부상 탓에 피닉스 공식 데뷔전 조차 치르지 못했다. 에릭 고든(15.3득점)과 조쉬 오코기(11.3득점)가 듀란트(27.7득점)를 도와 꾸준하게 활약해주고 있으나 아직은 미완성 전력인지라 매경기 불안할 수밖에 없다. 너키치가 기대 이상의 경기력을 보여주고 있는 가운데 드루 유뱅크스(26‧208cm)가 높이에서 힘을 보태주는게 중요하다.</p>
<p> </p>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="GUC1cwRyuQ" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/jumpball/20231101073005020oybs.jpg" data-org-width="457" dmcf-mid="xL5hRibDFe" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/jumpball/20231101073005020oybs.jpg" width="658"/></p>
</figure>
<div dmcf-pid="HuhtkreW7P" dmcf-ptype="general">
<br/>2023 NBA 드래프트 1순위로 샌안토니오에 지명된 웸반야마는 우월한 신체 스펙(신장 224cm‧윙스팬 244cm)에 더해 신장대비 빼어난 운동능력으로 주목을 받았다. 역대로 따져도 이 정도 사이즈에 어지간한 윙자원 못지않게 뛰고 달릴 수 있는 선수는 찾아보기 힘들다. 거기에 드리블, 슈팅능력까지 갖추고 있는지라 듀란트를 비교 대상으로 소환한 바 있다.
           <p><br/>웸반야마는 거리를 가리지 않고 공간이 비었다고 판단되면 주저없이 공격을 펼친다. 특히 미드레인지 점퍼, 3점슛 등은 아주 무서운 무기다. 슛 타이밍이 빠른 것은 아니지만 타점 자체가 일반적인 상식을 벗어난 수준인지라 대놓고 앞에서 던져도 멍하니 쳐다보는 경우가 대부분이다. 그저 그날 경기의 슛감이 안 좋기를 바랠 수 밖에 없다.</p>
<p><br/>이같은 말도 안되는 높이는 대부분 공격에서 플러스로 작용한다. 어지간한 선수는 잡을 수 없는 곳으로 패스를 연결해도 앨리웁 덩크가 가능하며 골밑에서도 일단 자리를 잡고 공만 받으면 한골 적립이다. 호리호리한 체구로 인해 몸싸움 능력이 떨어진다는 약점이 있지만 대신 기동성이 있는지라 활발하게 이곳저곳을 누비며 공격을 하거나 블록슛을 성공시킨다.</p>
<p><br/>어린 나이의 신인임을 감안했을 때 당연할 수도 있겠지만 다양한 공격 옵션에 비해 기술 각각의 완성도는 높지않은 편이다. 하지만 리그 최고신장, 윙스팬을 가진 선수가 점프력까지 나쁘지 않은지라 말도 안되는 높이가 추가된다는 점에서 평범한 공격도 엄청난 비기로 탈바꿈한다. 거기에 더해 블록슛은 상대팀이 골밑공격을 할때 주춤거리게 할 만큼 악명을 떨치고 있다.</p>
<p><br/>리그에서 오래 뛴 선수들은 '이 정도 속도로 뛰면, 이 정도 높이로 올라가면 공격이 성공할 것이라는' 자신만의 감을 각기 가지고 있다. 웸반야마의 블록슛은 그러한 상식을 파괴한다. 다 제끼고 노마크 상태에서 슛을 한다 싶은 순간에도 어느새 긴 팔로 공을 걷어내버리는 것은 물론 속공 상황에서도 뒤따라와서 블록슛을 성공시키기 일쑤다.</p>
<p><br/>리그 최고의 슈팅팀 골든스테이트 워리어스전에서는 앤드류 위긴스, 클레이 탐슨 등 쟁쟁한 슈터들의 3점슛을 블록해버리며 분위기를 압도하기도 했다. 그를 응원하는 팬들은 과거 앨런 아이버슨의 명언을 뒤집는(?) '농구는 심장이 아닌 신장으로 하는 것이다'는 문구를 써가며 환호하고 있다.</p>
<p><br/>샌안토니오는 웸반야마를 앞세워 연패 탈출 및 약 2년 7개월 만의 피닉스전 승리에 도전한다. 웸반야마는 현재까지 치른 3경기에서 평균 15.7득점, 7.3리바운드, 2스틸, 1.7블록슛을 기록하며 인상적인 데뷔 시즌을 보내고 있다. 더불어 데빈 바셀(20.7득점)과 켈든 존슨(14득점)의 초반 활약이 인상적이다.</p>
<p><br/>2020~21시즌 5월부터 최근까지 9번의 맞대결에서 모두 패배한 샌안토니오가 이번 2연전 중 1승이라도 거두게 된다면 피닉스 상대 정규시즌 통산 100승을 달성하게 된다. 두 팀의 2연전은 스포티비 온(SPOTV ON)과 스포티비 나우(SPOTV NOW)를 통해 위성생중계 될 예정이다.<br/><br/>#글_김종수 칼럼니스트​​​​​​<br/><br/>​​#사진_AP/연합뉴스</p>
</div>
</section>
</div></p></section></div><h6>[Source : 점프볼]</h6></div>
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