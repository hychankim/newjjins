
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
    <h3>[MD현장] 감독 단체방 협정, "여자부는 '이중 서브' 없다"...이제 시선은 남자부로</h3><h6>장충 = 최병진 기자  2023. 11. 1. 06:02</h6>
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
<section dmcf-sid="4oGMfExvjB">
<figure class="figure_frm origin_fig" dmcf-pid="8QI9unKwkq" dmcf-ptype="figure">
<p class="link_figure"><img alt="차상현 감독과 마르첼로 아본단자 감독/한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101060207396fwvz.jpg" data-org-width="640" dmcf-mid="KN2mAZrqcV" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101060207396fwvz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            차상현 감독과 마르첼로 아본단자 감독/한국배구연맹
           </figcaption>
</figure>
<p dmcf-pid="6QI9unKwkz" dmcf-ptype="general">[마이데일리 = 장충 최병진 기자] V리그를 강타한 ‘이중서브’ 논란에서 일단 여자부는 제외됐다. 이제 시선은 남자부로 향한다.</p>
<p dmcf-pid="P9kU5QpaA7" dmcf-ptype="general">서브를 넣기 전에 이중 동작을 하면서 상대의 ‘포지션 폴트’를 유발하는 전략은 지난 8월에 등장했다.</p>
<p dmcf-pid="QLYxVkQSku" dmcf-ptype="general">초청팀 자격으로 대회에 참가한 일본의 파나 소닉 팬더스가 서브를 시도하다가 순간적으로 동작을 멈추면서 상대 선수가 미리 움직이게 유도를 했다. 서브가 휘슬이 울린 후 8초 안에만 진행이 되고 토스 전까지 어떠한 동작을 하더라도 문제가 없다는 규칙을 간파한 시도였다.</p>
<p dmcf-pid="xCBEgYkUaU" dmcf-ptype="general">해당 장면은 V리그에서도 발생했다. 지난 26일 펼쳐진 한국전력과 현대캐피탈의 경기에서 ‘이중 서브’ 등장했다.</p>
<p dmcf-pid="yXQSmplfNp" dmcf-ptype="general">2세트 막판 하승우가 서브를 넣는 척하다가 순간적으로 동작을 멈추면서 아흐메드의 포지션 폴트를 유발했다. 최태웅 감독은 직접 공이 손에서 떨어지기 전까지는 문제가 없다는 걸 확인했고 3세트에는 김선호가 같은 모습으로 하승우의 포지션 폴트를 이끌어냈다.</p>
<p dmcf-pid="WpnXvKHRk0" dmcf-ptype="general">상대의 움직임을 예상한 전략이라는 의견과 ‘속임수’라는 주장이 대립하는 가운데 여자부 감독들의 생각은 후자였다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="YzatYf1ic3" dmcf-ptype="figure">
<p class="link_figure"><img alt="차상현 감독/한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101060208704rbzk.jpg" data-org-width="640" dmcf-mid="2gQSmplfa9" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101060208704rbzk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            차상현 감독/한국배구연맹
           </figcaption>
</figure>
<p dmcf-pid="GPOKUibDAF" dmcf-ptype="general">차상현 감독은 31일 장충체육관에서 펼쳐진 흥국생명과의 경기 전에 “개인적인 생각이다. 이중 서브가 좋게 보이지 않는다. 그렇게 가르쳐서도 안되고 훈련을 해서도 안 된다고 생각한다”고 소신 발언을 했다.</p>
<p dmcf-pid="HVD7tMujgt" dmcf-ptype="general">차상현 감독은 정정당당한 모습이 아니라고 강조했다. 차상현 감독은 “서브를 할 때마다 모든 상황이 발생하면 보는 사람으로 하여금 좋지 않은 장면이 연출될 수 있다. 정정 당당한 모습이 필요하다”고 했다.</p>
<p dmcf-pid="X3JGlBYxk1" dmcf-ptype="general">실제로 모든 팀이 해당 규칙을 사용할 경우 매 서브마다 포지션 폴트 논란이 발생할 수 있다. 더욱이 포지션 폴트 자체도 판정에 대해 의견이 갈릴 수 있는 상황이기에 경기의 중요도가 높아질수록 예민한 상황이 발생할 수 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="ZULZT9Xek5" dmcf-ptype="figure">
<p class="link_figure"><img alt="마르첼로 아본단자 감독/한국배구연맹" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101060209968buox.jpg" data-org-width="640" dmcf-mid="fSZd6reWAb" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101060209968buox.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            마르첼로 아본단자 감독/한국배구연맹
           </figcaption>
</figure>
<p dmcf-pid="5wpadlg1oZ" dmcf-ptype="general">디른 여자팀 감독들의 생각도 같았다. 차상현 감독은 “여자부 감독들 단체 채팅방에 여자부만큼은 시도하지 말자고 했고 모든 감독님들도 동의를 하셨다. 변질되어 간다고 생각한다”며 “흥국생명의 마르첼로 아본단자 감독과도 이야기를 했고 같은 의견을 들었다. 오늘 경기에서는 볼 수 없는 장면”일고 했고 실제로 두 팀의 경기 중에 이중 서브는 없었다.</p>
<p dmcf-pid="1CBEgYkUaX" dmcf-ptype="general">이제 시선은 남자부로 모아진다. 같은 날 펼쳐진 OK금융그룹과 현대캐피탈의 경기에서는 이중 서브 논란이 발생하지 않았다. 여자부 감독들은 공통적으로 의견을 모은 만큼 남자부도 결단을 내려야 하는 순간이다.</p>
</section>
</div></p></section></div><h6>[Source : 마이데일리]</h6></div>
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