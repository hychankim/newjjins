
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
    <h3>"메시 발롱도르, 5개여야 했어"…호날두, 댓글로 '웃는 이모티콘' 작성 논란</h3><h6>권동환 기자  2023. 11. 1. 07:56</h6>
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
<section dmcf-sid="Kv073uv879">
<figure class="figure_frm origin_fig" dmcf-pid="9XB2q9XeUK" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075625719exdl.jpg" data-org-width="500" dmcf-mid="biOM8xUN0I" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075625719exdl.jpg" width="658"/></p>
</figure>
<p dmcf-pid="2rG5YZrqUb" dmcf-ptype="general">(엑스포츠뉴스 권동환 기자) 크리스티아누 호날두(알 나스르)가 라이벌 리오넬 메시(인터 마이애미)의 발롱도르 수상을 지적하는 글에 의미심징한 댓글을 남겨 조롱을 받았다.</p>
<p dmcf-pid="VmH1G5mBzB" dmcf-ptype="general">글로벌 축구매체 '원풋볼'은 1일(한국시간) "리오넬 메시의 8번째 발롱도르 수상 후 크리스티아누 호날두의 인스타그램 댓글이 화제를 모았다"라고 보도했다.</p>
<p dmcf-pid="fNhTCvNFzq" dmcf-ptype="general">메시는 지난달 31일 프랑스 파리에 위치한 샤틀레 극장에서 열린 2023 발롱도르 시상식에서 한 해 동안 세계 축구 선수들 중 가장 활약이 뛰어난 선수에게 주는 발롱도르를 거머쥐었다. 엘링 홀란(맨체스터 시티)과 킬리안 음바페(PSG)와의 경합 끝에 가장 많은 표를 얻으면서 다시 한번 발롱도르의 주인이 됐다.</p>
<p dmcf-pid="4jlyhTj37z" dmcf-ptype="general">이로써 메시는 8번째 발롱도르를 받으면서 다시 한번 축구 역사를 새로 썼다. 이미 발롱도르 수상 7회로 축구 역사상 발롱도르를 가장 많이 수상한 선수였던 메시는 2023년에도 수상에 성공하면서 전무후무한 '발롱도르 8회 수상자'라는 금자탑에 올랐다. 이로써 메시는 라이벌이자 발롱도르 5회 수상자인 호날두와의 격차를 벌리고 명실상부 역대 최고의 축구선수로 등극했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="8ASWlyA077" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075627122jgjv.jpg" data-org-width="500" dmcf-mid="4s9yhTj3uD" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075627122jgjv.jpg" width="658"/></p>
</figure>
<p dmcf-pid="68gAoj8CFu" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="P6acgA6hpU" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075628318lzpb.jpg" data-org-width="500" dmcf-mid="88psEmdYzE" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075628318lzpb.jpg" width="658"/></p>
</figure>
<p dmcf-pid="QPNkacPlFp" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="xTpz07T670" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075629552csdm.jpg" data-org-width="500" dmcf-mid="YVUkacPl3g" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075629552csdm.jpg" width="658"/></p>
</figure>
<p dmcf-pid="yQjENkQSU3" dmcf-ptype="general">시상식에 참석한 메시는 사회자가 호명하자 담담한 표정으로 단상 위에 올랐다. 발롱도르 수상자로 발표된 메시는 세계적인 축구스타이자 메시 소속팀인 인터 마이애미 공동 구단주 데이비드 베컴이 주는 트로피를 받아들고 미소를 지었다. 홀란 등 시상식장에 입장한 모든 이들이 기립 박수로 '축구의 신' 수상을 축하했다.</p>
<p dmcf-pid="WxADjExvuF" dmcf-ptype="general">시상대에 선 메시는 먼저 조국 아르헨티나 대표팀 레전드 디에고 마라도나를 언급했다. 공교롭게도 발롱도르 시상식이 열린 날은 지난 2020년 11월 자택에서 심장 마비로 인해 향년 60세 나이로 별세한 마라도나의 생일이었다.</p>
<p dmcf-pid="YDWXyHD7Ut" dmcf-ptype="general">메시는 "마라도나가 원한대로 축구를 사랑하는 많은 사람들이 모인 곳에서 그의 생일을 축하하게 됐다. 이보다 더 좋은 곳은 없다"라며 "당신이 어디에 있든, 디에고, 생일을 축하한다"라며 감동적인 메시지를 남겼다.</p>
<p dmcf-pid="GwYZWXwzU1" dmcf-ptype="general">이어 "지난 몇 년간 월드컵이라는 나의 꿈을 이뤄주기 위해 모든 걸 해준 가족과 친구 모두에게 감사드린다"라며 동료들과 가족들에게도 감사 인사를 전했다. 그는 "난 내가 보유하고 있는 커리어를 갖게 될 거라고, 대표팀에서 함께한 어려운 순간들을 겪은 후 월드컵에서 우승해 내 꿈을 이루게 될 거라고 상상하지 못했다"라며 "이 순간을 즐기기 위해 다시 한번 오게 돼 기쁘다"라며 수상 소감을 전달했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="HcDsEmdYu5" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075631224icuc.jpg" data-org-width="500" dmcf-mid="G8bsEmdY7o" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075631224icuc.jpg" width="658"/></p>
</figure>
<p dmcf-pid="XkwODsJGFZ" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="ZErIwOiHUX" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075632701ldaz.jpg" data-org-width="500" dmcf-mid="HXdZWXwzUL" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075632701ldaz.jpg" width="658"/></p>
</figure>
<p dmcf-pid="5AEmkreWFH" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="1cDsEmdY0G" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075633894gdwj.jpg" data-org-width="500" dmcf-mid="31aUtplfFM" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075633894gdwj.jpg" width="658"/></p>
</figure>
<p dmcf-pid="tkwODsJGFY" dmcf-ptype="general">이날 메시는 라이벌인 호날두에 대해서도 입을 열면서 눈길을 끌었다. 호날두와 메시는 21세기는 물론이고 축구 역사를 통틀어도 유례가 없는 라이벌 관계이다. 두 선수가 유럽에서 전성기를 보낼 때, 국내 팬들은 호날두와 메시 간의 맞대결을 '메호대전'이라 칭하며 두 선수가 붙는 날을 학수고대했다.</p>
<p dmcf-pid="FWH1G5mBUW" dmcf-ptype="general">지난 수년 동안 발롱도르와 역대 최고의 축구선수 자리를 두고 경쟁을 펼쳤고, 메시가 발롱도르를 8번이나 가져가면서 5회 수상자인 호날두 상대로 판전승을 거뒀다.</p>
<p dmcf-pid="3YXtH1sbFy" dmcf-ptype="general">이날 발롱도르를 한 개 더 추가한 메시는 호날두에 대해 존중과 감사를 표했다. 매체에 따르면, 호날두와의 경쟁에 대해 메시는 "그건 축구적으로 엄청난 경쟁이었다"라며 "우리 둘 다 매우 경쟁력 있고, 항상 모든 사람과 이들을 상대로 이기고 싶어했다"라고 밝혔다.</p>
<p dmcf-pid="0GZFXtOKUT" dmcf-ptype="general">이어 "호날두는 매우 훌륭했고, 우리는 서로에게 이득이 됐다고 생각한다"라며 "난 우리와 축구를 사랑하는 모든 사람들에게 매우 아름다운 시기였다고 생각한다"라며 호날두와의 경쟁이 도움이 됐다고 주장했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="pOhTCvNF0v" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075635077ulky.jpg" data-org-width="500" dmcf-mid="08PWlyA07x" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075635077ulky.jpg" width="658"/></p>
</figure>
<p dmcf-pid="UIlyhTj3uS" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="uCSWlyA07l" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075636571rdbx.jpg" data-org-width="500" dmcf-mid="pYDK7bGM3Q" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075636571rdbx.jpg" width="658"/></p>
</figure>
<p dmcf-pid="7Fpz07T67h" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="z3UqpzyPpC" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075637815xjjj.jpg" data-org-width="500" dmcf-mid="U1SbuBYxpP" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075637815xjjj.jpg" width="658"/></p>
</figure>
<p dmcf-pid="8o3sH1sbu9" dmcf-ptype="general">또 "정상에 오르는 건 쉽지만 머무는 건 어렵다는 말처럼 우리가 지금까지 해온 것들은 매우 감사할 만한 일"이라며 "정확히는 모르지만 우린 지난 10~15년 동안 정상에 머물렀고, 이 수준을 계속 유지하는 건 정말 어려웠다. 난 이게 축구를 즐기는 모든 이들에게 아름다운 추억이라고 생각한다"라고 덧붙였다.</p>
<p dmcf-pid="BCSWlyA0UO" dmcf-ptype="general">호날두가 있었기에 지금의 자신이 있을 수 있었다는 메시의 발언은 훈훈함을 남겼다. 그러나 곧바로 훈훈한 분위기에 찬물을 붓는 소식이 전해졌다.</p>
<p dmcf-pid="bhvYSWcpps" dmcf-ptype="general">원인은 바로 호날두의 SNS 댓글이다. '원풋볼'은 "호날두는 메시가 발롱도르를 수상한지 24시간도 되지 않아 인스타그램에 올린 댓글로 비난을 받았다"라며 "그는 메시의 수상을 비난하는 스페인 AS 편집장 발언에 웃는 이모티콘을 남겼다"라고 설명했다.</p>
<p dmcf-pid="KlTGvYkUFm" dmcf-ptype="general">메시가 8번째 발롱도르를 수상한 후 토마스 론세로 AS 편집장은 "우리가 알고 있던 일이 일어났다. 그들은 메시에게 또 하나의 발롱도르를 줄 예정이었다"라며 "그는 마이애미에서 은퇴했지만 월드컵을 준비하기 위해 이미 PSG에서 은퇴한 것처럼 보였다"라고 밝혔다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="9qKfbV5J3r" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075638094zwwj.jpg" data-org-width="500" dmcf-mid="uH4DjExvU6" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075638094zwwj.jpg" width="658"/></p>
</figure>
<p dmcf-pid="2B94Kf1i3w" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="Vb2894tn7D" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075638350wcjy.jpg" data-org-width="500" dmcf-mid="7XMIwOiHu8" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075638350wcjy.jpg" width="658"/></p>
</figure>
<p dmcf-pid="ft073uv8uE" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="4Fpz07T67k" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075638587zqbn.jpg" data-org-width="500" dmcf-mid="ze5QfP0gz4" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075638587zqbn.jpg" width="658"/></p>
</figure>
<p dmcf-pid="83UqpzyP7c" dmcf-ptype="general">그러면서 "메시는 월드컵에서 우승했다. 하지만 6번의 페널티킥을 받았고, 월드컵은 10개월 전이며 지금은 11월이다"라며 "메시의 발롱도르는 8개 아니라 5개여야 했다. 그는 안드레아스 이니에스타 혹은 사비 에르난데스, 1시즌에 트로피 6개를 들어 올린 로베르트 레반도프스키, 최고 득점자인 엘링 홀란의 발롱도르를 보유하고 있다"라고 지적했다.</p>
<p dmcf-pid="624QfP0g0A" dmcf-ptype="general">즉, 론세로 AS 편집장은 2023 발롱도르 수상자는 메시가 아니라 홀란이 됐어야 했다고 주장했다. 홀란은 지난 시즌 총 52골로 유럽에서 가장 많은 골을 터트리며 '트레블(3관왕)'까지 달성했으나, 2022 카타르 월드컵 챔피언이자 골든볼 주인공인 메시한테 밀려 투표에서 2위를 차지했다.</p>
<p dmcf-pid="PV8x4Qpa3j" dmcf-ptype="general">또 메시의 2021 발롱도르도 바이에른 뮌헨에서 6관왕(분데스리가, DFL-포칼, 유럽축구연맹(UEFA) 챔피언스리그, 독일 슈퍼컵, UEFA 슈퍼컵, 클럽 월드컵)을 차지한 레반도프스키가 받았어야 했고, 바르셀로나 시절에 발롱도르 1개는 팀 동료인 이니에스타나 사비의 몫으로 돌아갔어야 한다고 발언했다.</p>
<p dmcf-pid="Qf6M8xUN3N" dmcf-ptype="general">중요한 건 메시의 수상에 의문을 표한 이 글에 호날두가 이모티콘으로 댓글을 남겼다는 점이다. 호날두는 SNS에 눈물을 흘리며 웃는 얼굴의 이모티콘을 사용했는데, 이게 론세로 편집장 발언에 동의하는 것인지 아니면 터무니 없는 주장이라 웃는 건지 의견이 분분했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="xKV628FL0a" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075639905pupt.jpg" data-org-width="500" dmcf-mid="qqH894tn7f" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075639905pupt.jpg" width="658"/></p>
</figure>
<p dmcf-pid="ymISOlg1Fg" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="WsCvISatpo" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075641098xntt.jpg" data-org-width="1087" dmcf-mid="BnfPV63o0V" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075641098xntt.jpg" width="658"/></p>
</figure>
<p dmcf-pid="Yuq9zKHR3L" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="G7B2q9Xeun" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075642412znev.jpg" data-org-width="500" dmcf-mid="bMZFXtOKU2" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101075642412znev.jpg" width="658"/></p>
</figure>
<p dmcf-pid="HsCvISatui" dmcf-ptype="general">팬들 상당수가 호날두의 댓글은 메시의 비판에 동조하는 것으로 추측했는데, 이는 호날두의 과거 이력이 큰 영향을 끼쳤다. 지난 2021년 12월에 메시의 7번째 발롱도르가 확정된 이후 메시가 호날두의 발롱도르를 강탈했다는 글이 SNS에 게시됐는데, 호날두가 이 글에 포르투갈어로 '사실'이라는 뜻인 "Factos"라고 댓글을 달면서 큰 논란을 일으켰다.</p>
<p dmcf-pid="XOhTCvNFFJ" dmcf-ptype="general">이는 호날두가 발롱도르 시상식을 앞두고 "스포츠 정신에 따라 누가 상을 받아도 나는 축하를 해준다. 나는 누군가를 이기려고 하지 않는다. 나와 팀을 위해 승리하기를 원할 뿐"이라고 말했던 것과 정반대의 행동이었다.</p>
<p dmcf-pid="ZIlyhTj3Fd" dmcf-ptype="general">호날두가 자신보다 더 많은 발롱도르를 수상한 메시에게 질투심을 느끼고 있음이 드러나면서 한동안 "Factos"는 호날두를 조롱하는 의미로 사용됐다.</p>
<p dmcf-pid="5xenRibDue" dmcf-ptype="general">그렇기에 굳이 메시를 비판하는 글에 논란의 여지가 있을 수 있는 댓글을 남긴 호날두의 행보는 라이벌을 치켜세웠던 메시와 크게 대조되면서 또 한 번 팬들의 빈축과 조롱을 샀다.</p>
<p dmcf-pid="6aRuFUS47p" dmcf-ptype="general">사진=EPA, AP/연합뉴스</p>
<p dmcf-pid="tRJodL9rpM" dmcf-ptype="general">권동환 기자 kkddhh95@xportsnews.com </p>
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