
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
    <h3>양곡관리법·전세사기법 등..野 후속·보완입법 박차</h3><h6>김해솔  2023. 11. 1. 07:00</h6>
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
<section dmcf-sid="YskN4DMT3A">
<figure class="figure_frm origin_fig" dmcf-pid="GGSInTj30j" dmcf-ptype="figure">
<p class="link_figure"><img alt="더불어민주당 의원들이 10월 31일 오전 국회에서 윤석열 대통령의 2024년도 예산안에 대한 시정연설을 듣고 있다. 공동취재" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/fnnewsi/20231101070013942vlfs.jpg" data-org-width="800" dmcf-mid="WPb7T9XeFc" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/fnnewsi/20231101070013942vlfs.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            더불어민주당 의원들이 10월 31일 오전 국회에서 윤석열 대통령의 2024년도 예산안에 대한 시정연설을 듣고 있다. 공동취재
           </figcaption>
</figure>
<div dmcf-pid="HutXw3C2FN" dmcf-ptype="general">
           [파이낸셜뉴스] 오는 11월 국회 본회의 상정·통과가 전망되는 노란봉투법, 방송 3법만이 아니다. 21대 국회 마지막 정기국회가 반환점을 돈 가운데 더불어민주당은 다수 의석을 앞세워 여러 쟁점 법안 통과에 힘쓸 것으로 보인다. 양곡관리법, 전세사기 특별법 등 주로 민주당이 앞서 추진한 법안의 후속·보완격 입법 사안들이다. 
          </div>
<div dmcf-pid="X8Kzy2Zd3a" dmcf-ptype="general">
<div data-mce-desctitle="smtitle">
<strong> 노봉법에 이어 양곡관리법도 강행처리하나</strong>
</div>10월 31일 국회 농림축산식품해양수산위원회에 따르면, 오는 11월 8일 농림축산식품법안소위원회에서는 이른바 ‘양곡관리법 시즌 2’에 대한 심사가 이어질 예정이다. 
          </div>
<p dmcf-pid="ZGSInTj3zg" dmcf-ptype="general">앞서 민주당 등 야권은 올 상반기 정부의 쌀 시장 격리 의무화 등 내용이 담긴 양곡관리법 개정안을 정부 여당 반대 끝에 본회의에서 단독 통과시킨 바 있다. 이에 윤석열 대통령이 거부권(재의요구권)을 행사했고 국회로 돌아온 양곡관리법은 재의결 문턱을 넘지 못해 파기됐다. </p>
<p dmcf-pid="5XThoWcpuo" dmcf-ptype="general">그러자 민주당은 후속 법안이랄 수 있는, 쌀 및 주요 농산물 시장 가격이 기준 가격에 미달할 경우 차액 일정 비율을 보전하는 등 내용의 법안을 대거 발의해 법안소위 논의 테이블에 다시 올렸다. 정부 여당은 여전히 부정적이지만 민주당은 지난번 양곡관리법과 비교하면 많이 양보했고 더 양보할 수도 있다는 입장이다. 민주당 농해수위 관계자는 “쌀 등 농산물 가격 변동성이 너무 커 농가들이 힘들어하기 때문에 정부 여당과 적극적으로 논의하려는 것”이라고 말했다. </p>
<div dmcf-pid="1tGTjXwz7L" dmcf-ptype="general">
<div data-mce-desctitle="smtitle">
<strong>11월 초 본회의서 여야 신경전 가열될 듯 </strong>
</div>
<br/>마찬가지로 야당 단독 통과-거부권 행사 절차를 밟은 간호법 제정안도 재추진이 진행 중이다. 보건복지위원회 소속 민주당 의원들이 발의 전 법 조항 등을 놓고 조율 중인 상황으로, 새롭게 발의될 간호법에는 ‘지역 사회’ 등 문구가 수정될 것으로 전해졌다. 
          </div>
<p dmcf-pid="tJQ4tMujun" dmcf-ptype="general">한편 민주당은 전세사기 특별법 개정에도 심혈을 기울이는 모양새다. 앞서 야당 주도로 특별법이 만들어져 지난 6월부터 시행되기 시작했지만 민주당은 입법적인 사각지대를 하루빨리 해결해야 한다는 입장이다. 정부가 오는 12월 특별법 개선점을 마련해 국회에 보고한다는 방침인 가운데 민주당은 지난달 '선구제 후구상권 청구' 재추진 등을 골자로 하는 개정안을 발의, 이후 수원 전세사기 피해자들과 간담회를 가지는 등 입법 분위기를 조성해 왔다. 최혜영 민주당 원내대변인은 전날 국회에서 의원총회가 끝난 후 기자들과 만나 "전세사기 피해 관련 특별법도 좀 더 확대 개편할 예정"이라며 "11월 중으로 입법 보완 예정"이라고 밝혔다.</p>
</section>
</div></p></section></div><h6>[Source : 파이낸셜뉴스]</h6></div>
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