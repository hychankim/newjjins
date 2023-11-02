
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
    <h3>“무능력하면 도태되는 사회… ‘이게 맞느냐’ 묻고 싶었다”</h3><h6>이정우 기자  2023. 11. 1. 09:00</h6>
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
<section dmcf-sid="U00W28FLyh">
<figure class="figure_frm origin_fig" dmcf-pid="u77X8xUNCC" dmcf-ptype="figure">
<p class="link_figure"><img alt="영화 ‘소년들’의 한 장면. CJ ENM 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090017603akdw.jpg" data-org-width="650" dmcf-mid="0IdVcwRyvS" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090017603akdw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            영화 ‘소년들’의 한 장면. CJ ENM 제공
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="7NNMOlg1lI" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101090018814btsn.jpg" data-org-width="300" dmcf-mid="pOTwFUS4Wl" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101090018814btsn.jpg" width="658"/></p>
</figure>
<p dmcf-pid="zjjRISatvO" dmcf-ptype="general">“지금은 각자도생 시기예요. 누명을 쓴 세 소년처럼 능력 없는 사람들은 도태되는 게 당연하다고 생각하죠. 그런데 이게 맞아요? 안 맞죠. ‘당신들은 이게 불편하지 않아?’ 이게 영화로 말하고 싶은 거예요.”</p>
<p dmcf-pid="qkkJlyA0ls" dmcf-ptype="general">영화감독 정지영(76·사진)의 영화는 늘 화가 나 있다. 베트남전의 실상을 드러낸 ‘하얀 전쟁’(1992)부터 법정 부조리를 꼬집은 ‘부러진 화살’(2012)까지. 실화를 소재로 사회를 고발하는 그의 영화는 분노한 만큼 강렬하지만 또 그만큼 건조하다. </p>
<p dmcf-pid="BEEiSWcpSm" dmcf-ptype="general">그가 4년 만에 내놓은 ‘소년들’(1일 개봉) 역시 경찰·검찰의 대표적 부실수사 사건인 1999년 ‘삼례 나라슈퍼 사건’을 다룬 만큼 영화는 뜨겁다. 영화 속 경찰은 고문과 협박으로 3명의 죄 없는 소년들을 강도살인범으로 몰고, 검찰도 합세해 진범이 나타나도 모르쇠로 일관한다. 그런데 정 감독의 말처럼 “이제까지 작품 중 가장 촉촉한 영화”다. 사회와 인간에게 절망한다면서도 희망을 놓지 않고 영화를 통한 ‘변혁’을 바라는 노감독의 진심이 반영된 덕분일지 모른다. </p>
<p dmcf-pid="bDDnvYkUhr" dmcf-ptype="general">지난달 30일 서울 종로의 한 카페에서 만난 정 감독은 이 사건을 영화화한 이유에 대해 “영화적으로 좋았다”고 답했다. 그는 “사회적 약자를 대하는 부정한 공권력의 민낯을 드러낸 대표적 사건”이라며 “우리가 방관하거나 동조하진 않았는지 점검해보고 싶었다”고 말했다. “인간과 사회문제에 대해 남들보다 관심이 많아요. 이 땅에서 겪고 있는 사건들이 다 영화의 소재입니다. 거기서 의미를 찾는 게 내 일인데, 애매한 것보단 확실한 의미를 던지고 싶은 거죠.”</p>
<p dmcf-pid="KGGOUqWQCw" dmcf-ptype="general">감독의 말대로 이번 영화도 선악이 확실하다. ‘미친개’로 불리는 전북청 수사반장 황준철(설경구)이 사건의 진상을 밝히려 고군분투하지만 거대한 조직 앞에 꺾인다. 16년 후 피해자의 딸로 사건의 유일한 목격자인 윤미숙(진경)이 찾아오고, 재심에 나선다는 게 영화의 줄거리. 죄 없는 세 소년을 마구잡이로 잡고 사건을 은폐하려고 했던 부정한 공권력의 뻔뻔함과 힘이 없어 이를 감내해야 했던 세 소년의 안타까운 모습은 대조를 이룬다. </p>
<p dmcf-pid="9HHIuBYxTD" dmcf-ptype="general">분노의 화살은 과거의 사건이 아니라 현재를 향해 있다. 재심으로 그들이 억울하게 옥살이를 했음이 드러난 후에도 여전히 “사회적 비용을 들여 구할 만큼 세 소년이 가치 있느냐”는 사람들이 있기 때문이다. “국가와 조직을 위해 세 소년이 희생하는 게 낫다고 생각하는 사람들이에요. 내가 분노하는 대상은 그들입니다.”</p>
<p dmcf-pid="2XXC7bGMSE" dmcf-ptype="general">그런데 영화는 전작들에 비해 유연하고, 부드럽다. 감정 한 톨 배제된 ‘부러진 화살’의 법정 장면과 달리 이번 영화의 재심 장면은 정서에 호소하는 순간이 많다. 스스로 “사랑, 우정, 가족 이런 건 관심 없는 드라이한 사람”이라고 말하는 정 감독에게 변화가 생긴 걸까. 그는 “시나리오를 쓴 정상협 작가 덕분”이라며 “그가 내게 부족한 감성을 불어 넣어줬다”고 말했다. “이번 영화는 촉촉하죠. 분노엔 다양한 방식이 있는데 정서적으로 다가가 설득력이 높아졌길 바랍니다.”</p>
<p dmcf-pid="V77X8xUNTk" dmcf-ptype="general">정 감독은 늘 배낭을 메고 다닌다. 이날 인터뷰에도 배낭을 메고 혼자 걸어왔다. 설경구 등 ‘소년들’ 출연 배우들은 그를 ‘소년’이라 칭한다. 이런 소탈함 덕분이다. 정 감독은 “현장에선 모두 감독의 지시만 기다린다. 존재 자체로 권력자”라며 “권위를 일부러 내세울 필요가 없다는 사실을 일찍 깨달았다”고 말했다. “사람들이 권위적인 모습을 보여주는 이유는 본인이 자신감이 없을 때 아닌가요.” </p>
<p dmcf-pid="fzzZ6MujSc" dmcf-ptype="general">이정우 기자 krusty@munhwa.com</p>
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