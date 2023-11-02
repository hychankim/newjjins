
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
    <h3>[종합] 홍지윤, "현타 왔다" 본인도 민망한 무대…'화밤' 분당 최고 5.2%</h3><h6>김지원  2023. 11. 1. 08:18</h6>
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
<section dmcf-sid="fbQdmCLZzl">
<p dmcf-pid="4KxJsho5zh" dmcf-ptype="general">[텐아시아=김지원 기자]</p>
<figure class="figure_frm origin_fig" dmcf-pid="8z8MDsJG0C" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진제공=TV CHOSUN '화요일은 밤이 좋아'" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/10asia/20231101081810373honn.jpg" data-org-width="1100" dmcf-mid="VOVPcwRy7S" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/10asia/20231101081810373honn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진제공=TV CHOSUN '화요일은 밤이 좋아'
           </figcaption>
</figure>
<p dmcf-pid="6q6RwOiHpI" dmcf-ptype="general"><br/> <br/>'화요일은 밤이 좋아'에서 '끼쟁이'들의 상상을 초월하는 다양한 장기들이 시청자들의 눈과 귀를 즐겁게 했다.<br/><br/>31일 방송된 TV CHOSUN 예능 '화요일은 밤이 좋아'(이하 '화밤') 87회는 '왕끼자랑' 특집으로 꾸며져 박지현, 김수찬, 재하, 송민경, 김민희가 출연해 '화밤' 미스들과 끼 대결을 펼쳤다.<br/><br/>시청률 조사기관 닐슨코리아에 따르면 이날 방송은 전국 기준 4.3%(1부, 전국 기준)를 기록하며 2주 연속 일일 종편 프로그램 전체 시청률 1위 및 동시간대 전 채널 1위를 차지했다. 분당 최고 시청률은 5.2%까지 치솟았다.<br/><br/>이날 김태연은 박지현의 등장에 '미모 체크'까지 하면서 설레는 마음을 감추지 못하면서도 박지현 때문에 속상한 일이 있다고 전해 궁금증을 유발했다. 알고 보니 김태연의 SNS 팔로우 신청을 박지현이 받아주지 않고 있다는 것. 뒤늦게 이 같은 사실을 알게 된 박지현은 김태연을 향한 미안한 마음을 전하면서 "맞팔하겠다"고 약속했고, 김태연은 모두의 축하(?)를 받아 웃음을 자아냈다. <br/><br/>이날에는 최고의 '끼쟁이'들이 모인 특집답게 눈을 뗄 수 없는 다양한 장기들의 향연이 펼쳐졌다. 홍지윤은 "K-트롯 시대에 맞춰 글로벌 장기를 준비했다"고 예고해 기대를 모았다. '데스매치' 대결곡으로 혜은이의 '제3한강교'를 선곡한 홍지윤은 평범하게 노래를 시작했다가 갑자기 영어, 중국어, 일본어, 태국어를 써가며 노래를 이어나가 귀를 의심하게 했다.<br/><br/>생각지도 못했던 홍지윤의 장기에 모두가 빵 터졌고, 홍지윤마저도 웃음을 참지 못했다. 홍지윤은 "노래를 부르다가 현타가 왔다"면서 민망함을 감추지 못했다. MC 장민호는 "혹시 해외 진출 계획이 있어서 외국어를 배우고 있느냐"고 물었다. 이에 홍지윤이 "그렇다"고 답하자, MC 붐은 "중단하세요. 중단하시라고요"라고 단호하게 말해 큰 웃음을 줬다.<br/><br/>홍지윤의 대폭소 5개 국어 장기뿐만 아니라 홍자의 뮤지컬 연기, 양지은의 한국무용, 김태연의 자이브, 은가은의 복화술, 김의영의 줄넘기, 정다경의 난타, 강예슬의 그림, 박지현의 마술, 김수찬의 성대모사, 재하의 운동, 송민경의 부채춤, 김민희의 차차차까지 눈을 뗄 수 없는 장기들이 시청자들에게 눈호강, 귀호강을 선사했다.<br/><br/>이날의 '행운요정'은 김세레나였다. '새타령'을 부르며 등장하자 "전설이 나오셨다"면서 무대에 심취했다. 원조 끼쟁이 중 끼쟁이인 김세레나는 자신의 끼를 닮은 후계자로 김태연을 지목해 눈길을 끌었다. 김세레나는 MC 붐을 향해서도 "끼가 많다. 음악이 나오면 미쳐서 환장(?)하는 것 같다"고 격하게 칭찬을 해 웃음을 줬다.<br/><br/>'화밤' 애청자임을 밝힌 김세레나는 대결곡으로 '짚세기 신고 왔네'를 불렀고, 모두가 원했던 점수인 94점을 받으며 '행운요정'으로서 역할을 수행했다. 이어 "후배들의 끼와 실력들이 대단하다. TV에서 보면 너무 감동이다. 앞으로도 더욱 성공하길 바란다"는 애정을 드러내 훈훈함을 자아냈다.<br/><br/>이날 '데스매치'는 '붐 팀'이 행운권 라운드에서 승리를 가져가면서 극적으로 동점 상황을 만들었다. '붐 팀'에서 뽑은 행운권도 '상대 팀과 승점 바꾸고 싶어도 꾹 참기'가 나와 총점으로 승패를 가리게 됐고, 총점 5점 차이로 최종 승리는 '장민호 팀'에게 돌아갔다.<br/><br/>김지원 텐아시아 기자 bella@tenasia.co.kr</p>
</section>
</div></p></section></div><h6>[Source : 텐아시아]</h6></div>
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