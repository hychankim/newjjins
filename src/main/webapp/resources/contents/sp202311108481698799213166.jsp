
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
    <h3>흥국의 '미들레이나', 아본단자 감독 '묘수'될까</h3><h6>양형석  2023. 11. 1. 08:48</h6>
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
<section dmcf-sid="pGJUKf1iwY">
<p dmcf-pid="U8vnADMTwW" dmcf-ptype="general">[양형석 기자]</p>
<p dmcf-pid="u6TLcwRyry" dmcf-ptype="general">흥국생명이 적지에서 GS칼텍스를 꺾고 선두 자리를 탈환했다.</p>
<p dmcf-pid="7PyokreWwT" dmcf-ptype="general">마르첼로 아본단자 감독이 이끄는 흥국생명 핑크스파이더스는 10월 31일 서울 장충체육관에서 열린 도드람 2023-2024 V리그 여자부 1라운드 GS칼텍스 KIXX와의 원정경기에서 세트스코어 3-0(25-22,26-24,25-23)으로 승리했다. 10월 26일 정관장 레드스파크스에게 리버스 스윕패를 당했던 흥국생명은 개막 3연승을 달리던 GS칼텍스에게 시즌 첫 패배를 안기며 현대건설 힐스테이트를 제치고 선두로 올라섰다(4승1패).</p>
<p dmcf-pid="zHiu94tnOv" dmcf-ptype="general">흥국생명은 옐레나 므라제노비치가 50%의 성공률로 19득점을 기록했고 김연경도 69.57%의 높은 성공률로 18득점을 올리며 공격을 주도했다. 이날 흥국생명은 이주아와 김채연이 각각 손가락과 팔꿈치 부상으로 경기에 나오지 못했지만 블로킹 대결에서 GS칼텍스에게 5-4로 앞섰다. 미들블로커로 투입돼 75%의 공격성공률과 함께 블로킹 2개를 곁들이며 8득점을 올리는 '깜짝활약'을 선보인 흥국생명의 아시아쿼터 레이나 토코쿠 덕분이었다.</p>
<div dmcf-pid="qXn728FLOS" dmcf-ptype="general">
<strong>'부상' 선수들 대신 미들블로커로 나선 레이나</strong>
<br/> 
          </div>
<table align="center" border="0" cellpadding="0" cellspacing="0" dmcf-pid="BNUOTGEuOl" dmcf-ptype="general">
<tbody>
<tr>
<td>
<figure class="figure_frm origin_fig">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ohmynews/20231101084802530sxnr.jpg" data-org-width="600" dmcf-mid="3BfgEmdYwH" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ohmynews/20231101084802530sxnr.jpg" width="658"/></p>
</figure></td>
</tr>
<tr>
<td align="left"><strong>▲ </strong> 레이나는 아웃사이드히터로 활약한 3경기에서 기대만큼 좋은 활약을 보여주지 못했다.</td>
</tr>
<tr>
<td align="left">ⓒ 한국배구연맹</td>
</tr>
</tbody>
</table>
<div dmcf-pid="bjuIyHD7rh" dmcf-ptype="general">
            
           <br/>2018-2019 시즌 신인 드래프트에서 전체 1순위로 흥국생명에 입단한 이주아는 루키 시즌부터 흥국생명의 주전 미들블로커 한 자리를 차지하며 챔프전 우승을 경험했다. 그리고 매 시즌 착실히 성장한 이주아는 프로 4년 차가 된 2021-2022 시즌 243득점과 함께 세트당 0.72개의 블로킹(3위)을 기록하며 리그 정상급 미들블로커로 성장했다. 이주아가 대표팀에 단골로 선발되기 시작한 것도 이 즈음부터.
          </div>
<p dmcf-pid="KA7CWXwzDC" dmcf-ptype="general">하지만 흥국생명은 루키 시즌부터 이주아의 파트너로 활약했던 백전노장 김세영이 2021-2022 시즌을 끝으로 현역생활을 마무리하는 변수가 생겼다. 그럼에도 이주아는 2022-2023 시즌 프로 데뷔 후 가장 많은 295득점과 함께 블로킹 7위(세트당 0.61), 이동공격 3위(48.39%),속공 5위(42.41%)를 기록하며 미들블로커로서 자신의 역할을 충실히 해냈다. 하지만 흥국생명의 문제는 이주아와 함께 중앙을 지킬 파트너의 부재였다.</p>
<p dmcf-pid="9LFwhTj3sI" dmcf-ptype="general">흥국생명은 김세영 은퇴 후 베테랑 김나희가 주전 미들블로커로 나서는 경기가 많았지만 김나희는 풍부한 경험과 반대로 신장(178cm)이 크지 않아 블로킹에서는 큰 기대를 하기가 힘들다. 184cm의 좋은 신장을 가진 2017-2018 시즌 신인왕 김채연은 준수한 높이에 비해 공격기술이 다소 부족한 편이다. 작년 신인 드래프트에서 2순위로 입단했던 임혜림(IBK기업은행 알토스)은 경험이 턱없이 부족했다.</p>
<p dmcf-pid="2o3rlyA0sO" dmcf-ptype="general">결국 흥국생명은 지난 시즌 챔피언 결정전에서 배유나와 정대영(GS칼텍스)으로 이어지는 노련한 미들블로커 듀오가 버틴 한국도로공사 하이패스를 상대로 2승을 먼저 따낸 후 3연패를 당하며 통산 5번째 챔프전 우승이 좌절됐다. 이에 흥국생명은 시즌이 끝나자마자 FA시장에서 김연경의 절친이자 2020 도쿄올림픽까지 대표팀의 붙박이 주전 미들블로커로 활약했던 김수지를 계약기간 3년, 연봉 총액 3억1000만원의 조건에 영입했다.</p>
<p dmcf-pid="Vg0mSWcpEs" dmcf-ptype="general">하지만 시즌 개막 전 김수지가 무릎 관절경 수술을 받았고 이주아는 대표팀 일정 때문에 자리를 비우는 기간이 많았다. 설상가상으로 흥국생명은 시즌 개막 후 이주아가 지난 10월 26일 정관장과의 경기에서 손가락을 다쳤고 김채연마저 팔꿈치 통증을 호소했다. 결국 아본단자 감독은 31일 GS칼텍스와의 경기에서 김수지와 함께 아웃사이드히터로 영입한 아시아쿼터 레이나를 미들블로커로 투입하는 변칙적인 작전을 들고 나왔다.</p>
<div dmcf-pid="fg0mSWcpIm" dmcf-ptype="general">
<strong>75%의 성공률과 블로킹 2개로 8득점 활약</strong>
<br/> 
          </div>
<table align="center" border="0" cellpadding="0" cellspacing="0" dmcf-pid="4apsvYkUmr" dmcf-ptype="general">
<tbody>
<tr>
<td>
<figure class="figure_frm origin_fig">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ohmynews/20231101084804161ynns.jpg" data-org-width="600" dmcf-mid="0isxnafOmG" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ohmynews/20231101084804161ynns.jpg" width="658"/></p>
</figure></td>
</tr>
<tr>
<td align="left"><strong>▲ </strong> 레이나는 미들블로커로 출전한 31일 GS칼텍스전에서 한국무대 데뷔 후 최고의 활약을 펼쳤다.</td>
</tr>
<tr>
<td align="left">ⓒ 한국배구연맹</td>
</tr>
</tbody>
</table>
<div dmcf-pid="8NUOTGEuww" dmcf-ptype="general">
            
           <br/>가나인 아버지와 일본인 어머니 사이에서 태어난 레이나는 일본 V.리그와 핀란드리그에서 아웃사이드히터로 활약했고 지난 4월 아시아쿼터 드래프트에서도 아웃사이드히터로 선발했다. 레이나는 당초 김미연,김다은 등과 아웃사이드히터 주전경쟁을 할 것으로 예상됐고 실제로 시즌 개막 후에도 아웃사이드히터로만 활약했다. 따라서 31일 레이나의 미들블로커 투입은 배구팬들이 미처 예상하지 못했던 '깜짝기용'이었다.
          </div>
<p dmcf-pid="6ZLzV63oED" dmcf-ptype="general">사실 아웃사이드히터로서 레이나의 활약은 포지션 경쟁자이자 흥국생명의 주장 김미연을 압도할 수준은 아니었다. 10월 18일 현대건설전에서 교체로 투입돼 5득점을 올리며 국내 V리그 데뷔전을 치른 레이나는 22일 페퍼저축은행 AI페퍼스와의 경기에서도 교체선수로 나와 2득점을 기록했다. 레이나는 26일 정관장과의 경기에서 처음으로 주전으로 출전했지만 공격성공률 13.64%와 리시브 효율 11.43%에 그치며 흥국생명 역전패의 빌미를 제공했다.</p>
<p dmcf-pid="P5oqfP0gIE" dmcf-ptype="general">정관장과의 경기에서 부진했던 레이나는 10월 31일 GS칼텍스전에서 주전이 아닌 웜업존에서 경기를 시작했다. 흥국생명은 아웃사이드히터에 김연경과 김미연, 미들블로커에 김수지와 김나희가 선발출전했다. 하지만 김나희가 2세트 중반까지 20%의 성공률로 1득점에 그치며 부진하자 아본단자 감독은 김나희를 빼고 미들블로커 자리에 180cm의 전문 미들블로커 변지수 대신 177cm의 아웃사이드히터 레이나를 투입시켰다.   </p>
<p dmcf-pid="Q1gB4QpaDk" dmcf-ptype="general">결과적으로 레이나 기용은 대성공이었다. 레이나는 전통적인 미들블로커들처럼 중앙에서 속공이나 이동공격을 사용하진 못했지만 자신에 대한 경계가 느슨한 틈을 타 8번의 공격을 시도해 무려 75%의 성공률로 6득점을 올렸다. 여기에 결정적인 순간에 블로킹 2개를 곁들이면서 두 세트가 채 되지 않는 짧은 시간 동안 옐레나와 김연경에 이어 팀 내에서 세 번째로 많은 8득점을 올리는 알토란 같은 활약을 선보였다.</p>
<p dmcf-pid="xYdpbV5Jwc" dmcf-ptype="general">레이나는 신장은 크지 않지만 운동능력이 좋아 GS칼텍스전에서 2개의 블로킹을 기록했다. 하지만 GS칼텍스는 팀 블로킹이 세트당 1.6개(5위)로 높이가 낮은 대표적인 팀이다. 레이나의 미들블로커 활용이 정말 통할지 확인하기 위해서는 오는 4일 기업은행전 결과까지 살펴볼 필요가 있다. 만약 레이나가 다음 경기에서도 미들블로커 자리에서 좋은 활약을 이어간다면 흥국생명의 아본단자 감독은 이주아 복귀 전까지 미들블로커 고민을 덜 수 있다.</p>
<p dmcf-pid="yRHjrInXIA" dmcf-ptype="general">저작권자(c) 오마이뉴스(시민기자), 무단 전재 및 재배포 금지</p>
</section>
</div></p></section></div><h6>[Source : 오마이뉴스]</h6></div>
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