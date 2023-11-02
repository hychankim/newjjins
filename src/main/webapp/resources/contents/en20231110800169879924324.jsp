
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
    <h3>[스한초점] '소년들''서울의 봄''싱글 인 서울'…11월 관객 부른다</h3><h6>조은애 기자  2023. 11. 1. 08:00</h6>
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
<section dmcf-sid="UN2Wsho5lP">
<div dmcf-pid="uSLz53C2y6" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051268" data-type="photo" dmcf-pid="71w6q9Xev8" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=각 영화 포스터" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080016348uugd.jpg" data-org-width="1280" dmcf-mid="1QNvwOiHvi" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080016348uugd.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=각 영화 포스터
           </figcaption>
</figure>
<div dmcf-pid="ztrPB2Zdy4" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="qFmQbV5JTf" dmcf-ptype="general">
<p>[스포츠한국 조은애 기자] 추석 극장가가 이렇다할 흥행작 없이 싱겁게 마무리된 가운데 11월 첫날부터 쏟아지는 국내외 신작들이 가을 스크린을 채운다. 실화의 힘을 쥔 '소년들', 12.12.사태를 다룬 '서울의 봄', 로맨스물 '싱글 인 서울'부터 외화 기대작들까지 모처럼 다양한 선택지가 관객들을 기다린다.</p>
</div>
<div dmcf-pid="BwQ1vYkUhV" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051269" data-type="photo" dmcf-pid="brxtTGEuS2" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080015119sqnq.jpg" data-org-width="1280" dmcf-mid="ZjQOjExvhL" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080015119sqnq.jpg" width="658"/></p>
</figure>
<div dmcf-pid="KmMFyHD7W9" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="9hiuXtOKWK" dmcf-ptype="general">
<p><strong>정지영 감독의 사건 실화극 '소년들'</strong></p>
</div>
<div dmcf-pid="2ln7ZFI9vb" dmcf-ptype="general">
<p>11월1일 개봉하는 CJ ENM의 '소년들'은 지방 소읍의 한 슈퍼에서 발생한 강도치사사건의 범인으로 지목된 소년들과 사건의 재수사에 나선 형사, 그리고 그들을 둘러싼 사람들의 이야기를 그린다. '부러진 화살', '블랙머니'를 잇는 정지영 감독의 실화극으로 여러 시사 프로그램에서 다룬 적 있는 1999년 삼례나라슈퍼 사건을 소재로 하루아침에 무고한 소년들이 범인으로 조작된 사건의 실체와 그 이면을 쫓는다. 설경구가 사건 재수사에 나선 수사반장으로, 유준상이 사건의 범인을 검거한 형사로 호흡을 맞췄다. 이밖에도 진경, 허성태, 염혜란, 김동영, 유수빈 등이 탄탄한 연기로 힘을 보탰다.</p>
</div>
<div dmcf-pid="VSLz53C2SB" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051270" data-type="photo" dmcf-pid="fhiuXtOKCq" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080017741rohq.jpg" data-org-width="1280" dmcf-mid="3VSUH1sbSe" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080017741rohq.jpg" width="658"/></p>
</figure>
<div dmcf-pid="4ln7ZFI9Cz" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="8SLz53C2S7" dmcf-ptype="general">
<p><strong>12.12 군사반란 모티브로 '서울의 봄'</strong></p>
</div>
<div dmcf-pid="PGA2pzyPvU" dmcf-ptype="general">
<p>플러스엠 엔터테인먼트가 공개하는 '서울의 봄'은 1979년 12월12일 수도 서울에서 일어난 신군부 세력의 반란을 막기 위한 일촉즉발의 9시간을 담는다. '비트', '태양은 없다', '아수라' 등 선 굵은 영화로 주목받은 김성수 감독의 신작으로 한국 영화 사상 처음으로 12.12 군사반란을 모티브로 했다. 권력을 위해 군사반란을 주도한 전두광 역을 맡은 황정민, 반란군에 맞선 수도경비사령관 이태신 역을 맡은 정우성이 각각 권력을 향한 야욕과 군인으로서의 신념을 지키는 인물로 대립각을 만들었다. 대한민국의 운명을 바꾼 역사적 사건을 어떤 호흡으로 풀어냈을지 관심이 집중되고 있다. 오는 22일 개봉한다.</p>
</div>
<div dmcf-pid="QHcVUqWQyp" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051271" data-type="photo" dmcf-pid="xgKTrInXT0" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080019070paug.jpg" data-org-width="1280" dmcf-mid="pxwXhTj3TM" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080019070paug.jpg" width="658"/></p>
</figure>
<div dmcf-pid="yFmQbV5Jv3" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="W3sxKf1ilF" dmcf-ptype="general">
<p><strong>이동욱·임수정 말랑말랑 멜로 '싱글 인 서울'</strong></p>
</div>
<div dmcf-pid="y4G3WXwzvL" dmcf-ptype="general">
<p>롯데엔터테인먼트, '건축학개론'의 제작사 명필름이 선보이는 '싱글 인 서울'도 있다. 혼자가 좋은 파워 인플루언서 영호와 혼자는 싫은 출판사 편집장 현진이 싱글 라이프에 관한 책을 만들면서 벌어지는 이야기를 그린 영화다. 이동욱이 파워 인플루언서 겸 작가 영호로, 임수정이 출판사 편집장 현진으로 설레는 호흡을 펼친다. 자유로운 싱글 라이프 속에서 온전히 스스로에게 집중하며 살아가던 두 사람이 점차 서로에게 스며드는 과정이 스산해진 가을 밤 온기를 불어넣을 전망이다. 29일 개봉 예정이다.</p>
</div>
<div dmcf-pid="GsR3WXwzh1" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051272" data-type="photo" dmcf-pid="HOe0YZrqC5" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080020382zlqm.jpg" data-org-width="1280" dmcf-mid="fGbJ4QpaWw" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080020382zlqm.jpg" width="658"/></p>
</figure>
<div dmcf-pid="XIdpG5mBCZ" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="ZbyoQezcSX" dmcf-ptype="general">
<p><strong>박서준 할리우드 진출작 '더 마블스'</strong></p>
</div>
<div dmcf-pid="5KWgxdqkhH" dmcf-ptype="general">
<p>외화 중에서는 오는 8일 개봉을 앞둔 MCU(마블 시네마틱 유니버스) 캡틴 마블의 두 번째 이야기 '더 마블스'가 있다. 우주를 지키는 히어로 캡틴 마블 캐럴 댄버스(브리 라슨)가 능력을 사용할 때마다 모니카 램보(테요나 패리스), 미즈 마블 카말라 칸(이만 벨라니)과 위치가 바뀌는 위기에 빠지면서 뜻하지 않게 새로운 팀플레이를 하게 되는 히어로 액션 블록버스터다. 팀으로 돌아온 캐럴 댄버스의 더욱 강력한 활약과 캡틴 마블의 남편 얀 왕자로 등장할 박서준의 할리우드 데뷔에 기대가 쏠린다.</p>
</div>
<div dmcf-pid="19YaMJBEvG" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051273" data-type="photo" dmcf-pid="t0OM94tnCY" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080021691ivqo.jpg" data-org-width="1280" dmcf-mid="6D9n6Mujlk" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080021691ivqo.jpg" width="658"/></p>
</figure>
<div dmcf-pid="FpIR28FLCW" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="3UCeV63oyy" dmcf-ptype="general">
<p><strong>이와이 슌지 감독표 감각적인 영상미에 푹 '키리에의 노래'</strong></p>
</div>
<div dmcf-pid="0UCeV63oyT" dmcf-ptype="general">
<p>1일 개봉하는 '키리에의 노래'는 노래로만 이야기하는 길거리 뮤지션 키리에(아이나 디 엔드), 자신을 지워버린 친구 잇코(히로세 스즈), 사라진 연인을 찾는 남자 나츠히코(마츠무라 호쿠토) 세 사람의 비밀스러운 사연을 들려줄 감성 스토리다. 앞서 '러브레터', '하나와 앨리스', '릴리 슈슈의 모든 것', '립반윙클의 신부' 등을 통해 국내에서도 탄탄한 팬덤을 보유한 이와이 슌지 감독의 따뜻한 메시지가 돋보이는 영화다. 제28회 부산국제영화제 월드 프리미어로 첫 선을 보였으며, 예매 오픈 3분 만에 1000석에 가까운 전체 상영 스케줄을 매진시켰다. 이와이 슌지 감독은 3~5일 내한해 한국 취재진과 인터뷰를 시작으로 방송, 유튜브, GV 등의 행사를 열고 팬들과 만날 예정이다.</p>
</div>
<div dmcf-pid="puhdfP0gCv" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="1051274" data-type="photo" dmcf-pid="U5D8zKHRCS" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080022948pztl.jpg" data-org-width="1280" dmcf-mid="pWcymCLZWQ" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoHankook/20231101080022948pztl.jpg" width="658"/></p>
</figure>
<div dmcf-pid="u1w6q9XeSl" dmcf-ptype="general">
<div>
</div>
</div>
<div dmcf-pid="7trPB2ZdSh" dmcf-ptype="general">
<p><strong>고레에다 히로카즈 신작 '괴물'</strong></p>
</div>
<div dmcf-pid="z4ZcJo2mCC" dmcf-ptype="general">
<p>고레에다 히로카즈 감독의 '괴물'도 11월의 기대작 중 하나다. '괴물'은 몰라보게 바뀐 아들의 행동에 이상함을 감지한 엄마가 학교에 찾아가면서 의문의 사건에 연루된 주변 사람들 모두가 감정의 소용돌이를 겪게 되는 이야기로 안도 사쿠라, 나가야마 에이타, 쿠로카와 소야 등이 출연했다. 제76회 칸국제영화제에서 각본상을 수상하며 작품성을 인정받았고 제28회 부산국제영화제에서도 예매 오픈 2분 만에 전회차, 전석 매진을 기록하며 뜨거운 반응을 모았다. 한 초등학교에서 벌어진 교사와 학부모 간의 갈등을 중심으로 고레에다 히로카즈 감독 특유의 따뜻하면서도 날카로운 통찰력이 살아있다는 평가다. 29일 개봉한다.</p>
<p> </p>
<p>스포츠한국 조은애 기자 eun@sportshankook.co.kr</p>
</div>
</section>
</div></p></section></div><h6>[Source : 스포츠한국]</h6></div>
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