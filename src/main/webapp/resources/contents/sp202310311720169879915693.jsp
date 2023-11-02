
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
    <h3>‘안신애 2년 4개월 만에 출격’ S-OIL 챔피언십의 모든 것</h3><h6>김윤일  2023. 10. 31. 17:20</h6>
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
<section dmcf-sid="KVULpsJGBn">
<figure class="figure_frm origin_fig" dmcf-pid="9uXQHj8CBi" dmcf-ptype="figure">
<p class="link_figure"><img alt="ⓒ KLPGA" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202310/31/dailian/20231031172022639rgsc.jpg" data-org-width="700" dmcf-mid="bV1R5kQS9L" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202310/31/dailian/20231031172022639rgsc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ⓒ KLPGA
           </figcaption>
</figure>
<p dmcf-pid="2M9kKTj3BJ" dmcf-ptype="general">2023시즌 서른한 번째 대회인 ‘S-OIL 챔피언십 2023’(총상금 9억 원, 우승상금 1억 6200만 원)’이 다음달 2일(목)부터 나흘간 제주도 제주시에 위치한 엘리시안 제주 컨트리클럽(파72/6,717야드)에서 막을 올린다.</p>
<p dmcf-pid="VPBjqlg1Bd" dmcf-ptype="general">매년 쟁쟁한 우승 후보들의 치열한 경쟁이 펼쳐지며 큰 사랑을 받아온 ‘S-OIL 챔피언십’은 올해로 17회째를 맞았다. 특히, 국내 최초로 올림픽 콘셉트를 적용하고 성화 점화 및 메달 시상식을 진행해 골프 팬들에게 큰 관심을 받는 대회 중 하나다.</p>
<p dmcf-pid="fi8m4HD7Be" dmcf-ptype="general">본 대회는 KLPGA를 대표하는 대회인 만큼 역대 우승자의 면면이 화려하다. 유소연(33,메디힐)을 비롯해 이미림(33,NH투자증권), 전인지(29,KB금융그룹), 최혜진(24,롯데) 등 세계 무대로 뻗어나간 선수들을 배출했고, 박지영(27,한국토지신탁), 김지현(32,대보건설), 홍란(36) 등 KLPGA를 대표하는 실력파 선수들이 우승자 명단에 이름을 올리고 있다.</p>
<p dmcf-pid="4gxCQ1sbVR" dmcf-ptype="general">지난해보다 1억 원 증액된 총상금 9억 원을 두고 KLPGA를 대표하는 96명의 선수가 제주에서 샷 대결을 펼치는 가운데, 지난해 본 대회에서 연장 접전 끝에 우승을 거둔 이소미(24,대방건설)가 디펜딩 챔피언으로서 타이틀 방어에 나선다.</p>
<p dmcf-pid="8sNZabGMfM" dmcf-ptype="general">이소미는 “지난주 컨디션이 정말 좋지 않았다. 다래끼와 감기가 심해 컨디션 회복에 집중하고 있는데, 이번주는 지난주보다 좋은 성적으로 마무리하고 싶고, 타이틀 방어의 기회가 온다면 잡을 수 있도록 노력하겠다”고 각오를 다지면서 “코스도 만만치 않은데, 아무래도 제주도이기 때문에 날씨가 관건일 것 같다. 최대한 코스매니지먼트에 신경 써서 플레이할 예정”이라는 전략을 덧붙였다.</p>
<p dmcf-pid="6EnWiuv8qx" dmcf-ptype="general">이소미의 타이틀 방어 도전에 가장 큰 대항마는 박현경(23,한국토지신탁)이다. 지난주 열린 ‘SK네트웍스·서울경제 레이디스 클래식’에서 910일만에 우승 트로피를 들어 올리며 뜨거운 눈물을 흘린 박현경 또한 강력한 우승 후보로 떠올랐다.</p>
<p dmcf-pid="PdfwVYkUKQ" dmcf-ptype="general">박현경은 “오랜만에 우승을 해서 기분이 정말 많이 좋은 상태인데, 들뜨지 않고 차분히 플레이 하는 것이 중요할 것 같다”는 소감과 함께 “결과보다는 매 홀마다 한 타, 한 타에 집중한다면 지난주처럼 좋은 성적을 낼 수 있을 거라 믿고 있다”는 각오를 내비쳤다.</p>
<p dmcf-pid="x0Y8WgVsb6" dmcf-ptype="general">이어 “시즌 막바지로 접어들고 있다 보니 약간의 피로감이 있어 입에 구내염도 생기는 등 컨디션이 그렇게 좋은 편은 아니지만, 샷 감이 좋은 편이라 이번 대회까지 이 감을 유지할 수 있도록 노력하고 있다”고 밝히면서 “아무래도 이번주 역시 변수는 날씨라고 생각한다. 내가 좋아하는 코스에서 열리는 대회인 만큼, 날씨에 맞는 현명한 플레이로 경기를 풀어나가겠다”는 전략도 함께 전했다.</p>
<p dmcf-pid="yEnWiuv8b8" dmcf-ptype="general">한편, 이번 대회를 통해 올 시즌 치열했던 개인 타이틀 경쟁이 어느 정도 윤곽이 잡히게 될 예정이라 골프 팬들의 이목이 집중되고 있다.</p>
<p dmcf-pid="WbFdtDMTb4" dmcf-ptype="general">가장 먼저, 27개 대회에 출전해 컷 통과 26회를 기록하고, 올 시즌 3승을 포함해 톱텐에 12번이나 이름을 올린 이예원(20,KB금융그룹)이 지난주 대회 종료 기준으로 상금 1,326,684,197원을 누적해 상금왕을 눈앞에 두고 있는 가운데, 972,479,385원으로 2위에 자리한 박지영에게도 일말의 역전 가능성이 있어 귀추가 주목된다.</p>
<p dmcf-pid="GaMhxtOKVV" dmcf-ptype="general">이예원은 “퍼트 감은 괜찮지만 샷 감이 좋은 편이 아니라, 타이틀에 연연하면 좋은 플레이가 나오지 않을 것 같다. 최대한 타이틀에 대한 생각은 하지 않고, 내 플레이에만 집중하여 톱텐 안에 들 수 있도록 최선을 다하겠다”고 덤덤히 말했고, 도전자 박지영은 “이번 대회는 내가 2승을 기록했던 대회인 만큼 좋은 기억으로 가득하다. 그 기억과 기분을 십분 살려 최선을 다해 플레이할 것이다. 목표는 일단 톱텐으로 잡고 시작하겠다”는 포부를 내비쳤다.</p>
<p dmcf-pid="HM9kKTj392" dmcf-ptype="general">2위 박지영이 현재 순위를 뒤집을 수 있는 전제 조건은 일단 이번 대회에서의 우승이 필수적이다. 만약 박지영이 이번 대회에서 우승해 상금 1억 6200만원을 누적하고, 이예원이 단독 29위 이하로 경기를 마쳐 7,795,188원 미만의 상금을 벌어들일 경우에만 2023시즌 최종전 ‘SK쉴더스-SK텔레콤 챔피언십 2023’에서 순위가 뒤집힐 수 있는 가능성이 생긴다. 하지만 이는 박지영이 최종전에서도 우승을 기록해야 가능한 시나리오다.</p>
<p dmcf-pid="ZXhbCezcKK" dmcf-ptype="general">위메이드 대상포인트 경쟁도 치열하다. 609포인트를 획득한 이예원은 558포인트를 누적한 임진희(25,안강건설)의 거센 추격을 받고 있다. 둘의 포인트 차는 단 51포인트로, 60포인트가 걸린 이번 대회를 통해 순위가 뒤바뀔 수도 있다.</p>
<p dmcf-pid="5i8m4HD7Bb" dmcf-ptype="general">2위 임진희는 “남은 두 개 대회에서 모두 대상 포인트를 받는 것이 목표다. 2주 연속 감이 좋은 편이기 때문에 일단 이번 대회부터 톱텐에 들기 위해 최선을 다해보겠다”며 힘줘 말했다. 임진희가 이번 대회를 통해 이예원과의 격차를 70포인트 이내로만 유지한다면, 시즌 최종전에서 대상의 주인공이 바뀔 수 있는 가능성을 열어 둘 수 있게 된다.</p>
<p dmcf-pid="1IA1j9XeqB" dmcf-ptype="general">김민별(19,하이트진로), 황유민(20,롯데)의 2파전으로 압축된 신인상의 향방 또한 골프 팬들의 많은 관심을 받고 있다. 단 220포인트 차로 이번 대회를 맞는 김민별과 황유민의 각오도 남다르다. 김민별은 “요즘 샷 감이 좋은데, 퍼트만 잘 따라준다면 목표로 하는 우승을 할 수 있지 않을까 생각한다. 우승하면 신인상은 따라올 것”이라는 포부를 내비쳤고, 추격자 황유민은 “나 역시 우승이 목표다. 신인상에 대한 욕심은 내려놓은 상태”라 말하며 “샷과 퍼트감이 나쁜 편이 아니기 때문에 최선을 다해 우승을 노려보겠다”고 응수했다.</p>
<p dmcf-pid="FETVvnKwbz" dmcf-ptype="general">이밖에, 최근 2개 대회 연속 톱텐에 이름을 올리고 부활한 모습을 선보이며 좋은 성적을 이어가고 있는 임희정(23,두산건설)과 2017시즌 본 대회 디펜딩 챔피언 출신의 김지현은 이번 대회에서 마수걸이 우승을 노린다. 또한, 이번 대회에는 KLPGA 정규투어 통산 3승을 기록하고 있는 안신애(33)가 스폰서 추천 선수 자격으로 출전한다. 약 2년 4개월 만에 골프 팬 앞에 나서게 되는 안신애가 이번 대회에서 좋은 모습을 보여줄지도 관심이 모아진다.</p>
<p dmcf-pid="3mG6YafO97" dmcf-ptype="general">2023시즌이 종반을 향해 달려가는 가운데, 상금순위 60위까지 주어지는 ‘2024시즌 정규투어 시드권’ 확보를 위한 경쟁도 치열하다. 60위 안팎에 있는 선수들의 상금 격차가 크지 않기 때문에 마지막까지 긴장의 끈을 놓을 수 없는 상황이다. 이번 대회에서 60위 밖으로 밀려나지 않으려는 선수들과 60위 이내로 진입하려는 선수들의 생존경쟁도 흥미롭게 지켜볼 만하다.</p>
<p dmcf-pid="pwW4yo2m9U" dmcf-ptype="general">올 시즌 유독 많은 신데렐라가 탄생하고 있는 가운데 이번 대회에서 또 다른 생애 첫 우승자가 탄생할지 지켜보는 것도 또 하나의 관전 포인트다. 2023시즌 30개 대회가 진행되는 동안 총 10명의 선수가 생애 첫 우승을 기록했다. 만약 이번 대회에서 11번째 생애 첫 우승자가 탄생한다면 생애 첫 우승자가 가장 많았던 2017시즌을 넘어 새로운 기록을 수립하게 된다.</p>
<p dmcf-pid="UF2E9yA0Kp" dmcf-ptype="general">한편, 선수들을 위해 준비된 푸짐한 특별상도 눈길을 끌고 있다. 먼저 모든 파3홀에서 최초로 홀인원을 기록하는 선수에게는 경품이 주어진다. 3번 홀에는 1천만 원 상당의 ‘뱅골프 아이언세트’가 걸렸고, 7번 홀에는 4천만 원 상당의 ‘프레드릭 콘스탄트 메뉴팩처투르비용’이 내걸렸다. 또한, 12번 홀에는 5천만 원 상당의 ‘혼다 New Accord’ 차량이, 16번 홀에는 1천 5백만 원 상당의 ‘까르마퀸즈모션베드’가 걸려 선수들의 이목이 집중되고 있다.</p>
<p dmcf-pid="73VD2WcpB3" dmcf-ptype="general">또한, 라운드별 데일리베스트를 기록한 선수와 2위와 3위를 기록한 선수(동타 발생 시 백카운트 기록 적용)에게는 ‘미쉐린코리아 타이어 교환권’이 주어지며, 2017년 열린 ‘제11회 S-OIL 챔피언십’ 1라운드에서 최가람(31)이 기록한 62타의 코스레코드를 경신하는 선수에게는 ‘엘리시안 제주 컨트리클럽 2백만 원 상품권’을 제공한다.</p>
<p dmcf-pid="z5bABSatVF" dmcf-ptype="general">S-OIL이 주최하고, KLPGT가 주관하는 이번 대회는 SBS골프와 네이버, LG유플러스, 스포키를 통해 생중계된다.</p>
</section>
</div></p></section></div><h6>[Source : 데일리안]</h6></div>
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