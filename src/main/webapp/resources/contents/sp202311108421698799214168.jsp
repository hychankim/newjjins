
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
    <h3>김주원 '슈퍼캐치'... NC, 1승만 더 하면 한국시리즈</h3><h6>윤현  2023. 11. 1. 08:42</h6>
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
<section dmcf-sid="0xPgADMTO3">
<p dmcf-pid="peMjEmdYmF" dmcf-ptype="general">[윤현 기자]</p>
<p dmcf-pid="UdRADsJGEt" dmcf-ptype="general">프로야구 NC 다이노스가 거침없는 질주로 한국시리즈를 눈앞에 뒀다.</p>
<p dmcf-pid="uOmYZFI9w1" dmcf-ptype="general">NC는 31일 수원 케이티위즈파크에서 열린 프로야구 2023 신한은행 SOL KBO리그 플레이오프(5전 3승제) 2차전에서 kt 위즈를 3-2로 이겼다.</p>
<p dmcf-pid="7IsG53C2O5" dmcf-ptype="general">이로써 1, 2차전을 내리 쓸어 담은 NC는 앞으로 1승만 더 거두면 창단 첫 통합 우승을 달성했던 2020년에 이어 3년 만에 한국시리즈에 진출한다. 반면에 kt는 홈 구장에서 연패를 당하며 벼랑 끝에 몰렸다. </p>
<div dmcf-pid="zCOH10hVrZ" dmcf-ptype="general">
           역대 5전 3승제로 치러진 플레이오프에서 1, 2차전을 이긴 팀이 한국시리즈에 진출한 것은 17차례 가운데 15번으로 무려 88.2%의 확률에 달한다.
           <br/> 
          </div>
<table align="center" border="0" cellpadding="0" cellspacing="0" dmcf-pid="qWT3uBYxDX" dmcf-ptype="general">
<tbody>
<tr>
<td>
<figure class="figure_frm origin_fig">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ohmynews/20231101084203283azfp.jpg" data-org-width="2874" dmcf-mid="3TKRigVsD0" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ohmynews/20231101084203283azfp.jpg" width="658"/></p>
</figure></td>
</tr>
<tr>
<td align="left"><strong>▲ </strong> 10월 31일 경기도 수원 케이티위즈파크에서 열린 2023 KBO리그 플레이오프(PO) 2차전 NC 다이노스와 kt wiz의 경기. 3-2로 승리한 NC 선수들이 승리를 자축하고 있다.</td>
</tr>
<tr>
<td align="left">ⓒ 연합뉴스</td>
</tr>
</tbody>
</table>
<div dmcf-pid="BYy07bGMDH" dmcf-ptype="general">
            
           <br/><strong>kt 타선 압도한 신민혁, NC 마운드 '새 영웅' </strong>
</div>
<p dmcf-pid="bEclyHD7DG" dmcf-ptype="general">이날도 선취점은 NC의 몫이었다. 1회 박민우가 중전 안타를 치고 나가자 박건우가 kt 선발 웨스 벤자민의 컷패스트볼을 받아쳐 비거리 130ｍ짜리 초대형 장외 투런포를 쏘아 올린 것이다.</p>
<p dmcf-pid="KDkSWXwzDY" dmcf-ptype="general">NC는 3회 선두 타자 김주원이 우중간을 가르는 3루타를 터뜨렸고, 다음 타자로 나선 손아섭의 평범한 땅볼 타구를 kt 1루수 박병호가 뒤로 흘린 사이 김주원이 홈을 밟으면서 3-0으로 달아났다. </p>
<p dmcf-pid="9wEvYZrqEW" dmcf-ptype="general">kt는 전날 1차전에서 황재균이 내야 뜬공을 놓친 데 이어 2차전에서는 박병호까지 두 베테랑의 뼈아픈 실책이 발목을 잡았다.</p>
<p dmcf-pid="2gLrISatmy" dmcf-ptype="general">NC 선발 신민혁의 호투에 침묵하던 kt는 8회가 되어서야 깨어났다. 1사 2, 3루 찬스에서 대타 오윤석의 중견수 희생플라이와 김상수의 중견수 앞 적시타로 2점을 만회하며 NC를 압박했다. </p>
<p dmcf-pid="VaomCvNFsT" dmcf-ptype="general">분위기가 살아난 kt는 9회에도 2사 만루 찬스에서 오윤석이 나섰다. 오윤석은 이용찬의 포크볼을 받아쳐 안타성 타구를 날렸으나, NC 유격수 김주원이 몸을 날려 잡아내면서 극적인 승리를 거뒀다. </p>
<p dmcf-pid="fNgshTj3sv" dmcf-ptype="general">동점을 넘어 역전까지 기대했던 kt 선수들은 허탈감에 고개를 숙였고, 위기를 넘기고 승리를 확정한 NC 선수들은 마치 우승이라도 한 것처럼 기뻐했다. </p>
<p dmcf-pid="4f2dLN4IsS" dmcf-ptype="general"><strong>가을야구 9연승 질주한 NC, 대기록 '눈앞' </strong></p>
<p dmcf-pid="84VJoj8Cml" dmcf-ptype="general">이로써 NC는 올해 포스트시즌에서 와일드카드 결정전부터 준플레이오프, 플레이오프까지 6연승을 달렸다. 여기에 2020년 한국시리즈 3연승까지 더해 포스트시즌 9연승을 거둔 NC는 1987~1988년 해태 타이거즈가 기록한 9연승과 타이를 이뤘다. </p>
<p dmcf-pid="68figA6hrh" dmcf-ptype="general">만약 NC는 플레이오프 3차전에서도 승리해 10연승을 달성하면 KBO리그 포스트시즌 최다 연승 신기록을 세우게 된다. </p>
<p dmcf-pid="PSh53uv8EC" dmcf-ptype="general">이날 경기의 주인공은 신민혁이었다. 신민혁은 과감한 투구로 볼카운트를 유리하게 가져간 뒤 체인지업으로 kt 타자들의 범타를 유도하면서 6.1이닝을 1피안타 1볼넷 무실점으로 틀어막았다.</p>
<p dmcf-pid="Qvl107T6mI" dmcf-ptype="general">신민혁은 자신의 포스트시즌 첫 등판이었던 지난 22일 SSG 랜더스와의 준플레이오프 1차전에서 5.2이닝 4피안타 1볼넷 3탈삼진 호투했고, 이날도 무실점으로 역투하며 승리투수가 됐다. </p>
<p dmcf-pid="xTStpzyPsO" dmcf-ptype="general">두 경기 모두 상대 선발이 외국인 투수인 SSG 로에니스 엘리아스와 kt 벤자민이었기에 신민혁의 열세가 예상됐지만, 기대를 뛰어넘는 활약으로 NC의 승리를 이끌며 새로운 스타로 떠올랐다.</p>
<p dmcf-pid="ykAhTGEuws" dmcf-ptype="general">에릭 페디 말고는 2선발 태너 털리가 부진하고, 국내 선발 자원도 부족한 NC로서는 신민혁의 활약이 더욱 값지다.</p>
<p dmcf-pid="WEclyHD7Im" dmcf-ptype="general">반면에 kt는 끈질긴 추격전을 벌였으나 한 점 차로 무릎을 꿇었다. 무엇보다 타선이 부진이 뼈아프다. 여러 차례 기회를 만들어도 점수로 연결할 해결사가 없다. 포스트시즌을 앞두고 부상을 당한 강백호의 빈자리가 더욱 아쉽게 느껴지는 이유다. </p>
<p dmcf-pid="YDkSWXwzOr" dmcf-ptype="general">비장한 각오로 원정길에 나서는 kt는 잠수함 투수 고영표를 3차전 선발로 내세우고, NC는 태너가 출격한다.</p>
<p dmcf-pid="GAclyHD7Ow" dmcf-ptype="general">저작권자(c) 오마이뉴스(시민기자), 무단 전재 및 재배포 금지</p>
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