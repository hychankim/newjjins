
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
    <h3>[박상진의 e스토리] 페이커의 'THE GRIND, THE GLORY'</h3><h6>박상진  2023. 10. 31. 19:11</h6>
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
<section dmcf-sid="YKFGg0hVGS">
<figure class="figure_frm origin_fig" dmcf-pid="GVpZjuv8Zl" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031191120114tcrz.jpg" data-org-width="640" dmcf-mid="89WHaplfZH" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031191120114tcrz.jpg" width="658"/></p>
</figure>
<div dmcf-pid="HfU5A7T6Xh" dmcf-ptype="general">
<br/> 이번 롤드컵의 슬로건은 'THE GRIND, THE GLORY'다. 다양한 의미로 해석될 수 있지만, 고난 끝에 찾아온 영광이라는 의미로도 읽을 수 있다. '페이커' 이상혁 역시 이번 슬로건의 주인공이 되기 위해 노력하고 있다. 2013년과 2015-2016년 3회 우승 이후 7년 동안 페이커는 롤드컵을 눈앞에서 놓치기도 했고, 아예 대회에 출전하지 못하기도 했다. 특히 한국에서 열리는 롤드컵에서 페이커는 주인공이 되지 못했다. 하지만 이번 롤드컵에서 페이커는 예전의 영광을 잊고, 새로운 목표를 향해 도전하고 있다.
          </div>
<div dmcf-pid="XjR4Ydqk1C" dmcf-ptype="general">
           3승 1패로 16강 스위스 스테이지를 통과한 페이커를 지난 아시안게임 이후 처음으로 만날 수 있었다. 이번 롤드컵의 취재 경쟁이 치열한 만큼 인터뷰 기회를 얻기가 쉽지 않았지만, 다행히 좋은 순간 페이커와 인터뷰를 진행했고, 아시안게임 이후 지금까지 이야기와 함께 이번 롤드컵을 향한 페이커의 각오를 들을 수 있었다.
           <br/>   
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="ZAe8GJBEYI" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031191121498sgdp.jpg" data-org-width="640" dmcf-mid="6VdnUkQSZG" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031191121498sgdp.jpg" width="658"/></p>
</figure>
<div dmcf-pid="5cd6HibDYO" dmcf-ptype="general">
<br/> 먼저 페이커는 BLG를 꺾고 8강에 오른 소감에 관해 "3승 1패지만 깔끔했다고 생각하고, 만족하고 있다. 8강전도 기대하고 있다"고 밝혔다. 1패를 기록지만 페이커는 왜 깔끔하다고 했을까. 페이커는 젠지전 패배에 "당시에는 아쉬웠다. 경기에서 패배를 했다는 점도 아쉬웠지만, 그것보다 경기의 흐름이 우리가 생각했던 대로 흘러가지 않았던 점이 더 아쉬웠다. 하지만 젠지전 패배로 빠르게 우리의 문제를 발견할 수 있었고, 이를 바탕으로 경기력을 보완하고 발전할 수 있는 계기가 되었다. 그래서 1패 이후의 경기는 깔끔하다고 생각한다"고 전했다.
          </div>
<div dmcf-pid="1sad3j8C1s" dmcf-ptype="general">
           이어 페이커는 처음으로 치른 스위스 스테이지 방식에 관해 "흥미롭다. 3승 1패를 했지만 2승 1패 당시에 변수가 많아 혼란스러웠지만 흥비로운 포맷이었다"고 설명한 후 T1의 전체적인 경기력에 관해 "서머때는 내가 부상으로 경기에서 빠지고 나서 다시 복귀한 후 다시 손발을 맞출 시간이 굉장히 부족했다. 하지만 이번 롤드컵에서는 서로의 생각이 조금 더 잘 맞아가고 있으며, 경기력 면에서도 선수들이 더 성장할 수 있는 가능성이 있다. 우리의 경기력은 앞으로 더 좋아질 것이다"며 자신감을 보였다.
           <br/>   
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="tONJ0A6h1m" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031191122725ockt.jpg" data-org-width="640" dmcf-mid="PXQRtafOtY" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031191122725ockt.jpg" width="658"/></p>
</figure>
<div dmcf-pid="Fn8blP0g1r" dmcf-ptype="general">
<br/> T1은 페이커가 손목 부상으로 결장한 사이 5위까지 순위가 내려가며 위기를 맞았다. 하지만 페이커가 복귀하고 T1은 결승까지 오를 정도로 빠르게 경기력을 회복했다. 그렇다면 시간이 지난 지금의 페이커의 손목 상태는 어떨까. "부상 이후 자세를 교정하면서 통증은 상당히 완화됐다. 자세도 적응되어 이제 경기를 할만한 충분한 모습을 보일 수 있다"며 페이커는 현재 상태를 전했다.
          </div>
<div dmcf-pid="3L6KSQpatw" dmcf-ptype="general">
           특히 이날 승리를 거둔 BLG는 지난 MSI에서 T1에게 탈락을 상처를 남긴 팀이다. 최근 대회에서 계속 상위 라운드에서 탈락하며 아쉬움을 남긴 T1에게 BLG전 승리가 의미있는 이유이기도 하다. 페이커 역시 "BLG는 지난 MSI때 우리가 충분히 이길 수 있는 팀이라고 생각했지만 패했다. 그래도 이번 경기에서 지난 탈락의 아쉬움을 갚아준 거 같아 좋다"라며 다시 한 번 승리 소감을 전했다.
           <br/>   
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="0oP9vxUNtD" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031191124665bpcj.jpg" data-org-width="640" dmcf-mid="QKTWLFI9ZW" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031191124665bpcj.jpg" width="658"/></p>
</figure>
<div dmcf-pid="pxbpr9XeYE" dmcf-ptype="general">
<br/> 지난 서머 스플릿 이후 페이커는 아시안게임 국가대표로 차출되어 금메달을 획득했다. 페이커 뿐만 아니라 '제우스' 최우제와 '케리아' 류민석도 함께 아시안게임에 출전했다. 단순히 생각하면 팀 훈련 시간이 줄었지만, 임재현 감독대행은 포모스와 진행한 지난 인터뷰에서 "국가대표팀으로 차출됐던 선수들이 금메달 획득을 하며 얻어온 경험이 나머지 두 선수에게 잘 전달되어 전체적으로 팀 경기력이 올랐다"고 전했다. 그렇다면 페이커는 팀 합류 이후 어떤 생각이었을까.
          </div>
<div dmcf-pid="UMKUm2Zdtk" dmcf-ptype="general">
           "아시안게임이라는 새로운 환경과 새로운 팀에서 경험할 수 있는 귀중한 시간에서 얻은 경험이 있었다. 이런 경험을 T1 전체가 공유하고 발전하는데 시간을 쓴다면 모두가 충분히 발전할 수 있을 거로 생각했다"는 것이 페이커의 생각이다. "물론 같이 하지 못한 시간이 있었지만, 지금은 다시 예전 이상으로 손발이 잘 맞고 있다. 특히 이번 대회에서 이전보다 팀 내부에서 소통을 많이 하고 있다"며 페이커는 팀 분위기를 전하기도 했다.
           <br/>   
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="uR9usV5JHc" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031191126098gwaf.jpg" data-org-width="640" dmcf-mid="x3TWLFI9Gy" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031191126098gwaf.jpg" width="658"/></p>
</figure>
<div dmcf-pid="7uHSdZrq5A" dmcf-ptype="general">
<br/> 페이커는 지난 방송 인터뷰에서 "이전의 우승은 나의 과거의 영광이고, 내 미래와는 무관한 일이다"라고 말했다. 과거의 업적에 연연하지 않고, 오직 자신 이뤄야 할 앞으로의 목표에 집중한다는 이야기다. 이번 롤드컵의 슬로건은 'The Grind, The Glory'다. 2016년 롤드컵 우승 이후 페이커가 겪어온 과정이 'The Grind'라면, 앞으로 있을 페이커의 'The Glory'는 무엇일까.
          </div>
<div dmcf-pid="z7XvJ5mBYj" dmcf-ptype="general">
           "짧게는 이번 대회의 우승이다. 장기적으로는 건강 관리를 하면서, 동시에 많은 것을 성취하고 싶다" 페이커의 답이었다. 그렇다면 페이커가 생각하는 이번 대회의 영광을 위해 자신이 넘어야 하는 상대는 무엇일지, 페이커는 이 질문에 관해 "지금은 JDG와 젠지 두 팀이 가장 강력한 상대다. 그래서 나는 빨리 이 두 팀을 만나 경기하고 싶다"며 자신감을 보였다.
           <br/>   
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="qzZTi1sbGN" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031191127439vflp.jpg" data-org-width="640" dmcf-mid="yv6QZL9rGT" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031191127439vflp.jpg" width="658"/></p>
</figure>
<div dmcf-pid="BDnx5o2mHa" dmcf-ptype="general">
<br/> 이번 대회 오프닝의 압권은 마지막 페이커의 등장 순간이다. 2017년 페이커는 롤드컵 결승에서 패하며 눈물을 보인 적이 있었다. 그리고 그 장면을 이어 연출된 등장씬은 전 세계를 진동시켰다. 장면의 주인공인 페이커는 이 장면을 "화면을 보니까 굉장히 잘 합성된 거 같아서 마음에 들었다"고 전했다. 처음 포즈를 요청받았을 때는 "그냥 그렇게 해달라고 해서 했다"라며 당시를 전했다.
          </div>
<p dmcf-pid="bwLM1gVsZg" dmcf-ptype="general">7년의 'The Grind'를 넘어, 그동안의 화려한 커리어와는 인연이 없었던 한국 롤드컵에서 다시 'The Glory'를 재현하려는 페이커. 페이커는 "이번 롤드컵을 기대하고, T1을 응원해주시는 팬들이 굉장히 많은데, 앞으로 남은 시간 열심히 준비하고 제대로 경기해서 마지막에 꼭 믿고 응원해준 팬들이 즐거워 할 수 있도록 열심히 하겠다"고 인터뷰를 마치며 팬들에게 인사를 전했다.</p>
<div dmcf-pid="KroRtafOGo" dmcf-ptype="general">
           페이커의 소속팀 T1은 오는 11월 5일 부산 사직체육관에서 중국 LNG와 4강 진출을 놓고 5판 3선승제로 대결한다.
           <br/>   
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="95lr8vNFHL" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/fomos/20231031191128889otjd.jpg" data-org-width="640" dmcf-mid="WhTOQWcpGv" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/fomos/20231031191128889otjd.jpg" width="658"/></p>
</figure>
<div dmcf-pid="21Sm6Tj3Gn" dmcf-ptype="general">
             
           <br/>박상진 vallen@fomos.co.kr
           <br/>[게임&amp;게이머, 문화를 전합니다. 포모스게임│무단 전재 및 재배포 금지]
          </div>
</section>
</div></p></section></div><h6>[Source : 포모스]</h6></div>
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