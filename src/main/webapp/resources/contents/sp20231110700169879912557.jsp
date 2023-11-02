
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
    <h3>‘20홈런 타자·20SV 투수’ 절대사수 외친 국민타자 “내부 FA 둘 다 잡아야, 외부 영입도 있다면…”</h3><h6>김근한 MK스포츠 기자(forevertoss@maekyung.com)  2023. 11. 1. 07:00</h6>
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
<section dmcf-sid="Y97FI7T65X">
<p dmcf-pid="GtGSaGEuXH" dmcf-ptype="general">두산 베어스 이승엽 감독이 올겨울 내부 FA 자원인 내야수 양석환과 투수 홍건희의 잔류를 강력하게 희망했다. 또 상황에 따라 외부 FA 영입까지 이뤄진다면 금상첨화라는 게 이 감독의 시선이다.</p>
<p dmcf-pid="HFHvNHD7tG" dmcf-ptype="general">두산은 이승엽 감독 부임 첫 시즌인 2023시즌 리그 5위로 정규시즌을 마무리했다. 두산은 와일드카드 결정전에서 NC 다이노스와 만나 1차전에서 패해 너무나 짧았던 가을야구를 마무리했다.</p>
<p dmcf-pid="Xp5Wc5mBYY" dmcf-ptype="general">이제 두산은 10월 31일부터 이천 베어스파크에서 마무리 캠프 훈련을 시작하면서 2024시즌 준비에 나선다. 이승엽 감독은 젊은 야수진 성장에 초점을 두고 마무리 지옥 훈련을 지휘할 계획이다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="ZU1Yk1sbXW" dmcf-ptype="figure">
<p class="link_figure"><img alt="두산 이승엽 감독이 내부 FA 잔류를 강력하게 희망했다. 사진(이천)=김근한 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101070003368soch.jpg" data-org-width="600" dmcf-mid="VPP1sUS4Yu" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101070003368soch.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            두산 이승엽 감독이 내부 FA 잔류를 강력하게 희망했다. 사진(이천)=김근한 기자
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="5wjnKj8C5y" dmcf-ptype="figure">
<p class="link_figure"><img alt="두산 이승엽 감독과 양석환이 2024시즌에도 하트 세리모니를 주고 받을 수 있을까. 사진=천정환 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101070005133fywb.jpg" data-org-width="640" dmcf-mid="PTHA6reWGF" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101070005133fywb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            두산 이승엽 감독과 양석환이 2024시즌에도 하트 세리모니를 주고 받을 수 있을까. 사진=천정환 기자
           </figcaption>
</figure>
<div dmcf-pid="1rAL9A6h5T" dmcf-ptype="general">
           두산은 마무리 캠프 훈련 진행과 동시에 2024시즌 전력 구축에도 신경 써야 한다. 우선 외국인 선수 구성을 두고 기존 외국인 투수인 라울 알칸타라와 브랜든 와델과는 재계약 협상에 나설 계획이다. 다만, 외국인 타자 호세 로하스는 재계약 ‘잠정 보류’ 상태다.
          </div>
<p dmcf-pid="tmco2cPl1v" dmcf-ptype="general">이승엽 감독은 10월 31일 이천 마무리 캠프 첫 날 취재진과 만나 2024시즌 외국인 선수 구성과 관련해 “시즌 내내 훌륭한 투구를 보여준 알칸타라와 브랜든은 내년에도 같이 안 갈 이유가 없다. 협상만 잘 풀린다면 전혀 문제가 없을 것”이라고 전했다.</p>
<p dmcf-pid="FlmcPmdYGS" dmcf-ptype="general">이어 이 감독은 “다만, 로하스는 수비 포지션인 면에서 다소 걱정이 있다. 후반기 때 타격 능력을 보여줬지만, 우리 팀 색깔과 맞아야 해서 신중하게 결정해야 할 듯싶다. 외야수로서 수비력과 공격력, 그리고 내부 FA이자 1루수인 양석환 선수와 계약 여부도 고려해야 한다. 급하게 결정할 문제는 아니다”라고 밝혔다.</p>
<p dmcf-pid="3SskQsJGtl" dmcf-ptype="general">이 감독은 올겨울 FA 시장으로 나가는 양석환과 홍건희에 대한 잔류도 강하게 희망했다. 두산 구단은 양석환과 홍건희와 비FA 다년계약 협상 없이 FA 시장에서 협상에 나서겠다고 밝힌 바 있다.</p>
<p dmcf-pid="0xfBYf1iZh" dmcf-ptype="general">양석환은 2023시즌 140경기에 출전해 타율 0.281/ 147안타/ 21홈런/ 89타점/ 출루율 0.333/ 장타율 0.454를 기록했다. 3년 연속 시즌 20홈런 고지에 오른 양석환은 생애 첫 FA 자격 획득을 앞두고 자신의 장타력 가치를 증명했다.</p>
<p dmcf-pid="pM4bG4tntC" dmcf-ptype="general">홍건희도 2023시즌 64경기(61.2이닝)에 등판해 1승 5패 22세이브 5홀드 평균자책 3.06 62탈삼진 WHIP 1.48로 필승조 역할을 잘 소화했다. 정규시즌 막판 하락세가 다소 아쉬웠지만, 홍건희는 두산으로 이적한 2020시즌부터 4시즌 연속 시즌 60이닝 소화를 통해 불펜 투수로서 내구성을 인정받았다.</p>
<p dmcf-pid="UR8KH8FLGI" dmcf-ptype="general">이 감독은 “양석환과 홍건희 선수 둘 다 잡으면 당연히 좋은 거다. 20홈런 타자와 20세이브 투수 아닌가. 그런 선수는 구하기 어렵다. 또 팀에서 동료와 후배들에게 두터운 신임을 받는 선수들이라 두 선수가 모두 남는다면 정말 좋겠다. 둘 다 정말 필요하다”라며 거듭 내부 FA 잔류를 소망했다.</p>
<p dmcf-pid="uJQV5Qpa5O" dmcf-ptype="general">만약 두산이 계획한대로 상황이 잘 풀리지 않거나 FA 시장에서 변수가 생길 경우 내야수과 좌완 투수 같은 취약 포지션에서 외부 FA 영입도 충분히 고려할 수 있다.</p>
<p dmcf-pid="7ixf1xUN5s" dmcf-ptype="general">외부 FA 영입 가능성에 대한 질의에 이 감독은 “(외부 FA로) 팀 전력이 더 보강된다면 당연히 좋다. (감독 입장에서) 더 있으면 다 좋은 게 아니겠나(웃음). 물론 젊은 선수들의 성장 방향과 더불어 전력 균형도 고려해야 한다. 그런 부분은 구단에서 더 크게 신경 써주실 것으로 믿는다. 모든 상황을 다 대비하고 있지 않겠나. 나는 그냥 현장에서 선수들과 더 좋은 기량을 보여주기 위해 노력하고 있겠다”라고 힘줘 말했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="znM4tMujHm" dmcf-ptype="figure">
<p class="link_figure"><img alt="두산 투수 홍건희. 사진=김영구 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101070006398aarq.jpg" data-org-width="640" dmcf-mid="W1DN4DMTtZ" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101070006398aarq.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            두산 투수 홍건희. 사진=김영구 기자
           </figcaption>
</figure>
<div dmcf-pid="qhrA6reWZr" dmcf-ptype="general">
           이천=김근한 MK스포츠 기자
          </div>
<p dmcf-pid="BlmcPmdY5w" dmcf-ptype="general">[이천=김근한 MK스포츠 기자]</p>
<p dmcf-pid="bSskQsJG1D" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : MK스포츠]</h6></div>
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