
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
    <h3>“누가 당선되든… 외교 주무르는 ‘워싱턴 싱크탱크’ 공략해야” [심층기획-미국 대선 1년 앞으로]</h3><h6>홍주형  2023. 11. 1. 06:08</h6>
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
<section dmcf-sid="Br1Kc5mB7O">
<p dmcf-pid="bCp4r0hVps" dmcf-ptype="general">1년 앞으로 다가온 미국 대선은 조 바이든 현 대통령 대 도널드 트럼프 전 대통령의 ‘리턴매치’로 귀결될 전망이다. 미국 새 행정부의 외교정책이 결국 바이든의 현 동맹 중시 외교정책이 4년 더 유지될지, 아니면 4년 전 트럼프의 미국 중심 고립주의 외교정책으로 돌아갈지 둘 중 하나라는 얘기다.</p>
<div dmcf-pid="KxwW4DMTpm" dmcf-ptype="general">
           미국 대외정책 기조는 한국에 매우 큰 영향을 미친다. 외교가에서는 바이든이 재선할 경우 대체로 외교정책의 연속성이 보장된다는 점에서 남은 윤석열 대통령 임기 동안 대미 외교정책도 안정적일 것으로 본다. 반면 트럼프가 귀환한다면 외교정책이 전면적으로 변화할 가능성이 있는 만큼 충분한 준비가 필요하다는 조언이다.
           <br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="9FPaX63o7r" dmcf-ptype="figure">
<p class="link_figure"><img alt="조 바이든 미국 대통령(왼쪽), 도널드 트럼프 전 미국 대통령. AFP·AP연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/segye/20231101060853636ihub.jpg" data-org-width="600" dmcf-mid="734LYf1i0h" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/segye/20231101060853636ihub.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            조 바이든 미국 대통령(왼쪽), 도널드 트럼프 전 미국 대통령. AFP·AP연합뉴스
           </figcaption>
</figure>
<div dmcf-pid="2iC5MInXFw" dmcf-ptype="general">
            ◆동맹 우선주의냐, 미국 우선주의냐
          </div>
<p dmcf-pid="V8cS9A6h7D" dmcf-ptype="general">트럼프가 돌아오면 당장 바이든 행정부의 동맹 우선주의와는 상반된 정책들이 들어설 가능성이 크다. 신각수 전 외교부 차관은 지난 30일 세계일보와의 통화에서 “트럼프 행정부 1기에서보다 행정부 내에서 ‘트럼프표’ 정책을 견제하는 세력이 적을 것”이라고 설명했다. 워싱턴 정가에서 나오는 얘기를 종합하면 트럼프의 동맹 경시 정책을 견제했던 허버트 맥매스터 전 보좌관 등 공화당 성향의 외교 분야 당국자 다수가 자의든 타의든 트럼프의 2기 행정부에서 일하지 않을 가능성이 크다.</p>
<p dmcf-pid="f8cS9A6h0E" dmcf-ptype="general">한국엔 쉽지 않은 상황이다. 정구연 강원대 정치외교학과 교수는 “동맹의 제도화에 부정적인 트럼프 전 대통령이 (바이든 행정부 시절 만들어진) 한·미·일 3자 협력 등 제도화된 동맹에 힘을 싣지 않을 가능성이 높다”고 말했다. 워싱턴 조야에서도 비슷한 우려가 나온다. 쉴라 스미스 미국외교협회(CFR) 선임연구원은 최근 기자와 만나 “트럼프 전 대통령은 한·미·일 3자 협력에는 전혀 관심이 없었다”며 트럼프 집권 시 한·미·일 3자 협력에 변수가 생길 수 있다는 점을 언급했다.</p>
<p dmcf-pid="4BnrUibD7k" dmcf-ptype="general">방위비 분담금 인상, 주한미군 철수 가능성 제기 등 트럼프 행정부 1기에서 한국 정부를 힘들게 한 의제들이 되돌아올 가능성은 꾸준히 제기된다. 특히 방위비 분담금 5배 이상 인상을 요구했던 트럼프는 이번에도 쉽게 물러서지 않을 것으로 보인다. 트럼프의 귀환은 북한 문제에도 변수가 될 가능성이 크다. 박원곤 이화여대 북한학과 교수는 “북한은 정교한 전략을 짤 것이며 트럼프 전 대통령으로서는 (북한의 완전한 비핵화보다는) 국내에서 자신의 업적으로 선전할 수 있는 정도의 성과만 얻으면 만족할 것”이라고 전망했다.</p>
<div dmcf-pid="8JIZxOiH7c" dmcf-ptype="general">
           바이든이 재선한다면 외교정책의 연속성이라는 면에서 한국 정부에 유리한 상황이 전개될 수 있다. 다만 바이든 2기 행정부에서 있을 수 있는 변화도 생각해 봐야 한다는 조언이 나온다. 서정건 경희대 정치외교학과 교수는 “다음 행정부에서는 대만 문제가 더욱 본격화될 것이고 한·미·일 3자 협력 내에서 미·일이 대만 문제에 함께 강경해진다면 한국이 취해야 할 입장을 생각해 볼 필요가 있다”고 설명했다.
           <br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="6sF2EtOK0A" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/segye/20231101060854076kyuy.jpg" data-org-width="680" dmcf-mid="zeos7L9rpC" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/segye/20231101060854076kyuy.jpg" width="658"/></p>
</figure>
<div dmcf-pid="PesHPmdY7j" dmcf-ptype="general">
            ◆“외교정책 집단 주목해야”
          </div>
<p dmcf-pid="QaT0ivNFUN" dmcf-ptype="general">2016년 트럼프가 처음 당선됐을 당시 한국 정부에 혼란이 있었던 점은 외교가에서 공공연히 회자된다. 트럼프 당선을 예상하지 못한 것은 물론 트럼프의 주변 참모에 대한 정보도 없었기 때문이다. 트럼프 1기 행정부를 거친 현재 어느 정도의 예상은 할 수 있지만, 외교안보 분야에선 1기 행정부 인사들이 대부분 일하지 않을 가능성이 높아 2기 행정부가 들어설 경우 혼란은 피할 수 없을 것이라는 관측도 있다. 외교정책의 연속성을 보장받을 수 있는 바이든 2기 행정부를 맞는다고 해도 인플레이션감축법(IRA), 반도체과학법 등처럼 한국 정부에 어려움을 줄 수 있는 정책이 튀어나올 가능성도 배제할 수 없다.</p>
<p dmcf-pid="xcG7gYkU7a" dmcf-ptype="general">따라서 보다 중요한 것은 대통령 개인에 대한 준비뿐만 아니라 정책적 구조에 대한 준비라는 지적이다. 서정건 교수는 “공화당이든 민주당이든 의회, 싱크탱크 전문가, 언론, 로비스트, 이익집단 등 행정부의 정책 결정에 영향을 미치는 워싱턴의 외교정책 집단을 공략해야 한다”며 “이들의 성향을 파악하고 그들이 어떤 점에서 대통령과 공통된 인식을 갖고 있으며, 어떤 점은 다른지 파악하는 것이 중요하다”고 조언했다.</p>
<div dmcf-pid="y4AlKj8C3g" dmcf-ptype="general">
           트럼프 1기 행정부 당시 한·일 군사정보보호협정(GSOMIA·지소미아)에 대한 트럼프의 무관심을 돌려세운 것은 공화당 계열의 외교정책 집단이라는 것이다. 최근 헤리티지재단 등 공화당 성향의 미국 싱크탱크 보고서에 따르면 공화당 성향 외교정책 집단은 방위비 인상에는 일부 공감하지만 동맹에 대한 견해는 트럼프와 다르다.
           <br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="WKos7L9rFo" dmcf-ptype="figure">
<p class="link_figure"><img alt="미국 백악관 모습. 신화연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/segye/20231101060854224knpf.jpg" data-org-width="680" dmcf-mid="qIgOzo2m7I" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/segye/20231101060854224knpf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            미국 백악관 모습. 신화연합뉴스
           </figcaption>
</figure>
<div dmcf-pid="Y18oG4tnzL" dmcf-ptype="general">
            바이든·트럼프 두 후보 모두 재선에 도전하는 만큼 잠재적 임기가 8년이 될 수 있는 1기 행정부와 달리 이번에는 임기가 4년으로 제한된다. 대선 약 2년 후인 2026년 중간선거가 진행되는 점은 대통령의 권력을 제한하는 요인으로 외교정책 집단의 목소리를 키울 수 있다. 이와 함께 트럼프가 당선되면 특히 한·미·일 3자 협력의 안정성을 위해서라도 한·일관계가 중요하다는 조언도 나온다.
          </div>
<p dmcf-pid="G3QNZP0g7n" dmcf-ptype="general">홍주형 기자 jhh@segye.com</p>
</section>
</div></p></section></div><h6>[Source : 세계일보]</h6></div>
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