
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
    <h3>"가까이 오지 마세요" PS 미친 타격감 박건우 사실 감기 투혼이었다…"가을에 약했으니까, 이겨내야죠"</h3><h6>신원철 기자  2023. 11. 1. 06:56</h6>
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
<section dmcf-sid="bcptEtOKWd">
<figure class="figure_frm origin_fig" dmcf-pid="Kg1HNHD7le" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 박건우 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065609194trub.jpg" data-org-width="900" dmcf-mid="UrrA9A6hyg" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065609194trub.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 박건우 ⓒ곽혜미 기자
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="9atXjXwzlR" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 박건우 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065611672epav.jpg" data-org-width="900" dmcf-mid="uTi0r0hVyo" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065611672epav.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 박건우 ⓒ곽혜미 기자
           </figcaption>
</figure>
<p dmcf-pid="2PlOxOiHvM" dmcf-ptype="general">[스포티비뉴스=수원, 신원철 기자] "가까이 오지 마세요. 감기가 심하게 걸려서…." </p>
<p dmcf-pid="VQSIMInXvx" dmcf-ptype="general">NC 외야수 박건우는 플레이오프를 준비하면서 감기에 걸려 컨디션이 좋지 않은 상태다. 31일 플레이오프 2차전을 앞두고는 주사도 맞고 왔는데 아직도 목소리가 제대로 나오지 않을 정도다. </p>
<p dmcf-pid="fxvCRCLZTQ" dmcf-ptype="general">그래도 타석에서는 3번타자 몫을 해내면서 팀의 올해 포스트시즌 6연승을 이끌었다. 송지만 타격코치는 그런 박건우에게 '감기 낫지 말고 있어라'라고 농담을 했다고. 박건우는 "방금 코치님이랑 얘기하고 왔는데 계속 감기 낫지 말라고 그런다. 이상하다 진짜"라며 입술을 내밀었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="4eWSJSatyP" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 박건우 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065613095jiuj.jpg" data-org-width="900" dmcf-mid="7XXaBafOyL" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065613095jiuj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 박건우 ⓒ곽혜미 기자
           </figcaption>
</figure>
<p dmcf-pid="8dYvivNFy6" dmcf-ptype="general">NC 다이노스는 지난 31일 수원 kt위즈파크에서 열린 '2023 신한은행 SOL KBO 포스트시즌' kt 위즈와 플레이오프 2차전에서 3-2, 1점 차 신승을 거뒀다. 천신만고 끝에 거둔 승리였다. 신민혁의 6⅓이닝 무실점 호투와 박건우의 선제 2점 홈런으로 3-0까지 앞서다 8회 2점을 내줬다. 9회에는 무사 1, 3루 위기가 왔지만 실점 없이 극복했다. 2사 만루에서 유격수 김주원이 오윤석의 타구를 몸을 날려 잡아냈다. </p>
<p dmcf-pid="6JGTnTj3y8" dmcf-ptype="general">이날 경기 후 기자회견에는 데일리 MVP 신민혁, 그리고 박건우가 참석할 예정이었다. 그런데 마지막 수비가 워낙 극적이어서 경기 종료 직후 박건우 대신 김주원으로 참가 선수가 바뀌었다. 박건우는 "어린 선수들이 빛을 더 볼 수 있다면 나는 뒤에서 언제나 뒷받쳐 줄 준비가 돼 있다. (김)주원이 수비가 아니었으면 졌다. 그게 더 컸다고 생각한다"고 얘기했다. </p>
<p dmcf-pid="PFLd0dqkl4" dmcf-ptype="general">박건우는 1회 좌월 2점 홈런, 3회 중전안타, 8회 중견수 키 넘기는 2루타까지 3안타를 몰아쳤다. 준플레이오프 13타수 6안타 타율 0.462에 이어 플레이오프 2경기에서는 8타수 4안타 타율 0.500을 기록하고 있다. '가을에 약하다'는 이미지를 떨쳐낼 만한 활약이다. </p>
<p dmcf-pid="Q3oJpJBEvf" dmcf-ptype="general">그러나 박건우는 "내가 홈런을 안 쳤어도 다른 누가 치지 않았을까. 우리가 좋은 흐름을 타고 있으니까 또 누군가는 해주겠지, 이렇게 서로 믿고 있어서 좋은 분위기가 이어지는 것 같다"며 자신의 활약에 큰 의미를 두지 않았다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="x0giUibDvV" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 박건우 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065614419qlxc.jpg" data-org-width="900" dmcf-mid="zkFkVkQSSn" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065614419qlxc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 박건우 ⓒ곽혜미 기자
           </figcaption>
</figure>
<p dmcf-pid="yEu3w3C2v2" dmcf-ptype="general">포스트시즌 성적이 좋지 않았던 점에 대해서도 솔직하게 인정했다. 박건우는 2015년부터 2021년까지 두산에서 포스트시즌 경기만 59차례 출전했는데 성적은 타율 0.223, 2홈런 24타점에 그쳤다. 정규시즌 통산 타율 0.326의 리그 최고 우타자가 가을에는 작아졌다. </p>
<p dmcf-pid="WD70r0hVl9" dmcf-ptype="general">박건우는 "특별하게 마음을 먹거나 하지는 않았다. 솔직히 잘하려고 했는데 못 했다. 또 못 했으면 잘하려고 하는 것이 프로 아닌가. 2018년 부진이 너무 커서 아직도 죄송하지만 그렇다고 계속 생각하고 있을 수는 없다. 이겨내는 것이 내가 할 일이다. 못하면 질책 받고 열심히 해야 하고, 그러다 보니 또 좋은 결과가 나지 않나. 야구라는 게 1년 내내 잘할 수는 없다. 그래서 3할 타율이 어렵다고 하는 거고, 스포츠에서 7번 실패해도 칭찬받는 종목은 야구 밖에 없다. 그래서 그때(지난 포스트시즌) 흐름이 계속 안 좋았던 것 아닌가, 그렇게 좋게 생각하고 있다"고 얘기했다. </p>
<p dmcf-pid="YwzpmplfWK" dmcf-ptype="general">4위로 정규시즌을 마쳤는데 이제는 한국시리즈 진출에 단 1승만 남겨둔 NC다. 그런데 박건우는 승리에 너무 매달리지 않겠다고 얘기했다. 그는 "사실 마지막 2사 만루 때도 다들 편했다. 코칭스태프들은 더 긴장하고 그랬을 수 있지만 선수들끼리는 얘기해 보면 그렇지 않았다. 맞아서 지면 지는 거지 어떡하나. (김)주원이가 다이빙해서 잡을 줄 누가 알았나. 다 하늘의 뜻이라고 생각한다. 맞아서 졌어도 역전 당하면 어쩔 수 없다, 그게 왜 (이)용찬이 형 책임이냐. 우리는 아무도 그렇게 생각하지 않았다. 우리가 점수를 더 냈으면 더 편하게 이겼을 수도 있다. 다들 이렇게 가족처럼 생각하고 있다"고 말했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="G9rkVkQSyb" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 오영수 박건우 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065615776lzec.jpg" data-org-width="900" dmcf-mid="q9SIMInXWi" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065615776lzec.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 오영수 박건우 ⓒ곽혜미 기자
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="H2mEfExvhB" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ NC 박건우는 감기에 걸린 채 플레이오프 경기를 뛰고 있다. 자신이 천재환에게 감기를 옮겼다면서 취재진도 가까이 오지 말라고 경고했다. ⓒ 신원철 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065617294ekiv.jpg" data-org-width="900" dmcf-mid="BQhsQsJGCJ" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101065617294ekiv.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ NC 박건우는 감기에 걸린 채 플레이오프 경기를 뛰고 있다. 자신이 천재환에게 감기를 옮겼다면서 취재진도 가까이 오지 말라고 경고했다. ⓒ 신원철 기자
           </figcaption>
</figure>
<p dmcf-pid="X4Ir6reWyq" dmcf-ptype="general">이제 자신이 후배들을 이끌어야 하는 선배라는 것을 자각하고 있다. 박건우는 "우리 팀이 어린 선수들이 많다 보니 다시 한 번 느끼게 되더라. 형들도 나 때문에 이런 점들이 힘들었겠구나 하는 생각도 해봤다. 그러면서 조금씩 성장하고 있는 것 같다"고 밝혔다. 그러면서 "(제이슨)마틴도 힘 냈으면 좋겠다. 내가 가을에 못 했을 때 다른 동료들이 많이 도와줬던 거서럼 우리도 마틴에게 좋게 얘기해준다. 마틴이 많이 힘들어 한다. 조금 더 힘을 냈으면 좋겠다"고 했다. </p>
<p dmcf-pid="Z8CmPmdYCz" dmcf-ptype="general">#박건우 포스트시즌 경기 일지 </p>
<p dmcf-pid="56hsQsJGW7" dmcf-ptype="general">10.19 WC1 3타수 1안타 1볼넷 1사구 </p>
<p dmcf-pid="1kUFDFI9lu" dmcf-ptype="general">10.22 준PO1 3타수 1안타 </p>
<p dmcf-pid="tEu3w3C2TU" dmcf-ptype="general">10.23 준PO2 5타수 3안타 </p>
<p dmcf-pid="FD70r0hVhp" dmcf-ptype="general">10.25 준PO3 5타수 2안타 </p>
<p dmcf-pid="3C2BlBYxl0" dmcf-ptype="general">10.30 PO1 4타수 1안타 </p>
<p dmcf-pid="0hVbSbGMC3" dmcf-ptype="general">10.31 PO2 4타수 3안타 </p>
<p dmcf-pid="plfKvKHRvF" dmcf-ptype="general">- 6경기 24타수 11안타 타율 0.458</p>
<p dmcf-pid="UatXjXwzSt" dmcf-ptype="general">&lt;저작권자 ⓒ SPOTV NEWS. 무단전재 및 재배포 금지&gt;</p>
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