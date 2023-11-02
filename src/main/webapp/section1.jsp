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
  %>      
        <li class="issue_li"><a href="${cVo[i].getLink()}">
          <div class="issue_img"><img src="${cVo[i].getThumbnail()}" alt=""></div>
          <div class="issue">
            <div><h4 class="cate_p">${cVo[i].getSubcategory()}</h4></div>
            <div class="issue_title"><h3>${cVo[i].getTitle()}</h3></div>
            <p>${cVo[i].getSummary()}</p>
          </div>
          </a>
        </li>
  <% 
  i++;
  pageContext.setAttribute("i", i);
  %>       
        <li class="issue_li"><a href="${cVo[i].getLink()}">
          <div class="issue_img"><img src="${cVo[i].getThumbnail()}" alt=""></div>
          <div class="issue">
            <div><h4 class="cate_p">${cVo[i].getSubcategory()}</h4></div>
            <div class="issue_title"><h3>${cVo[i].getTitle()}</h3></div>
            <p>${cVo[i].getSummary()}</p>
          </div>
          </a>
        </li>
  <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
        <li class="issue_li"><a href="${cVo[i].getLink()}">
          <div class="issue_img"><img src="${cVo[i].getThumbnail()}" alt=""></div>
          <div class="issue">
            <div><h4 class="cate_p">${cVo[i].getSubcategory()}</h4></div>
            <div class="issue_title"><h3>${cVo[i].getTitle()}</h3></div>
            <p>${cVo[i].getSummary()}</p>
          </div>
          </a>
        </li>
  <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
        <li class="issue_li"><a href="${cVo[i].getLink()}">
          <div class="issue_img"><img src="${cVo[i].getThumbnail()}" alt=""></div>
          <div class="issue">
            <div><h4 class="cate_p">${cVo[i].getSubcategory()}</h4></div>
            <div class="issue_title"><h3>${cVo[i].getTitle()}</h3></div>
            <p>${cVo[i].getSummary()}</p>
          </div>
          </a>
        </li>
  <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
        <li class="issue_li"><a href="${cVo[i].getLink()}">
          <div class="issue_img"><img src="${cVo[i].getThumbnail()}" alt=""></div>
          <div class="issue">
            <div><h4 class="cate_p">${cVo[i].getSubcategory()}</h4></div>
            <div class="issue_title"><h3>${cVo[i].getTitle()}</h3></div>
            <p>${cVo[i].getSummary()}</p>
          </div>
          </a>
        </li>
  <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
        <li class="issue_li"><a href="${cVo[i].getLink()}">
          <div class="issue_img"><img src="${cVo[i].getThumbnail()}" alt=""></div>
          <div class="issue">
            <div><h4 class="cate_p">${cVo[i].getSubcategory()}</h4></div>
            <div class="issue_title"><h3>${cVo[i].getTitle()}</h3></div>
            <p>${cVo[i].getSummary()}</p>
          </div>
          </a>
        </li>
  <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
        <li class="issue_li"><a href="${cVo[i].getLink()}">
          <div class="issue_img"><img src="${cVo[i].getThumbnail()}" alt=""></div>
          <div class="issue">
            <div><h4 class="cate_p">${cVo[i].getSubcategory()}</h4></div>
            <div class="issue_title"><h3>${cVo[i].getTitle()}</h3></div>
            <p>${cVo[i].getSummary()}</p>
          </div>
          </a>
        </li>
  <% 
  i++;
  pageContext.setAttribute("i", i);
  %>
        <li class="issue_li"><a href="${cVo[i].getLink()}">
          <div class="issue_img"><img src="${cVo[i].getThumbnail()}" alt=""></div>
          <div class="issue">
            <div><h4 class="cate_p">${cVo[i].getSubcategory()}</h4></div>
            <div class="issue_title"><h3>${cVo[i].getTitle()}</h3></div>
            <p>${cVo[i].getSummary()}</p>
          </div>
          </a>
        </li>   
      </ul>
      <button id="load-More">뉴스레터 더보기 ↓</button>
    </div>
      <div class="newsletter">
        <div class="moning">
          <div class="style__StyledContainer-sc-2a5839c1-2 imMgqj css-0">
            <div class="style__SubscribeBannerContainer-sc-2a5839c1-7 jxSbiB css-0">
              <div class="style__SubscribeForm-sc-2a5839c1-8 iIHzBj">
              
             <script>
              	if(${loginUser.subscription} == 0){
              		var str = "<h1 class='dist__StyledText-sc-630f0a6f-12 title' font-weight='bold'>단 5분만에 뉴찐스와 더 친해지세요</h1>";
                    str += "<p class='dist__StyledText-sc-630f0a6f-12 sp'>뉴스를 즐겁게 읽을 수 있도록 매일 이메일을 받아보세요. 무료로 최신 정보와 엔터테인먼트를 받아보세요.</p>";
                    str += "<form class='dist__BaseForm-1-sc-630f0a6f-30 dist__StyledSquaredForm-1-sc-630f0a6f-38 hwjhDI kklAbF style__StyledInputWithAction-sc-2a5839c1-9 juSsIh' action='memberUpdate.do?useridfban=${loginUser.userid}' method='post' name='frm'>";
                    str += "<input type='email' placeholder='youremail@domain.com' name='email' class='dist__BaseInput-sc-630f0a6f-27 dist__StyledInput-sc-630f0a6f-28 dist__StyledSquaredInput-1-sc-630f0a6f-39 iqqrLh ddGvFv jDJMSE'>";
                    str += "<button type='submit' class='chakra-button css-u5fi7s'>구독하러 가기</button>";
                    str += "</form>";          		
              	}else{
              		var str = "<h1 class='dist__StyledText-sc-630f0a6f-12 title' font-weight='bold'>뉴찐스는 항상<br>여러분의 의견을<br>기다립니다.</h1>";
                    str += "<p class='dist__StyledText-sc-630f0a6f-12 sp'>특별히 원하는 분야의 기사가 있거나<br>뉴찐스의 발전에 도움을 주실만한 의견이<br>있으시면 아래 버튼을 눌러주세요!</p>";
                    str += "<form class='dist__BaseForm-1-sc-630f0a6f-30 dist__StyledSquaredForm-1-sc-630f0a6f-38 hwjhDI kklAbF style__StyledInputWithAction-sc-2a5839c1-9 juSsIh' action='voc.do?userid=${loginUser.userid}' method='get' name='frm'>";
                    str += "<button type='submit' class='chakra-button css-u5fi7s'>제안하러 가기</button>";
                    str += "</form>";  
              	}
				document.write(str);
			  </script>
			   
              	<!--
              		<h1 class='dist__StyledText-sc-630f0a6f-12 title' font-weight='bold'>단 5분만에 뉴찐스와 더 친해지세요</h1>
                    <p class='dist__StyledText-sc-630f0a6f-12 sp'>뉴스를 즐겁게 읽을 수 있도록 매일 이메일을 받아보세요. 무료로 최신 정보와 엔터테인먼트를 받아보세요.</p>
                    <form class='dist__BaseForm-1-sc-630f0a6f-30 dist__StyledSquaredForm-1-sc-630f0a6f-38 hwjhDI kklAbF style__StyledInputWithAction-sc-2a5839c1-9 juSsIh' action='memberUpdate.do?userid=${loginUser.userid}' method='get' name='frm'>
                    <input type='email' placeholder='youremail@domain.com' name='email' class='dist__BaseInput-sc-630f0a6f-27 dist__StyledInput-sc-630f0a6f-28 dist__StyledSquaredInput-1-sc-630f0a6f-39 iqqrLh ddGvFv jDJMSE'>
                    <button type='submit' class='chakra-button css-u5fi7s'>구독하러 가기</button>
                    </form>
				 -->
<%
//Object o_size = request.getAttribute("rowSize");
//if(${loginUser.subscription} == 0){
%>
              </div>
            </div>
          </div>
        </div>

<%
i++;
pageContext.setAttribute("i", i);
if(row_size > 25)
	row_size = 25 + 8; // 8은 위에서 이미 보여준 기사 갯수
while(i < row_size){ // 25개 기사만 보여줌
%>
        <div class="article">
          <a href = "${cVo[i].getLink()}" style="text-decoration:none; color:black;">
          <div class="image">
            <img src="${cVo[i].getThumbnail()}" alt="기사 섬네일 1">
          </div>
          <div class="arti">
              <h2>${cVo[i].getTitle()}</h2>
          </div>
          </a>
        </div>
<%
	i++;
	pageContext.setAttribute("i", i);
}
%>

        <div class="pagination">
          <a href="javascript:void(0)" id="prevPage">&laquo;</a>

<%
int total_page;
if(((row_size - 8) % 5) > 0)
	total_page = ((row_size - 8) / 5) + 1;
else
	total_page = ((row_size - 8) / 5);

int p = 1;
pageContext.setAttribute("p", p);
while(p <= total_page){
%>
          <a href="javascript:void(0)" class="page">${p}</a>
<%
	p++;
	pageContext.setAttribute("p", p);
}
%>

          <a href="javascript:void(0)" id="nextPage">&raquo;</a>
        </div>
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