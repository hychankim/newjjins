
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
    <h3>‘새벽배송부터 의무휴일까지’ 마트 규제 11년, 소비자 불편은? [尹정부 민생현안]</h3><h6>최승근  2023. 11. 1. 07:02</h6>
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
<section dmcf-sid="QkctOuv8Bu">
<figure class="figure_frm origin_fig" dmcf-pid="xkctOuv82U" dmcf-ptype="figure">
<p class="link_figure"><img alt="서울 시내 대형마트에서 고객들이 장을 보고 있는 모습.ⓒ뉴시스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/dailian/20231101070238296kmfu.jpg" data-org-width="647" dmcf-mid="pzD0hqWQbM" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/dailian/20231101070238296kmfu.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            서울 시내 대형마트에서 고객들이 장을 보고 있는 모습.ⓒ뉴시스
           </figcaption>
</figure>
<p dmcf-pid="yoLYk1sbVp" dmcf-ptype="general">대형마트의 새벽배송 제한과 휴일 폐점 의무화는 유통업계 대표 규제 중 하나다.</p>
<p dmcf-pid="WeRlgYkUB0" dmcf-ptype="general">코로나19로 온라인 유통 비중이 급격하게 확대됐지만 많은 소비자들이 여전히 대형마트에서 장을 보고 있는 현실을 감안하면 소비자 편의성을 떨어뜨리는 규제라는 목소리가 높다.</p>
<p dmcf-pid="YJdvNHD7q3" dmcf-ptype="general">특히 의무휴업의 경우 맞벌이 부부들의 원성이 높은 규제로 꼽힌다. 대부분 지자체에서 주말을 의무휴업일로 지정하다 보니 마트로 장을 보러 가기 불편하다는 불만이 크다.</p>
<p dmcf-pid="G4fwRCLZBF" dmcf-ptype="general">지난 2012년 도입된 대형마트 의무휴업은 매장 면적이 3000㎡가 넘는 대규모 점포를 대상으로 월 2회 문을 닫도록 한 제도다. 이에 따라 전국 대부분 대형마트는 매월 둘째·넷째주 일요일에 쉬고 있다.</p>
<p dmcf-pid="H15MunKwVt" dmcf-ptype="general">주말에 매장 문을 닫다 보니 매장을 활용한 주말 온라인 배송도 같이 발목이 잡힌 상황이다.</p>
<p dmcf-pid="XCIqWV5Jf1" dmcf-ptype="general">법제처가 영업 제한 시간이나 의무휴업일에 매장을 물류센터로 활용해 온라인 배송을 하는 것은 사실상 점포를 개방하는 것과 같은 효과라는 유권해석을 내리면서 의무휴업과 휴일배송은 규제라는 울타리에 함께 묶이게 됐다.</p>
<p dmcf-pid="ZhCBYf1iB5" dmcf-ptype="general">하지만 규제가 시작된 지 11년이 지나도 ‘전통시장 활성화’라는 당초 목표를 달성하지 못했다. 코로나19를 계기로 이커머스 등 온라인 유통 시장이 급성장하면서 오히려 전통시장과 대형마트 모두 설 자리가 더욱 좁아졌다는 평가가 나온다.</p>
<p dmcf-pid="5UpnKj8CfZ" dmcf-ptype="general">실제로 코로나19를 계기로 온라인 유통은 대형마트 등 오프라인 유통 시장을 넘어섰다. 대형마트의 경우 규제와 온라인몰과의 경쟁 심화 등으로 수익성 악화로 고전하고 있다. 10년이 넘는 규제 기간 동안 점포도 수십곳이 폐점했다.</p>
<p dmcf-pid="115MunKwfX" dmcf-ptype="general"><strong><span>규제로 마트‧전통시장 모두 피해, 온라인 시장 성장 등 시장 환경 달라져</span></strong></p>
<p dmcf-pid="tbBj8wRy9H" dmcf-ptype="general">실효성 논란과 함께 소비자 쇼핑 편의성을 떨어뜨린다는 지적도 끊이지 않고 있다.</p>
<p dmcf-pid="FMxCLyA0fG" dmcf-ptype="general">규제 당시 전통시장의 최대 라이벌이었던 마트를 규제하면 시장으로 소비자들이 몰릴 것으로 예상했지만 결과는 정반대였다.</p>
<p dmcf-pid="315MunKw2Y" dmcf-ptype="general">마트가 쉬는 휴일 시장을 찾기 보다는 온라인 쇼핑으로 소비자들이 이동한 탓이다. 전통시장 활성화라는 당초 목표 대신 소비자 불편만 가중시켰다는 비판이 나오는 이유다.</p>
<p dmcf-pid="pUpnKj8C2y" dmcf-ptype="general">서울 마포구의 한 대형마트에서 만난 주부 임모씨는 “대부분 온라인으로 장을 보지만 고기나 채소 같은 신선식품은 마트를 주로 이용하고 있다”면서 “마트가 쉰다고 시장에 가서 물건을 사지는 않는다. 주말에 사야할 물건이 있으면 매주 마트 쉬는 날을 체크하는데 상당히 번거롭다”고 말했다.</p>
<p dmcf-pid="UgoGEtOKVT" dmcf-ptype="general">지난 4월 대한상공회의소가 한국유통학회, 한국소비자학회, 한국프랜차이즈학회, 한국로지스틱스학회의 유통물류 관련 4개 학회 전문가 108명을 대상으로 실시한 설문 조사에 따르면, 전문가 10명 중 7명(70.4%)은 대형마트에 대한 규제가 대형마트는 물론 보호대상인 전통시장까지도 패자로 내몰았다고 답했다.</p>
<p dmcf-pid="ujNZr0hVBv" dmcf-ptype="general">대다수 전문가들(83.3%)은 '대형마트 규제의 폐지 또는 완화'가 바람직하다고 답했고, '대형마트 의무휴업일 규제로 인한 전통시장 활성화 효과'를 묻는 질문에 76.9%는 '효과가 없었다'고 했다.</p>
<p dmcf-pid="7vS9X63o9S" dmcf-ptype="general">'대형마트 규제에 따른 수혜 업태 인식'에 관한 질문에 대해서는 절반이 넘는 58.3%의 응답자가'온라인쇼핑'을 꼽았다. 이어 식자재마트·중규모 슈퍼마켓(30.6%), 편의점(4.6%) 등이 뒤를 이었다.</p>
<p dmcf-pid="qFtezo2m2h" dmcf-ptype="general">대안으로는 10명 7명의 전문가들이 지역실정이나 상권특성에 맞게 지자체별 의무휴업일을 탄력적으로 운영해야 한다는 점에 찬성했다. 또 응답자의 71.3%는 '의무휴업일에 대형마트의 온라인 배송을 허용해야 한다'고 답했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="BwD0hqWQfC" dmcf-ptype="figure">
<p class="link_figure"><img alt="추석을 닷새 앞둔 9월24일 서울 강북구 수유시장을 찾은 시민들이 장을 보고 있다.ⓒ뉴시스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/dailian/20231101070239526aypk.jpg" data-org-width="647" dmcf-mid="PrzafExvK7" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/dailian/20231101070239526aypk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            추석을 닷새 앞둔 9월24일 서울 강북구 수유시장을 찾은 시민들이 장을 보고 있다.ⓒ뉴시스
           </figcaption>
</figure>
<p dmcf-pid="bIOzy2Zd2I" dmcf-ptype="general"><strong><span>‘휴일 온라인 배송 허용’ 개정안 3년째 국회서 표류</span></strong></p>
<p dmcf-pid="KsmuvKHRKO" dmcf-ptype="general">지난 11년간 수많은 지적과 소비자 불만을 반영해 규제 개선 시도가 이어지고 있지만 지지부진한 상황이다.</p>
<p dmcf-pid="9lhbG4tnVs" dmcf-ptype="general">작년 6월 윤 정부의 국민제안 온라인 투표를 통해 ‘대형마트 의무휴업 폐지 문제가 다시 수면 위로 올랐다. 당시 가장 많은 표를 받았지만 투표 조작 논란이 일면서 유야무야됐다.</p>
<p dmcf-pid="2RMhoWcpbm" dmcf-ptype="general">이어 8월 국무조정실이 ‘규제심판제도’ 첫 안건으로 대형마트 의무휴업을 선정하고 12월 정부와 전국상인연합회, 한국수퍼마켓협동조합연합회, 한국체인스토어협회가 ‘대·중소유통 상생발전을 위한 협약’을 체결하면서 분위기가 한층 더 무르익었다.</p>
<p dmcf-pid="V03JBafOqr" dmcf-ptype="general">협약안에는 대형마트의 영업제한시간·의무휴업일에도 온라인 배송을 허용하고, 의무휴업일 지정은 지방자치단체와 자율성 강화를 협의한다는 내용이 담겼다.</p>
<p dmcf-pid="4P6sJSat2D" dmcf-ptype="general">하지만 내년 총선을 앞두고 정치권에서 논의가 미뤄지면서 지자체에서도 눈치를 보며 시행을 미루는 분위기다.</p>
<p dmcf-pid="8P6sJSatBE" dmcf-ptype="general">대구시를 시작으로 청주, 수도권 일부 지역 등 의무휴일을 주말에서 평일로 바꾸는 등 변화가 있긴 하지만 전반적으로는 속도가 나지 않고 있는 상황이다.</p>
<p dmcf-pid="6KbA6reWqk" dmcf-ptype="general">업계에서는 관련 법 개정이 가장 빠른 방법이라고 입을 모은다. 하지만 야당의 반대에 막혀 수년째 국회 문턱을 넘지 못하고 있다.</p>
<p dmcf-pid="PniyAZrq9c" dmcf-ptype="general">대형마트의 휴일 및 영업제한 시간 온라인 배송 허용 내용을 담은 유통산업발전법 개정안은 지난 2021년 6월 발의돼 현재 3년째 국회에 계류 중이다.</p>
<p dmcf-pid="QIOzy2ZdbA" dmcf-ptype="general">유통업계 관계자는 “작년 12월 상생협약을 체결했지만 실제 현장에서 규제 개선 효과는 체감하기 어려운 상황”이라며 “관련 법 개정을 통한 규제 개선이 가장 효율적이다. 온라인 유통과의 형평성 문제를 해결한다는 점과 소비자 편의성 증대라는 측면에서 정치 논리보다는 실효성을 우선으로 고려해야 한다”고 말했다.</p>
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