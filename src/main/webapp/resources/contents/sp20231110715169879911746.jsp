
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
    <h3>"타구가 내게 왔으면 했다"는 김주원, 진짜 강심장이다 [PO2]</h3><h6>최원영 기자  2023. 11. 1. 07:15</h6>
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
<section dmcf-sid="WJFxQsJGFl">
<figure class="figure_frm origin_fig" dmcf-pid="Yi3MxOiHzh" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101071512560jrmb.jpg" data-org-width="1200" dmcf-mid="QTBnivNF7T" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101071512560jrmb.jpg" width="658"/></p>
</figure>
<p dmcf-pid="GdtQPmdYUC" dmcf-ptype="general">(엑스포츠뉴스 수원, 최원영 기자) 대담하다.</p>
<p dmcf-pid="HJFxQsJGpI" dmcf-ptype="general">NC 다이노스는 31일 수원KT위즈파크에서 열린 2023 신한은행 SOL KBO 포스트시즌 플레이오프(5전3선승제) 2차전 KT 위즈와의 원정경기에서 3-2로 신승을 거뒀다.</p>
<p dmcf-pid="XguJdlg1uO" dmcf-ptype="general">지난 30일 수원에서 열린 1차전에서 9-5로 승리했다. 2차전까지 챙기며 기세를 높였다. 한국시리즈 진출까지 단 1승만을 남겨뒀다. 역대 5전3선승제 플레이오프에서 1, 2차전을 모두 챙긴 팀이 한국시리즈에 진출할 확률은 88.2%로 무척 높았다. 17회 중 15회(1999~2000 양대리그·1995·2008·2021년 제외)에 달했다. NC가 9부 능선을 넘었다.</p>
<p dmcf-pid="Za7iJSat7s" dmcf-ptype="general">김주원의 수비가 결정적이었다. 이날 9번 타자 겸 유격수로 선발 출전했다. 9회말 끝내기 패배 위기를 막고 팀 승리를 지켜냈다.</p>
<p dmcf-pid="5NznivNF3m" dmcf-ptype="general">NC는 1회초 2점, 3회초 1점을 올리며 3-0으로 앞서나갔다. 8회말 2실점했다. 구원투수 류진욱이 문상철을 2루 뜬공으로 잡아낸 뒤 대타 김민혁에게 볼넷, 배정대에게 좌전 안타를 허용했다. 배정대의 타구를 권희동이 제대로 잡아내지 못하며 포구 실책이 기록됐다. 1사 2, 3루가 됐다. NC는 구원투수 임정호를 교체 투입했다. 대타 오윤석의 중견수 희생플라이로 1실점 했다. 점수는 3-1. 이어 마무리투수 이용찬이 등판했다. 김상수에게 1타점 중전 적시타를 맞았다. 3-2가 됐다.</p>
<p dmcf-pid="1qOp0dqkzr" dmcf-ptype="general">9회말엔 더 큰 위기가 찾아왔다. 마운드엔 여전히 이용찬. 박병호에게 중전 안타, 장성우에게 우중간 안타를 내줬다. 무사 1, 3루서 문상철을 3구 삼진으로 돌려세웠다. 대타 김준태의 삼진 아웃과 1루 대주자 정준영의 도루로 2사 2, 3루. 배정대를 고의4구로 걸렀다.</p>
<p dmcf-pid="tBIUpJBE0w" dmcf-ptype="general">2사 만루서 오윤석의 타구가 김주원에게 향했다. 김주원이 몸을 날렸다. 환상적인 다이빙 캐치를 선보였다. KT의 비디오 판독에도 그대로 아웃 판정이 나왔다. 유격수 뜬공 아웃으로 경기에 마침표를 찍었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="FbCuUibDFD" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101071513790zcpl.jpg" data-org-width="1200" dmcf-mid="xPcXH8FLpv" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101071513790zcpl.jpg" width="658"/></p>
</figure>
<p dmcf-pid="3TdCI7T6zE" dmcf-ptype="general">김주원은 "타구가 오는 순간 무조건 노 바운드로 잡아야겠다는 생각이 들었다. 과감하게 다이빙하려 했다. 해볼 만하다고 느꼈다"며 "다른 것은 생각하지 않고 오직 공에만 집중했다. 뜬공 아웃이 됐다고 확신했다"고 밝혔다.</p>
<p dmcf-pid="0yJhCzyP7k" dmcf-ptype="general">이어 "타구가 내게 왔으면 좋겠다고 생각했다. 직접 처리하고 싶었다"며 "위기 상황에서 마지막 아웃카운트를 잡으니 기분이 무척 좋았다. 이겨서 정말 기뻤다. 형들이 다른 말 없이 '진짜 잘했다'는 이야기만 해줬다"고 활짝 웃었다.</p>
<p dmcf-pid="pWilhqWQuc" dmcf-ptype="general">포스트시즌 내내 실책 없이 견고한 수비를 펼치고 있다. 김주원은 "올해 아시안게임(금메달)이라는 큰 무대를 경험하고 오니 나도 모르게 여유가 생긴 듯하다. 매 경기가 중요해 매 순간 집중하려 한다. 그래서 실수가 없었던 것 같다"고 설명했다.</p>
<p dmcf-pid="U6Y29A6huA" dmcf-ptype="general">이날 선발투수였던 신민혁은 "역시 '우리 주원이'구나 싶었다"고 엄지를 치켜세웠다. 신민혁은 6⅓이닝 무실점으로 승리투수가 됐다.</p>
<p dmcf-pid="uPGV2cPlFj" dmcf-ptype="general">김주원은 타석에서도 빛을 발했다. 3타수 1안타를 만들었다. 2-0으로 앞선 3회초 선두타자로 나서 우중간 3루타를 터트렸다. 후속 손아섭의 타석서 1루수 박병호의 포구 실책으로 홈을 밟았다. 3-0이 되는 귀중한 득점이었다. 김주원은 "이전까지 타격에선 팀에 도움이 되지 못한 것 같아 마음이 쓰였다. 3루타를 쳐서 조금은 다행이다"고 말했다.</p>
<p dmcf-pid="7QHfVkQSUN" dmcf-ptype="general">앞서 두산 베어스와의 와일드카드 결정전서 타율 0.500(4타수 2안타) 2타점, SSG 랜더스와의 준플레이오프(5전3선승제)서 타율 0.091(11타수 1안타)를 기록했다. 지난 30일 플레이오프 1차전서도 5타수 무안타에 그쳤다.</p>
<p dmcf-pid="zbCuUibD3a" dmcf-ptype="general">한국시리즈 진출까지 1승 남았다. 김주원은 "아직 플레이오프가 끝나지 않았다. KT는 쉬운 상대가 아니니 끝까지 방심하지 않겠다. 최선을 다해 이기려 노력하겠다"고 강조했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="qKh7unKw3g" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/xportsnews/20231101071515484ihdc.jpg" data-org-width="1200" dmcf-mid="yrKagYkU0S" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/xportsnews/20231101071515484ihdc.jpg" width="658"/></p>
</figure>
<p dmcf-pid="BKh7unKw7o" dmcf-ptype="general">NC는 이날 승리로 값진 기록도 세웠다. 2020년 한국시리즈 4차전부터 올해 플레이오프 2차전까지 포스트시즌 9연승을 질주했다. 해태 타이거즈가 1987년 플레이오프 4차전부터 1988년 한국시리즈 3차전까지 달성한 역대 KBO 포스트시즌 최다 연승 기록과 타이를 이뤘다. 오는 2일 창원NC파크에서 열리는 플레이오프 3차전에서 승리할 경우 NC는 역대 최초로 포스트시즌 10연승을 달성하게 된다.</p>
<p dmcf-pid="b9lz7L9rUL" dmcf-ptype="general">단일 포스트시즌 6연승 행진도 이어갔다. NC는 정규시즌을 4위로 마쳤다. 와일드카드 결정전에서 1승, 준플레이오프(5전3선승제)에서 3승, 플레이오프에서 2승을 수확했다. 1승만 추가하면 현대 유니콘스와 어깨를 나란히 한다. 현대는 2000년 플레이오프 1차전부터 한국시리즈 3차전까지 7연승을 달렸다. NC가 역사에 이름을 새기려 한다.</p>
<p dmcf-pid="K2Sqzo2m0n" dmcf-ptype="general">사진=수원, 김한준 박지영 기자</p>
<p dmcf-pid="9urFtMujui" dmcf-ptype="general">최원영 기자 yeong@xportsnews.com </p>
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