
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
    <h3>'준PO 인생투→PO 또 인생투' KBO 최고 외인보다 더 잘 던지다니, "한국시리즈에 가더라도..."</h3><h6>수원=김우종 기자  2023. 11. 1. 06:35</h6>
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
<section dmcf-sid="Xh68RCLZyY">
<div dmcf-pid="ZBmrhqWQWW" dmcf-ptype="general">
           [스타뉴스 | 수원=김우종 기자] 
          </div>
<figure class="figure_frm origin_fig" dmcf-pid="b5VNH1sblx" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 신민혁(오른쪽)." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101083831829opxr.jpg" data-org-width="647" dmcf-mid="0ojQsho5WL" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101083831829opxr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 신민혁(오른쪽).
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="K1fjXtOKvQ" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 신민혁." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101083832088umbg.jpg" data-org-width="647" dmcf-mid="ppFlB2Zdvn" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101083832088umbg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 신민혁.
           </figcaption>
</figure>
<div dmcf-pid="tlP6eho5yv" dmcf-ptype="general">
           NC 다이노스의 우완 영건 신민혁(24)이 다시 한번 인생투를 펼치며 승리 투수가 됐다.
          </div>
<p dmcf-pid="FSQPdlg1vS" dmcf-ptype="general">신민혁은 지난달 31일 수원 KT위즈파크에서 펼쳐진 NC 다이노스와 2023 신한은행 SOL KBO 포스트시즌 플레이오프(PO·5전3선승제) 2차전에 선발 등판, 6⅓이닝 1피안타 1볼넷 2탈삼진 무실점 역투를 펼쳤다. NC가 이날 3-2로 승리하면서 신민혁은 승리 투수가 됐다.</p>
<p dmcf-pid="3dZX3ezcTl" dmcf-ptype="general">앞서 1차전에 이어 2차전까지 승리한 NC는 이제 대망의 한국시리즈(KS·7전4승제) 진출까지 단 1승만을 남겨놓게 됐다. 경기 후 데일리 최우수선수(MVP)의 영광 역시 호투를 펼친 신민혁에게 돌아갔다.</p>
<p dmcf-pid="0J5Z0dqkvh" dmcf-ptype="general">신민혁은 이날 KBO 리그를 대표하는 최고의 외국인 투수이자 팀 동료인 에릭 페디보다 더 잘 던졌다고 해도 과언이 아니었다. 신민혁은 KT에 단 3차례만 출루를 허용했을 뿐이었다. NC가 1회초 2점을 선취한 가운데, 1회말 신민혁은 마운드에 올라 삼자 범퇴로 깔끔하게 출발했다. 선두타자 김상수를 중견수 뜬공, 황재균을 포수 파울플라이 아웃, 알포드를 유격수 땅볼로 각각 솎아냈다.</p>
<p dmcf-pid="pi15pJBElC" dmcf-ptype="general">신민혁은 2회말 2사 후 문상철에게 2루타를 내주긴 했으나, 조용호를 2구째 3루수 뜬공 처리했다. 3회는 삼자 범퇴. 4회 역시 삼자 범퇴로 더욱 기세를 올렸다. 5회에는 단 7개의 공만 뿌리며 장성우와 문상철, 조용호로 이어지는 5, 6, 7 타순을 삼자 범퇴 처리했다. 그리고 6회에도 배정대를 유격수 땅볼, 박경수를 삼진, 김상수를 유격수 땅볼로 각각 아웃시켰다.</p>
<p dmcf-pid="UxYW5QpalI" dmcf-ptype="general">신민혁은 7회말에도 마운드에 올랐다. 1사 후 알포드에게 볼넷을 허용한 뒤 박병호를 3루 땅볼로 유도했으나, NC 3루수 서호철의 송구를 NC 2루수 박민우가 제대로 잡지 못하는 실책을 범했다. 결국 신민혁의 투구는 여기까지였다. NC는 두 번째 투수로 류진욱을 마운드에 올렸다. 류진욱은 장성우를 투수 앞 병살타로 유도하며 실점 없이 이닝을 삭제했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="9nI0dL9rCP" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 신민혁(오른쪽)." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101083832433ejxr.jpg" data-org-width="647" dmcf-mid="UJthq9XeSi" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101083832433ejxr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 신민혁(오른쪽).
           </figcaption>
</figure>
<div dmcf-pid="7RHGtMujys" dmcf-ptype="general">
           신민혁은 이날 총 81개의 공을 뿌렸다. 1회 5개, 2회 13개, 3회 11개, 4회 14개, 5회 7개, 6회 17개, 7회 14개의 공을 각각 던졌다. 체인지업을 35구로 가장 많이 던졌으며, 커터를 28개, 속구를 15개 각각 섞어 구사했다. 속구 최고 구속은 144km가 나왔다. 스트라이크는 54개. 볼은 27개였다. 5회까지 50개의 공만 던지며 완봉승의 기대감을 심어줬으나, 6회 투구 수 17개, 7회 투구 수 14개를 각각 마크하며 완투와 연을 맺지는 못했다.
          </div>
<p dmcf-pid="zRHGtMujhm" dmcf-ptype="general">신민혁은 2018년 2차 신인 드래프트에서 2차 5라운드 전체 49순위로 NC 다이노스의 지명을 받은 뒤 2020년 입단했다. 입단 첫해에는 2승 3패 평균자책점 5.79를 마크한 뒤 2021년에는 9승 6패 평균자책점 4.41, 20222시즌에는 4승 9패 평균자책점 4.56의 성적을 각각 올렸다. 그리고 올 시즌에는 5승 5패 평균자책점 3.98의 성적을 올렸다.</p>
<p dmcf-pid="qeXHFR7Avr" dmcf-ptype="general">비록 정규시즌에는 압도적인 성적을 내지 못했지만, 가을야구에서는 완전히 달라진 모습을 보여주고 있다. 신민혁은 포스트시즌 데뷔전이었던 지난 22일 SSG 랜더스와 준플레이오프(준PO·5전3선승제) 1차전에서 5⅔이닝 4피안타 3탈삼진 1볼넷 무실점 쾌투를 펼친 끝에 팀의 4-3 승리의 발판을 마련했다. 당시 페디의 준플레이오프 등판 자체가 어려워진 상황에서, 신민혁이 선발 마운드에 올라 기대 이상의 좋은 투구 내용을 보여줬다. 당시 SSG가 준플레이오프 1차전에서 외국인 투수 로에니스 엘리아스를 앞세우면서 승부의 무게추가 SSG로 기우는 듯했으나, 신민혁이 인생 투로 NC 팬들의 기대에 부응했다.</p>
<p dmcf-pid="BdZX3ezcCw" dmcf-ptype="general">그리고 이번 플레이오프 2차전에서도 신민혁은 다시 한번 선발 출격 명령을 받았다. 강인권 감독은 신민혁을 선발로 낙점한 이유에 대해 "KT를 상대로 (정규시즌에서) 좋은 투구 내용을 보여줬다. 현재 컨디션도 나쁘지 않은 상태다. 긴 이닝을 소화해주길 바란다"며 기대감을 드러냈다. 신민혁은 이번 시즌 KT를 상대로 5차례 선발 등판해 2승 2패 평균자책점 3.70을 마크했다. 적장인 이강철 KT 감독도 경기 전 신민혁에 관해 "체인지업이라는 결정구가 있다. 좀 더 집중해야 한다. 작년과 재작년에 약했다. 특히 체인지업에 농락을 많이 당했다"고 되돌아봤다. 결국 신민혁은 이날 또 한 번 인생 투를 펼치며 사령탑의 기대에 제대로 부응했다. 신민혁이 포스트시즌 데뷔 첫 승을 따낸 순간이었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="2C3Qsho5S6" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 신민혁(왼쪽)과 페디.." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101083832941yqdf.jpg" data-org-width="647" dmcf-mid="uscMISathJ" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101083832941yqdf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 신민혁(왼쪽)과 페디..
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Vh0xOlg1W8" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 신민혁." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101083833509elny.jpg" data-org-width="647" dmcf-mid="7VjQsho5Sd" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101083833509elny.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 신민혁.
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="flpMISatS4" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 신민(왼쪽)과 김수경 투수코치." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101083833865wyyg.jpg" data-org-width="647" dmcf-mid="zrebNkQSWe" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101083833865wyyg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 신민(왼쪽)과 김수경 투수코치.
           </figcaption>
</figure>
<div dmcf-pid="2C84MInXyc" dmcf-ptype="general">
           경기 후 수훈선수 인터뷰에 임한 신민혁은 "초구 스트라이크 비율을 높여서 좋았던 것 같다. 체인지업도 잘 들어갔다"고 소감을 밝힌 뒤 "(큰 경기에서) 처음 던져봐 잘 모르겠는데, 잘 던지는 것 같다"고 담담하게 이야기했다.
          </div>
<p dmcf-pid="Vh68RCLZyA" dmcf-ptype="general">이날 '승장' 강인권 감독은 신민혁에 대해 "이렇게 잘 던질 줄은 예상하지 못했다. 확실히 큰 경기에 강한 선수 같다. 신민혁도 호투했지만, 포수 김형준의 운영, 또 투수들이 이끌어 가는 모습이 돋보였다. 그러면서 신민혁이 빛난 투구를 했다"고 칭찬을 아끼지 않았다.</p>
<p dmcf-pid="fSQPdlg1lj" dmcf-ptype="general">신민혁은 완봉승에 대한 욕심도 나지 않았을까. 그는 "프로 무대에서 제가 아직 완봉승을 거둔 적이 없다. 해보고 싶긴 한데, 불펜이 워낙 좋아 믿고 기분 좋게 내려왔다"고 이야기했다. 또 포수 김형준과 호흡에 대해 "(양)의지 선배님과 하듯이 제 생각을 읽는 것 같고, 저한테 맞춰서 볼 배합을 해준다. 확실히 호흡이 좋은 것 같다"고 전했다.</p>
<p dmcf-pid="4vxQJSatlN" dmcf-ptype="general">신민혁은 포스트시즌 2경기 동안 12이닝 무실점 투구를 펼치고 있다. 신민혁은 한국시리즈 무대에 대해 "아직 실감이 안 난다. 승리하고 올라가면 실감이 날 것 같다"면서 "당연히 (한국시리즈에 가면) 무실점을 또 하고 싶다. 한국시리즈에 가더라도 오늘처럼 잘 던지고 싶다"고 각오를 다졌다. 신민혁은 자신의 이날 투구 템포에 대해 "좋을 때 스트라이크가 들어가다 보니, 더욱 빨리 템포를 가져갔다. 또 타자들에게 시간을 안 주려다 보니까 투구 수를 최소화한 것 같다"면서 다음을 기약했다. 끝으로 그는 9회말 2사 후 김주원이 슈퍼 캐치를 펼친 것에 대해 '역시 우리 주원이다'라는 생각을 했다면서 격의 없는 모습을 보여줬다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="4DH2cwRyhf" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 신민혁(오른쪽)." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101083834513qzws.jpg" data-org-width="647" dmcf-mid="qAbLyHD7TR" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101083834513qzws.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 신민혁(오른쪽).
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="8xEX6MujWV" dmcf-ptype="figure">
<p class="link_figure"><img alt="NC 신민혁." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/starnews/20231101083835081wuip.jpg" data-org-width="647" dmcf-mid="Bfnhq9XeWM" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/starnews/20231101083835081wuip.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            NC 신민혁.
           </figcaption>
</figure>
<p dmcf-pid="Pm296reWTo" dmcf-ptype="general">수원=김우종 기자 woodybell@mtstarnews.com</p>
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