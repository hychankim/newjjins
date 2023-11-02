
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
    <h3>'2시간 500구' 국민타자와 1대1 특타, 115억 거포 개조한다…"나 믿고 해보자"</h3><h6>김민경 기자  2023. 11. 1. 06:36</h6>
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
<section dmcf-sid="B7QfRCLZh1">
<figure class="figure_frm origin_fig" dmcf-pid="bzx4eho5h5" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 이승엽 두산 베어스 감독(왼쪽)이 김재환의 타격을 직접 지도하고 있다. ⓒ 이천, 김민경 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063625858mwnp.jpg" data-org-width="900" dmcf-mid="U7rkI7T6Tp" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063625858mwnp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 이승엽 두산 베어스 감독(왼쪽)이 김재환의 타격을 직접 지도하고 있다. ⓒ 이천, 김민경 기자
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="KBR6JSatWZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 이승엽 두산 베어스 감독과 김재환 ⓒ 이천, 김민경 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063628263cmnd.jpg" data-org-width="900" dmcf-mid="uma4eho5C0" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063628263cmnd.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 이승엽 두산 베어스 감독과 김재환 ⓒ 이천, 김민경 기자
           </figcaption>
</figure>
<p dmcf-pid="9bePivNFvX" dmcf-ptype="general">[스포티비뉴스=이천, 김민경 기자] "나 믿고 해보자고 이야기했다." </p>
<p dmcf-pid="2KdQnTj3yH" dmcf-ptype="general">이승엽 두산 베어스 감독은 지난달 31일 이천베어스파크에서 진행한 마무리캠프 첫날 김재환(35)을 실내 훈련장으로 따로 불렀다. 선수는 김재환뿐이었고, 티볼을 올려주는 직원 1명, 타격 영상을 촬영하는 직원 1명이 함께했다. 이 감독은 두꺼운 겉옷도 벗어둔 채 2시간 동안 열정적으로 김재환을 지도했고, 김재환은 묵묵히 공이 가득 채워진 바구니 2개를 비웠다. 한 바구니당 250구씩, 총 500구를 친 뒤에야 김재환은 배트를 내려놓을 수 있었다. </p>
<p dmcf-pid="VfLeaGEuWG" dmcf-ptype="general">김재환은 베테랑 주전 가운데 유일하게 이번 마무리캠프 명단에 이름을 올렸다. 이 감독이 요청해서였다. 김재환은 지난 시즌을 앞두고 두산과 4년 115억원 FA 계약에 성공하면서 4번타자로서 가치를 인정받았다. 그런데 지난해 23홈런, 타율 0.248(448타수 111안타), 72타점에 그치면서 아쉬움을 삼켰다. 중심타자로서 자존심과 같았던 100타점을 넘기지 못하기도 했고, 30홈런을 채우지 못한 아쉬움도 있었다. </p>
<p dmcf-pid="f4odNHD7SY" dmcf-ptype="general">올해 '국민타자' 이 감독과 함께하면서 반등을 기대했다. 이 감독은 김재환에게 30홈런 이상 쳐줄 것을 주문하되 타격 지도에 깊게 관여하진 않았다. 고토 고지 타격코치가 김재환을 전담할 수 있도록 맡겼고, 고토 코치와 김재환은 시즌 내내 경기 전후로 특타를 진행할 정도로 열심이었다. </p>
<p dmcf-pid="4sXy1xUNyW" dmcf-ptype="general">그런데 결과가 좋지 못했다. 김재환은 올해 132경기에서 타율 0.220(405타수 89안타), 10홈런, 46타점에 그쳤다. 장타율은 0.331까지 떨어졌다. 20홈런을 넘기지 못한 건 2019년(15홈런) 이후 4년 만이었고, 장타율이 0.400 아래로 떨어진 건 주전으로 도약한 2016년 이후 처음 있는 일이었다. 50타점을 넘기지 못한 것도 주전으로 도약한 이래 처음이었다. 김재환 스스로도 충격이 클 수밖에 없는 성적표였다. </p>
<p dmcf-pid="8OZWtMujSy" dmcf-ptype="general">1년 동안 묵묵히 김재환이 고생하는 것을 지켜본 이 감독은 마무리캠프를 앞두고 적극적으로 손을 내밀었다. 올 시즌 지켜본 문제점들을 토대로 방향을 다시 정해 고쳐 나가보자고 했다. 사령탑이 적극적인 지원을 약속하니 김재환은 믿고 손을 잡았다. </p>
<p dmcf-pid="6I5YFR7AWT" dmcf-ptype="general">이 감독은 "김재환이 1년 동안 그렇게 반전은 없었다. 지난해 홈런 23개를 쳤는데, 부진을 털기 위해 타격코치와 이야기를 나누며 무던히 노력했는데 기량이 안 나왔다. 최악의 성적표를 받은 것 같다. 나도 1년 동안 재환이를 보면서 느낀 점도 있고, 어떻게 하면 지금보다 좋아질 수 있다는 생각이 있었다. 그래서 재환이에게 (마무리캠프 참가를) 요청했다"고 이야기했다. </p>
<p dmcf-pid="PlFXpJBEWv" dmcf-ptype="general">이어 "시즌 때는 재환이와 2번 정도 연습을 했다. 시즌 중이라 내가 더 깊게 들어가지 못했지만, 이제는 시즌이 끝났다. 1년 동안 타격코치와 잡지 못했던 것들을 이번 마무리캠프에서는 내가 했던 경험, 내가 봤던 재환이를 생각하며 믿고 해보자고 이야기했다. 이번 캠프 동안 조금 더 재환이가 집중해서 예전 기량을 찾을 수 있도록 같이 해보겠다"고 덧붙였다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="QS3ZUibDWS" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 김재환 ⓒ 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063630398vyfs.jpg" data-org-width="900" dmcf-mid="7LEMoWcpT3" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063630398vyfs.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 김재환 ⓒ 연합뉴스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="xv05unKwyl" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 두산 베어스 김재환 ⓒ 곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063632451ryhg.jpg" data-org-width="900" dmcf-mid="zZ9zfExvCF" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063632451ryhg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 두산 베어스 김재환 ⓒ 곽혜미 기자
           </figcaption>
</figure>
<p dmcf-pid="yjlsT9XeSh" dmcf-ptype="general">이 감독이 1대1 특훈을 요청할 정도로 김재환은 두산 타선에서 없어서는 안 될 존재다. 올해 팀 내 홈런 1, 2위를 차지했던 양석환(21홈런)과 호세 로하스(19홈런)와 내년에도 함께할 수 있을지 불투명한 상황이라 더더욱 그렇다. 양석환은 곧 FA 시장에 나갈 예정이고, 로하스는 재계약 여부를 두고 구단이 고심하고 있다. 양의지와 함께 김재환이 20~30홈런 정도는 칠 수 있는 상수가 돼야 다음 시즌 구상이 훨씬 수월해질 수 있다. </p>
<p dmcf-pid="WASOy2ZdSC" dmcf-ptype="general">이 감독은 "재환이가 워낙 차지하는 비중이 크다. 흔히 두산 팬들이 재환이가 치면 이기고, 못 치면 진다고 하지 않나. 팀 분위기에도 영향이 있다. 1년 동안 팀에 있으면서 재환이의 임무가 중요하다는 것을 깨달았다. 될지 안 될지 모르겠지만, 마무리캠프 동안 해보려고 한다"고 힘줘 말했다. </p>
<p dmcf-pid="YcvIWV5JlI" dmcf-ptype="general">이 감독은 김재환이 치는 공 하나하나를 놓치지 않고 유심히 지켜봤다. 그때그때 수정해야 할 것들을 조언하면서 김재환과 함께 구슬땀을 흘렸다. 하루 2시간, 공 500개로 해결될 문제는 아닐지라도 내년에는 김재환이 여러모로 덜 고생했으면 하는 마음이 지도 과정에서 잘 보였다. </p>
<p dmcf-pid="GhtH0dqkvO" dmcf-ptype="general">김재환이 전성기 때와는 다르다는 것을 인정하고, 달라지는 쪽에 무게를 두려 한다. 이 감독은 "재환이가 치는 스피드는 떨어졌다고 생각하지 않는데, 전반적인 몸의 스피드는 떨어졌다. 수비 움직임을 봐도 그렇다. 부상 여파도 있긴 했지만, 타격할 때 공에 대응하는 것을 봐도 그렇다. 컨디션이 좋을 때는 누구도 어떤 공이 들어와도 친다. 슬럼프에 빠졌을 때 헤쳐 나가는 노하우를 알려주고 싶다. 또 밸런스가 무너져 있다"고 문제점을 짚었다. </p>
<p dmcf-pid="HlFXpJBESs" dmcf-ptype="general">이어 "좋았을 때 김재환과 지금을 비교할 수는 없다. 4~5년 지난 상태고, 신체 변화와 멘털 변화도 고려해야 한다. 지금 김재환의 몸과 마음 상태에서 가장 좋은 성적을 낼 수 있는 폼을 나도 찾아보려 한다. 가을에는 내가 조금 더 신경을 써 보겠다"고 덧붙이며 4번타자 김재환이 돌아올 수 있도록 함께 노력해 보겠다고 다짐했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="XJwAsUS4Tm" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 이승엽 감독은 김재환(32번)의 부활을 누구보다 기다리고 있다. ⓒ두산 베어스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063633765eehp.jpg" data-org-width="900" dmcf-mid="qvENr0hVvt" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101063633765eehp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 이승엽 감독은 김재환(32번)의 부활을 누구보다 기다리고 있다. ⓒ두산 베어스
           </figcaption>
</figure>
<p dmcf-pid="ZircOuv8Sr" dmcf-ptype="general">&lt;저작권자 ⓒ SPOTV NEWS. 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 스포티비뉴스]</h6></div>
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