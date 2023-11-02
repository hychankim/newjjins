
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
    <h3>그린홈 벗어난 '스위트홈2', 본격 아포칼립스 시작…12월 1일 공개 [공식입장]</h3><h6>윤현지 기자  2023. 11. 1. 09:08</h6>
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
<section dmcf-sid="pLkP8xUNFc">
<figure class="figure_frm origin_fig" dmcf-pid="UeaV94tnzA" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101090854076wbms.jpg" data-org-width="550" dmcf-mid="3gWANkQSUE" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101090854076wbms.jpg" width="658"/></p>
</figure>
<p dmcf-pid="udNf28FLuj" dmcf-ptype="general">(엑스포츠뉴스 윤현지 기자) 넷플릭스가 '스위트홈' 시즌2 공개를 12월 1일로 확정하고 론칭 포스터와 론칭 예고편을 함께 세상에 내놓았다.</p>
<p dmcf-pid="7Jj4V63opN" dmcf-ptype="general">'스위트홈' 시즌2는 욕망이 괴물이 되는 세상, 그린홈을 떠나 새로운 터전에서 살아남기 위해 각자의 사투를 벌이는 현수(송강 분)와 그린홈의 생존자들 그리고 또 다른 존재의 등장과 알 수 없는 미스터리한 현상들까지 새로운 욕망과 사건, 사투를 그린 넷플릭스 시리즈다.</p>
<p dmcf-pid="z2xp3uv8ua" dmcf-ptype="general">론칭 포스터는 시즌1의 배경이었던 그린홈을 벗어나 파괴된 야구 스타디움을 보여준다. 시즌1에서 괴물과 사투를 벌어야 했던 주민들은 더 이상 그린홈에서 버티지 못하고 세상 밖으로 나온다. </p>
<p dmcf-pid="qVMU07T6Ug" dmcf-ptype="general">도처에 모인 생존자들이 파괴된 스타디움에서 공동체를 이뤄 살아가지만 그곳도 안심할 순 없다. 외부의 괴물 그리고 내면의 욕망과도 싸워야 하는 이들이 새로운 곳에서 또 어떤 위험과 마주할지 더 커지고 진화된 이야기에 궁금증이 증폭되고 있다.</p>
<p dmcf-pid="BfRupzyPzo" dmcf-ptype="general">함께 공개된 예고편은 쇠창살에 갇혀 어디론가 끌려온 차현수로 시작한다. 맨몸 위로 조명이 떨어지고 자신을 기다려 왔다는 상대방에게 현수는 결심한 듯 무엇을 하면 되는지 묻는다. </p>
<p dmcf-pid="b6Jq7bGMUL" dmcf-ptype="general">끝나지 않은 괴물화 사태에 혼란에 빠진 생존자들과 무리를 지어 날뛰는 괴물들이 더욱 커진 세계관을 암시하며 ‘MH-5’ 혹은 ‘이 모든 걸 끝낼 구세주’라고 불리는 현수가 어떤 키를 쥐고 있을지 귀추가 주목되고 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="KPiBzKHRun" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101090855475vlxm.jpg" data-org-width="768" dmcf-mid="096F10hV3k" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101090855475vlxm.jpg" width="658"/></p>
</figure>
<p dmcf-pid="9Qnbq9Xezi" dmcf-ptype="general">원작 웹툰과 다르게 진행되는 '스위트홈' 시즌2만의 고유한 스토리를 위해 이응복 감독은 김칸비 작가에게 자문을 받고 원작의 숨겨진 설정과 확장된 세계관에 대해 심도 있게 논의했다. </p>
<p dmcf-pid="2H0COlg13J" dmcf-ptype="general">이응복 감독은 "본격적인 아포칼립스물이다. 시즌1이 그린홈이라는 한정된 공간에서 밀실 공포를 다뤘다면 시즌2는 광장으로 나왔고 새로운 인물과 괴물이 대거 등장한다"고 설명해 호기심을 유발했다. </p>
<p dmcf-pid="VXphISatFd" dmcf-ptype="general">배우들 또한 "원작에서 벗어난 세계관을 표현하게 된다. 더 넓어진 세계관만큼 여러 가지 생각해 볼 것들이 많이 생긴다"(이진욱), "그린홈 밖으로 나오게 되면서 엄청나게 큰 세상이 열린다. 모든 인물이 큰 변화를 겪게 된다"(이시영)고 언급해 시즌2가 보여줄 스토리에 기대감을 더했다.</p>
<p dmcf-pid="f3BWTGEu3e" dmcf-ptype="general">'스위트홈' 시즌2는 오는 12월 1일 넷플릭스에서 공개될 예정이다.</p>
<p dmcf-pid="40bYyHD77R" dmcf-ptype="general">사진=넷플릭스</p>
<p dmcf-pid="8pKGWXwzpM" dmcf-ptype="general">윤현지 기자 yhj@xportsnews.com </p>
</section>
</div></p></section></div><h6>[Source : 엑스포츠뉴스]</h6></div>
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