
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
    <h3>류현진 예상 연봉이 고작 800만 달러? MLB 전직 단장 예상 왜? TOR-MIN-DET 거론</h3><h6>김태우 기자  2023. 11. 1. 05:30</h6>
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
<section dmcf-sid="xrhVSbGMl9">
<figure class="figure_frm origin_fig" dmcf-pid="yZ0gUibDhK" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 올 시즌이 끝난 뒤 FA 자격을 얻는 류현진" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053014914gqbe.jpg" data-org-width="900" dmcf-mid="VTNjzo2mCP" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053014914gqbe.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 올 시즌이 끝난 뒤 FA 자격을 얻는 류현진
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Wtujzo2mSb" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 류현진은 메이저리그에서의 경력 연장을 원하고 있다" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053016205jlnb.jpg" data-org-width="900" dmcf-mid="fByWJSatW6" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053016205jlnb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 류현진은 메이저리그에서의 경력 연장을 원하고 있다
           </figcaption>
</figure>
<p dmcf-pid="YF7AqgVshB" dmcf-ptype="general">[스포티비뉴스=김태우 기자] 토론토와 8000만 달러(약 1082억 원) 계약이 모두 끝난 류현진(36)이 4년 만에 자유계약선수(FA) 시장에 나온다. 류현진은 메이저리그에서의 경력 연장을 원하는 가운데, 생각보다 적은 규모의 보장액에 인센티브가 걸린 1년 계약을 예상하는 전망이 나왔다. </p>
<p dmcf-pid="GcmBOuv8yq" dmcf-ptype="general">북미 스포츠전문매체 ‘디 애슬레틱’의 칼럼니스트이자 워싱턴과 신시내티에서 단장직을 역임했던 짐 보든은 1일(한국시간) 다가올 FA 시장을 앞두고 자신이 매긴 랭킹을 업데이트했다. 보든은 선수별로 대략적인 예상 금액과 적합한 행선지를 분석하며 팬들의 시선을 사로잡았다. </p>
<p dmcf-pid="HksbI7T6yz" dmcf-ptype="general">어디까지나 예상이기는 하지만 보든은 오랜 기간 단장직을 역임하며 실제 계약을 주도한 적이 있다. 다른 칼럼니스트와 차별성을 가지는 대목이다. 그런 경력을 바탕으로 메이저리그 전반에 발이 넓어 곧잘 흥미로운 예상을 내놓기도 한다. </p>
<p dmcf-pid="XEOKCzyPv7" dmcf-ptype="general">보든은 자신의 이번 FA 시장 랭킹에서 류현진을 전체 35위에 올렸다. 계약 규모로는 1년 보장 800만 달러(약 108억 원)에 인센티브가 포함된 수준을 제시했다. 좌완 선발로는 조던 몽고메리, 블레이크 스넬, 클레이튼 커쇼, 에두아르도 로드리게스, 이마나카 쇼타, 웨이드 마일리, 앤드루 히니에 이은 8위다. </p>
<p dmcf-pid="ZOv8y2ZdCu" dmcf-ptype="general">그리고 어울리는 행선지로는 현 소속팀인 토론토를 비롯해 아메리칸리그 중부지구 팀인 미네소타와 디트로이트를 지목했다. </p>
<p dmcf-pid="5IT6WV5JlU" dmcf-ptype="general">보든은 ‘류현진은 토미존 수술 후 8월 1일 복귀했고, 그중 9경기에서 3실점 이하의 경기를 펼치며 인상적인 모습을 보였다. 그중 6경기에서 5이닝을 소화했고, 한 번의 등판에서 시즌 최고인 6이닝을 던졌다’면서 ‘전체적으로 그는 3.46의 평균자책점과 1.288의 이닝당출루허용수(WHIP)을 기록했다’고 올해 류현진의 복귀 후 성적을 대략적으로 정리했다. </p>
<p dmcf-pid="1CyPYf1ihp" dmcf-ptype="general">여기까지 평가는 비교적 호의적인 뉘앙스다. 이닝을 많이 소화하지는 못했지만, 크게 무너진 경기도 없었고 평균자책점과 WHIP 또한 준수했다는 것이다. 그럼에도 세간의 예상보다 낮은 금액을 제시한 건 패스트볼 구속 저하 등 아직까지 의구심이 남아있기 때문이라고 설명했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="t6eWJSath0" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 짐 보든은 류현진의 계약 규모로 1년 800만 달러에 인센티브가 걸린 수준을 예상했다" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053017686frma.jpg" data-org-width="900" dmcf-mid="4PsqsUS4C8" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053017686frma.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 짐 보든은 류현진의 계약 규모로 1년 800만 달러에 인센티브가 걸린 수준을 예상했다
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="FPdYivNFT3" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 류현진은 여전한 경쟁력을 과시했으나 시장에서의 의구심도 남아있다" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053018950udtz.jpg" data-org-width="900" dmcf-mid="8rVrVkQST4" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053018950udtz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 류현진은 여전한 경쟁력을 과시했으나 시장에서의 의구심도 남아있다
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="3MnXoWcpTF" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 구단은 보장 금액을 줄이고, 류현진은 인센티브에 주목하는 윈윈 계약이 나올 수도 있다" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053020280iqrm.jpg" data-org-width="900" dmcf-mid="6jKEKj8Cyf" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053020280iqrm.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 구단은 보장 금액을 줄이고, 류현진은 인센티브에 주목하는 윈윈 계약이 나올 수도 있다
           </figcaption>
</figure>
<p dmcf-pid="0RLZgYkUlt" dmcf-ptype="general">보든은 ‘그의 패스트볼은 대부분 시속 87마일(140㎞)에서 89마일(143.2㎞)이었다. 상대 선수들은 그의 체인지업을 상대로 타율 0.276, 커터를 상대로 0.238을 기록했다’면서 ‘그는 2024년 더 향상된 모습을 보여줘야 한다. 아마도 낮은 베이스와 인센티브를 주는 1년 형식의 계약을 보고 있을 것’이라고 전망했다. </p>
<p dmcf-pid="peo5aGEuh1" dmcf-ptype="general">류현진이 경력 두 번째 팔꿈치 수술에서 멀쩡하게 돌아온 것은 분명하지만, 수술 전의 구속을 회복하지 못한 건 올해 데이터로 드러난다. 류현진의 올해 포심패스트볼 평균 구속은 88.6마일(142.6㎞)이었다. 비교적 근래인 2020년(89.8마일), 2021년(89.9마일)은 물론 수술 직전인 2022년(89.3마일)보다도 떨어졌다. </p>
<p dmcf-pid="UsS4T9XeS5" dmcf-ptype="general">팔꿈치 통증에서 자유로워지고 재활 과정에서 다른 부위의 신체까지 강화되는 토미존 수술은 보통 구속 향상을 기대케 한다. 다만 류현진은 아직은 그런 기미가 보이지 않았다. 올해 표본이 적어 내년에는 더 나아질 것이라는 기대감도 있지만, 반대로 한 살을 더 먹어 내년에 37세가 된다는 점도 고려해야 한다. 보든은 이런 위험성으로 인해 류현진이 다년 계약을 따내기는 어렵다고 본 것이다. </p>
<p dmcf-pid="uOv8y2ZdWZ" dmcf-ptype="general">그러나 구단들로서는 ‘고점’이 높은 류현진이 가격 대비 성능비 차원에서 좋은 대안이 될 수 있다. 팔꿈치 수술 후 던진 11경기는 ‘예열’ 차원이라고 평가할 수도 있다. 보장 금액을 낮춰 위험부담을 줄이고 대신 인센티브를 걸어 성과대로 지급하는 방향을 고려할 만하다. 실패해도 큰 부담이 없고, 성공하면 그 성과대로 돈을 주면 된다. 크게 손해를 보는 장사가 아니다. </p>
<p dmcf-pid="7IT6WV5JvX" dmcf-ptype="general">재활 복귀 후 쇼케이스의 기간이 짧았다는 한계가 있는 류현진 측에서도 나쁘지 않은 대안이다. 800만 달러의 보장 금액이 수술 경력이 있는 37세 투수에게 아주 적은 금액도 아니고, 인센티브 규모가 크다면 해볼 만한 승부다. </p>
<p dmcf-pid="zyZd1xUNyH" dmcf-ptype="general">한편 보든이 토론토‧미네소타‧디트로이트를 제시한 것도 흥미롭다. 토론토는 당장 류현진이 4년간 몸담았던 팀이다. 미네소타는 아메리칸리그 중부지구의 강자고, 디트로이트 또한 중부지구에 속해있다. 보든은 왜 세 팀을 지목했는지 구체적인 사유를 밝히지 않았으나 정황상 추론할 수 있는 여지가 있다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="qW5JtMujSG" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 메이저리그 잔류를 희망하고 있는 류현진 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053021590srly.jpg" data-org-width="900" dmcf-mid="PYBEKj8CCV" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053021590srly.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 메이저리그 잔류를 희망하고 있는 류현진 ⓒ곽혜미 기자
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="BY1iFR7AlY" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 계약 규모가 문제일 뿐 류현진의 메이저리그 잔류는 확실시된다 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053023708zivy.jpg" data-org-width="900" dmcf-mid="QeOKCzyPv2" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101053023708zivy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 계약 규모가 문제일 뿐 류현진의 메이저리그 잔류는 확실시된다 ⓒ곽혜미 기자
           </figcaption>
</figure>
<p dmcf-pid="bEOKCzyPvW" dmcf-ptype="general">근래 들어 만년 하위권에 처진 디트로이트는 선발진이 약하다. 맷 매닝, 알렉 파에도, 리즈 올슨 등 젊은 투수들이 로테이션에 합류하기는 했지만 아직 확실한 상수들은 아니다. 여기에 올해 팀 로테이션을 이끌었던 에이스 에두아르도 로드리게스는 옵트아웃 권한이 있어 FA 시장에 나갈 가능성이 크다. 선발 투수에 큰 금액을 투자할 만한 상황은 아니라 로테이션 세대교체의 다리를 놔줄 투수로 류현진에 관심을 가질 가능성이 있다. </p>
<p dmcf-pid="KDI9hqWQSy" dmcf-ptype="general">미네소타는 파블로 로페즈, 소니 그레이, 조 라이언으로 이어지는 1~3선발은 올해 좋은 모습을 선보였다. 하지만 올해 선발진에 있었던 그레이와 마에다 겐타가 동시에 FA 자격을 얻는다. 역시 많은 돈을 쓰기는 어려운 상황에서 원투펀치를 뒷받침할 베테랑 선발 투수의 필요성이 있는 팀이다. 류현진은 적합한 대안이 될 수 있고, 이미 현지 언론에서도 류현진을 조명하는 기사가 나오기도 했다. </p>
<p dmcf-pid="9wC2lBYxvT" dmcf-ptype="general">토론토는 류현진이 떠나도 5인 선발 로테이션을 운영할 수 있는 팀이며 메이저리그 승격을 기다리는 유망주도 있다. 하지만 올해 유독 고전한 알렉 마노아의 재기를 확신할 수 없다면 류현진을 단년 계약으로 붙잡아 위험 부담을 줄일 것이라는 전망이 일찌감치 제기되기도 했다. 로스 앳킨스 토론토 단장 또한 시즌 결산 기자회견에서 류현진도 하나의 대안이 될 수 있다며 복귀 가능성을 열어둔 바 있다.</p>
<p dmcf-pid="2gkUDFI9hv" dmcf-ptype="general">&lt;저작권자 ⓒ SPOTV NEWS. 무단전재 및 재배포 금지&gt;</p>
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