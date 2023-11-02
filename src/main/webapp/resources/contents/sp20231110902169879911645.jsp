
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
    <h3>플옵 5년 연속 '업셋' 위기 → '2위의 저주'는 실존하나</h3><h6>한동훈  2023. 11. 1. 09:02</h6>
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
<section dmcf-sid="UDVX8xUNw3">
<figure class="figure_frm origin_fig" dmcf-pid="7E2H4Qpast" dmcf-ptype="figure">
<p class="link_figure"><img alt="31일 수원KT위즈파크에서 열린 KT와 NC의 PO 2차전. 경기에서 승리한 NC 선수들이 기뻐하고 있다. 수원=박재만 기자pjm@sportschosun.com/2023.10.31/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090215859mcbc.jpg" data-org-width="1200" dmcf-mid="FFq4EmdYOu" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090215859mcbc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            31일 수원KT위즈파크에서 열린 KT와 NC의 PO 2차전. 경기에서 승리한 NC 선수들이 기뻐하고 있다. 수원=박재만 기자pjm@sportschosun.com/2023.10.31/
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="zs6txdqkm1" dmcf-ptype="figure">
<p class="link_figure"><img alt="31일 수원KT위즈파크에서 열린 KT와 NC의 PO 2차전. 경기에서 패한 KT 선수들이 아쉬워하고 있다. 수원=박재만 기자pjm@sportschosun.com/2023.10.31/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090216165roii.jpg" data-org-width="1200" dmcf-mid="3OpKNkQSrU" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090216165roii.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            31일 수원KT위즈파크에서 열린 KT와 NC의 PO 2차전. 경기에서 패한 KT 선수들이 아쉬워하고 있다. 수원=박재만 기자pjm@sportschosun.com/2023.10.31/
           </figcaption>
</figure>
<p dmcf-pid="qOPFMJBED5" dmcf-ptype="general"> [스포츠조선 한동훈 기자] 정말 '2위 팀의 저주'가 있는 것일까? 플레이오프에서 5년 연속 2위 팀이 탈락하기 직전이다.</p>
<p dmcf-pid="BIQ3RibDrZ" dmcf-ptype="general">KT 위즈는 31일 수원 KT위즈파크에서 열린 2023 KBO리그 포스트시즌 NC 다이노스와 플레이오프 2차전에서 2대3으로 패배했다. 시리즈 전적 2패에 몰렸다. 5판 3선승 시리즈에서 이제 1패면 올 시즌은 끝이다. KBO리그 역대 5전제 시리즈에서 '패패 승승승' 진출은 46회 중 4회다. </p>
<p dmcf-pid="bQXE10hVrX" dmcf-ptype="general">KBO리그 특유의 계단식 포스트시즌은 정규시즌 상위 팀이 훨씬 유리하다고 알려졌다. 사실 정규시즌 상위 팀에게 유리하라고 이렇게 고안했기 때문이다.</p>
<p dmcf-pid="KxZDtplfsH" dmcf-ptype="general">페넌트레이스 상위 팀은 포스트시즌에서 홈 어드밴티지와 더 많은 휴식일을 이점으로 챙긴다. 하지만 최근 몇 년 결과를 보면 과연 기다리는 팀이 정말 유리한 것인가 의문이 들기도 한다.</p>
<p dmcf-pid="9M5wFUS4wG" dmcf-ptype="general">만약에 NC가 KT를 잡고 한국시리즈에 진출한다면 2019년부터 5년 연속 '하극상'이 일어나게 된다. </p>
<p dmcf-pid="2R1r3uv8wY" dmcf-ptype="general">2019년에는 3위 키움이 2위 SK(현 SSG)를 3승 무패로 꺾었다. 2020년에는 3위 두산이 2위 KT를 3승 1패로 잡았다. 2021년에는 4위 두산이 와일드카드부터 준플레이오프를 뚫고 올라와 2위 삼성을 2승 무패(코로나 시즌 3판 2선승제)로 탈락시켰다. 작년에는 3위 키움이 2위 LG를 3승 1패로 눌렀다.</p>
<p dmcf-pid="V0DQmCLZIW" dmcf-ptype="general">같은 기간 한국시리즈에서는 정규시즌 우승팀이 모두 이겨 이변의 희생양이 되지는 않았다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="fpwxsho5Iy" dmcf-ptype="figure">
<p class="link_figure"><img alt="31일 수원KT위즈파크에서 열린 NC와 KT의 PO 2차전, 9회말 2사 만루 NC 유격수 김주원이 KT 오윤석의 타구를 몸을 날려 잡고 있다. 수원=허상욱 기자wook@sportschosun.com/2023.10.31/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090216464rodp.jpg" data-org-width="1200" dmcf-mid="0byNG5mBEp" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090216464rodp.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            31일 수원KT위즈파크에서 열린 NC와 KT의 PO 2차전, 9회말 2사 만루 NC 유격수 김주원이 KT 오윤석의 타구를 몸을 날려 잡고 있다. 수원=허상욱 기자wook@sportschosun.com/2023.10.31/
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="4oulq9XerT" dmcf-ptype="figure">
<p class="link_figure"><img alt="31일 수원KT위즈파크에서 열린 KT와 NC의 PO 2차전. 9회말 2사 만루 KT 오윤석이 안타성 타구가 NC 유격수 김주원에게 잡히자 아쉬워하고 있다. 수원=박재만 기자pjm@sportschosun.com/2023.10.31/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090216950ueaw.jpg" data-org-width="1200" dmcf-mid="pM3OUqWQE0" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101090216950ueaw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            31일 수원KT위즈파크에서 열린 KT와 NC의 PO 2차전. 9회말 2사 만루 KT 오윤석이 안타성 타구가 NC 유격수 김주원에게 잡히자 아쉬워하고 있다. 수원=박재만 기자pjm@sportschosun.com/2023.10.31/
           </figcaption>
</figure>
<p dmcf-pid="8g7SB2ZdDv" dmcf-ptype="general"> 이 현상에 대해서는 여러 해석이 가능하다. </p>
<p dmcf-pid="6azvbV5JrS" dmcf-ptype="general">먼저 5전제 시리즈는 체력 우위를 극대화하기에는 짧다. 7전제 한국시리즈에서는 업셋이 거의 일어나지 않는다. 장기전으로 갈수록 밑에서부터 올라온 팀이 이기기 어렵다. </p>
<p dmcf-pid="PNqTKf1iIl" dmcf-ptype="general">경기 감각과 기세 측면에서 준플레이오프를 뚫고 온 팀이 유리하다. 이는 한국시리즈도 마찬가지지만 4~5차전 이상 흘러가면 결국 체력적 한계를 노출한다. 5전제 플레이오프는 상승세의 분위기 하나만 가지고도 시리즈를 집어 삼킬 수 있다.</p>
<p dmcf-pid="QR1r3uv8Eh" dmcf-ptype="general">하지만 이러한 진단은 하나의 의견일 뿐 정량적으로 검증 불가능한 가설이다.</p>
<p dmcf-pid="xetm07T6OC" dmcf-ptype="general">실제로 KBO리그 포스트시즌 전체 통계를 확인하면 의문이 간단하게 풀린다. 전·후기리그와 양대리그로 진행된 시즌 및 와일드카드 결정전을 제외하면 KBO리그는 총 100회 시리즈(올해 준플레이오프까지 포함)를 개최했다.</p>
<p dmcf-pid="yGoKNkQSDI" dmcf-ptype="general">100회 중 업셋은 총 38회로 결코 적지 않았다. 플레이오프만 따지면 34회 중 16회, 준플레이오프는 32회 중 16회 상위 팀이 무릎을 꿇었다. 한국시리즈 업셋은 34회 중 6회에 불과했다. 한국시리즈를 빼면 66회 중 절반에 가까운 32회, 정확히는 48.5% 업셋이 발생하는 셈이다. </p>
<p dmcf-pid="WGoKNkQSEO" dmcf-ptype="general">이 정도면 그냥 '2위의 저주'라기 보다는 잘하는 팀이 올라간다고 볼 수 있다. 동시에 상위 팀 어드밴티지는 그렇게 뚜렷하지는 않다고 평가 가능하다.</p>
<p dmcf-pid="YHg9jExvEs" dmcf-ptype="general">한동훈 기자 dhhan@sportschosun.com</p>
</section>
</div></p></section></div><h6>[Source : 스포츠조선]</h6></div>
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