
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
    <h3>승리놓친 가스공사 '분명한 문제점과 확실한 가능성'</h3><h6>석원  2023. 11. 1. 08:40</h6>
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
<section dmcf-sid="94QxdL9rqX">
<figure class="figure_frm origin_fig" dmcf-pid="207zKf1iVH" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/dgmbc/20231101084051649eqtn.jpg" data-org-width="600" dmcf-mid="bE3tpzyPq5" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/dgmbc/20231101084051649eqtn.jpg" width="658"/></p>
</figure>
<p dmcf-pid="VxdJoj8CfG" dmcf-ptype="general"><br/><span>'원정 첫 승과 2연승'을 동시에 노렸던 대구한국가스공사가 경기 막판 무너지며 아쉽게 시즌 3번째 패배를 기록합니다.</span></p>
<p dmcf-pid="ffPQenKwBY" dmcf-ptype="general"><span>10월 31일 서울 잠실실내체육관에서 펼쳐진 2023-2024 정관장 프로농구 서울삼성과의 시즌 첫 대결에서 가스공사는 쿼터마다 리드를 서로 주고받는 접전을 펼쳤지만, 경기 후반부 집중력에 차이를 극복하지 못하고 80-84로 경기를 내줬습니다.</span></p>
<p dmcf-pid="4igacwRyVW" dmcf-ptype="general"><span>지난해 삼성에 우위를 보였던 가스공사는 삼성의 외국인 선수 코피 코번의 높이와 힘에 어려움을 겪었고, 승부처마다 삼성 이정현에게 3점 슛을 무려 6개나 허락하며 무너집니다.</span></p>
<p dmcf-pid="8DsOlyA02y" dmcf-ptype="general"><span>가스공사는 양 팀 합계 최다인 33득점을 기록한 앤드류 니콜슨과 12득점과 3개의 리바운드를 기록하며 지난 경기에 이어 2경기째 좋은 모습을 보인 신승민, 팀에서 가장 많은 4개의 어시스트를 기록한 차바위가 눈길을 끌었습니다.</span></p>
<p dmcf-pid="6fPQenKwfT" dmcf-ptype="general"><span>김낙현이 전역하기 전까지는 가드진에서 약점이 분명한 가스공사는 지난해보다 나아진 기량을 보인다고 강혁 감독이 평가한 샘조세프 벨란겔이 가드로서 고군분투하고 있지만, 분명 경기를 풀어가는데 쉽지 않은 상황이 이어지고 있습니다. </span></p>
<p dmcf-pid="P4QxdL9rbv" dmcf-ptype="general"><span>팀 공격의 주축 니콜슨이 맹활약하지만, 수비에서는 다소 부족함이 아쉬운 대목인 가스공사는 특히 FA로 팀에 남은 팀의 핵심 자원 이대헌이 3번의 3점 슛 시도를 모두 실패한 것을 포함해 17번의 슈팅 중 4개만 성공시켰고, 자유투 역시 2개나 놓쳐 아쉬운 모습을 보입니다.</span></p>
<figure class="figure_frm origin_fig" dmcf-pid="Q6MRigVsbS" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/dgmbc/20231101084053808qocn.jpg" data-org-width="600" dmcf-mid="KSbKfP0gfZ" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/dgmbc/20231101084053808qocn.jpg" width="658"/></p>
</figure>
<p dmcf-pid="xMJigA6hfl" dmcf-ptype="general"><br/><span>강혁 감독 역시 이대헌의 슈팅이 조금 더 들어갔으면 좋았을 것 같다는 소감과 함께 그래도 9개의 리바운드와 11득점을 기록한 이대헌의 활약에 기대감을 보이며 '슈팅 실패 상황에 다양하게 하는 것을 연습해야 한다'며 다음 경기에 집중하겠다는 각오를 밝힙니다.</span></p>
<p dmcf-pid="y8xMJo2mKh" dmcf-ptype="general"><span>비록 승리를 놓친 아쉬움도 았지만, 가스공사는 전술적으로 다양한 시도를 통해 상대를 괴롭히고 있습니다. 특히, 3명의 포워드를 기용하는 전술을 바탕으로 미스매치를 만들며 상대를 공략, 경기마다 쉽게 무너지지 않은 모습을 보여줍니다.</span></p>
<p dmcf-pid="WQedLN4IbC" dmcf-ptype="general"><span>감독 데뷔 시즌, 설상가상으로 외국인 선수까지 잃은 어려움 속에서도 팀에 조직력을 보여주며 인상적인 경기를 이어가는 강혁 감독은 가스공사가 지금 들어난 문제점을 해결한다면 가능성이 충분하다는 걸 보여주고 있습니다.</span></p>
<p dmcf-pid="YcwrISatfI" dmcf-ptype="general"><span>1승 3패 하위권에 자리한 가스공사는 3일(금) 저녁 7시 홈에서 리그 4승 무패를 기록 중인 선두 원주DB를 상대로 맞대결을 펼칩니다.<br/></span>(사진제공-KBL)</p>
</section>
</div></p></section></div><h6>[Source : 대구MBC]</h6></div>
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