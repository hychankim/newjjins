
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
    <h3>'목동 출신' 전현무, 입시지옥 회상 "연세대, 재수하며 힘들게 갔다"[티처스]</h3><h6>한해선 기자  2023. 11. 1. 09:06</h6>
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
<section dmcf-sid="bnrzUqWQS3">
<div dmcf-pid="KbRTlyA0SF" dmcf-ptype="general">
           [스타뉴스 | 한해선 기자] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="9mGx6MujTt" dmcf-ptype="figure">
<p class="link_figure"><img alt="/사진=채널A" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101090637140jjwg.jpg" data-org-width="1024" dmcf-mid="q6OienKwyp" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101090637140jjwg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            /사진=채널A
           </figcaption>
</figure>
<div dmcf-pid="2sHMPR7Av1" dmcf-ptype="general">
<br/>방송인 전현무가 자신의 재수 시절을 회상했다.
          </div>
<p dmcf-pid="VOXRQezcy5" dmcf-ptype="general">성적이 고민인 학생과 가족에게 대한민국 최고의 강사들이 맞춤 솔루션을 제공할 채널A '성적을 부탁해 : 티처스'의 메인 MC로 나서는 전현무가 "출연 안 할 수 없는 프로그램이었다"고 11월 5일 저녁 7시 50분 첫 방송되는 '티처스'에 대한 애정을 드러냈다. </p>
<p dmcf-pid="fF2rEmdYlZ" dmcf-ptype="general">명문대 출신 '브레인'이자 '목동의 자랑'으로 불리는 전현무이지만, 사실 재수까지 하며 만만찮은 입시 지옥을 거쳤다. 그는 "굉장히 힘들게 대학을 갔는데, 만약 그 당시에 '티처스' 같은 프로그램과 이렇게 훌륭한 강사님들이 있었다면 저도 한 번에 원하는 대학을 가지 않았을까 한다"며 '국가대표 1타강사' 정승제X조정식에 대한 신뢰도 밝혔다. 또 그는 "너무나 놀랍게도 여전히 선행학습과 '치맛바람'은 제가 학생 때와 그대로였다"며 "그래서 제가 해 줄 수 있는 말이 많다"고 자신만의 역할 또한 장담했다. 다음은 전현무와의 일문일답.</p>
<p dmcf-pid="43VmDsJGlX" dmcf-ptype="general">Q. '티처스' 프로그램의 첫인상과 출연을 결정하신 이유를 설명 부탁드립니다. </p>
<p dmcf-pid="85C9B2ZdhH" dmcf-ptype="general">-입시 제도에 시달렸던 저로서는 출연을 안 할 수가 없었습니다. 고3, 그리고 재수까지 하면서 굉장히 힘들게 힘들게 대학을 갔습니다. 만약에 그 당시에 '티처스' 같은 프로가 있었다면, 그리고 이렇게 훌륭한 강사님들을 미리 만났었다면 저도 재수 안 하고 한 번에 원하는 대학을 가지 않았을까 하는 생각이 들고요. 입시 제도가 수시로 바뀌고, 또 너무나 많은 경쟁이 있는 상황에서 이런 가이드라인을 주는 방송이 하나라도 더 있는 게 학생들에게는 굉장히 큰 도움이 될 거라 생각하거든요. 저도 예전 제 경험을 잘 기억해내서 지금 이제 수능을 앞둔 고3은 물론 고2, 고1과 넓게는 중학생들에게까지 큰 도움을 주고 싶습니다. 남 일 같지 않아서 출연했습니다.</p>
<p dmcf-pid="61h2bV5JCG" dmcf-ptype="general">Q. 널리 알려진 대로 입시, 교육에 대해 다양한 경험치를 가지고 계신데요. '티처스' 촬영을 통해 새롭게 깨닫거나 알게 된 것이 있다면 말씀 부탁드립니다.</p>
<p dmcf-pid="PtlVKf1ilY" dmcf-ptype="general">-너무나 놀랍게도 영어와 수학을 가르치는 것도 비슷하고, 우리 학생들이 고민하는 부분도 비슷해요. 이런 것들에 좀 놀랐어요. 세월이 좀 많이 지났기 때문에 많이 달라졌을 줄 알았는데. 물론 예전에 비해서는 많이 창의적인 교육을 하고 있는 건 사실이지만 영어 같은 경우는 여전히 문법 위주의 교육이 있고, 그래서 그걸로 고민을 합니다. 왜냐하면 문법 위주로 교육을 받다 보면, 저는 외국어고를 나왔음에도 듣기나 독해에서 좀 많이 어려움이 있었거든요. 그런데 아직도 많은 학생들이 그런 교육 위주로 받다 보니, 영어를 실질적으로 잘하는 데 좀 장애가 있는 것 같아요. 수학 같은 경우도 아직도 선행학습이 있구나 싶어서 놀랐습니다. 중학교 3학년 때, 고1~2 과정까지 미리 공부를 하지 않으면 불안해 하고, 그로 인해서 어머님들끼리 모임을 갖고...흔히들 나쁘게 표현해서 '치맛바람'이라고 하잖아요. '그런 게 아직도 있구나', '세월이 이렇게 지났어도 이 교육 현실은 거의 변함이 없구나'라며 가장 크게 놀랐습니다. 그래서 오히려 제가 또 해줄 수 있는 말이 많은 것 같아요. 저는 많이 문화가 바뀌었을까 봐, 너무 내 얘기는 옛날 얘기 아닌가 하는 두려움이 있었는데, 거의 비슷합니다. 그냥 제가 대학생 때 제 후배들, 고등학생들에게 상담해줬던 내용을 그대로 적용해도 좋을 만큼 변함이 별로 없어요. 그래서 제가 더 선배로서 기여할 수 있는 바가 있지 않을까 하는 생각이 듭니다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="QZIKq9XeSW" dmcf-ptype="figure">
<p class="link_figure"><img alt="/사진=채널A" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101090638620jgnf.jpg" data-org-width="1024" dmcf-mid="Bma1XtOKv0" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101090638620jgnf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            /사진=채널A
           </figcaption>
</figure>
<div dmcf-pid="x5C9B2Zdhy" dmcf-ptype="general">
<br/>Q. 학창시절 성적은 물론 학업이나 진로 등으로 분명히 고민해 보셨을 텐데, 어떤 고민을 하셨을까요?
          </div>
<p dmcf-pid="ynfswOiHvT" dmcf-ptype="general">-그 당시 저는 진로에 대한 고민보다는, 그냥 '어느 대학'이 문제였어요. 목표하는 대학들이 있으니까요. 학교에서 기대하는 것도 있고 부모님들이 기대하는 것도 있고 해서, '어느 학교 어느 과 이상은 가야 된다'가 유일한 고민이었던 것 같아요. 진로는 그 다음 문제고. 어머니가 늘 하셨던 말씀이 '대학 가서, 원하는 대학 가서 네가 원하는 걸 해라. 너의 진로에 대해서는 터치하지 않겠다. 하지만 이 이상의 대학까지 가라'라는 얘기였어요. 되게 많이 들었는데, 그래서 진로에 대한 생각은 거의 못했어요. '문과고, 이 정도 이상은 가야 된다'라는 생각밖에는 없었던 것 같아요. </p>
<p dmcf-pid="WOg5H1sblv" dmcf-ptype="general">Q. MC로서 이 프로그램에서 어떤 역할을 하시고 싶으신지요? '나밖에 할 수 없는 역할이 있다!'는 생각이 드시는 부분을 설명 부탁드립니다.</p>
<p dmcf-pid="YIa1XtOKCS" dmcf-ptype="general">-우리 정승제X조정식 선생님은 지금 현업에 계신 분으로서 전문적이고 실질적인 얘기를 해 주시겠지만, 저도 못지않게 경험담을 얘기해 줄 수 있을 것 같습니다. 저도 학원도 다녀봤고 재수도 해봤고, 과외도 받아봤고, 과외 선생님으로 가르쳐본 적도 있고. 여러 가지 역할을 해봤기 때문에요. 그리고 교육 내용이 그닥 바뀌지 않았기 때문에 제 경험담을 녹여준다면, 저는 사실 MC이자, 약간 차이는 좀 많이 있지만 먼저 대학을 갔던 선배로서 조언자 역할을 할 수 있을 것 같아요. '티처스'에 나오는 학생들 중에는, 공부 성적이 안 좋은 친구들도 있지만 이미 좋은데 극상위권으로 더 성적을 끌어올리려는 학생들도 꽤 있거든요. 이미 충분한 게 아닌가 싶은데 더 높은 곳을 바라보는 학생들에게 특히 제 살아있는 경험을 전수해 줄 수 있을 것 같습니다. 공부법이라든가, 자기 관리 요령이라든가, 수능을 몇 달 앞두고 어떻게 준비를 해야 되는지 등등...그런 것들은 생생하게 기억이 나니까 그 얘기를 해줄 수 있을 것 같습니다.</p>
<p dmcf-pid="GjxSCvNFWl" dmcf-ptype="general">Q. 다른 MC들, 그리고 정승제X조정식 강사님들과의 케미스트리는 어떤지 궁금합니다.</p>
<p dmcf-pid="HAMvhTj3lh" dmcf-ptype="general">-정승제X조정식 선생님들과의 케미스트리는 환상적입니다. 정승제X조정식 쌤은 회사가 다른 걸로 알고 있는데 이미 알고 있던 분들처럼, 서로 무슨 예능하는 예능인들처럼 티키타카가 너무 좋고요. 한혜진 씨와 장영란 씨는 또 아기 엄마, 학부모 입장이고 저는 어떻게 보면 또 학생 입장에서 얘기를 하다 보니까...그냥 우리 다섯 명은 이미 알던 사람들인 것 같습니다. 이미 오랫동안 프로그램을 해왔던 것 같은 정말 환상적인 케미를 자랑합니다. 지금 수능이 닥친 가운데 이 프로그램이 만들어졌지만, 앞으로 이 프로그램이 시즌제로 계속된다면 학기 초부터 어떻게 준비를 해 가야 되는지까지 같이 얘기해 볼 수 있는, 굉장히 훌륭한 케미를 보여주고 있습니다. 새로 생긴 프로그램이라고 보기 힘들 정도로 굉장히 놀랍고, 이미 해왔던 방송 같은 느낌이 들 정도로 궁합이 좋습니다.</p>
<p dmcf-pid="XcRTlyA0CC" dmcf-ptype="general">'티처스'는 3MC 전현무X한혜진X장영란, 그리고 국가대표 1타강사들 정승제X조정식이 함께하는 성적 향상 프로젝트다.</p>
<p dmcf-pid="ZyDu07T6hI" dmcf-ptype="general">한해선 기자 hhs422@mtstarnews.com</p>
</section>
</div></p></section></div><h6>[Source : 스타뉴스]</h6></div>
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