
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
    <h3>"새로운 배리 본즈" 왜 이런 선수를 다저스는 놓쳤나…우승 청부사, 텍사스 한까지 푸나</h3><h6>이상학  2023. 11. 1. 09:00</h6>
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
<section dmcf-sid="6cRjH1sbi2">
<figure class="figure_frm origin_fig" dmcf-pid="P6u4EmdYe9" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101090024698ksha.jpg" data-org-width="650" dmcf-mid="buegWXwzex" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101090024698ksha.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Qvklq9XeRK" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101090024903wlgr.jpg" data-org-width="650" dmcf-mid="KKLcZFI9nQ" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101090024903wlgr.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<p dmcf-pid="x7GUJo2mRb" dmcf-ptype="general">[OSEN=이상학 기자] 미국 ‘폭스스포츠’ 해설가로 월드시리즈 중계를 하고 있는 ‘541홈런 거포’ 데이비드 오티즈는 코리 시거(29·텍사스 레인저스)를 두고 “포스트시즌의 새로운 배리 본즈”라고 표현했다. 시거가 9회 극적인 동점 투런 홈런을 터뜨린 월드시리즈 1차전이 끝난 뒤였다. 뉴욕 양키스 슈퍼스타 출신으로 함께 해설 중인 데릭 지터도 “내가 가장 좋아하는 야구 선수”라고 말했다. </p>
<p dmcf-pid="yaHuigVseB" dmcf-ptype="general">명예의 전당 레전드 둘이 입을 모아 칭찬할 정도로 시거의 올 가을 활약은 대단히 인상적이다. 시거는 31일(이하 한국시간) 월드시리즈 3차전에서도 3회 승부에 쐐기를 박는 투런 홈런을 터뜨리며 또 한 번 해결사 본능을 발휘했다. 텍사스는 애리조나 다이아몬드백스를 3-1로 꺾고 시리즈 전적 2승1패로 다시 한 걸음 앞서나갔다. </p>
<p dmcf-pid="WLW0enKwiq" dmcf-ptype="general">시거는 이번 포스트시즌에서 15경기 타율 2할9푼8리(57타수 17안타) 5홈런 10타점 OPS 1.093으로 활약 중이다. 고의4구 2개 포함 볼넷만 14개로 상대 투수들이 쉽게 승부를 들어오지 못한다. 월드시리즈 3경기에선 타율 1할6푼7리(12타수 2안타)이지만 안타 2개가 전부 승부에 결정적인 영향을 미친 투런 홈런이다. </p>
<p dmcf-pid="YIz6wOiHJz" dmcf-ptype="general">3차전 승리 후 공식 인터뷰에서 시거는 “이것이 내가 플레이하는 이유다. 운이 좋아 좋은 팀에서 이런 경험을 하고 있다. 이런 경험이 항상 내게 동기 부여가 된다”며 “우리 타선은 끊임없이 서로를 도와주면서 발전시키고 있다. 내가 항상 그날의 주인공이 될 필요가 없다는 점이 스트레스를 덜어준다. 앞으로도 계속 그렇게 할 것이다”고 말했다. </p>
<p dmcf-pid="GjZzLN4IJ7" dmcf-ptype="general">시거는 유격수 수비에서도 한 건 했다. 이날 3-1로 쫓긴 8회 1사 1루에서 케텔 마르테의 114.8마일(184.1km) 강습 타구를 몸 낮춰 숏바운드로 캐치했다. 투수를 등진 채 왼쪽 무릎을 꿇고 2루수 마커스 시미언에게 빠르게 토스했고, 6-4-3 병살로 이닝이 끝났다. 안타 확률 45% 타구를 잡아낸 것만으로도 잘했는데 병살로 연결하면서 애리조나의 추격 흐름까지 차단했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="Hv9RISatLu" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101090026240qvge.jpg" data-org-width="650" dmcf-mid="9gppdL9rRP" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101090026240qvge.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="XaHuigVsJU" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 텍사스 코리 시거, 마커스 시미언. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101090027621dybg.jpg" data-org-width="650" dmcf-mid="26sspzyPJ6" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101090027621dybg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 텍사스 코리 시거, 마커스 시미언. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<p dmcf-pid="ZY4iSWcpJp" dmcf-ptype="general">‘MLB.com’ 등 현지 언론에 따르면 경기 후 시미언은 “시거는 훌륭한 수비를 해왔다. 올해 골드글러브를 받을 자격이 충분하다. 월드시리즈에서 가장 중요한 순간에 그런 플레이를 했다. 팀에 큰 힘이 된다. 8회 애리조나의 기세가 올랐는데 우리가 병살을 만들어냈다. 정말 대단했다”고 시거를 치켜세웠다. 텍사스 3루수 조쉬 영도 “시거의 수비시 퍼스트 스텝은 경이롭다. 모든 경기에서 공 하나하나를 읽으며 공이 배트에 맞는 순간 움직인다”고 말했다. 유격수로는 큰 키(193cm)이지만 오랜 기간 공을 중심에서 잡기 위해 자세를 낮추고, 보폭을 줄이며 노력한 점도 조명받고 있다. </p>
<p dmcf-pid="5su4EmdYi0" dmcf-ptype="general">시거는 2020년 LA 다저스 시절 월드시리즈 우승 경험이 있다. 당시 6경기에서 타율 4할(20타수 8안타) 2홈런 5타점 OPS 1.256으로 활약하며 다저스의 32년 묵은 월드시리즈 우승 한을 푸는 데 앞장섰다. 그로부터 3년의 시간이 흘렀고, 이제는 텍사스의 62년 묵은 창단 첫 월드시리즈 우승의 한까지 기세가 풀 기세다. </p>
<p dmcf-pid="1G8nvYkUM3" dmcf-ptype="general">만약 시거가 이번에도 우승을 이끌고 월드시리즈 MVP를 받는다면 샌디 쿠팩스, 밥 깁슨, 레지 잭슨에 이어 역대 4번째로 월드시리즈 MVP 2회 수상자가 된다. 명예의 전당 투수 쿠팩스는 1963년, 1965년 다저스에서 월드시리즈 MVP에 올랐다. 또 다른 명예의 전당 투수 깁슨은 1964년, 1967년 세인트루이스 카디널스에서 월드시리즈 MVP를 차지했다. </p>
<figure class="figure_frm origin_fig" dmcf-pid="tT2eCvNFJF" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 2020년 다저스 시절 월드시리즈 MVP를 받은 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101090028152zspo.jpg" data-org-width="650" dmcf-mid="V1UUJo2me8" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101090028152zspo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 2020년 다저스 시절 월드시리즈 MVP를 받은 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="F2klq9Xedt" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 다저스 시절 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101090028494cijt.jpg" data-org-width="650" dmcf-mid="favvbV5JJ4" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101090028494cijt.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 다저스 시절 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<p dmcf-pid="3v9RISatd1" dmcf-ptype="general">명예의 전당 외야수 잭슨은 1973년 오클랜드 애슬레틱스에 이어 1977년 뉴욕 양키스에서 두 번 월드시리즈 MVP를 받았다. 2개 팀에서 수상한 최초의 선수인데 시거가 그 뒤를 따르려 한다. 나아가 최초 역사도 바라본다. 내셔널리그, 아메리칸리그 양대 리그를 거치며 월드시리즈 MVP를 따낸 선수는 아직 없다. </p>
<p dmcf-pid="0T2eCvNFd5" dmcf-ptype="general">2년 연속 디비전시리즈에서 업셋을 당하며 우승에 실패한 다저스로선 시거 활약에 속이 쓰리지 않을 수 없다. 시거는 2021년 시즌을 마친 뒤 FA 자격을 얻어 텍사스와 10년 3억2500만 달러 초대형 계약을 맺었다. 역대 6번째로 큰 규모의 계약을 따내며 FA 최대어 가치를 인정받았다. 당시 다저스도 시거를 잡기 위해 나섰지만 연봉 지급 방식이나 주별 세금 차이로 인해 텍사스의 조건을 이기지 못했다. 텍사스는 연봉 후불 지급 없이 첫 4년간 1억4000만 달러 거액을 보장했다. 다저스가 속한 캘리포니아주와 달리 텍사스주는 주세 없이 연방세만 내면 되기 때문에 시거가 더 많은 세후 소득을 챙길 수 있었다.</p>
<p dmcf-pid="piTFMJBEeZ" dmcf-ptype="general">이런 조건의 차이도 있었지만 다저스는 시거가 아니더라도 팀 내 유격수 자원으로 트레이 터너와 가빈 럭스가 있었다. 텍사스를 넘어서는 오버 페이를 하지 않는 게 그때는 합리적인 선택으로 보였지만 다저스의 연이은 가을야구 실패가 평가를 바꿔놓고 있다. 시거가 텍사스를 월드시리즈 우승까지 이끈다면 다저스의 2년 전 결정은 두고두고 악수로 평가받을 수도 있다. /waw@osen.co.kr</p>
<figure class="figure_frm origin_fig" dmcf-pid="UxIH4QpadX" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101090029063hivl.jpg" data-org-width="650" dmcf-mid="4YESB2ZdRf" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101090029063hivl.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="uxIH4QpaiH" dmcf-ptype="figure">
<p class="link_figure"><img alt="[사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/poctan/20231101090029702xjqx.jpg" data-org-width="650" dmcf-mid="8OX7nafOLV" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/poctan/20231101090029702xjqx.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            [사진] 텍사스 코리 시거. ⓒGettyimages(무단전재 및 재배포 금지)
           </figcaption>
</figure>
</section>
</div></p></section></div><h6>[Source : OSEN]</h6></div>
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