
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
    <h3>NC 실책→2실점→kt 끝내기 찬스→작전 실패…혼란과 격동의 2차전, 국대 유격수 미친 호수비로 '끝'</h3><h6>신원철 기자  2023. 11. 1. 09:30</h6>
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
<section dmcf-sid="40SJ6MujCd">
<figure class="figure_frm origin_fig" dmcf-pid="8cx1yHD7ye" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 김주원 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093011330aiip.jpg" data-org-width="900" dmcf-mid="QNJ9UqWQyW" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093011330aiip.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 김주원 ⓒ곽혜미 기자
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="6kMtWXwzCR" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 팀을 구한 김주원의 다이빙 캐치. ⓒ연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093017353dvlo.jpg" data-org-width="900" dmcf-mid="KBJhDsJGTo" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093017353dvlo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 팀을 구한 김주원의 다이빙 캐치. ⓒ연합뉴스
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Pwd0H1sblM" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 서호철 김주원 박민우 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093018738bmly.jpg" data-org-width="900" dmcf-mid="9B56bV5JhL" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093018738bmly.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 서호철 김주원 박민우 ⓒ곽혜미 기자
           </figcaption>
</figure>
<p dmcf-pid="QrJpXtOKSx" dmcf-ptype="general">[스포티비뉴스=수원, 신원철 기자] 3점은 안심할 수 없는 차이였다. NC가 실책에서 비롯된 위기에서 실점하면서 포스트시즌 연승을 마칠 뻔했다. kt의 작전 실패, 김주원의 '미친' 다이빙캐치가 NC에 포스트시즌 9연승을 안겼다. </p>
<p dmcf-pid="xmiUZFI9vQ" dmcf-ptype="general">NC 다이노스는 지난 31일 수원 kt위즈파크에서 열린 '2023 신한은행 SOL KBO 포스트시즌' kt 위즈와 플레이오프 2차전에서 3-2 기적 같은 1점 차 신승을 거뒀다. 마무리 이용찬이 9회 무사 1, 3루 위기를 자초하며 또 한번 불안한 투구를 했지만 삼진 2개를 잡았고, 마지막 2사 만루에서는 유격수 김주원이 오윤석의 애매한 타구에 몸을 날려 노바운드 처리에 성공하며 경기에 마침표를 찍었다. </p>
<p dmcf-pid="yLVWISathP" dmcf-ptype="general">지난달 19일 두산 베어스와 와일드카드 결정 1차전 14-9 대승을 시작으로 NC는 거침없는 포스트시즌 연승을 이어갔다. SSG 랜더스와 준플레이오프 3경기를 모두 잡고, kt와 플레이오프도 원정에서 열린 첫 2경기를 모두 이겼다. 올해만 6연승이고, 2020년까지 포함하면 한국시리즈 4차전부터 9연승이다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="WofYCvNFT6" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 김주원 강인권 감독 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093020203yhug.jpg" data-org-width="900" dmcf-mid="28h710hVWn" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093020203yhug.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 김주원 강인권 감독 ⓒ곽혜미 기자
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Yg4GhTj3h8" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 권희동. ⓒ연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093015844wbyo.jpg" data-org-width="900" dmcf-mid="bm3Q94tnhg" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093015844wbyo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 권희동. ⓒ연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="GERFYZrqv4" dmcf-ptype="general">7회까지 NC가 3-0으로 앞서 있었다. NC는 1회 터진 박건우의 선제 2점포, 3회 무사 3루에서 상대 실책으로 뽑은 추가점으로 시종일관 리드를 유지했다. 선발 싸움에서도 NC가 kt를 압도했다. kt 선발 웨스 벤자민은 1회와 3회 실점하면서 5이닝 4피안타(1홈런) 2탈삼진 3실점으로 패전 위기에 놓였다. NC 신민혁은 7회 1사까지 6⅓이닝 1피안타 1볼넷 2탈삼진 무실점으로 호투했다. 6이닝 12탈삼진 1실점을 기록한 1차전 선발 에릭 페디보다도 좋은 결과였다. </p>
<p dmcf-pid="HDe3G5mBvf" dmcf-ptype="general">7회까지 이어지던 NC의 3점 리드는 단 한 번의 수비에서 흔들렸다. NC 두 번째 투수 류진욱은 7회 1사 1, 2루에서 투수 병살타로 첫 번째 위기를 넘기고 8회에도 마운드에 올랐다. 그런데 1사 후 김민혁에게 볼넷을 내주고, 배정대에게 좌전안타를 허용하면서 주자가 쌓이기 시작했다. </p>
<p dmcf-pid="Xwd0H1sbvV" dmcf-ptype="general">여기에 배정대의 안타 때 좌익수 권희동이 공을 뒤로 흘리는 실책을 저질렀다. 1사 1, 2루가 아닌 1사 2, 3루로 위기가 커졌다. NC는 이때 세 번째 투수 임정호를 투입했다. 임정호는 대타의 대타 오윤석을 중견수 희생플라이로 막았다. 하지만 앞서 나온 실책이 아니었다면 주자가 3루에 갈 일도 없었고, 이 점수도 주지 않을 수 있었다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="ZeBlwOiHy2" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 이용찬 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093013304suih.jpg" data-org-width="900" dmcf-mid="WWzJ6MujTv" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093013304suih.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 이용찬 ⓒ곽혜미 기자
           </figcaption>
</figure>
<p dmcf-pid="5dbSrInXl9" dmcf-ptype="general">더 큰 문제는 다음 상황이었다. 계속된 2사 3루에서 NC 벤치는 마무리 이용찬 카드를 꺼냈다. 4아웃 세이브를 맡기는 선택. 그러나 이용찬이 김상수에게 던진 초구가 중전 적시타로 돌아왔다. 중견수 제이슨 마틴이 전력질주로 달려나왔지만 한 번에 처리할 수 없었다. </p>
<p dmcf-pid="1JKvmCLZSK" dmcf-ptype="general">타구가 그라운드에 떨어지자 이용찬은 허탈한 듯 허리에 손을 올리고 그라운드를 바라봤다. 이용찬은 다음 타자 황재균에게도 안타를 맞고 다시 위기에 놓였지만 앤서니 알포드를 3구 삼진으로 돌려세우고 리드를 지켜냈다. </p>
<p dmcf-pid="t80rNkQSyb" dmcf-ptype="general">실책에 이은 2실점으로 NC의 리드는 3-2, 단 1점 차로 좁혀져 있었다. NC는 9회에도 투수 교체 없이 이용찬을 믿기로 했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="F6pmjExvWB" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 이용찬 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093021599pnrj.jpg" data-org-width="900" dmcf-mid="V0WoMJBECi" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093021599pnrj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 이용찬 ⓒ곽혜미 기자
           </figcaption>
</figure>
<p dmcf-pid="3PUsADMThq" dmcf-ptype="general">이용찬은 첫 타자 박병호에게 중전안타를 허용했다. 다음 타자 장성우의 히트앤드런 때는 2루수 박민우가 2루 베이스로 커버를 들어가다 역동작에 걸려 타구를 놓치는 불운까지 겹쳤다. 1사 2루가 됐어야 할 상황이 무사 1, 3루로 바뀌었다. </p>
<p dmcf-pid="03ld8xUNWz" dmcf-ptype="general">이용찬은 이 절체절명의 위기에서 문상철을 삼진으로 잡고 급한 불을 껐다. 문상철이 볼카운트 0-1에서 기습번트를 시도했는데 파울이 되면서 NC가 유리한 카운트를 선점했고, 3구째 포크볼로 헛스윙 유도에 성공했다. 이어 다음 대타 김준태까지 풀카운트에서 서서 삼진으로 막았다. </p>
<p dmcf-pid="p0SJ6MujC7" dmcf-ptype="general">NC 벤치는 배정대를 고의4구로 거르고 2사 만루에서 오윤석과 승부했다. 오윤석의 타구가 애매하게 떴지만 NC 유격수 김주원이 몸을 날려 뜬공 처리하면서 경기가 막을 내렸다. 경기 후 NC 강인권 감독은 "맞는 순간 안타인줄 알았다. 수비 위치 선정과 다이빙이 좋았다. 형들이 어려운 상황을 만들었는데, 막내 김주원이 팀을 승리로 이끌었다"고 칭찬했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="UpviPR7Avu" dmcf-ptype="figure">
<p class="link_figure"><img alt="▲ 김주원 ⓒ곽혜미 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093023758vmud.jpg" data-org-width="900" dmcf-mid="fz7IkreWhJ" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/spotvnews/20231101093023758vmud.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ▲ 김주원 ⓒ곽혜미 기자
           </figcaption>
</figure>
<p dmcf-pid="uAQ5TGEuSU" dmcf-ptype="general">&lt;저작권자 ⓒ SPOTV NEWS. 무단전재 및 재배포 금지&gt;</p>
</section>
</div></p></section></div><h6>[Source : 스포티비뉴스]</h6></div>
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