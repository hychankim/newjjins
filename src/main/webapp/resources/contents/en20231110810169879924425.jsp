
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
    <h3>'싱글 인 서울' 이동욱x임수정, 메인 포스터 공개…연애 세포 자극</h3><h6>김보라  2023. 11. 1. 08:10</h6>
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
<section dmcf-sid="QUhuYZrqLp">
<figure class="figure_frm origin_fig" dmcf-pid="x458UqWQJ0" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101081026311tyyl.jpg" data-org-width="530" dmcf-mid="qGVwigVsef" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101081026311tyyl.jpg" width="658"/></p>
</figure>
<p dmcf-pid="ymRsoj8Ce3" dmcf-ptype="general">[OSEN=김보라 기자] 영화 '싱글 인 서울' 측이 메인 포스터와 예고편을 공개했다. </p>
<p dmcf-pid="WUhuYZrqiF" dmcf-ptype="general">'싱글 인 서울'(감독 박범수, 제공배급 롯데엔터테인먼트, 제작 디씨지플러스・명필름)은 혼자가 좋은 파워 인플루언서 영호(이동욱 분)와 혼자는 싫은 출판사 편집장 현진(임수정 분)이 싱글 라이프에 관한 책을 만들면서 벌어지는 이야기를 그린 웰메이드 현실 공감 로맨스.</p>
<p dmcf-pid="YrMmLN4Int" dmcf-ptype="general">1일 공개된 메인 포스터는 서로 다른 싱글 라이프의 영호와 현진을, '파워 인플루언서'의 SNS 피드를 연상시키는 비주얼로 담아내 눈길을 사로잡는다. 달달한 눈빛을 장착한 영호의 미소와 사랑스러운 매력을 뽐내는 현진의 모습이 보는 이들의 설렘 지수를 한껏 끌어올리는 가운데 자타공인 로맨스 장인 이동욱, 임수정이 선사할 플러팅 케미스트리에 기대가 모인다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="G816uBYxL1" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101081027729ilrj.png" data-org-width="650" dmcf-mid="Bvud94tneV" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101081027729ilrj.png" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="HKY9tplfd5" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101081027955jbzs.png" data-org-width="650" dmcf-mid="bI8kenKwM2" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101081027955jbzs.png" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="X9G2FUS4nZ" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101081028242kuhk.png" data-org-width="650" dmcf-mid="KkEZISate9" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101081028242kuhk.png" width="658"/></p>
</figure>
<p dmcf-pid="Z9G2FUS4dX" dmcf-ptype="general">여기에 두 인물 사이에 자리한 서울과 바르셀로나의 풍경은 영호와 현진, 그리고 각양각색의 싱글들이 에세이 ‘싱글 인 더 시티’를 만들며 채워나갈 현실 로맨스를 기대케 한다.</p>
<p dmcf-pid="5k6EdL9rMH" dmcf-ptype="general">함께 공개된 메인 예고편은 작가와 편집장으로 만나 사사건건 부딪히는 영호와 현진의 모습으로 시작해 유쾌한 웃음을 터뜨린다. “나랑 딱 맞는 사람은 나밖에 없어”라며 혼자 보내는 시간에 찬사를 보내는 영호의 모습과 혼자 썸타는 모습으로 연애만큼은 허당끼 가득한 매력을 선보이는 현진의 모습은 서로 다른 두 사람이 선보일 현실 가득한 로맨스에 기대감을 고조시킨다.</p>
<p dmcf-pid="1g9aPR7ALG" dmcf-ptype="general">한편 에세이 싱글 인 서울을 함께 만들며 서로의 일상에 스며드는 영호와 현진의 모습은 “당신은 언제 마지막으로 설렜나요?”라는 카피와 함께 펼쳐져 설렘 가득한 로맨스를 예고한다. 또한 사랑스러운 두 사람의 모습 위로 흘러나오는 악뮤의 ‘오랜 날 오랜 밤’ OST는 잠자고 있던 연애 세포 하나하나를 깨우며 설렘 지수를 최고치로 고조시킨다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="tNVjxdqkRY" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101081028856hypc.png" data-org-width="650" dmcf-mid="9jJCNkQSeK" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101081028856hypc.png" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="FRUeKf1ieW" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101081029094ffpt.png" data-org-width="650" dmcf-mid="VwvqXtOKdB" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101081029094ffpt.png" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="3ul7G5mBiy" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101081029442znnd.png" data-org-width="650" dmcf-mid="4Aw1hTj3dz" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101081029442znnd.png" width="658"/></p>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="0WjYrInXiT" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101081029916rynf.png" data-org-width="650" dmcf-mid="6uKg6MujMu" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101081029916rynf.png" width="658"/></p>
</figure>
<p dmcf-pid="pYAGmCLZLv" dmcf-ptype="general">여기에 베일에 싸인 로맨스 소설계의 베스트셀러 작가 홍 작가(이솜 분)의 등장과 존재감 제로 출판사 대표 진표(장현성 분), 꽃 파는 책방 주인 경아(김지영 분), 오지라퍼 출판사 분위기 메이커 윤정(이미도 분), 눈치제로 출판사 막내 병수(이상이 분), 폭탄주 장인 출판사 디자이너 예리(지이수 분)의 유쾌한 티키타카 케미스트리는 '싱글 인 서울'이 전할 다채로운 재미를 기대케 한다.</p>
<p dmcf-pid="UKY9tplfiS" dmcf-ptype="general">메인 포스터와 메인 예고편을 공개하며 기대를 모으는 웰메이드 현실 공감 로맨스 '싱글 인 서울'은 오는 11월 29일 전국 극장에서 개봉한다.</p>
<p dmcf-pid="uul7G5mBel" dmcf-ptype="general">/ purplish@osen.co.kr</p>
<p dmcf-pid="7816uBYxJh" dmcf-ptype="general">[사진] 영화 포스터, 영화 예고편</p>
</section>
</div></p></section></div><h6>[Source : OSEN]</h6></div>
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