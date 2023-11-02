
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
    <h3>'발롱도르 22위' 김민재, AFC 국제 선수상 수상 겹경사→한국 선수 2번째 [오피셜]</h3><h6>권동환 기자  2023. 11. 1. 06:56</h6>
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
<section dmcf-sid="uv2zCzyPpy">
<figure class="figure_frm origin_fig" dmcf-pid="7j5WoWcp7T" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065604263qict.jpg" data-org-width="694" dmcf-mid="WL2YgYkUuU" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065604263qict.jpg" width="658"/></p>
</figure>
<p dmcf-pid="zdvOxOiH7v" dmcf-ptype="general">(엑스포츠뉴스 권동환 기자) 대한민국 수비수 김민재(바이에른 뮌헨)가 발롱도르 최종 후보에서 좋은 순위를 기록한데 이어 아시아 최고의 선수로 뽑히는 겹경사를 맞이했다.</p>
<p dmcf-pid="qJTIMInX7S" dmcf-ptype="general">아시아축구연맹(AFC)은 1일(한국시간) 연맹 공식 홈페이지를 통해 "대한민국의 김민재는 2022 AFC 연례 시상식에서 올해의 국제 선수상을 수상했다"라고 공식 발표했다.</p>
<p dmcf-pid="BqNiUibD3l" dmcf-ptype="general">AFC는 1일 카타르 도하에 위치한 국립컨벤션센터의 알 ​​마야사 극장에서 시상식을 통해 연맹에 속한 나라와 선수들 중 지난 한 해 동안 놀라운 성과를 거둔 이들을 축하하기 위해 13개 수상 부문에서 총 17명을 선정했다.</p>
<p dmcf-pid="bBjnunKw0h" dmcf-ptype="general">연맹 회원국인 대한민국 선수들도 후보에 올랐는데 이중 김민재가 아시아 밖에서 가장 뛰어난 활약을 펼친 선수에게 주어지는 올해의 국제 선수상을 받았다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="KbAL7L9r3C" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065604693zbof.jpg" data-org-width="500" dmcf-mid="YQbTnTj3Fp" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065604693zbof.jpg" width="658"/></p>
</figure>
<p dmcf-pid="9mutEtOKpI" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="2s7FDFI9uO" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065604855gezb.jpg" data-org-width="500" dmcf-mid="GMHA9A6hF0" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065604855gezb.jpg" width="658"/></p>
</figure>
<p dmcf-pid="VOz3w3C20s" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="fFdPZP0g0m" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065605322cznw.jpg" data-org-width="500" dmcf-mid="H4uCRCLZz3" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065605322cznw.jpg" width="658"/></p>
</figure>
<p dmcf-pid="43JQ5Qpa7r" dmcf-ptype="general">김민재를 선정한 이유에 대해 연맹은 "김민재는 SSC나폴리의 이탈리아 세리에A 우승을 이끌면서 두각을 나타내며 이례적인 시즌을 마무리했다"라며 지난 시즌 김민재가 나폴리에서 보여준 활약상이 큰 영향을 끼쳤다고 설명했다.</p>
<p dmcf-pid="80ix1xUN0w" dmcf-ptype="general">그들은 "김민재의 주가는 2021년 중국 베이징 궈안에서 튀르크예 페네르바체로 이적한 이후 크게 올랐다"라며 "김민재가 뛰어난 수준을 보여주면서 나폴리는 그가 페네르바체에서 1년을 마치기도 전에 영입하기로 결정했다"라고 밝혔다.</p>
<p dmcf-pid="61p5c5mBFD" dmcf-ptype="general">이어 "김민재는 나폴리 구단 최초로 유럽축구연맹(UEFA) 8강 진출에 기여하며 강력한 활약을 펼쳤고, 팀이 16경기 무실점을 유지하는데 공헌했다"라며 "그는 33경기에서 2골 2도움을 기록했고, 나폴리가 33년 만에 세리에A 우승을 차지했다"라고 덧붙였다.</p>
<p dmcf-pid="PtU1k1sb7E" dmcf-ptype="general">또 "전북현대에서 K리그 우승 2회를 경험한 김민재는 2017년에 A매치 데뷔전을 가졌으며, 한국이 2022 카타르 월드컵 본선에 참가해 10회 연속 본선 진출을 달성하는데 중요한 역할을 했다"라며 대한민국 축구대표팀의 활약상도 조명했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="QFutEtOKpk" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065605488ozxj.jpg" data-org-width="500" dmcf-mid="XEE8H8FL0F" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065605488ozxj.jpg" width="658"/></p>
</figure>
<p dmcf-pid="x50ZAZrq0c" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="ynNiUibDpA" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065605685uswu.png" data-org-width="604" dmcf-mid="ZkAVWV5JUt" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065605685uswu.png" width="658"/></p>
</figure>
<p dmcf-pid="WLjnunKwUj" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="YIvOxOiHuN" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065605874neas.jpg" data-org-width="500" dmcf-mid="5LZkVkQSF1" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065605874neas.jpg" width="658"/></p>
</figure>
<p dmcf-pid="GCTIMInXFa" dmcf-ptype="general">그러면서 "이번 시즌 저명한 수비수 김민재는 독일 분데스리가 거인 바이에른 뮌헨으로 이적했고, 2023 남자 발롱도르 후보에 오른 유일한 아시아 선수였다"라고 전했다.</p>
<p dmcf-pid="HhyCRCLZ3g" dmcf-ptype="general">김민재는 지난달 31일 프랑스 파리에서 진행된 2023 발롱도르 시상식에서 최중 후보 30인 명단에 포함됐다. 이날 '축구의 신' 리오넬 메시(인터 마이애미)가 시상대에 오르면서 역대 최초로 통산 8번째 발롱도르를 수상하며 축구 역사를 새로 썼다.</p>
<p dmcf-pid="XcrA9A6hFo" dmcf-ptype="general">수상 후보와는 거리가 멀었지만 김민재는 아시아 선수들 중 유일하게 발롱도르 최종 후보에 오르며 아시아 출신 중 가장 좋은 활약상을 펼친 점을 인정 받았다. 또 생애 첫 발롱도르 투표에서 최종 순위 22위에 오르며 함께 후보에 오른 수비수들 중 가장 높은 자리에 위치했다.</p>
<p dmcf-pid="Zkmc2cPl3L" dmcf-ptype="general">김민재 순위에 대해 프랑스 '레키프'는 "김민재는 발롱도르 순위에 오른 4번째 한국 선수가 됐다"라며 "현재 바이에른 뮌헨 수비수인 김민재는 지난 시즌 나폴리에서 이탈리아 챔피언 타이틀을 획득하는데 큰 역할을 했다"라며 순위 배경을 설명했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="5WZyLyA0Un" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065606081uehl.jpg" data-org-width="810" dmcf-mid="1S65c5mBu5" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065606081uehl.jpg" width="658"/></p>
</figure>
<p dmcf-pid="1Y5WoWcpUi" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="tG1YgYkUpJ" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065606245pmbb.jpg" data-org-width="500" dmcf-mid="toUIMInX7Z" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065606245pmbb.jpg" width="658"/></p>
</figure>
<p dmcf-pid="Fkmc2cPlzd" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="3EskVkQS3e" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065606473cuxl.jpg" data-org-width="871" dmcf-mid="FscfYf1ipX" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065606473cuxl.jpg" width="658"/></p>
</figure>
<p dmcf-pid="0DOEfExv0R" dmcf-ptype="general">김민재에 앞서 2002년 당시 벨기에 안더레흐트에서 뛰던 설기현과 2005년 박지성(맨체스터 유나이티드) 그리고 손흥민(토트넘 홋스퍼)이 2019년과 2022년 2차례 발롱도르 순위에 오르면서 한국 축구 명성을 높였다. 이 중 손흥민은 2022 발롱도르 투표에서 11위에 올라 아시아 선수 역대 최고 순위를 경신한 바 있다.</p>
<p dmcf-pid="ptU1k1sb7M" dmcf-ptype="general">손흥민이 아시아 축구 역사를 새로 쓴 데 이어 김민재도 최종 후보에 뽑히면서 대한민국 선수가 2년 연속 발롱도르 최종 후보에 이름을 올리는 보기 드문 광경이 연출됐다.</p>
<p dmcf-pid="UFutEtOK3x" dmcf-ptype="general">발롱도르 순위로 축구계에서 위상을 인정 받은 김민재는 곧바로 AFC 시상식에서도 올해의 국제 선수로 뽑히면서 또 한 번의 축하를 받았다. 그동안 한국 선수들 중 손흥민(2015, 2017, 2019)이 유일하게 올해의 국제 선수상을 받았는데, 김민재도 수상에 성공하면서 위상을 높였다.</p>
<p dmcf-pid="u37FDFI9UQ" dmcf-ptype="general">수상에 앞서 AFC는 미토마 가오루(브라이턴 앤드 호브 앨비언·일본)와 메흐디 타레미(FC포르투·이란)을 김민재와 함께 최종 후보에 올렸다. 일본 윙어 미토마는 프리미어리그에서 좋은 활약을 펼치면서 큰 주목을 받고 있는 선수이고, 이란 공격수 타레미는 지난 시즌 51경기에 나와 31골 14도움을 기록했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="7yXTnTj3FP" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065607856ldlj.jpg" data-org-width="537" dmcf-mid="3qGjKj8C3H" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065607856ldlj.jpg" width="658"/></p>
</figure>
<p dmcf-pid="zWZyLyA0u6" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="qY5WoWcpp8" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065609094glza.jpg" data-org-width="535" dmcf-mid="0KFHNHD77G" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065609094glza.jpg" width="658"/></p>
</figure>
<p dmcf-pid="BUBpmplfU4" dmcf-ptype="general"><br/> </p>
<figure class="figure_frm origin_fig" dmcf-pid="bubUsUS43f" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065610429lcgb.jpg" data-org-width="532" dmcf-mid="UNmc2cPlUW" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101065610429lcgb.jpg" width="658"/></p>
</figure>
<p dmcf-pid="K7KuOuv80V" dmcf-ptype="general">두 선수 모두 유럽 무대에서 지난 시즌 좋은 활약을 펼치면서 아시아를 대표했지만, 세계적인 축구리그 이탈리아 세리에A 우승 주역이자 발롱도르 최종 후보에도 김민재한테 올해의 국제 선수상을 양보해야 했다.</p>
<p dmcf-pid="90z3w3C202" dmcf-ptype="general">한편, 김민재를 포함해 한국에서 총 3명이 수상 후보에 올랐으나 수상에 성공한 건 김민재 1명 뿐이다. 2022 올해의 남자 유스 선수상 부문에 이승원(강원FC)이 아민 하즈바비(알 사드·이란)와 마츠키 쿠류(FC도쿄·일본)와 경합을 펼쳤지만 2003년생 미드필더 마츠키한테 밀려 수상에 실패했다.</p>
<p dmcf-pid="2pq0r0hVp9" dmcf-ptype="general">이승원은 지난 5월 아르헨티나에서 개최된 2023 FIFA(국제축구연맹) U-20 월드컵에서 김은중호 주장으로 대회에 참가해 3골 4도움을 올리며 맹활약했다. 이승원 활약에 힘입어 김은중호는 대회 4위를 차지했고, 이승원은 브론즈볼을 수상하면서 재능과 활약상을 인정 받았다.</p>
<p dmcf-pid="VUBpmplf7K" dmcf-ptype="general">대한민국 여자 U-17 축구 국가대표팀을 이끌고 있는 김은정 감독도 올해의 코치(여자축구 부문) 최종 후보 3인에 올랐으나 수상에 성공하지 못하면서 최종 후보에 오른 것에 만족해야 했다.</p>
<p dmcf-pid="fnNiUibDFb" dmcf-ptype="general">사진=AFC, 발롱도르 SNS, EPA, AP, DPA/연합뉴스</p>
<p dmcf-pid="4LjnunKw7B" dmcf-ptype="general">권동환 기자 kkddhh95@xportsnews.com </p>
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