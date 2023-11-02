
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
    <h3>"계약 문제만 없다면" 24승 합작 '원투펀치'는 적극 러브콜인데…'PS 괴력포' 외인은 '글쎄'</h3><h6>이종서  2023. 11. 1. 08:47</h6>
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
<section dmcf-sid="9wN2QezcOf">
<figure class="figure_frm origin_fig" dmcf-pid="Vadu94tnw2" dmcf-ptype="figure">
<p class="link_figure"><img alt="라울 알칸타라(왼쪽)-브랜든 와델. 스포츠조선DB" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084707075whxt.jpg" data-org-width="650" dmcf-mid="zZZEISatDQ" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084707075whxt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            라울 알칸타라(왼쪽)-브랜든 와델. 스포츠조선DB
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="fNJ728FLr9" dmcf-ptype="figure">
<p class="link_figure"><img alt="23일 창원 NC파크에서 열린 두산-NC전. 두산이 3대1로 승리하며 3연승을 거뒀다. 알칸타라가 이승엽 감독과 하이파이브하고 있다. 창원=정재근 기자 cjg@sportschosun.com/2023.9.23/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084707251rnnv.jpg" data-org-width="1200" dmcf-mid="qcjVxdqkOP" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084707251rnnv.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            23일 창원 NC파크에서 열린 두산-NC전. 두산이 3대1로 승리하며 3연승을 거뒀다. 알칸타라가 이승엽 감독과 하이파이브하고 있다. 창원=정재근 기자 cjg@sportschosun.com/2023.9.23/
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="4fqvXtOKIK" dmcf-ptype="figure">
<p class="link_figure"><img alt="21일 대구 삼성라이온즈파크에서 열린 두산-삼성전. 브랜든이 6회를 무실점으로 막고 내려오며 환영받고 있다. 대구=정재근 기자 cjg@sportschosun.com/2023.9.21/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084707562ualx.jpg" data-org-width="1200" dmcf-mid="BiPt7bGMI6" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084707562ualx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            21일 대구 삼성라이온즈파크에서 열린 두산-삼성전. 브랜든이 6회를 무실점으로 막고 내려오며 환영받고 있다. 대구=정재근 기자 cjg@sportschosun.com/2023.9.21/
           </figcaption>
</figure>
<p dmcf-pid="84BTZFI9Ob" dmcf-ptype="general"> [이천=스포츠조선 이종서 기자] 짧은 가을 축제의 맛을 본 두산 베어스가 빠르게 내년 시즌 구상에 돌입했다.</p>
<p dmcf-pid="68by53C2OB" dmcf-ptype="general">올 시즌 이승엽 감독을 선임해 새 출발을 한 두산은 74승2무68패를 기록하며 5위로 시즌을 마쳤다. 지난해 창단 후 가장 낮은 순위였던 9위로 시즌을 마쳤던 두산은 2년 만에 가을야구 진출에 성공했다.</p>
<p dmcf-pid="PSmMLN4Imq" dmcf-ptype="general">와일드카드 결정전 1차전에서 NC 다이노스에 패배하며 짧은 가을 축제가 끝난 가운데 두산은 2024년 시즌 준비에 나섰다.</p>
<p dmcf-pid="QvsRoj8COz" dmcf-ptype="general">큰 숙제 중 하나는 외인 구성. 올 시즌 두산은 13승9패 평균자책점 2.67을 기록한 라울 알칸타라라는 확실한 외인 에이스가 있었지만, 또 한 명의 외인 투수로는 우여곡절을 겪었다.</p>
<p dmcf-pid="xTOegA6hm7" dmcf-ptype="general">올 시즌을 함께 시작한 딜런 파일이 스프링캠프에서 타구에 머리를 맞아 개막전 등판이 불발됐다. 약 한 달의 기다림 끝에 마운드에 올랐지만, 팔꿈치 부상으로 2경기 등판 만에 방출됐다.</p>
<p dmcf-pid="ykob8xUNOu" dmcf-ptype="general">딜런은 기량을 공개하지 못한 채 떠났지만, 대체 외국인 선수가 대박이 났다. 지난해에도 대체 외국인선수로 와서 11경기 5승3패 평균자책점 3.60으로 준수한 성적을 거뒀던 브랜든 와델은 지난 6월 말부터 나와 18경기 등판. 11승3패 평균자책점 2.49를 기록하며 알칸타라와 함께 확실한 외인 원투 펀치로 활약했다.</p>
<p dmcf-pid="WEgK6MujrU" dmcf-ptype="general">큰 이변이 없다면 이들은 2024년에도 볼 수 있을 전망. 이 감독은 "우리가 올 시즌 개막전에 딜런이 머리 부상으로 빠졌다. 알칸타라가 굉장히 힘들었을 거다. 허리 부상 때문에 빠진 거를 제외하고는 계속 엔트리에 있으면서 훌륭한 피칭을 해줬다. 브랜든도 7월에 와서 11승을 해줬다. (내년 시즌) 같이 안 갈 이유가 없다"고 이야기했다. 이 감독은 이어 "두 선수의 몸 상태가 괜찮고 계약 차이만 없다면 같이 가는데에는 문제가 없다"며 2024년 함께 하기를 희망했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="YDa9PR7Asp" dmcf-ptype="figure">
<p class="link_figure"><img alt="24일 창원 NC파크에서 열린 두산-NC전. 4회초 1사 만루 강승호가 2타점 적시타 때 홈인한 로하스가 이승엽 감독의 환영을 받고 있다. 창원=정재근 기자 cjg@sportschosun.com/2023.9.24/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084707834oloj.jpg" data-org-width="1200" dmcf-mid="bzXkOlg1E8" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084707834oloj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            24일 창원 NC파크에서 열린 두산-NC전. 4회초 1사 만루 강승호가 2타점 적시타 때 홈인한 로하스가 이승엽 감독의 환영을 받고 있다. 창원=정재근 기자 cjg@sportschosun.com/2023.9.24/
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="GAOegA6hI0" dmcf-ptype="figure">
<p class="link_figure"><img alt="19일 창원 NC파크에서 열린 두산과 NC의 WC 1차전. 3회초 1사 로하스가 솔로포를 친 후 축하받고 있다. 창원=정재근 기자 cjg@sportschosun.com/2023.10.19/" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084708181nxnr.jpg" data-org-width="1200" dmcf-mid="KpuhYZrqD4" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/SpoChosun/20231101084708181nxnr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            19일 창원 NC파크에서 열린 두산과 NC의 WC 1차전. 3회초 1사 로하스가 솔로포를 친 후 축하받고 있다. 창원=정재근 기자 cjg@sportschosun.com/2023.10.19/
           </figcaption>
</figure>
<p dmcf-pid="HcIdacPlr3" dmcf-ptype="general"> 외국인 투수 두 명에 대해서는 확실하게 '동행' 의지를 밝혔지만, 타자 로하스는 긴 시간을 두고 신중하게 접근하겠다는 뜻을 밝혔다.</p>
<p dmcf-pid="XkCJNkQSmF" dmcf-ptype="general">올 시즌 로하스는 전반기와 후반기 모습이 확연하게 달랐다. 전반기 65경기에서 홈런은 10개를 쳤지만, 타율이 2할2푼2리에 그쳤다. 방출 위기까지 몰렸던 상황. 이 감독은 이영수 코치를 전담코치로 붙이면서 '로하스 살리기'에 나섰고, 로하스는 후반기 57경기에서 타율 2할8푼5리 9홈런으로 반등세를 보여줬다.</p>
<p dmcf-pid="ZjsRoj8Cmt" dmcf-ptype="general">와일드카드 결정전에서는 '괴력의 외인'으로 변신했다. NC 선발투수 태너 털리를 상대로 홈런을 날리는 등 2타수 2안타(1홈런)으로 만점 활약을 펼쳤다.</p>
<p dmcf-pid="5AOegA6hr1" dmcf-ptype="general">막바지 모습은 분명히 다음을 기대하게 했다. 그러나 팀 내 홈런 1위(21홈런)를 기록한 1루수 자원 양석환이 FA 자격을 얻은 만큼, 수비 포지션에 대한 고민을 하지 않을 수가 없다. 두산이 외야수 선수층은 비교적 기대할 자원이 많은 반면, 내야수 자리에서는 성장이 더딘 부분이 있었다.</p>
<p dmcf-pid="1cIdacPls5" dmcf-ptype="general">이 감독은 "로하스가 걱정이다. 타격 부분에서는 좋은 지표를 보여줬다. 팀 컬러와 맞아야 하니 신중하게 선택을 해야할 거 같다. 외야수라는 포지션에서 수비력과 공격력에서 호흡을 맞춰야 하는 부분도 있다. 또 (양)석환이 팀에 남거나 빠지는 모든 상황을 생각해야 한다"라며 "급하게 생각할 문제가 아니다"고 밝혔다.<br/>이천=이종서 기자 bellstop@sportschosun.com</p>
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