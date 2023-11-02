
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
    <h3>무인도에 갇힌 男女의 ‘솔직함’에 넷플 CEO도 빠졌다</h3><h6>백수진 기자  2023. 11. 1. 03:05</h6>
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
<section dmcf-sid="qFGoL3C2UT">
<figure class="figure_frm origin_fig" dmcf-pid="YmwQfP0guN" dmcf-ptype="figure">
<p class="link_figure"><img alt="‘솔로지옥’의 글로벌 성공 비결을 묻자 김재원 PD는 “예능 자막을 없앤 것이 신의 한 수였다”고 했다. “봉준호 감독이 1인치의 장벽만 넘으면 된다고 했지만, 번역 자막에 예능 자막까지 들어가면 2인치가 되잖아요. 예능 자막을 빼고 드라마처럼 만들어 진입 장벽을 낮추려 했죠.” /장련성 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/chosun/20231101075528478dyof.jpg" data-org-width="5000" dmcf-mid="WVk894tnFj" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/chosun/20231101075528478dyof.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ‘솔로지옥’의 글로벌 성공 비결을 묻자 김재원 PD는 “예능 자막을 없앤 것이 신의 한 수였다”고 했다. “봉준호 감독이 1인치의 장벽만 넘으면 된다고 했지만, 번역 자막에 예능 자막까지 들어가면 2인치가 되잖아요. 예능 자막을 빼고 드라마처럼 만들어 진입 장벽을 낮추려 했죠.” /장련성 기자
           </figcaption>
</figure>
<p dmcf-pid="brjBqmdYFS" dmcf-ptype="general">커플 천국 솔로 지옥. 솔로의 두려움을 자극하는 이 무시무시한 저주를 현실로 구현했다. 커플 매칭에 성공하면 함께 고급 호텔이 있는 ‘천국도’로 떠나고, 실패하면 쓸쓸히 무인도 ‘지옥도’에 남아야 한다. 넷플릭스 예능 ‘솔로지옥’은 단순한 이분법으로 전 세계를 홀렸다. 한국 예능 최초로 넷플릭스 글로벌 차트 톱10에 올랐고, 테드 서랜도스 넷플릭스 CEO도 “솔로지옥 시즌3를 기다리고 있다”며 ‘팬심’을 드러냈다.</p>
<p dmcf-pid="KCDV2ho50l" dmcf-ptype="general">뜨거운 여름 해변, 근육질의 몸을 자랑하는 남녀의 포스터부터 화제가 됐다. 그전까지 국내에서 보기 어려웠던 원초적인 연애 예능이었다. 지난 23일 만난 김재원 PD는 “젊은 세대에서 운동에 대한 관심이 높아지고, 노력해서 가꾼 몸을 거리낌 없이 자랑하기 시작하던 때였다. 운동을 키워드로 캐스팅하면 개성 있는 출연진이 나오겠다 싶었다”고 했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="9hwfVlg1uh" dmcf-ptype="figure">
<p class="link_figure"><img alt="‘솔로지옥2′의 남성 출연자들이 데이트권을 쟁취하기 위해 참호에서 격투를 벌이고 있다. /넷플릭스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/chosun/20231101030548170mqfc.jpg" data-org-width="300" dmcf-mid="uaWhC63ozY" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/chosun/20231101030548170mqfc.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            ‘솔로지옥2′의 남성 출연자들이 데이트권을 쟁취하기 위해 참호에서 격투를 벌이고 있다. /넷플릭스
           </figcaption>
</figure>
<p dmcf-pid="2IE29CLZUC" dmcf-ptype="general">소셜미디어 검색은 기본이고 길거리에서 전단까지 돌려가며 출연자를 물색했다. 시즌1의 프리지아, 시즌2의 덱스처럼 외모와 몸매는 물론, 요즘 세대가 좋아할 당당한 매력을 갖춘 출연진이 화제가 됐다. “외모뿐 아니라 특유의 개성과 분위기를 종합적으로 봤어요. 덱스씨는 제작진과 10대1로 면접을 보는 상황에서도 전혀 주눅이 들지 않더라고요. 자존감 높고 자기만의 세계가 단단한 느낌이 매력적으로 보였죠.”</p>
<p dmcf-pid="VCDV2ho57I" dmcf-ptype="general">한국에선 “핫한 예능”으로 소문이 났지만, 해외에선 의외의 반응이 나왔다. 자극적인 서양 데이팅 프로그램에 비해 예의 바르고 조신하다는 것. 글로벌 리뷰 사이트 IMDB엔 “차분하고 온화한 연애 예능””남자들이 부드럽고 신사 같다” 등의 댓글이 달렸다. 김 PD는 “의도하진 않았지만, 양면적인 프로그램이 됐다”고 했다. “한국에선 해변의 뜨거운 분위기를 색다르게 느끼고, 외국에선 수줍고 조심스럽게 서로 다가가는 모습을 신선하게 보시더라고요.”</p>
<p dmcf-pid="fhwfVlg1uO" dmcf-ptype="general">전 세계 190국에 공개되고 나니 인기 캐릭터도 나라별로 달랐단다. “나라마다 선호하는 스타일이나 성격이 다르다는 걸 다시 한번 느꼈어요. 그래서 캐스팅할 때도 가슴 털 있는 마초부터 청순한 첫사랑 이미지, 멋진 언니 스타일까지 다양하게 섞으려고 했어요.”</p>
<figure class="figure_frm origin_fig" dmcf-pid="4yIQPWcp0s" dmcf-ptype="figure">
<p class="link_figure"><img alt="'솔로지옥2'에서 수영복 차림의 남녀 출연자가 해수욕을 즐기는 모습. /넷플릭스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/chosun/20231101030549748wwxf.jpg" data-org-width="700" dmcf-mid="77DV2ho5UW" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/chosun/20231101030549748wwxf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            '솔로지옥2'에서 수영복 차림의 남녀 출연자가 해수욕을 즐기는 모습. /넷플릭스
           </figcaption>
</figure>
<p dmcf-pid="8WCxQYkUzm" dmcf-ptype="general">김 PD는 ‘솔직함’을 여러 번 강조했다. “요즘엔 ‘리얼리티’를 굉장히 깐깐하게 보시잖아요. ‘리얼’하지 않으면, 바로 외면받죠. 어떻게 하면 출연자들이 좀 더 솔직하게 본모습을 드러낼 수 있을까. 그 부분을 가장 고민하고, 제일 중요하게 생각해요.”</p>
<p dmcf-pid="6nxZXL9r7r" dmcf-ptype="general">2011년 한 종편 채널에 입사해 여행 예능, 코미디 프로그램 등을 연출했다. 의욕적으로 연출한 코미디 프로그램은 0%대 시청률이라는 씁쓸한 성적표를 받기도 했다. 그는 “장르와 플랫폼의 궁합이 중요하다는 걸 뼈저리게 느꼈다”고 했다. “코미디는 보통 5~10분 정도의 숏폼(shot form) 콘텐츠잖아요. 예전엔 시청자가 관대하게 1번부터 10번까지 끊지 않고 봐줬지만, 요즘은 유튜브에서 내가 원하는 3번, 7번만 뽑아서 봐도 되는데 굳이 숏폼을 모은 롱폼을 볼 필요가 없어진 거죠.”</p>
<p dmcf-pid="PLM5Zo2mzw" dmcf-ptype="general">방송사에서 나와 동료들과 제작사 ‘시작컴퍼니’를 설립한 것도 다양한 플랫폼과 자유롭게 협업하기 위해서였다. “방송사는 정해진 편성 시간을 채우기 위해 주변 스토리를 넣을 때도 있는데, OTT에선 중심이 되는 스토리에 집중하게 되는 것 같아요. 시청자가 궁금해 하지 않을 부분은 과감하게 걷어내 버렸죠.”</p>
<figure class="figure_frm origin_fig" dmcf-pid="QoR15gVs3D" dmcf-ptype="figure">
<p class="link_figure"><img alt="연말에 공개될 '솔로지옥3'에는 시즌2 출연자인 덱스(왼쪽에서 둘째)가 MC로 합류했다. /넷플릭스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/chosun/20231101030551155dyeg.jpg" data-org-width="720" dmcf-mid="zei03A6huy" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/chosun/20231101030551155dyeg.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            연말에 공개될 '솔로지옥3'에는 시즌2 출연자인 덱스(왼쪽에서 둘째)가 MC로 합류했다. /넷플릭스
           </figcaption>
</figure>
<p dmcf-pid="xB0DEbGM7E" dmcf-ptype="general">전기도 들어오지 않는 무인도에 세트를 짓는 것도 새로운 시도였다. “하나부터 열까지 배에 싣고 섬으로 들어가야 하기 때문에 보기보다 쉽지 않은 프로젝트였어요. 공사 자재, 방송 장비, 대형 발전기까지 들고 가 황무지 위에 마을을 만들다시피 했죠.” 그 덕분에 세상에 9명의 남녀밖에 없는 고립의 공간이 만들어졌다. “출연자가 몰입할 수 있는 공간이 중요했어요. 사방을 둘러봐도 바다뿐이고 외부와 차단돼 있으니까 선택을 받지 못하면 하늘이 무너지는 느낌이 든다더라고요. 밖에선 다들 인기 많은 분들인데(웃음)....”</p>
<p dmcf-pid="ywNqzreWFk" dmcf-ptype="general">‘솔로지옥’은 연말에 시즌3가 공개된다. 촬영과 편집을 마쳤고 190국에 공개하기 위해 자막과 더빙을 입히는 중이다. 김 PD는 “글로벌 반응은 도무지 예측할 수 없어서 철저히 한국 시청자를 우선으로 생각한다”고 했다. “시즌을 거듭할수록 ‘저렇게까지 솔직해도 되나’ 싶은 출연자들이 많아져요. 날것의 리얼리티가 점점 많아지면서 이제 솔직함이 최고의 덕목이 된 것 같아요.”</p>
</section>
</div></p></section></div><h6>[Source : 조선일보]</h6></div>
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