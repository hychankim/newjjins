
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
    <h3>'쉴트? 플라허티?' 김하성 새 감독은 누구일까... “내부 인사만 고려하진 않아”</h3><h6>노찬혁 기자  2023. 11. 1. 09:25</h6>
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
<section dmcf-sid="ZT8uSWcpcz">
<figure class="figure_frm origin_fig" dmcf-pid="57jMUqWQo7" dmcf-ptype="figure">
<p class="link_figure"><img alt="샌디에이고 파드리스 마이클 쉴트 수석 고문. /게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092506559nytu.jpg" data-org-width="640" dmcf-mid="4X8WADMTaP" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092506559nytu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            샌디에이고 파드리스 마이클 쉴트 수석 고문. /게티이미지코리아
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="1RTDxdqkku" dmcf-ptype="figure">
<p class="link_figure"><img alt="샌디에이고 파드리스 라이언 플라허티 코치. /게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092507007qqvq.jpg" data-org-width="640" dmcf-mid="86bCnafOA6" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092507007qqvq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            샌디에이고 파드리스 라이언 플라허티 코치. /게티이미지코리아
           </figcaption>
</figure>
<p dmcf-pid="tUaQ07T6jU" dmcf-ptype="general">[마이데일리 = 노찬혁 기자] "마이클 쉴트 수석 고문과 라이언 플라허티 벤치 코치만이 샌디에이고 파드리스가 감독 선임을 고려하고 있는 옵션은 아니다."</p>
<p dmcf-pid="F9wnbV5Jap" dmcf-ptype="general">미국 '블리처 리포트'는 1일(이하 한국시각) "샌디에이고 쉴트 고문과 플라허티 코치가 새 감독의 유이한 옵션은 아니다"라며 "멕시코 야구대표팀 벤지 길 감독과 LA 에인절스 필 네빈 前감독은 샌디에이고 감독 선임 과정에서 외부 후보자로 추가됐다"고 전했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="34OaV63oj0" dmcf-ptype="figure">
<p class="link_figure"><img alt="LA 에인절스 벤지 길 코치. /게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092508470sfsx.jpg" data-org-width="640" dmcf-mid="6cMZwOiHc8" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092508470sfsx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LA 에인절스 벤지 길 코치. /게티이미지코리아
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="0nHOJo2mo3" dmcf-ptype="figure">
<p class="link_figure"><img alt="LA 에인절스 필 네빈 前감독. /게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092510214zfsp.jpg" data-org-width="640" dmcf-mid="Pq5zTGEuj4" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092510214zfsp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LA 에인절스 필 네빈 前감독. /게티이미지코리아
           </figcaption>
</figure>
<p dmcf-pid="pRTDxdqkgF" dmcf-ptype="general">올 시즌 샌디에이고는 멜빈 감독의 지휘 아래 82승 80패로 내셔널리그 서부지구 3위에 그쳤고, 포스트시즌 진출에 실패했다. 지난 시즌 와일드카드시리즈를 거쳐 챔피언십시리즈까지 진출했었으나, 시즌 내내 무기력한 모습을 보이며 가을야구 무대를 밟지 못했다. </p>
<p dmcf-pid="UbEJq9XeAt" dmcf-ptype="general">오프시즌 거액의 투자를 아끼지 않았던 샌디에이고가 좋은 성적을 거두지 못하자 팬들은 실망감을 감추지 못했다. 팬들은 멜빈 감독의 경질을 주장하기도 했다. 설상가상으로 현지에서는 A.J. 프렐러 단장과 멜빈 감독의 불화설까지 나왔다. </p>
<p dmcf-pid="u2rLKf1ia1" dmcf-ptype="general">이 과정에서 시즌 중 게이브 캐플러 감독을 경질했던 샌프란시스코 자이언츠가 내부 인사들의 감독 면접을 진행한 뒤 멜빈 감독을 차기 사령탑 후보에 올렸다. 샌디에이고는 멜빈 감독과 1년의 계약 기간이 남아있었지만, 멜빈 감독의 샌프란시스코 감독 면접을 허락했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="7SfphTj3A5" dmcf-ptype="figure">
<p class="link_figure"><img alt="샌프란시스코 자이언츠 밥 멜빈 감독. /샌프란시스코 자이언츠 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092510532hxml.jpg" data-org-width="640" dmcf-mid="QHxg28FLAf" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092510532hxml.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            샌프란시스코 자이언츠 밥 멜빈 감독. /샌프란시스코 자이언츠 SNS
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="zGxBWXwzcZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="샌프란시스코 자이언츠 밥 멜빈 감독. /샌프란시스코 자이언츠 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092511075utmn.jpg" data-org-width="640" dmcf-mid="xmyFOlg1NV" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092511075utmn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            샌프란시스코 자이언츠 밥 멜빈 감독. /샌프란시스코 자이언츠 SNS
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="qiGsdL9raX" dmcf-ptype="figure">
<p class="link_figure"><img alt="샌프란시스코 자이언츠 밥 멜빈 감독. /샌프란시스코 자이언츠 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092511577sgds.jpg" data-org-width="640" dmcf-mid="y0MaV63oc2" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092511577sgds.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            샌프란시스코 자이언츠 밥 멜빈 감독. /샌프란시스코 자이언츠 SNS
           </figcaption>
</figure>
<p dmcf-pid="BoZCnafOaH" dmcf-ptype="general">결국, 지난 26일 2년 동안 김하성을 지휘한 멜빈 감독이 샌프란시스코 지휘봉을 잡았고, 샌디에이고는 내부 인사인 쉴트 수석 고문과 플라허티 벤치 코치를 새 감독 후보에 올렸다. 현지 매체도 쉴트 고문과 플라허티 코치가 차기 감독으로 유력하다고 보도했다. </p>
<p dmcf-pid="bg5hLN4IAG" dmcf-ptype="general">그러나, 이날 블리처 리포트가 벤지 길 감독과 필 네빈 前감독을 후보 명단에 올랐다며 쉴트 고문과 플라허티가 샌디에이고의 유이한 옵션은 아니라고 보도했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Kv4UlyA0oY" dmcf-ptype="figure">
<p class="link_figure"><img alt="2023 WBC 멕시코 대표팀 벤지 길 감독. /게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092513308tksn.jpg" data-org-width="640" dmcf-mid="WvjMUqWQk9" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092513308tksn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2023 WBC 멕시코 대표팀 벤지 길 감독. /게티이미지코리아
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="9XRKG5mBkW" dmcf-ptype="figure">
<p class="link_figure"><img alt="LA 에인절스 필 네빈 前감독. /게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092514670ukit.jpg" data-org-width="640" dmcf-mid="YoFvacPlcK" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092514670ukit.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            LA 에인절스 필 네빈 前감독. /게티이미지코리아
           </figcaption>
</figure>
<p dmcf-pid="2rzXDsJGoy" dmcf-ptype="general">멕시코 대표팀 감독이자 LA 에인절스 1루 주루코치를 맡고 있는 벤치 길은 2023 월드베이스볼클래식(WBC)에서 4강 진출을 이끌어 대회를 3위 성적을 거뒀고, 현재는 빅리그에서 코치 경력을 쌓고 있다.</p>
<p dmcf-pid="Va1loj8CNT" dmcf-ptype="general">필 네빈 前감독은 2023시즌까지 에인절스를 이끈 감독이다. 오타니 쇼헤이를 지도한 경험이 있다. 2022시즌 감독 대행을 맡은 뒤 올 시즌 정식 감독으로 선임됐지만, 성적 부진을 이유로 경질됐다.</p>
<p dmcf-pid="fVmo94tnNv" dmcf-ptype="general">아직 두 후보는 내부 인사를 뛰어넘지는 못한 것 같다. 블리처 리포트는 "여전히 쉴트 고문과 플라허티 코치가 아직 샌디에이고 감독 후보에서 가장 유력한 후보로 여겨진다"고 밝혔다. </p>
<p dmcf-pid="4C9FOlg1jS" dmcf-ptype="general">이어 "쉴트 고문은 2018년 임시 감독을 시작으로 2019년부터 2021년까지 3년 연속 세인트루이스 카디널스를 포스트시즌에 진출시켰으며 플라허티 코치와 함께 이미 샌디에이고에서 직책을 맡고 있어 이점을 제공하는 것 같다"고 덧붙였다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="80o6FUS4gl" dmcf-ptype="figure">
<p class="link_figure"><img alt="세인트루이스 카디널스 마이클 쉴트 前감독. /게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092515225bvoz.jpg" data-org-width="640" dmcf-mid="GRKtsho5Ab" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092515225bvoz.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            세인트루이스 카디널스 마이클 쉴트 前감독. /게티이미지코리아
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="614UlyA0oh" dmcf-ptype="figure">
<p class="link_figure"><img alt="세인트루이스 카디널스 마이클 쉴트 前감독(8번). /게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092515490fzjn.jpg" data-org-width="640" dmcf-mid="HkXIigVsgB" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092515490fzjn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            세인트루이스 카디널스 마이클 쉴트 前감독(8번). /게티이미지코리아
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="PX23ISatAC" dmcf-ptype="figure">
<p class="link_figure"><img alt="샌디에이고 파드리스 라이언 플라허티 코치. /게티이미지코리아" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mydaily/20231101092516127sjni.jpg" data-org-width="640" dmcf-mid="XHNxpzyPjq" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mydaily/20231101092516127sjni.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            샌디에이고 파드리스 라이언 플라허티 코치. /게티이미지코리아
           </figcaption>
</figure>
</section>
</div></p></section></div><h6>[Source : 마이데일리]</h6></div>
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