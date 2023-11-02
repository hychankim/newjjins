
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
    <h3>[여자농구개막] ② 우승팀에서 '꼴찌' 친정으로…36세 김정은의 도전</h3><h6>최송아  2023. 11. 1. 07:00</h6>
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
<section dmcf-sid="q61vNHD77p">
<figure class="figure_frm origin_fig" dmcf-pid="B5DL9A6hu0" dmcf-ptype="figure">
<p class="link_figure"><img alt="박신자컵 당시 김정은(13번)의 모습 [WKBL 제공. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070024716rmtk.jpg" data-org-width="1200" dmcf-mid="uK5Yk1sbz7" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070024716rmtk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            박신자컵 당시 김정은(13번)의 모습 [WKBL 제공. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="b1wo2cPlU3" dmcf-ptype="general">(서울=연합뉴스) 최송아 기자 = 이번 주말 막을 올리는 2023-2024시즌 여자프로농구에서는 유니폼을 갈아입은 베테랑·중견 선수들과 프로 데뷔를 앞둔 루키들의 활약도 기대를 모은다.</p>
<p dmcf-pid="KduXw3C27F" dmcf-ptype="general">팀을 옮긴 선수 중엔 여자 농구를 대표하는 포워드 김정은(36)에게 시선이 쏠린다.</p>
<p dmcf-pid="9J7Zr0hVUt" dmcf-ptype="general">지난 시즌 아산 우리은행의 통합 우승에 힘을 보탠 김정은은 이후 자유계약선수(FA) 자격을 얻어 4월 부천 하나원큐로 이적했다.</p>
<p dmcf-pid="2iz5mplfp1" dmcf-ptype="general">'친정'으로의 귀환이다.</p>
<p dmcf-pid="V85SaGEu75" dmcf-ptype="general">2006년 신인 드래프트에서 전체 1순위로 하나원큐의 전신 신세계에 지명된 김정은은 2017년까지 이 팀에서만 뛰었다.</p>
<p dmcf-pid="f61vNHD7FZ" dmcf-ptype="general">이후 2017-2018시즌부터 6시즌 동안 우리은행에서 활약하며 세 차례 우승의 기쁨을 맛본 그는 선수 생활의 황혼기에 프로 데뷔팀으로 전격 복귀했다.</p>
<p dmcf-pid="4PtTjXwzUX" dmcf-ptype="general">신세계가 하나금융으로 인수되는 과정을 직접 겪었고 하위권 팀에서 '외로운 에이스' 역할을 해야 했던 터라 하나원큐는 김정은에게 여러 감정이 뒤섞인 팀이다. 그만큼 복귀하는 마음가짐도 남다를 수밖에 없다.</p>
<p dmcf-pid="8PtTjXwzuH" dmcf-ptype="general">지난 두 시즌 연속 리그 최하위에 머문 하나원큐로서는 김정은의 합류가 천군만마와 같다. 하나원큐의 마지막 플레이오프 진출은 김정은이 뛸 때인 2010-2011시즌이었다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="6QFyAZrqzG" dmcf-ptype="figure">
<p class="link_figure"><img alt="박신자컵 때 김정은의 경기 모습 [WKBL 제공. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070025019uwoc.jpg" data-org-width="800" dmcf-mid="7y62ZP0gpu" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070025019uwoc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            박신자컵 때 김정은의 경기 모습 [WKBL 제공. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="Px3Wc5mB7Y" dmcf-ptype="general">이번에 하나원큐와 2년 계약을 맺은 김정은은 팀의 성적 상승과 함께 '여자프로농구 역대 최다 득점' 순위 도약도 노린다.</p>
<p dmcf-pid="Q2GInTj3pW" dmcf-ptype="general">김정은은 지난 시즌까지 7천801점을 쌓아 역대 3위에 이름을 올리고 있다.</p>
<p dmcf-pid="xVHCLyA0Fy" dmcf-ptype="general">현재 2위인 변연하 BNK 코치(7천863점)와는 62점, 1위인 정선민 전 국가대표팀 감독(8천140점)과는 339점 차이다.</p>
<p dmcf-pid="yIdf1xUNzT" dmcf-ptype="general">지난 시즌 정규리그 30경기에서 250점, 2021-2022시즌엔 28경기에서 282점을 올렸던 김정은은 이번 시즌 개막을 앞둔 미디어데이에서 "선수 생활 마지막 목표가 통산 득점 1위"라며 의욕을 숨기지 않았다.</p>
<p dmcf-pid="WFmafExvpv" dmcf-ptype="general">김정은 외에 인천 신한은행을 떠나 디펜딩 챔피언 우리은행에 합류한 가드 유승희(29)도 주목된다.</p>
<p dmcf-pid="Y3sN4DMTuS" dmcf-ptype="general">유승희는 이번 시즌을 앞두고 6개 구단 선수와 팬, 미디어 관계자를 대상으로 진행한 설문 조사에서 '가장 기대되는 이적생'으로 꼽히기도 했다.</p>
<p dmcf-pid="G0Oj8wRy3l" dmcf-ptype="general">우리은행이 김정은을 하나원큐로 보내며 보상 선수로 지명했으나 이후 유승희와의 트레이드로 신한은행 유니폼을 입게 된 가드 김지영(25) 등도 눈여겨 볼만하다.</p>
<p dmcf-pid="HPtTjXwzuh" dmcf-ptype="general">신인 중엔 드래프트 전체 1순위로 우승 후보 청주 KB의 지명을 받은 포워드 고현지(17)의 활약이 관심을 끈다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="XQFyAZrq7C" dmcf-ptype="figure">
<p class="link_figure"><img alt="고현지(오른쪽)와 어머니 조문주 [WKBL 제공. 재판매 및 DB 금지]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/yonhap/20231101070025291drdf.jpg" data-org-width="1200" dmcf-mid="zUTCLyA03U" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/yonhap/20231101070025291drdf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            고현지(오른쪽)와 어머니 조문주 [WKBL 제공. 재판매 및 DB 금지]
           </figcaption>
</figure>
<p dmcf-pid="Zx3Wc5mBpI" dmcf-ptype="general">고현지는 수피아여고 2학년이던 지난해 한국중고농구 주말리그 왕중왕전 여고부 최우수선수(MVP)로 뽑히는 등 두각을 나타내며 이번 드래프트 최대어로 꼽힌 선수인데, 한국 여자 농구의 '기둥' 박지수 등이 활약하는 강호 KB에 가세했다.</p>
<p dmcf-pid="50Oj8wRy7O" dmcf-ptype="general">지난해 국제농구연맹(FIBA) 17세 이하(U-17) 여자농구 월드컵과 FIBA 18세 이하(U-18) 아시아 여자농구선수권대회 등에서도 활약한 고현지는 여자 농구 국가대표 출신 조문주의 딸이기도 하다.</p>
<p dmcf-pid="1pIA6reWzs" dmcf-ptype="general">고현지에 이어 전체 2, 3순위로 각각 부산 BNK와 신한은행의 선택을 받은 포워드 김정은(18)과 가드 허유정(18), 한국인 어머니를 둬 외국 국적 동포 선수로 드래프트에 참여해 2라운드 2순위로 신한은행 선수가 된 케이티 티머맨(24) 등도 프로 무대 안착을 꿈꾼다.</p>
<p dmcf-pid="tUCcPmdYFm" dmcf-ptype="general">기록 부문에선 김정은의 최다 득점 도전 외에 정상 수성을 노리는 우리은행의 존재감이 뚜렷하다.</p>
<p dmcf-pid="F9YOivNFur" dmcf-ptype="general">우리은행은 앞으로 14승을 추가하면 여자프로농구 사상 최초로 '500승'을 달성하며, 12시즌째 우리은행을 지휘하는 '여자농구 최장수 사령탑' 위성우 감독은 21승을 더 거두면 최초의 '300승' 고지를 밟는다.</p>
<p dmcf-pid="32GInTj3pw" dmcf-ptype="general">songa@yna.co.kr</p>
<p dmcf-pid="p61vNHD7zE" dmcf-ptype="general">▶제보는 카톡 okjebo</p>
</section>
</div></p></section></div><h6>[Source : 연합뉴스]</h6></div>
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