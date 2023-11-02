
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
    <h3>[뱁새 김용준 프로의 골프 모험] 오해 받지 않으려거든 잊지 말고 공에 마크를 하라</h3><h6>이은경  2023. 11. 1. 08:10</h6>
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
<section dmcf-sid="bnQIacPlj3">
<figure class="figure_frm origin_fig" dmcf-pid="KrNZISatoF" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=게티이미지" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101081006596mrov.jpg" data-org-width="594" dmcf-mid="zyfeKf1iaU" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101081006596mrov.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=게티이미지
           </figcaption>
</figure>
<div dmcf-pid="95TV3uv8ct" dmcf-ptype="general">
<br/>“잠정구는 몇 번인가요” 같은 조 선수가 뱁새 김용준 프로에게 물었다. “점 두 개 찍은 겁니다” 뱁새 김 프로는 답했다. 
           <br/>
<br/>잠정구를 치겠다고 선언했는데 그 선수가 굳이 공 번호까지 묻는 것이 뱁새는 마음에 걸렸다. 그 선수는 그날 시합에서 뱁새를 마크하는 마커이기는 했다. 마크와 마커에도 여러 뜻이 있다는 이야기는 이미 몇 회 전에 썼다. 혹시 궁금하거나 가물가물한 독자라면 꼭 다시 찾아보기 바란다. 
           <br/>
<br/>뱁새가 치려는 그 잠정구는 일반구역에서 친 공이 그린을 훌쩍 넘어가서 분실구가 될 우려가 있기 때문에 치는 것이었다. 일반구역은 골프 코스 내의 보통 구역을 말한다. 코스 내에서 퍼팅 그린이나 페널티구역, 벙커, 티잉구역을 뺀 나머지 전부를 말한다. 러프라도 당연히 일반구역이다. 
           <br/>
<br/>마커인 그 선수가 뱁새에게 잠정구 번호를 물은 이유는 이러했다. 
           <br/>
<br/>지난 10월 중순 제주도 타미우스에서 열린 한국시니어오픈 때였다. 뱁새는 당당히 예선을 통과해 본선에 나갔다. 예선에서 강풍을 뚫고 선전한 탓에 자신감이 넘친 채로 말이다. 
           <br/>
<br/>그런데 초가을 빠른 그린에 뱁새는 녹아 내렸다. 홀이 지날수록 점점 샷이 거칠어졌다. 그래서였을까? 그 홀에서 티샷도 왼쪽으로 확 감겼다. 숲으로 들어간 것처럼 보였다. 그래서 뱁새는 잠정구를 쳤다. 뱁새가 친 원구는 파란 점 네 개를 찍은 것이었다. 잠정구는 점 세 개를 찍었고.
           <br/>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="2GeScwRyc1" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=게티이미지" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101081007870bpjy.jpg" data-org-width="594" dmcf-mid="qjdvkreWAp" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101081007870bpjy.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=게티이미지
           </figcaption>
</figure>
<div dmcf-pid="VyxCNkQSa5" dmcf-ptype="general">
<br/>그런데 하필 잠정구도 원구와 비슷한 방향으로 날아갔다. 그래도 잠정구는 나무에 맞고 일반구역 쪽으로 튕겨 나온 것처럼 보였다. 공용 캐디를 포함한 다섯 사람 모두가 그렇게 보았다. 그래서 공을 찾으러 나섰다. 러프에 공 하나가 보였다. 당연히 잠정구라고 생각한 뱁새는 공을 확인했다. 그런데 그 공은 원구였다. 점이 네 개 찍혀 있었다. 
           <br/>
<br/>자기 공이었는데도 뱁새는 고개를 갸웃했다. 원구는 숲에서 나올 것 같지 않았는데. 잠정구는 오히려 찾을 수 없었다. 뱁새는 다행이라고 생각하면서도 한편으로 찜찜했다. 다행히 뱁새는 잠정구를 치기 전에 “원구는 점 네 개, 잠정구는 점 세 개 입니다”라고 분명하게 말했다. 같은 조 다른 선수도 틀림 없이 들었을 테고. 홀까지는 180m나 남았고 맞바람도 제법 강하게 불었다. 뱁새는 하이브리드 클럽을 들었다. 200m쯤 날리는 클럽이다. 반드시 그린에 공을 올려야 한다고 생각해서 강하게 휘두른 탓일까? 아니면 바람이 생각만큼 강하지 않았던 것일까? 찜찜해서 앞 뒤 재지 않고 두드려 팼기 때문일까? 뱁새가 친 공은 그린에 떨어지긴 했지만 한참을 더 굴러 그린 뒤로 훌쩍 넘어갔다. 캐디가 잠정구를 치고 가라고 어드바이스를 했다. 그래서 다시 한 번 잠정구를 치게 된 상황인 것이다. 
           <br/>
<br/>그런데 이 대목에서 뱁새의 마커인 선수가 잠정구 번호를 묻는다면? 그것은 뱁새가 찾은 원구가 원구가 아닐 수도 있다는 의심을 한다는 뜻이라고 뱁새는 받아들였다. 그래서 마음이 상해서 세컨샷에 대한 잠정구를 칠 때 집중을 하지 못했다. 5번 아이언으로 친 잠정구는 짧아서 그린 주변에 떨어졌다. 잠정구마저 그린에 올리지 못했으니 만약 원구(하이브리드로 친 그 공)가 아웃 오브 바운드(OB)가 난다면? 더블 보기나 트리플 보기를 할 상황에 몰린 것이다. 
           <br/>
<br/>다행히 원구는 그린 뒤 러프에 살아 있었다. 뱁새가 그 동안 갈고 닦은 어프러치 실력을 발휘해 그 공을 멋지게 핀에 붙였으면 얼마나 좋았을까? 어프러치는 짧아서 대여섯 발짝 퍼팅이 남았다. 뱁새는 퍼팅마저 허겁지겁 하는 바람에 보기로 그 홀을 마쳤다. 홀 아웃을 하고도 찝찝함이 남았다. 그래서 뱁새는 마커인 그 선수에게 설명을 했다. 오히려 궁색하게 보일까 보아 변명을 하지 말까 하는 생각도 들었다. 그러나 속으로 꿍하고 있다가는 서로 손해일 것 같아서 짚고 넘어가기로 했다. “티샷 잠정구를 칠 때 원구는 점 네 개이고 잠정구는 점 세 개라고 말했다”라고. 그는 오해를 풀었을까?
           <br/>
<br/>골프는 대자연 속에서 플레이 한다. 그러다 보니 생각하지도 못한 일이 생긴다. 골프 규칙에도 판례가 있다. 골프 규칙을 주관하는 영국왕립골프협회(R&amp;A)에는 상당히 많은 판례가 쌓여 있다고 한다. 수 십만 건에 이를 것으로 추정한다. 그런데도 하루가 멀다 하고 새로운 일이 생긴다. 그러면 어떻게 하느냐고? 골프 규칙을 어떻게 적용하면 좋을지 규칙위원회를 열어 판결한다. 
           <br/>
<br/>잠정구를 칠 때 ‘원구가 어떤 공이었는지, 잠정구는 어떤 공인지를 꼭 이야기 하도록 권장하는 것’도 바로 그런 판례를 근거로 하는 이야기이다.
           <br/>
<br/>
</div>
<figure class="figure_frm origin_fig" dmcf-pid="fWMhjExvcZ" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=게티이미지" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/ilgansports/20231101081009235tifh.jpg" data-org-width="594" dmcf-mid="Bl2EdL9rA0" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/ilgansports/20231101081009235tifh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=게티이미지
           </figcaption>
</figure>
<div dmcf-pid="4zE3vYkUgX" dmcf-ptype="general">
<br/>공에 마크를 하지 않고 플레이를 한다고 치자. 원구가 OB가 난 것 같아서(혹은 깊은 풀 속으로 들어가 로스트가 날 가능성이 있어서) 잠정구를 칠 때도 마찬가지로 마크를 하지 않고 쳤다면? 원구와 잠정구를 구분할 방법이 없는 상황인 것이다. 그런데 하필 잠정구가 원구와 비슷한 자리로 날아간다면? 뱁새가 겪은 것과 비슷한 상황이 생기게 된다. 가서 찾고 보니 공 한 개만 찾았다면? 그것을 원구로 보아야 할까? 잠정구로 보아야 할까? 아니면 혹시 그 전에 그 홀을 지나간 누군가의 공일 수도 있지 않을까? 우연히 같은 브랜드 같은 번호를 썼을 수도 있으니까? 이 경우 아주 난감해진다. 
           <br/>
<br/>공식 대회 같으면 어떻게 처리해야 하느냐고? 해당 플레이어가 친 공이라는 근거가 없으니 찾은 공도 로스트볼로 간주한다. 그나마 마크라도 했다면? 그런데 하필 원구와 잠정구에 한 마크가 같은 것이라면? 예를 들어 점을 하나만 찍는 식으로 말이다. 이럴 때 공 한 개만 찾았다면 그 공은 잠정구로 간주한다. 원구는 로스트가 났다고 친다는 이야기이다. 플레이어에게 불리하게 규칙을 적용하는 경우에 해당한다. 
           <br/>
<br/>어떤가? 뱁새가 겪은 경험과 골프 규칙을 들으니 독자도 공에 꼭 마크를 해야겠다는 생각이 들지 않는가? 그것도 분명하게 알아볼 수 있도록 말이다. 같은 번호 공을 여러 개 쓴다면 공마다 다르게 마크하는 것도 지혜롭다. 공 한 박스를 열었다면 번호를 섞어서 쓰는 것도 현명하고. 에이 아마추어가 무슨 마크냐고? 오해를 피하고 싶다면 잊지 말고 공에 반드시 마크를 해야 한다. 뱁새가 장담하는데 그래야 실력도 는다. 
           <br/>
<br/>‘뱁새’ 김용준 프로와 골프에 관해서 뭐든 나누고 싶은 얘기가 있다면 메일을 보내기 바란다. 지메일 ‘ironsmithkim’이다. 
           <br/>
<br/>김용준 KPGA 프로
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