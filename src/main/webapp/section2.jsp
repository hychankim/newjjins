<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style/news_kate.css">
  <title>뉴찐스</title>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@200;400&display=swap" rel="stylesheet">
  <style>
  	h1, h3, p {
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
          <li><a href="#" onclick="location.href='memberUpdate.do?userid=${loginUser.userid}'" class="snbmenu">${loginUser.nickname}(${loginUser.userid})님</a></li>
          <li><a href="#" onclick="location.href='logout.do'" class="snbmenu">로그아웃</a></li>
        </ul>
      </div>
        <nav>
          <div class="mainLogo">
            <a href="#" onclick="location.href='login.do?userid=${loginUser.userid}'">
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
    
    <div class="keyword">

        <ul class="key">
          <li>#손흥민</li>
          <li>#동탄</li>
          <li>#빅데이터</li>
          <li>#프리미어리그</li>
          <li>#이선균</li>
        </ul>

    </div>
    
  <content>
    <div class="list_news_issue">
      <ul class="news_issue">
  <% 
  int i = 0;
  pageContext.setAttribute("i", i);
  Object o_size = request.getAttribute("rowSize");
  int row_size = Integer.parseInt(o_size.toString());
  while(i < row_size){
  %>      
        <li class="issue_li"><a href="${cVo[i].getLink()}">
          <div class="issue_img"><img src="${cVo[i].getThumbnail()}" alt=""></div>
          <div class="issue">
<!--         <div><h4 class="cate_p">${mVo[i].getSubcategory()}</h4></div> -->
            <div class="issue_title"><h3>${cVo[i].getTitle()}</h3></div>
            <p>${cVo[i].getSummary()}</p>
          </div>
          </a>
        </li>
  <% 
  	i++;
  	pageContext.setAttribute("i", i);
  }
  %>   
      </ul>
     
      <button id="load-More">뉴스레터 더보기 ↓</button>
    </div>
   </content>
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
<script src="script/news_kate.js"></script>
<script src="script/page.js"></script>
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