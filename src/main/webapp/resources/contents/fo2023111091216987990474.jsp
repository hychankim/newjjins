
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
    <h3>어느 패권에 기댈 것인가… ‘양자택일’ 강요받는 세계[창간 32주년 특집]</h3><h6>황혜진 기자  2023. 11. 1. 09:12</h6>
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
<section dmcf-sid="7QQinafOCd">
<figure class="figure_frm origin_fig" dmcf-pid="zbb86Mujle" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091216472fskq.jpg" data-org-width="650" dmcf-mid="UraDwOiHCi" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091216472fskq.jpg" width="658"/></p>
</figure>
<p dmcf-pid="qKK6PR7AhR" dmcf-ptype="general">미국과 중국 간 패권 경쟁 등 극단적 대립의 시대가 열리면서 오래 굳어진 국가 간 동맹 관계와 교역 판도까지 변화하고 있다. ‘무역 전쟁’으로 시작된 두 강대국의 날 선 대립은 공급망 분열로 이어지더니 기술, 안보 등 다양한 영역으로 확대되고 있다. 경제 분야에서는 하나의 지구촌을 지향했던 세계는 미국과 중국이란 양단의 선택지를 놓고 빠르게 갈라지고 있다. </p>
<p dmcf-pid="B99PQezclM" dmcf-ptype="general">◇경제 패권 갈등으로 부상하는 신냉전 = 미국과 중국 간 힘겨루기의 저변에는 산업 경쟁력 확보와 자본 경쟁이 자리 잡고 있다. 이념으로 블록화됐던 과거의 냉전과는 완전히 다른 구도인 것이다. 이러한 신냉전 속에 미국을 선두로 한 서방 진영은 국가 안보·공급망 안정이란 대외적 목표하에 대(對)러·대중 경제 제재를 강화하고, 반대 진영인 러시아와 중국 등은 이 같은 제재에 맞서 경제적 밀착을 높이고 있다.</p>
<p dmcf-pid="b99PQezchx" dmcf-ptype="general">미국은 자국 우선주의를 앞세워 글로벌 공급망 재편을 주도하고 있다. ‘디리스킹’(위험제거) 전략을 내세워 대중국 반도체 수출 규제를 본격화한 동시에 동맹국들에도 동참을 압박하고 있다. 특히 반도체법과 인플레이션 감축법(IRA) 등을 통해 동맹과 우호국에 자본을 배치하는 ‘프렌드쇼어링(Friend-shoring)’이란 새로운 접근법도 제시했다. 미국의 우방인 유럽연합(EU)도 ‘유럽판 IRA’로 불리는 핵심원자재법(CRMA) 등을 뒤따라 내놓으며 미국의 중국 견제 흐름에 힘을 실었다.</p>
<p dmcf-pid="K22QxdqkyQ" dmcf-ptype="general">중국은 전기차 등에 쓰이는 희토류 자석 등의 수출을 통제하는 자원 무기화로 이에 맞서고 있다. 지난 8월부터는 첨단 반도체 제조와 통신·군사 장비 용도로 쓰이는 갈륨과 게르마늄 수출을 제한했고 12월부터는 2차전지 음극재 핵심 소재인 흑연까지 수출 통제 품목에 추가하겠다고 발표했다. 원료가 없으면 미국 역시 첨단 제품 생산에 차질이 빚어진다는 점을 노린 것이다. </p>
<p dmcf-pid="9VVxMJBEyP" dmcf-ptype="general">미 싱크탱크 전략국제문제연구소(CSIS) 폴 트리올로 연구원은 “(갈륨과 게르마늄 같은) 중요한 광물의 공급망은 일부라도 다시 만드는 데 상당한 시간과 투자가 필요하다”면서 “중국은 이러한 수출 통제를 잠재적인 협상 카드로 보고 있으며, 미국과 서방 국가를 설득하는 데 사용할 수 있다”고 분석했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="2772V63oC6" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/munhwa/20231101091217727jzzt.jpg" data-org-width="390" dmcf-mid="uTZpUqWQTJ" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/munhwa/20231101091217727jzzt.jpg" width="658"/></p>
</figure>
<p dmcf-pid="VzzVfP0gT8" dmcf-ptype="general">◇멀어지는 미·중에 급변하는 교역망 =미·중 간 힘겨루기가 이어지면서 교역 양상도 바뀌고 있다. 당장 멀어지는 미국과 중국 간 교역 규모가 빠르게 감소하고 있다. 올해 상반기 미국의 수입 상품 가운데 중국산이 차지하는 비중은 2006년 이후 가장 낮은 수준으로 떨어졌다고 블룸버그통신이 보도했다. </p>
<p dmcf-pid="feegacPll4" dmcf-ptype="general">중국은 지난해까지 미국의 최대 수입국이었지만 올해 들어 교역이 급감해 순위가 3위로 내려앉았다. 미국 정부가 중국 의존도를 줄이려는 디리스킹 전략을 실행하면서 중국으로부터의 수입 규모가 지난해 같은 기간 대비 25% 감소한 것이다. 중국의 빈자리는 멕시코(1위)와 캐나다(2위)가 차지했다. 중국의 무역 파트너에도 변화가 감지된다. 중국 해관총서(세관)에 따르면 2021년 상반기까지만 해도 미국, 일본, 한국이 중국의 상위 3대 교역국을 차지했다. 하지만 미·중 갈등 장기화로 이들 국가와 교역 규모가 감소하며 올해에는 아세안(동남아국가연합) 시장이 중국의 최대 무역 시장으로 대체됐다. 2020년 17.4%였던 대미 수출 비중은 올해 상반기 14.4%로 떨어졌고 같은 기간 아세안 비중은 14.8%에서 16.0%로 상승했다. </p>
<p dmcf-pid="4ddaNkQSWf" dmcf-ptype="general">EU와 일본에서도 이와 같은 변화는 뚜렷하다. EU 통계기구인 유로스탯에 따르면 지난해 중국은 EU의 제2 수입국이었지만 올해 기준 독일, 네덜란드에 밀린 3위로 처졌다. 일본에서도 지난해 중국·미국·한국 순으로 수출이 많았는데, 올해 현재 기준 미국·중국·한국 순으로 중국이 2위로 내려앉았다.</p>
<p dmcf-pid="8JJNjExvWV" dmcf-ptype="general">이와 동시에 글로벌 공급망 다변화 움직임도 새로운 변화다. 동남아, 남미 국가들이 중국을 대체할 공급망으로 떠올랐다. 공급망을 안보 문제로 격상시킨 미국은 지난해 6월 핵심광물안보파트너십(MSP)을 출범해 공급망에 대한 대응 강도를 높였다. </p>
<p dmcf-pid="6ssvTGEuS2" dmcf-ptype="general">◇안보 문제가 된 기술 전쟁에 바뀌는 동맹 지도 = 미국과 중국 간 갈등의 전선은 반도체 수출 규제, 스마트폰 등 첨단 기술 분야를 넘어 안보 무대로까지 넓어지고 있다. 이에 따라 국가 간 동맹 관계에도 변화가 나타나고 있다. 미국은 나토(북대서양조약기구)를 확대하고 한·미·일 안보협력체를 구성하는 등 민주주의 국가들을 결집시키고 있다. 동맹을 맺은 지역적 토대도 오커스(미국·영국·호주의 안보 동맹), 쿼드(미국·일본·호주·인도 안보 협의체) 등으로 넓어졌다.</p>
<p dmcf-pid="POOTyHD7S9" dmcf-ptype="general">미국이 최근 베트남과의 외교관계를 ‘포괄적 전략 동반자’라는 최고 수준으로 격상한 것도 중국을 겨냥한 것이라는 해석이 나온다. 한때 적이었던 베트남을 끌어안음으로써 베트남과 국경을 마주하고 있는 중국에 대한 포위망을 강화할 수 있기 때문이다. 중국도 양국의 관계 격상에 이례적으로 “각국의 양자 관계 발전은 제3자를 겨냥해선 안 된다”는 메시지까지 내며 불편함을 감추지 않았다. 이 밖에도 미국은 중국을 견제하기 위해 ‘인권탄압국’ 사우디아라비아, ‘테러지원국’ 이란과도 관계 정상화에 나서는 움직임을 보이고 있다. </p>
<p dmcf-pid="QIIyWXwzTK" dmcf-ptype="general">중국은 막대한 자금력을 바탕으로 전 세계로 영향력을 확대하고 있다. 중국은 미국에 맞서 상하이협력기구나 브릭스(BRICS, 브라질·러시아·인도·중국·남아프리카공화국)를 키우며 미국의 진영을 균열시키고 역포위하는 전략을 구사하고 있다. 올해 10년을 맞은 일대일로(一帶一路, 육·해상 실크로드)를 확대하려는 움직임은 이러한 중국의 구상을 현실화하는 전략이다. 경제적 협력을 내세웠지만 실은 미국의 우방국인 유럽에 침투하고 중동과 친해지며 아프리카를 포섭하기 위한 외교전략이었다. 중국은 최근에는 러시아, 북한과 연합전선도 형성해 미국 주도의 세계 질서에 대항하고 있다. 미국 뉴욕타임스(NYT)는 3국의 밀착에 대해 “미국과 그 동맹국들의 지정학적 영향력을 줄인다는 중요한 하나의 공동 목표로 뭉친 것”이라고 진단했다. </p>
<p dmcf-pid="xJJNjExvTb" dmcf-ptype="general">황혜진 기자 best@munhwa.com</p>
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