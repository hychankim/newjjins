
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
    <h3>빈집 고쳐 반값임대 처참한 실패…신청자 '0'건이었다 [부동산360]</h3><h6> 2023. 11. 1. 09:25</h6>
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
<section dmcf-sid="uYaCnafOUU">
<figure class="figure_frm origin_fig" dmcf-pid="7oqMUqWQFp" dmcf-ptype="figure">
<p class="link_figure"><img alt="서울 종로구 소재 한 집이 방치된 모습. [이준태 기자]" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ned/20231101092517373vmtx.jpg" data-org-width="1280" dmcf-mid="UY4o94tn7u" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ned/20231101092517373vmtx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            서울 종로구 소재 한 집이 방치된 모습. [이준태 기자]
           </figcaption>
</figure>
<p dmcf-pid="zgBRuBYxF0" dmcf-ptype="general">[헤럴드경제=고은결·신혜원 기자] 오랜 기간 방치되며 흉물이 된 ‘빈집’에 대해 각 지자체는 철거·리모델링 및 입주 지원 등 대책을 내놓고 있다. 그러나 빈집을 고쳐 주거 목적으로 사용하겠다는 수요 자체가 적다 보니, 기하급수적으로 늘어나는 빈집을 거주주택으로 바꾸는 것은 역부족인 상황이다. 설상가상으로 각 지자체의 빈집 관리 역량은 제각각이고, 부수적 업무로 여겨 대부분 전담 조직도 두고 있지 않다. 이에 전문성을 지닌 조직 설치, 관련 사업 확대를 위한 재정 확충, 빈집세 도입 등이 필요하단 조언이 나온다.</p>
<p dmcf-pid="qdp8tplfu3" dmcf-ptype="general">▶지자체 빈집 관련 사업 지지부진=최근 농림축산식품부 국감에선 빈집 발생 속도가 너무 빠르단 지적이 나왔다. 당초 2027년까지 빈집을 절반으로 줄이겠다며 빈집 정비 활성화 대책 발표했지만, 발생 속도를 따라가지 못한다는 것이다. 이는 빈집 활용 대책 효과 제대로 되고 있지 않다는 방증이다. 실제로 각 지자체에서 펼치는 진행 중인 빈집 관련 사업은 실효성이 떨어지는 사례가 곳곳에서 목격된다.</p>
<p dmcf-pid="BJU6FUS40F" dmcf-ptype="general">1일 대구시에 따르면 올 3월부터 사업 신청자를 모집한 빈집 리모델링 지원사업은 10월 현재까지 각 구·군에서 신청 건이 전무한 것으로 확인됐다. 당초 시는 빈집을 단장해 반값 임대를 내놓겠다고 밝혔다. 대구시 관계자는 “각 빈집 정비 예산을 추정해 27동 정도까지 정비 지원을 목표로‘ 했는데, 어떤 구청에서도 지원 신청이 없는 상황”이라고 설명했다. 전국 지자체 중 처음으로 빈집 등급별·유형별 실태조사를 실시한 전라남도는 지난해 말 기준 빈집이 2만1766동이다. 이는 지난 2017년 1만1000여동 수준에서 5년 만에 2배 가까이 늘어난 수준이다.</p>
<p dmcf-pid="biuP3uv8Ut" dmcf-ptype="general">전남 나주시의 경우 지난 8월 ‘농촌활력 빈집재생’ 사업을 통해 왕곡면 마산마을 빈집을 리모델링하고 입주자를 모집한다고 홍보했는데, 모집 가구는 애초에 1가구뿐이었다. 최근 입주자를 선정했는데 신청가구는 5가구에 그쳤다. 지자체의 주거 목적 빈집정비사업은 결국 근본적으로 수요에 한계가 있는 것으로 여겨진다. 이촌향도 현상에 더해 이미 도심에서도 인구 감소, 노후 주거지의 구시가지화로 빈집이 생기고 있다. 일부 귀농귀촌족 등에 기대기에는 빈집 증가 속도가 너무 가파른 것이다.</p>
<p dmcf-pid="KiuP3uv871" dmcf-ptype="general">▶지자체 역량도 제각각=아울러 빈집의 지역 실무를 맡는 각 지자체의 관리 역량은 여전히 제각각인 상황이다. 대부분 빈집 전담 조직이 없고, 일부 기초 지자체는 빈집 정책을 수행하기 위한 법적 근거도 마련되지 않았다. 국토연구원에 따르면 지난해 하반기 기준 전체 228개 시·군·구 중 약 24%인 54개 지역은 빈집 관련 조례가 없었다. 2022년 기준으로 시군구들이 빈집 관련 사업에 투입하는 예산은 평균 약 2억8000만원에 불과했다. 빈집 한 채 철거에 드는 평균 비용을 2500만원으로 잡고, 지역 내 빈집의 철거 비용과 시·군·구 내 빈집 사업 예산을 비교해보면, 한 해 예산은 시·군·구 내 빈집 전체를 철거하는 데 소요될 것으로 추정되는 비용의 3.5%에 그쳤다.</p>
<p dmcf-pid="9n7Q07T6p5" dmcf-ptype="general">지자체가 적극적으로 철거하기도 쉽지 않다. 빈집 관련 법·제도 중 농어촌 빈집 문제는 ‘농어촌정비법’상 빈집 정비에 관한 규정이 적용된다. 이 법에는 주변에 현저히 유해한 영향을 미치는 특정 빈집에 대해선 강제 철거 근거가 있지만, 사유 재산이므로 직권 철거가 어렵다.</p>
<p dmcf-pid="2LzxpzyPFZ" dmcf-ptype="general">아울러 일부 소유주들은 비용 부담에 철거에 소극적인 상황이다. 현행 건축물관리법에 따르면 빈집 비롯해 건축물 해체를 신고하려면 건축사 등 전문가를 검토한 해체계획서를 첨부해야 한다. 이때 건축사 등에게 서명·날인을 받으려면 수십만원이 든다. 이에 전북 순창군 등 지자체는 군민들의 비용 절감을 위해 건축물 해체계획서 검토비를 지원키로 했지만, 관련 법 자체가 바뀌어야 한다는 주장도 나온다.</p>
<p dmcf-pid="VYaCnafO3X" dmcf-ptype="general">keg@heraldcorp.com</p>
<p dmcf-pid="fGNhLN4IuH" dmcf-ptype="general">hwshin@heraldcorp.com</p>
</section>
</div></p></section></div><h6>[Source : 헤럴드경제]</h6></div>
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