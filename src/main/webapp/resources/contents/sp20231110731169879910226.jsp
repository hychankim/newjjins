
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
    <h3>김민재, 발롱도르 22위 이어 AFC 올해의 국제선수 선정 ‘겹경사’</h3><h6>김희웅  2023. 11. 1. 07:31</h6>
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
<section dmcf-sid="PzbgzKHRk1">
<figure class="figure_frm origin_fig" dmcf-pid="QRJhRibDN5" dmcf-ptype="figure">
<p class="link_figure"><img alt="AFC 올해의 국제선수로 선정된 김민재. 사진=AFC" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073106589kkep.jpg" data-org-width="600" dmcf-mid="V43QZFI9kp" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073106589kkep.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            AFC 올해의 국제선수로 선정된 김민재. 사진=AFC
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="xRJhRibDcZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="위르겐 클린스만 감독이 이끄는 대한민국 축구대표팀이 17일 오후 수원월드컵경기장에서 베트남 대표팀과 평가전을 펼쳤다. 대표팀이 6-0으로 승리했다. 경기종료후 김민재가 팬들에게 인사하고있다. 수원=정시종 기자 capa@edaily.co.kr /2023.10.17." class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073107008cfkb.jpg" data-org-width="600" dmcf-mid="fOE5ADMTN0" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073107008cfkb.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            위르겐 클린스만 감독이 이끄는 대한민국 축구대표팀이 17일 오후 수원월드컵경기장에서 베트남 대표팀과 평가전을 펼쳤다. 대표팀이 6-0으로 승리했다. 경기종료후 김민재가 팬들에게 인사하고있다. 수원=정시종 기자 capa@edaily.co.kr /2023.10.17.
           </figcaption>
</figure>
<div dmcf-pid="yIlzISataX" dmcf-ptype="general">
<br/>김민재(26·바이에른 뮌헨) 전성시대다. 지난 시즌 유럽 무대에서 눈부신 성과를 남긴 김민재가 아시아 최고 선수로 우뚝 섰다.
           <br/>
<br/>아시아축구연맹(AFC)은 지난달 31일(현지시간) 공식 홈페이지를 통해 “한국의 김민재가 도하에서 열린 AFC 연례 시상식에서 최고의 아시아 국제 프로선수상을 수상했다”며 “(김민재는) 나폴리를 리그 우승으로 이끄는 등 두각을 드러냈고, 이례적인 시즌을 보냈다”고 조명했다. 
           <br/>
<br/>김민재는 함께 후보에 오른 미토마 가오루(일본·브라이턴 앤 호브 알비온)와 메흐디 타레미(이란·FC포르투)를 제치고 AFC 올해의 국제선수로 등극했다. 
           <br/>
<br/>이 상은 아시아가 아닌 타 대륙에서 활약하는 아시아 선수 중 가장 빼어난 활약을 펼친 선수에게 주는 상이다. 2012년 신설된 이 상은 손흥민(2015·2017·2019년)이 세 차례 수상했다. 한국 선수로는 유일한 수상자였는데, 김민재가 두 번째 주인공이 됐다.
           <br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="WFpeFUS4kH" dmcf-ptype="figure">
<p class="link_figure"><img alt="김민재(왼쪽)가 또 다른 괴물 루카쿠를 완벽히 막았다.(사진=게티이미지)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073108362adnw.jpg" data-org-width="594" dmcf-mid="4TSqCvNFc3" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073108362adnw.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            김민재(왼쪽)가 또 다른 괴물 루카쿠를 완벽히 막았다.(사진=게티이미지)
           </figcaption>
</figure>
<div dmcf-pid="Y8Qr8xUNkG" dmcf-ptype="general">
<br/>AFC는 김민재의 활약상을 짚었다. 지난해 7월 나폴리에 입단한 김민재는 곧장 주전을 꿰차고 팀이 33년 만에 이탈리아 정상에 오르는 데 이바지했다. 빅터 오시멘, 흐비차 크바라츠헬리아 등 공격수들과 우승을 이끈 핵심 멤버로 여겨진다. 실제 이탈리아 최우수 수비수로 선정되며 한 시즌 간의 활약을 인정받기도 했다.
           <br/>
<br/>김민재의 커리어를 돌아본 AFC는 “김민재는 올 시즌 독일 분데스리가의 거함 바이에른 뮌헨으로 이적했고, 2023년 남자 발롱도르 후보에 오른 유일한 아시아 선수였다”고 적었다.
           <br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="G6xm6MujcY" dmcf-ptype="figure">
<p class="link_figure"><img alt="31일 공개된 2023 발롱도르 시상 최종 순위. 김민재는 22위에 이름을 올렸다. 이는 수비수 중 가장 높은 순위이기도 하다. 사진=프랑스 풋볼 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073108679gpry.png" data-org-width="600" dmcf-mid="85aWLN4IjF" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073108679gpry.png" width="658"/></p>
<figcaption class="txt_caption default_figure">
            31일 공개된 2023 발롱도르 시상 최종 순위. 김민재는 22위에 이름을 올렸다. 이는 수비수 중 가장 높은 순위이기도 하다. 사진=프랑스 풋볼 SNS
           </figcaption>
</figure>
<figure class="figure_frm origin_fig" dmcf-pid="Ht0RtplfgW" dmcf-ptype="figure">
<p class="link_figure"><img alt="31일 공개된 2023 발롱도르 시상 최종 순위. 김민재는 22위에 이름을 올렸다. 이는 수비수 중 가장 높은 순위이기도 하다. 사진=프랑스 풋볼 SNS" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073109077ihik.jpg" data-org-width="600" dmcf-mid="6CjGgA6hot" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101073109077ihik.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            31일 공개된 2023 발롱도르 시상 최종 순위. 김민재는 22위에 이름을 올렸다. 이는 수비수 중 가장 높은 순위이기도 하다. 사진=프랑스 풋볼 SNS
           </figcaption>
</figure>
<div dmcf-pid="XzbgzKHRcy" dmcf-ptype="general">
<br/>‘겹경사’다. 김민재는 같은 날 2023 발롱도르 시상식에서 최종 후보 30인 중 22위에 선정되는 영예를 누렸다. 지난 시즌 전 세계 축구선수 중 22번째로 좋은 활약을 펼쳤다는 의미다.
           <br/>
<br/>그는 지난해 손흥민이 세운 아시아 역대 최고 기록(발롱도르 11위)은 넘지 못했지만, 2019년 손흥민과 같은 자리에 위치했다. 아시아 출신 수비수로는 역대 최초로 최종 후보에 오른 김민재는 아시아 선수 발롱도르 순위 공동 2위에 오르면서 새 역사를 작성했다. 
           <br/>
<br/>김민재는 함께 발롱도르 후보에 오른 수비수 후벵 디아스, 요슈코 그바르디올(이상 맨체스터 시티)보다 높은 순위를 기록했다. 세계 최고의 센터백으로 인정받은 것이다. 
           <br/>
<br/>발롱도르 순위 22위에 오른 것에 이어 커리어 최초 AFC 올해의 국제선수상을 거머쥐었다. 그야말로 ‘상복’이 터졌다.
           <br/>
<br/>김희웅 기자
          </div>
</section>
</div></p></section></div><h6>[Source : 일간스포츠]</h6></div>
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