<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style/main.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <title>뉴찐쓰</title>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@200;400&display=swap" rel="stylesheet">
  <style>
  	h1, h3, p{
    font-family: 'Noto Sans KR', sans-serif;
    }
  </style>

</head>
<body>
<div id="container">
	<a id="backToTop" class="scrolltop" href="">
    	<img src="image/top.png" style="width: 38px; height: 38px;">
	</a>
  <header>
      <div class="login">
        <ul class="snb">
          <li class="search-container">
            <button id="search-icon">
              <img src="image/search.svg" alt="검색 아이콘">
            </button>
            <input type="text" id="search-input" placeholder="검색어를 입력하세요">
          </li>
          <li><a href="login.do" class="snbmenu">로그인</a></li>
          <li><a href="join.do" class="snbmenu">회원가입</a></li>
        </ul>
      </div>
      <nav>
        <div class="mainLogo"> 
          <a href="main.do">
            <img src="image/logo_move.gif" alt="">
          </a>
        </div>
        <div class=" categorie">
          <ul class="cate_list">
            <li class="news_list"><a href="subject.do?subject=sports" class="news_warp"><span class="tx">스포츠</span></a>
              <ul class="spo_list">
                <li class="s_list"><a href="subcategory.do?subcategory=soccer"><p>축구</p></a></li>
                <li class="s_list"><a href="subcategory.do?subcategory=worldsoccer"><p>해외축구</p></a></li>
                <li class="s_list"><a href="subcategory.do?subcategory=baseball"><p>야구</p></a></li>
                <li class="s_list"><a href="subcategory.do?subcategory=worldbaseball"><p>해외야구</p></a></li>
                <li class="s_list"><a href="subcategory.do?subcategory=basketball"><p>농구</p></a></li>
                <li class="s_list"><a href="subcategory.do?subcategory=volleyball"><p>배구</p></a></li>
                <li class="s_list"><a href="subcategory.do?subcategory=golf"><p>골프</p></a></li>
                <li class="s_list"><a href="subcategory.do?subcategory=esports"><p>e스포츠</p></a></li>
               	<li class="s_list"><a href="subcategory.do?subcategory=general"><p>일반</p></a></li>
              </ul>
            </li>
            <li class="news_list"><a href="subject.do?subject=politics" class="news_warp"><span class="tx">정치</span></a></li>
            <li class="news_list"><a href="subject.do?subject=economic" class="news_warp"><span class="tx">경제</span></a></li>
            <li class="news_list"><a href="subject.do?subject=society" class="news_warp"><span class="tx">사회</span></a></li>
            <li class="news_list"><a href="subject.do?subject=culture" class="news_warp"><span class="tx">문화</span></a></li>
            <li class="news_list"><a href="subject.do?subject=entertainment" class="news_warp"><span class="tx">연예</span></a>
              <ul class="enter_list">
                <li class="e_list"><a href="subcategory.do?subcategory=star"><p>연예인</p></a></li>
                <li class="e_list"><a href="subcategory.do?subcategory=variety"><p>예능</p></a></li>
                <li class="e_list"><a href="subcategory.do?subcategory=music"><p>음악</p></a></li>
                <li class="e_list"><a href="subcategory.do?subcategory=drama"><p>드라마</p></a></li>
                <li class="e_list"><a href="subcategory.do?subcategory=movie"><p>영화</p></a></li>
              </ul>
            </li>
            <li class="news_list"><a href="subject.do?subject=digital" class="news_warp"><span class="tx">과학</span></a></li>
            <li class="news_list"><a href="subject.do?subject=foreign" class="news_warp"><span class="tx">국제</span></a></li>
          </ul>
        </div>
      </nav>
  </header>

  <content>
    <div class="moning">
      <div class="style__StyledContainer-sc-2a5839c1-2 imMgqj css-0">
        <div class="style__SubscribeBannerContainer-sc-2a5839c1-7 jxSbiB css-0">
          <div class="style__SubscribeForm-sc-2a5839c1-8 iIHzBj">
            <h1 class="dist__StyledText-sc-630f0a6f-12 title" font-weight="bold">단 5분만에 뉴찐스와 더 친해지세요</h1>
            <p class="dist__StyledText-sc-630f0a6f-12 sp">뉴스를 즐겁게 읽을 수 있도록 매일 이메일을 받아보세요.<br>무료로 최신 정보와 엔터테인먼트를 받아보세요.</p>
            <form class="dist__BaseForm" action='join.do' method = 'get'>
              <input type="email" placeholder="youremail@domain.com" name="email" class="mail" value="">
              <button type="submit" class="chakra-button css-u5fi7s">Subscribe</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </content>


  <% 
  int i = 0;
  pageContext.setAttribute("i", i);
  %>
  <section class = "s_1">
    <div class="store">
      <!-- <h3 class="n_store"><em>NEWS STORE</em></h3> -->
    </div>
    <div class="big_news">
      <div class="b_news_img">
        <a href="${cVo[i].getLink()}"><img src="${cVo[i].getThumbnail()}" alt=""></a>
      </div>
      <div class="b_news_text">
          <h3 class="pdname"><a href="${cVo[i].getLink()}" class="text_warp">${cVo[i].getTitle()}</a></h3>
        <p class="b_issue_text">${cVo[i].getSummary()}
          </p>
      </div>
    </div>
  <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
    <div class="small">
      <div class="small_news s_news1">
        <div class="s_news_img">
          <a href="${cVo[i].getLink()}"><img src="${cVo[i].getThumbnail()}" alt=""></a>
        </div>
        <div class="s_news_text">
          <h3 class="pdname"><a href="${cVo[i].getLink()}" class="text_warp">${cVo[i].getTitle()}</a></h3>
        </div>
      </div>
  <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
      <div class="small_news s_news2">
        <a href="${cVo[i].getLink()}"><div class="s_news_img">
          <img src="${cVo[i].getThumbnail()}" alt="">
        </div></a>
        <div class="s_news_text">
          <h3 class="pdname"><a href="${cVo[i].getLink()}" class="text_warp">${cVo[i].getTitle()}</a></h3>
        </div>
      </div>
   <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
      <div class="small_news s_news3">
      <a href="${cVo[i].getLink()}"><div class="s_news_img">
          <img src="${cVo[i].getThumbnail()}" alt="">
        </div></a>
        <div class="s_news_text">
          <h3 class="pdname"><a href="${cVo[i].getLink()}" class="text_warp">${cVo[i].getTitle()}</a></h3>
        </div>
      </div>
    <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
      <div class="small_news s_news4">
      <div class="s_news_img">
        <a href="${cVo[i].getLink()}">
          <img src="${cVo[i].getThumbnail()}" alt="">
        </a></div>
        <div class="s_news_text">
          <h3 class="pdname"><a href="${cVo[i].getLink()}" class="text_warp">${cVo[i].getTitle()}</a></h3>
        </div>
      </div>
     </div>
  </section>
   <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
  <article class="s_2">
    <div class="big_news_1">
      <div class="b_news_img1">
        <a href="${cVo[i].getLink()}"><img src="${cVo[i].getThumbnail()}" alt=""></a>
      </div>
      <div class="b_news_text1">
        <h3 class="b_nw_name"><a href="${cVo[i].getLink()}" class="text_warp">${cVo[i].getTitle()}</a></h3>
          <p>${cVo[i].getSummary()}</p>
      </div>
    </div>
    <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
    <div class="small_1">
      <div class="small_news_1 s_news4">
          <div class="s2_news_img s2_img1">
          <a href="${cVo[i].getLink()}" class="small_warp sw1">
            <img src="${cVo[i].getThumbnail()}" alt="">
          </a>
          </div>
        <div class="s2_news_text st_1">
           <a href="${cVo[i].getLink()}" class="small_warp sw1">   
            <div class="categorie_p ps1">${cVo[i].getTitle()}</div>
           </a>
        </div>
      </div>
  <%  
  i++;
  pageContext.setAttribute("i", i);
  %>
      <div class="small_news_1 s_news5">
          <div class="s2_news_img s2_img2">
            <a href="${cVo[i].getLink()}" class="small_warp sw2">
              <img src="${cVo[i].getThumbnail()}" alt="">
            </a>
          </div>
          <div class="s2_news_text st_2">
            <a href="${cVo[i].getLink()}" class="small_warp sw2">          
              <div class="categorie_p ps2">${cVo[i].getTitle()}</div>
            </a>             
          </div>
      </div>
    <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
      <div class="small_news_1 s_news6">
          <div class="s2_news_img s2_img3">
            <a href="${cVo[i].getLink()}" class="small_warp sw3">
              <img src="${cVo[i].getThumbnail()}" alt="">
            </a>
          </div>
          <div class="s2_news_text st_3">
            <a href="${cVo[i].getLink()}" class="small_warp sw3">
              <div class="categorie_p ps3">${cVo[i].getTitle()}</div>
            </a>
          </div>
      </div>
      </div>
    </article>

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
          <img src="image/logomini.png" alt="">
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

</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="script/mainscript.js"></script>
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