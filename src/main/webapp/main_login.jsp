<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="style/login_main.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <title>뉴찐쓰</title> 
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

   <content>
    <div class="moning">
      <div class="style__StyledContainer-sc-2a5839c1-2 imMgqj css-0">
        <div class="style__SubscribeBannerContainer-sc-2a5839c1-7 jxSbiB css-0">
          <div class="style__SubscribeForm-sc-2a5839c1-8 iIHzBj">
             <script>
              	if(${loginUser.subscription} == 0){
              		var str = "<h1 class='dist__StyledText-sc-630f0a6f-12 title' font-weight='bold'>단 5분만에 뉴찐스와 더 친해지세요</h1>";
                    str += "<p class='dist__StyledText-sc-630f0a6f-12 sp'>뉴스를 즐겁게 읽을 수 있도록 매일 이메일을 받아보세요. 무료로 최신 정보와 엔터테인먼트를 받아보세요.</p>";
                    str += "<form class='dist__BaseForm-1-sc-630f0a6f-30 dist__StyledSquaredForm-1-sc-630f0a6f-38 hwjhDI kklAbF style__StyledInputWithAction-sc-2a5839c1-9 juSsIh' action='memberUpdate.do?useridfban=${loginUser.userid}' method='post' name='frm'>";
                    str += "<input type='email' placeholder='youremail@domain.com' name='email' class='mail'>";
                    str += "<button type='submit' class='chakra-button_sub'>구독하러 가기</button>";
                    str += "</form>";          		
              	}else{
              		var str = "<h1 class='dist__StyledText-sc-630f0a6f-12 title' font-weight='bold'>뉴찐스는 항상 여러분의 의견을 기다립니다.</h1>";
                    str += "<p class='dist__StyledText-sc-630f0a6f-12 sp'>특별히 원하는 분야의 기사가 있거나<br>뉴찐스의 발전에 도움을 주실만한 의견이<br>있으시면 아래 버튼을 눌러주세요!</p>";
                    str += "<form class='dist__BaseForm-1-sc-630f0a6f-30 dist__StyledSquaredForm-1-sc-630f0a6f-38 hwjhDI kklAbF style__StyledInputWithAction-sc-2a5839c1-9 juSsIh' action='voc.do?userid=${loginUser.userid}' method='get' name='frm'>";
                    str += "<button type='submit' class='chakra-button css-u5fi7s'>제안하러 가기</button>";
                    str += "</form>";  
              	}
				document.write(str);
			  </script>
          </div>
        </div>
      </div>
    </div>
  </content>

	<div id="s_0">
	<div id="tabMenu">
     	<script>
			(function (status){
				var str = "";
				switch(1){
				case 1:
					if(status & 128){
           				str += "<input type='radio' id='tab1' name='tabs' checked>";
           				str += "<label for='tab1'>스포츠</label>";
					}
				case 2:
					if(status & 64){
						if(status & 128)
							str += "<input type='radio' id='tab2' name='tabs'>";
						else
							str += "<input type='radio' id='tab2' name='tabs' checked>";
           				str += "<label for='tab2'>정치</label>";
					}
				case 3:
					if(status & 32){
						if(status & 192)
							str += "<input type='radio' id='tab3' name='tabs'>";
						else
							str += "<input type='radio' id='tab3' name='tabs' checked>";
           				str += "<label for='tab3'>경제</label>";
					}
				case 4:
					if(status & 16){
						if(status & 224)
							str += "<input type='radio' id='tab4' name='tabs'>";
						else
							str += "<input type='radio' id='tab4' name='tabs' checked>";
           				str += "<label for='tab4'>사회</label>";
					}
				case 5:
					if(status & 8){
						if(status & 240)
							str += "<input type='radio' id='tab5' name='tabs'>";
						else
							str += "<input type='radio' id='tab5' name='tabs' checked>";
           				str += "<label for='tab5'>문화</label>";
					}
				case 6:
					if(status & 4){
						if(status & 248)
							str += "<input type='radio' id='tab6' name='tabs'>";
						else
							str += "<input type='radio' id='tab6' name='tabs' checked>";
           				str += "<label for='tab6'>연예</label>";
					}
				case 7:
					if(status & 2){
						if(status & 252)
							str += "<input type='radio' id='tab7' name='tabs'>";
						else
							str += "<input type='radio' id='tab7' name='tabs' checked>";
           				str += "<label for='tab7'>과학</label>";
					}
				case 8:
					if(status & 1){
						if(status & 254)
							str += "<input type='radio' id='tab8' name='tabs'>";
						else
							str += "<input type='radio' id='tab8' name='tabs' checked>";
           				str += "<label for='tab8'>국제</label>";
					}
				}
				document.write(str);
			}(${loginUser.pref_subj}));
        </script>
	<% 
	int i = 128;
	int j = 0;
	pageContext.setAttribute("i", i);
	pageContext.setAttribute("j", j);
	Object obj = request.getAttribute("prefSubj");
	int prefSubj = Integer.parseInt(obj.toString());
	pageContext.setAttribute("prefSubj", prefSubj);

	while(i >= 1){ // 전체 subject 수: 8
		int s = -1;
		j = 0;
		if((i & prefSubj) == 128) s = 0;
		else if((i & prefSubj) == 64) s = 1;
		else if((i & prefSubj) == 32) s = 2;
		else if((i & prefSubj) == 16) s = 3;
		else if((i & prefSubj) == 8) s = 4;
		else if((i & prefSubj) == 4) s = 5;
		else if((i & prefSubj) == 2) s = 6;
		else if((i & prefSubj) == 1) s = 7;
		else s = -1;
		pageContext.setAttribute("s", s);
		if(s >= 0){
	%>

	<div id="${pContVo[s][j].getSubject()}" class="tabContent">
	      <section class = "s_1">
	        <div class="store">
	          <h3 class="n_store"></h3>
	        </div>
	        <div class="big_news">
	          <div class="b_news_img">
	            <a href="${pContVo[s][j].getLink()}"><img src="${pContVo[s][j].getThumbnail()}" alt=""></a>
	          </div>
	          <div class="b_news_text">
	              <a href="${pContVo[s][j].getLink()}" class="text_warp"><h3 class="pdname">${pContVo[s][j].getTitle()}</h3></a>
	            <p class="b_issue_text">${pContVo[s][j].getSummary()}
	              </p>
	          </div>
	        </div>
	<%
		j++;
		pageContext.setAttribute("j", j);
  	%>
	        <div class="small">
	          <div class="small_news s_news1">
	            <div class="s_news_img">
	              <a href="${pContVo[s][j].getLink()}"><img src="${pContVo[s][j].getThumbnail()}" alt=""></a>
	            </div>
	            <div class="s_news_text">
	              <a href="${pContVo[s][j].getLink()}" class="text_warp"><h3 class="pdname">${pContVo[s][j].getTitle()}</h3></a>
	            </div>
	          </div>
	<%
		j++;
		pageContext.setAttribute("j", j);
  	%>
	    
	          <div class="small_news s_news2">
	            <a href="${pContVo[s][j].getLink()}"><div class="s_news_img">
	              <img src="${pContVo[s][j].getThumbnail()}" alt="">
	            </div></a>
	            <div class="s_news_text">
	              <a href="${pContVo[s][j].getLink()}" class="text_warp"><h3 class="pdname">${pContVo[s][j].getTitle()}</h3></a>
	            </div>
	          </div>
	<%
	j++;
	pageContext.setAttribute("j", j);
  	%>
	          <div class="small_news s_news3">
	          <a href="${pContVo[s][j].getLink()}"><div class="s_news_img">
	              <img src="${pContVo[s][j].getThumbnail()}" alt="">
	            </div></a>
	            <div class="s_news_text">
	              <a href="${pContVo[s][j].getLink()}" class="text_warp"><h3 class="pdname">${pContVo[s][j].getTitle()}</h3></a>
	            </div>
	          </div>
	<%
		j++;
		pageContext.setAttribute("j", j);
  	%>
	          <div class="small_news s_news4">
	            <a href="${pContVo[s][j].getLink()}"><div class="s_news_img">
	              <img src="${pContVo[s][j].getThumbnail()}" alt="">
	            </div></a>
	            <div class="s_news_text">
	              <a href="${pContVo[s][j].getLink()}" class="text_warp"><h3 class="pdname">${pContVo[s][j].getTitle()}</h3></a>
	            </div>
	          </div>
	        </div>
	      </section>
	<%
		j++;
		pageContext.setAttribute("j", j);
  	%>
	      <article class="s_2">
	        <div class="big_news_1">
	          <div class="b_news_img1">
	            <a href="${pContVo[s][j].getLink()}"><img src="${pContVo[s][j].getThumbnail()}" alt=""></a>
	          </div>
	          <div class="b_news_text1">
	            <a href="${pContVo[s][j].getLink()}" class="text_warp"><h3 class="b_nw_name">${pContVo[s][j].getTitle()}</h3></a>
	              <p>${pContVo[s][j].getSummary()}</p>
	          </div>
	        </div>
	<%
		j++;
		pageContext.setAttribute("j", j);
  	%>

	        <div class="small_1">
	         <div class="small_news_1 s_news4">
	          <a href="${pContVo[s][j].getLink()}" class="small_warp sw1">
	              <div class="s2_news_img s2_img1">
	                <img src="${pContVo[s][j].getThumbnail()}" alt="">
	              </div>
	              <div class="s2_news_text st_1">
	                <div class="categorie_p ps1">${pContVo[s][j].getTitle()}</div>
	              </div>
	            </a>
	          </div> 
	<%
		j++;
		pageContext.setAttribute("j", j);
  	%>

	          <div class="small_news_1 s_news5">
	            <a href="${pContVo[s][j].getLink()}" class="small_warp sw2">
	              <div class="s2_news_img s2_img2">
	                <img src="${pContVo[s][j].getThumbnail()}" alt="">
	              </div>
	              <div class="s2_news_text st_2">
	                <div class="categorie_p ps2">${pContVo[s][j].getTitle()}</div>
	              </div>
	            </a>
	          </div>
	<%
		j++;
		pageContext.setAttribute("j", j);
  	%>

	          <div class="small_news_1 s_news6">
	            <a href="${pContVo[s][j].getLink()}" class="small_warp sw3">
	              <div class="s2_news_img s2_img3">
	                <img src="${pContVo[s][j].getThumbnail()}" alt="">
	              </div>
	              <div class="s2_news_text st_3">
	                <div class="categorie_p ps3">${pContVo[s][j].getTitle()}</div>
	              </div>
	            </a>
	          </div>
	      </article>
	</div>
	<% 
		}
 		i = i / 2;
 		pageContext.setAttribute("i", i);
	}
	%>

	</div>
  	</div>
  	
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