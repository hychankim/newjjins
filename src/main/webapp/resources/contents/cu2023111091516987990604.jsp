
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
    <h3>임영웅 노래에 행복, 하루키 소설에 감동… 덕질, 일상을 바꾸다[창간 32주년 특집]</h3><h6>유민우 기자  2023. 11. 1. 09:15</h6>
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
<section dmcf-sid="FAWSV63oCR">
<figure class="figure_frm origin_fig" dmcf-pid="4wMMXtOKlD" dmcf-ptype="figure">
<p class="link_figure"><img alt="일러스트 = 김유종 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101093610247wekk.jpg" data-org-width="390" dmcf-mid="KVHHLN4ITO" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101093610247wekk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            일러스트 = 김유종 기자
           </figcaption>
</figure>
<p dmcf-pid="8rRRZFI9vE" dmcf-ptype="general"><strong>‘팬심 충만’ 4人</strong></p>
<p dmcf-pid="6mee53C2lk" dmcf-ptype="general">‘한국인은 무엇으로 사는가’ 묻는다면, 이젠 ‘팬심’이다. 누군가를, 혹은 무언가를 향한 간절하고 애틋한 마음. ‘사랑’이다. 한 번 더 보고 싶고, 조금 더 알고 싶고, 뭐라도 하나 더 주고 싶다. 내 사랑의 대상이 행복하고, 잘 되길 바란다. 그래서 ‘덕질’을 한다. 좋아하는 뮤지컬 공연을 보기 위해 연 수백만 원을 기꺼이 쓰고, 하루키 소설에 빠진 중학생은 일본어를 전공해 번역가가 됐다. 갑자기 아이돌 덕후가 된 40대 여성의 평범했던 일상은 다채롭고 역동적으로 바뀌었다. 임영웅의 한 팬은 임영웅 이름으로 기부를 하며 ‘선한 영향력’이 뭔지 깨쳤다. 그렇게 산다. 사랑하며, 덕질하며. 지금, ‘팬심’ 충만한 4인의 이야기를 들었다. 팬심이 가진 힘은 뭘까. 팬심으로 사는 하루는 어떤 풍경일까. </p>
<p dmcf-pid="Pc66WXwzyc" dmcf-ptype="general"><strong>■ 임영웅에 반해 ‘찐사랑’ 임혜정씨<br/><br/> 웅모닝’으로 인사, 전국투어도 필참… 매년 기념일마다 ‘영웅’처럼 기부도</strong></p>
<figure class="figure_frm origin_fig" dmcf-pid="QkPPYZrqyA" dmcf-ptype="figure">
<p class="link_figure"><img alt="임영웅 입간판 옆에서 포즈를 취한 임혜정(맨 왼쪽) 씨." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101093610411ijjp.jpg" data-org-width="650" dmcf-mid="9JDD94tnSs" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101093610411ijjp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            임영웅 입간판 옆에서 포즈를 취한 임혜정(맨 왼쪽) 씨.
           </figcaption>
</figure>
<p dmcf-pid="xEQQG5mBvj" dmcf-ptype="general">부산에서 공인중개업을 하고 있는 임혜정(여·56) 씨는 트로트의 ‘ㅌ’도 몰랐다. 누군가의 팬이 돼본 적도 없다. 하지만 지난 2020년 방송된 TV조선 ‘미스터트롯’에서 ‘어느 60대 노부부 이야기’를 부르는 가수 임영웅을 처음 접한 후, 그의 삶은 바뀌었다. 임 씨는 지난달 20일 문화일보에 “보는 순간 ‘저 사람이 진(眞)이다’라고 느꼈다”면서 “제가 그리 감성적이지 않은 도시적인 여성인데 영웅님을 본 후 삶의 방식이 달라졌다”고 말했다.</p>
<p dmcf-pid="y7vvRibDyN" dmcf-ptype="general">임 씨는 현재 부산 남수해(남구 수영구 해운대) 방의 부방장을 맡고 있다. 활동명은 ‘연두’다. 회원 수 약 120명인 이 방에서 임영웅을 부르는 명칭은 ‘영웅님’이다. 그는 “‘영웅이’라고 하면 난리 난다. 이건 서로가 서로를 존중하자는 차원”이라며 “이곳에서 30∼80대 다양한 이들과 만난다. 같은 목적으로 만나 서로를 격려하고 의지하며 삶의 이유를 찾는다. 건강이 안 좋고, 우울증을 앓았던 분들이 이 방에서 함께 어우러지며 회복하기도 했다”고 전했다.</p>
<p dmcf-pid="WzTTenKwTa" dmcf-ptype="general">임 씨를 비롯해 남수해 방 회원들의 하루는 바쁘게 돌아간다. 오전 6시 반∼7시쯤 먼저 일어난 사람이 ‘웅모닝’(임영웅+굿모닝)으로 서로에게 안부를 물으며 하루를 시작한다. 임영웅의 소식을 비롯해 관련 설문조사 등을 링크하고, 팬들이 스타의 노래를 집중적으로 듣는 ‘스밍 총공’(스트리밍 총공격) 일정을 조율한다. 10월 말부터 임영웅의 전국투어 콘서트가 시작됐기 때문에 임 씨는 더 바빠졌다. 그는 “제가 ‘행사의 여왕’이다. 버스 대절과 음식 장만 등 공연일에 맞춰서 움직일 준비를 해야 한다”면서 “하루에 5∼6시간 영웅님을 위해 쓰는 것 같다. 아침에 일어나 2시간, 점심때 1시간, 그리고 저녁에 2∼3시간 정도다. 내 일상에서 가장 의미 있고 행복한 시간”이라고 밝혔다.</p>
<p dmcf-pid="YqyydL9rvg" dmcf-ptype="general">임 씨를 비롯한 남수해 방 회원들은 방장을 중심으로 똘똘 뭉쳐 ‘선한 영향력’을 전파하는 데도 힘쓴다. 임영웅의 데뷔일인 8월 8일과 그가 ‘미스터트롯’ 우승을 차지한 3월 14일이 되면 매년 1000만 원 이상씩 임영웅의 이름으로 기부한다. 팬들의 이런 노력에 임영웅은 기회가 될 때마다 팬덤인 ‘영웅시대’의 이름으로 수억 원씩 기부하며 화답한다. 임 씨는 “기부금은 각각 자율적으로 납부한다. 이 활동을 통해 기부의 즐거움을 알게 됐다는 이들도 많다. 이는 단순히 특정 연예인을 좋아한다는 차원이 아니다”라면서 “영웅님 덕분에 오히려 우리 모두가 삶의 활력을 얻은 느낌”이라며 환하게 웃었다. </p>
<p dmcf-pid="GNffvYkUyo" dmcf-ptype="general">안진용 기자 realyong@munhwa.com</p>
<p dmcf-pid="Hj44TGEuvL" dmcf-ptype="general"><strong>■ 티켓값 매달 수십만원 ‘뮤덕’ 김지우씨<br/><br/> 좋아하는 배우 모든 무대일정 꿰차… 연극·뮤지컬·콘서트까지 n차 관람</strong></p>
<figure class="figure_frm origin_fig" dmcf-pid="XA88yHD7ln" dmcf-ptype="figure">
<p class="link_figure"><img alt="김 씨가 공연 관람 후 보관 중인 티켓의 일부." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101093611029pbnk.jpg" data-org-width="650" dmcf-mid="2wXXoj8Cym" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101093611029pbnk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김 씨가 공연 관람 후 보관 중인 티켓의 일부.
           </figcaption>
</figure>
<p dmcf-pid="ZLKKCvNFli" dmcf-ptype="general">“한 달 동안 안재영 배우님 공연을 보는 데만 40만 원 정도 쓰고 있어요.”</p>
<p dmcf-pid="5o99hTj3yJ" dmcf-ptype="general">직장인 김지우(여·22·가명) 씨는 취미로 뮤지컬 관람을 즐기는 대학생이었다. 그러나 2년 전 뮤지컬 ‘브라더스 까라마조프’에 나온 안재영 배우에게 ‘입덕’해 본격적인 연뮤덕의 길을 걷게 됐다. 그는 입덕 후 안재영이 출연하는 모든 연극과 뮤지컬, 콘서트를 관람하고 있다. 김 씨는 지난달 24일 문화일보에 “학교 친구와 안재영 배우가 나오는 공연을 보러 갔다. 당시 안재영 배우를 모르던 상태였고 TV를 통해서 보았던 배우와 같이 간 친구가 좋아하는 배우 2명만 알고 있는 상태에서 입장했다. 공연이 끝나고 나는 안재영 덕후가 돼 있었다”고 말했다. 처음으로 안재영의 공연을 본 것이 2021년 3월 27일이라는 것까지 정확하게 기억하고 있는 김 씨는 2년 동안 그의 공연을 보기 위해 약 600만 원을 지출했다고 한다. 김 씨는 무엇을 보고 입덕했을까? 그는 “‘안재영 배우가 연기와 노래를 본체가 떠오르지 않을 정도로 잘해서’라는 당연한 이유도 있다. 하지만 연뮤덕 사이에선 ‘최애 배우는 연뮤신이 점지해 준다’는 얘기가 있다”며 안재영이 자신의 마음에 훅 들어와 꽂혔다고 표현했다. </p>
<p dmcf-pid="1g22lyA0yd" dmcf-ptype="general">김 씨는 ‘회전문 관람’으로 불리는 같은 작품을 수차례 재관람하는 팬이다. 연극·뮤지컬은 영화와 달리 현장감이 있고 배우의 컨디션과 상대 배우에 따라 애드리브, 디테일이 바뀌기에 팬들이 n차 관람을 선호한다. 하지만 수만∼수십만 원에 달하는 연극·뮤지컬 티켓 값은 사회 초년생들에게 큰 부담이다. 김 씨는 직장인이 되기 전 학생이었을 땐 주어진 용돈을 아끼면서 틈틈이 알바를 해 관람비를 마련했다고 한다. 그중 가장 기억에 남는 것은 하우스어셔(공연장 안내원)로 일한 경험. 그는 공연장에서 알바로 일한 것이 ‘덕업일치’의 순간이었다고 떠올렸다. 덕질하면서 가장 행복했던 기억은 뮤지컬 ‘아르토, 고흐’ 럭키드로우 행사에서 안재영 배우의 사인이 담긴 프로그램북을 뽑은 것.</p>
<p dmcf-pid="tNffvYkUWe" dmcf-ptype="general">배우 덕질은 김 씨의 연극·뮤지컬 취향을 바꾸기도 했다. 김 씨는 원래 대극장 뮤지컬을 주로 관람했지만 소극장에서 주로 공연하는 안재영 배우의 팬이 된 이후 소극장 뮤지컬의 매력에 빠져들었다. 김 씨는 “대극장은 LED 화면, 턴 테이블 등 다양한 연출로 배경전환과 무대 이동이 가능하다. 하지만 소극장은 큰 이동 없이 무대에서 여러 장면을 만들어 보여주기에 그것이 가장 큰 매력으로 다가왔다”고 했다. </p>
<p dmcf-pid="Fj44TGEuWR" dmcf-ptype="general">유민우 기자 yoome@munhwa.com</p>
<p dmcf-pid="3e77rInXTM" dmcf-ptype="general"><strong>■ 신인 아이돌 응원하는 최연우씨<br/><br/> ‘최애’ 성공 위해 홍보대사도 자처… 데뷔 늦어졌을땐 함께 마음아파해</strong></p>
<figure class="figure_frm origin_fig" dmcf-pid="0dzzmCLZyx" dmcf-ptype="figure">
<p class="link_figure"><img alt="‘소년판타지’에서 1위를 한 유준원." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101093611200ongl.jpg" data-org-width="390" dmcf-mid="V7ww28FLWr" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101093611200ongl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ‘소년판타지’에서 1위를 한 유준원.
           </figcaption>
</figure>
<p dmcf-pid="pJqqsho5hQ" dmcf-ptype="general">“지금 소원은 최애(가장 좋아하는 아이돌 멤버)가 다시 무대에 서는 것입니다.” </p>
<p dmcf-pid="UqyydL9rWP" dmcf-ptype="general">‘덕통사고’(갑자기 덕질에 빠지는 것)를 당한 최연우(여·42) 씨. 최애의 행복이 곧 자신의 행복이다. 회사원인 최 씨는 반년 전만 해도 오디션 프로그램을 즐겨보는 보통의 시청자였다. 누가 잘 하는지, 그래서 누가 우승을 하는지에만 관심이 있었지, 특정 출연자를 ‘덕질’하게 될 줄은, 그것도 아이돌 덕후가 될 줄은 몰랐다. 주변에 아미(BTS 팬덤), 캐럿(세븐틴), 시즈니(NCT), 스테이(스트레이 키즈) 등 K-팝 아이돌 팬들이 넘쳐났어도 남 일로만 알았다. </p>
<p dmcf-pid="uBWWJo2mh6" dmcf-ptype="general">최 씨의 최애는 ‘소년판타지-방과후 설렘 시즌2’에서 1위를 차지한 유준원. 이른바 ‘키우는 아이돌’로 아직 K-팝 ‘스타’라고는 할 수 없다. 준원은 ‘판타지 보이즈’(이하 판보)로 데뷔하기로 돼 있었으나, 데뷔 조에서 빠지는 우여곡절을 겪고 잠시 활동을 멈춘 상태다. 최 씨의 바람이 이해된다. </p>
<p dmcf-pid="7bYYigVsh8" dmcf-ptype="general">‘입덕(최애에게 빠져든 순간)’ 순간이 생생하다. ‘소년판타지’ 팀별 미션 날. 준원은 다른 팀원들의 눈치를 살피며 원하는 파트를 말하지 못하고 의기소침해 있었다. 무대에선 카리스마 넘치지만, 평소엔 애교가 넘치고, 때론 소심하다. 최 씨는 그 모습에 훅 빠져들었다. “남을 배려하다 자기 걸 놓치는 성격이 나랑 비슷하다”면서 “무대랑 평소 모습이 180도 다른 반전 매력에도 끌렸다”고 전했다. 그러나 ‘열정’이 가장 큰 이유. “꿈과 일에 대한 순수한 열정에 반했어요. 팬덤을 이끄는 힘은 사실 그거죠.”</p>
<p dmcf-pid="zZww28FLy4" dmcf-ptype="general">‘덕력’ 5개월. 짧다면 짧지만, ‘팬심’은 활활 타오르고 있다. 최 씨의 ‘덕질’ 스케일을 보라. 그는 준원이 데뷔 조에 있을 때 열린 판보의 일본 도쿄 공연도 1박 2일 일정으로 다녀왔다. 이때, 판보 팬카페에서 알게 된 일본 팬을 만나, 국경초월 ‘덕심’을 나눴다. 초심자의 행운도 있었다. 준원의 첫 ‘영통팬싸’(영상으로 하는 일종의 팬 사인회)에 당첨돼 생애 첫 아이돌 덕질로 이미 ‘성덕’(성공한 덕후)이 됐다. </p>
<p dmcf-pid="q5rrV63ohf" dmcf-ptype="general">“모든 것을 사랑으로 감쌀 수 있는 넓은 아량이 생겨요.” 덕질 후 최 씨에게 나타난 가장 큰 변화다. 그렇다. 팬심은 ‘사랑’ 그 자체다. 그는 “매일 새로운 목표가 생기는 것도 즐겁다”고 했다. 문자 투표, 영상 조회 수 올리기 등 최애를 위한 ‘미션’이 일상을 다채롭게 만든다.준원의 무대를 기다리며, 최 씨는 이 ‘덕질’의 미래를 생각한다. 시간과 돈이 허락하면 해외 공연도 갈 것이고, 적극적으로 영통에도 참여할 것이다. 그게 최애를 응원하고, 사랑하는 방법이니까. 준원 팬 카페의 해외 팬들 영어 질문에 적극적으로 댓글을 달아주는 최 씨는 “정보 공유로 최애의 다른 팬들에게도 도움이 되고 싶다”고 전했다. </p>
<p dmcf-pid="B1mmfP0gWV" dmcf-ptype="general">박동미 기자 pdm@munhwa.com</p>
<p dmcf-pid="b8ttjExvS2" dmcf-ptype="general"><strong>■ 하루키 작품 즐기려 번역가 된 이지수씨<br/><br/> 학창시절 감명받은 후 일본어 전공… 책장엔 원서·번역본 등 90권 가득</strong></p>
<figure class="figure_frm origin_fig" dmcf-pid="K6FFADMTS9" dmcf-ptype="figure">
<p class="link_figure"><img alt="소설가 무라카미 하루키." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101093611457jtex.jpg" data-org-width="650" dmcf-mid="f0LL07T6Ww" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101093611457jtex.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            소설가 무라카미 하루키.
           </figcaption>
</figure>
<p dmcf-pid="9P33cwRyCK" dmcf-ptype="general">이지수(여·40) 번역가의 책장 한가운데에는 ‘하루키 존’이 있다. 일본의 소설가 무라카미 하루키가 낸 원서와 번역본, 개정판 등 90권의 하루키 책으로 가득한 공간. “하루키와 동시대를 살아가고 있다는 게 큰 기쁨”이라 말하는 그는 하루키를 향한 팬심으로 살아간다. </p>
<p dmcf-pid="22XXoj8CSb" dmcf-ptype="general">이 번역가는 하루키의 작품을 일본어 그대로 읽고 싶어, 히라가나도 모르는 채로 대학 일문과에 진학해 일본어를 배웠다. 그리고 지금 일본어를 한국어로 번역하는 일을 한다. 고레에다 히로카즈의 ‘영화를 찍으며 생각한 것’(바다출판사), 사노 요코의 ‘사는 게 뭐라고’(마음산책) 등 다수의 책을 우리말로 옮겼으며 하루키와 함께 보낸 청춘을 담담하게 기록한 에세이 ‘아무튼, 하루키’(제철소)를 냈다. </p>
<p dmcf-pid="VVZZgA6hyB" dmcf-ptype="general">중학생 시절, 처음으로 하루키의 책을 접했다. 이 번역가의 첫 하루키 작품은 데뷔작인 ‘바람의 노래를 들어라’. 동네 도서관에서 빌려본 이 책은 그에게 큰 터닝포인트가 됐다. “하루키 문체의 신선함에 충격을 받았어요. 또 소설 속 인물들이 보여주는 생활상이 그 당시엔 굉장히 어른스럽고 멋지게 보였지요. 집에서 파스타를 해먹고 재즈 음악을 듣는 게 당시엔 흔하지 않았으니까요.” 이 번역가는 “오랜 세월 팬으로 지내며 하루키를 지켜보다 보니 작품을 떠나 사람 자체가 좋아졌다”고 고백한다. </p>
<p dmcf-pid="ff55acPlTq" dmcf-ptype="general">하루키의 팬이라고 해서 모든 작품을 사랑하는 건 아니다. 그에게 2017년 나온 ‘기사단장 죽이기’(문학동네)는 사실 실망작이었다고. “‘기사단장 죽이기’가 별로여서 사실 ‘아, 이제 끝인가 보다’ 했어요. 그런데 이번에 새로 나온 ‘도시와 그 불확실한 벽’(문학동네)을 읽으니 정말 좋더라고요! 다시 하루키를 향한 팬심이 살아났어요.” </p>
<p dmcf-pid="4iBBOlg1vz" dmcf-ptype="general">여기엔 하루키의 ‘찐팬’으로서 “하루키가 이름만으로 책을 파는 작가가 되지 않기를 바라는 마음”이 있을 테다. “과거 일본 문학에 열광했던 독자들이 이제는 더 이상 요시모토 바나나나 무라카미 류, 에쿠니 가오리를 읽지 않는다는 사실이 제게는 가끔 쓸쓸하게 느껴져요. 같은 쓸쓸함을 하루키에게서만은 느끼고 싶지 않다는 것이 오랜 팬으로서의 솔직한 심정입니다.” </p>
<p dmcf-pid="8nbbISatl7" dmcf-ptype="general">번역가로 일하는 그가 가장 바라는 꿈은 역시, 하루키의 책을 번역하는 것이다. “아무도 시키지 않았는데 ‘바람의 노래를 들어라’를 혼자 번역한 적이 있어요. 거기서 오는 행복이 있더라고요. 훌륭한 번역가들이 많지만 언젠가 기회가 온다면, 꼭 하루키의 책을 번역하고 싶어요. 그렇게 된다면 정말 큰 영광일 거예요.” </p>
<p dmcf-pid="6LKKCvNFSu" dmcf-ptype="general">박세희 기자 saysay@munhwa.com</p>
</section>
</div></p></section></div><h6>[Source : 문화일보]</h6></div>
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