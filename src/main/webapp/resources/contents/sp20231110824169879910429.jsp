
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
    <h3>'8번째 발롱도르' 메시, 생애 최고의 날에 극대노한 사연..."또 거짓말하네"</h3><h6>김대식 기자  2023. 11. 1. 08:24</h6>
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
<section dmcf-sid="ZVDGNkQSI5">
<div dmcf-pid="5ZxkfP0gEZ" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="609265" data-type="photo" dmcf-pid="15ME4QpaDX" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/interfootball/20231101082410546odkp.jpg" data-org-width="650" dmcf-mid="Hg06ZFI9Et" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/interfootball/20231101082410546odkp.jpg" width="658"/></p>
</figure>
<div dmcf-pid="tLYqlyA0mH" dmcf-ptype="general">
<div>
</div>
<p>[인터풋볼] 김대식 기자 = 리오넬 메시는 발롱도르의 기쁨을 충분히 즐기지도 못했다.</p>
</div>
<p dmcf-pid="FoGBSWcpsG" dmcf-ptype="general">발롱도르 주관사 '프랑스 풋볼'은 31일 오전(한국시간) 프랑스 파리에 위치한 샤틀레 극장에서 2023 발롱도르 시상식을 진행했다. 발롱도르는 최고의 활약을 펼친 선수에게 주어지는 상으로서, 선수 개인이 받을 수 있는 가장 영예로운 상이라고 평가된다.</p>
<p dmcf-pid="3gHbvYkUIY" dmcf-ptype="general">예상대로 발롱도르 포디움에는 메시와 함께 엘링 홀란(맨시티)와 킬리안 음바페(파리 생제르맹)가 올랐다. 최종 수상은 이변이 없이 메시의 몫이었다. 메시는 세 아들과 함께 시상대에 올랐다. </p>
<p dmcf-pid="0S9n7bGMIW" dmcf-ptype="general">발롱도르 수상을 개의치 않는다고 말했던 메시였지만 정작 시상대에 오르자 "이 순간을 즐기기 위해 다시 한 번 이곳에 오게 돼 기쁘다. 월드컵에서 우승하고 꿈을 이루기 위해서였다. 발롱도르는 여러 가지 이유로 특별하다"라면서 웃었다.</p>
<p dmcf-pid="pv2LzKHRDy" dmcf-ptype="general">메시는 자신을 지금의 선수로 만들어준 바르셀로나에 대한 고마움을 잊지 않았다. 메시는 "내가 가진 경력과 내가 이룬 모든 것, 역사상 최고의 팀의 일원이 될 수 있었던 행운은 상상하지도 못했다. 바르셀로나로 언젠가는 돌아가고 싶다"며 친정팀에 대한 애정도 보여줬다.</p>
<p dmcf-pid="UCTuISatIT" dmcf-ptype="general">바르셀로나로 언젠가는 돌아가고 싶다는 메시의 발언이 나온 후 스페인 현지에서 후안 라포트라 바르셀로나 회장과 메시가 만나서 선수로서가 아니더라도 바르셀로나 팬들에게 인사할 기회를 모색했다는 이야기가 나왔다. 바르셀로나 관련 소식에 능통하다고 평가받는 제라르 로메로라는 인물이 밝힌 내용이었다.</p>
<div dmcf-pid="uhy7CvNFrv" dmcf-ptype="general">
<div>
</div>
</div>
<figure class="figure_frm origin_fig" data-idxno="609266" data-type="photo" dmcf-pid="7lWzhTj3ES" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/interfootball/20231101082412050mvsy.jpg" data-org-width="650" dmcf-mid="Xp9n7bGMm1" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/interfootball/20231101082412050mvsy.jpg" width="658"/></p>
</figure>
<div dmcf-pid="zIvUOlg1wl" dmcf-ptype="general">
<div>
</div>
<p>가능할 법한 이야기에 메시가 바르셀로나로 잠시나마 돌아오는 순간을 모두가 기대했지만 이는 사실이 아니었다. 메시가 직접 개인 SNS를 통해서 반박했다. 메시는 해당 보도가 나온 SNS 게시글을 직접 캡처한 뒤 "또 한 번의 거짓말"이라는 문구와 함께 공개했다.</p>
</div>
<p dmcf-pid="qCTuISatIh" dmcf-ptype="general">메시가 직접 기사 내용을 반박한 건 매우 이례적이다. 8번째 발롱도르를 수상한 기분 좋은 날인데도 불구하고, 메시가 불만을 행동으로 옮겼다는 건 그만큼이나 불쾌했다는 징후라고 보기에 충분하다.</p>
<p dmcf-pid="Bhy7CvNFmC" dmcf-ptype="general">사진=메시 SNS</p>
</section>
</div></p></section></div><h6>[Source : 인터풋볼]</h6></div>
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