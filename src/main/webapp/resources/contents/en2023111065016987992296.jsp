
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
    <h3>'워터멜론' 정상훈, 려운♥설인아 불행 암시?…"늦은 건 아니어야 할 텐데" [전일야화]</h3><h6>이이진 기자  2023. 11. 1. 06:50</h6>
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
<section dmcf-sid="ttMZfExvpF">
<figure class="figure_frm origin_fig" dmcf-pid="FKjqivNFzt" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065008199ulgo.jpg" data-org-width="550" dmcf-mid="XWYesUS4uU" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065008199ulgo.jpg" width="658"/></p>
</figure>
<p dmcf-pid="39ABnTj3p1" dmcf-ptype="general">(엑스포츠뉴스 이이진 기자) '반짝이는 워터멜론' 려운이 설인아에게 고백했다.</p>
<p dmcf-pid="02cbLyA005" dmcf-ptype="general">지난달 31일 방송된 tvN 월화드라마 '반짝이는 워터멜론' 12회에서는 하은결(려운 분)이 온은유(설인아)가 미래에서 온 어른세경(이소연)의 딸이라는 사실을 모른 채 사랑에 빠진 모습이 그려졌다.</p>
<p dmcf-pid="pdlMr0hVFZ" dmcf-ptype="general">이날 하은결은 온은유가 미래에서 온 어른세경(이소연)의 딸이라는 것을 모른 채 좋아하는 감정을 느꼈다. 하은결은 영화관에서 데이트를 하려던 중 하이찬(최현욱)에게 닥칠 사고를 막기 위해 온은유를 혼자 두고 자리를 떠났다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="UJSRmplfzX" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065009490jjxl.jpg" data-org-width="550" dmcf-mid="ZQn18wRy3p" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065009490jjxl.jpg" width="658"/></p>
</figure>
<p dmcf-pid="uivesUS43H" dmcf-ptype="general">이후 하은결은 온은유를 혼자 뒀다는 사실을 깨닫고 당황했다. 하은결과 온은유는 학교에서 만났고, 하은결은 "언젠가 때가 되면 말해주겠다던 그 비밀 지금 다 말할게. 네가 믿어줄지는 모르겠지만 사실 나"라며 털어놨다.</p>
<p dmcf-pid="7pJFPmdY7G" dmcf-ptype="general">온은유는 "우리 엄마 아빠가 이혼을 했거든? 서로 나를 갖겠다고 일 년에 열두 달을 싸웠어. 사랑받는 줄 알았지. 아니더라. 목표와 목적이 있었어. 아빠는 자식 버린 나쁜 사람이 되기 싫어서.  엄마는 엄마 인생을 빛내줄 화려한 장신구가 필요해서. 필요할 때만 이용 가치 있을 때만 사랑받는 아이 안 해. 누군가의 트로피도 전리품이도 되어줄 생각 없어"라며 분노했다.</p>
<p dmcf-pid="zUi3QsJGzY" dmcf-ptype="general">온은유는 "사냥이잖아. 전리품을 획득하고 싶은 수컷들의 본능. 다르다고 하지 마. 다르지 않아. 박제해서 걸어두고 무용담 오지게 우려먹다 약발 떨어지면 먼지가 쌓이든 말든 없어지든 말든 그대로 방치. 포기해. 난 절대 너한테 안 잡혀. 포획돼서 누군가의 자랑거리로 박제되기 싫어"라며 당부했다.</p>
<p dmcf-pid="qun0xOiHFW" dmcf-ptype="general">하은결은 "그래서 이찬이 선택할 거야?"라며 걱정했고, 온은유는 "무슨 상관인데"라며 쏘아붙였다. 하은결은 "그럴 거면 축제에 오지 마. 올 거면 날 선택해 줘"라며 사정했고, 온은유는 "꺼져. 어디서 같잖은 명령이야"라며 독설했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="BzoURCLZUy" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065010894tvea.jpg" data-org-width="550" dmcf-mid="13jqivNFF3" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065010894tvea.jpg" width="658"/></p>
</figure>
<p dmcf-pid="bqgueho5UT" dmcf-ptype="general">또 온은유는 자신이 살던 세상으로 돌아가기로 결심했고, 하은결은 온은유가 유학을 떠난다는 소식을 듣고 쫓아갔다. 하은결은 끝내 온은유를 찾아냈고, 온은유는 빗속에 주저앉아 있었다.</p>
<p dmcf-pid="K9ABnTj33v" dmcf-ptype="general">하은결은 우산을 씌워줬고, "왜 혼자 울고 있어. 속상하게"라며 애틋함을 드러냈다. 온은유는 "돌아가는 방법을 모르겠어. 가서 엄마 아빠한테 확인할 것도 있는데. 물어볼 것도 있는데. 여기 올 때처럼 쉽게 돌아갈 수 있을 줄 알았는데 길을 못 찾겠어. 다시 안 돌아갈 생각도 했었는데 이제 가고 싶어도 못 가. 나 이대로 못 돌아가면 어떻게 해?"라며 눈시울을 붉혔다.</p>
<p dmcf-pid="92cbLyA0US" dmcf-ptype="general">하은결은 "내가 도와줄게. 어떻게든. 무슨 수를 써서든 방법을 찾아볼게. 근데 지금은 나랑 여기 있자. 같이 있자. 나랑. 너랑 나랑은 사는 세상이 다르다고 했지. 상관없어. 네가 누구여도 상관없어. 네가 아줌마여도 상관없고 네가 좀비여도 상관없어. 그러니까 우린 같이 있자"라며 고백했다.</p>
<p dmcf-pid="2VkKoWcp3l" dmcf-ptype="general">특히 마스터(정상훈)는 하은결과 온은유를 TV로 지켜보고 있었고, "이제야 조력자를 찾은 모양이군요. 너무 늦은 건 아니어야 할 텐데"라며 극의 긴장감을 높였다.</p>
<p dmcf-pid="Vr0EX63oFh" dmcf-ptype="general">사진 = tvN 방송 화면</p>
<p dmcf-pid="fmpDZP0gpC" dmcf-ptype="general">이이진 기자 leeeejin@xportsnews.com </p>
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