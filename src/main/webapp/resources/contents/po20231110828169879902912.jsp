
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
    <h3>웃으며 인사했지만, 밖에선 피켓시위...대치 이어지나? [띵동 정국배달]</h3><h6>김대근  2023. 11. 1. 08:28</h6>
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
<section dmcf-sid="fxdZLN4IJm">
<div class="video_frm" dmcf-pid="453juBYxir" dmcf-ptype="kakaotv">
<div class="layer_vod">
<div class="vod_player">
<iframe allowfullscreen="" class="player_iframe" dmcf-mid="2dGNUqWQLO" dmcf-mtype="video/kakaotv/owner" dmcf-poster-mid="VWzwKf1iis" frameborder="0" height="370" id="video@2dGNUqWQLO" poster="https://t1.daumcdn.net/news/202311/01/YTN/20231101082816465lhfo.jpg" scrolling="no" src="//tv.kakao.com/embed/player/cliplink/442138226?service=daum_news&amp;m_use_inline=true&amp;ios_allow_inline=true&amp;m_prevent_sdk_use=true&amp;wmode=opaque" width="100%"></iframe>
</div>
</div>
</div>
<p dmcf-pid="810A7bGMdw" dmcf-ptype="general">어제 윤석열 대통령이 어제 국회에서 내년도 정부 예산안에 대한 시정연설을 하는 모습입니다. </p>
<p dmcf-pid="6Uqr94tndD" dmcf-ptype="general">윤 대통령과 민주당 이재명 대표가 첫 소통에 나선 가운데 시정연설 풍경도 이전과 달랐습니다. </p>
<p dmcf-pid="PEm2CvNFME" dmcf-ptype="general">어제 현장으로 가보시죠. </p>
<p dmcf-pid="QrI4SWcpMk" dmcf-ptype="general">윤석열 대통령이 국회 본회의장에 들어오는데요. </p>
<p dmcf-pid="x10A7bGMic" dmcf-ptype="general">앞서 환담회장에서 만났던 이재명 대표와 다시 한 번 인사를 나눕니다. </p>
<p dmcf-pid="yADbsho5RA" dmcf-ptype="general">또 야당 의원들에게 악수를 청합니다. </p>
<p dmcf-pid="WPRHigVsJj" dmcf-ptype="general">이재명 당대표 비서실장인 천준호 의원은 정면만 응시하며 악수를 거부했지만 대부분 의원들은 대통령과 악수를 나눴습니다. </p>
<p dmcf-pid="YbVh6MujnN" dmcf-ptype="general">이렇게 윤 대통령과 야당 의원들이 악수를 나누는 모습에 국민의힘 의원들은 기립박수를 보냈습니다. </p>
<p dmcf-pid="GYZLFUS4ia" dmcf-ptype="general">윤 대통령은 보통 여야 순으로 호명하는 관례를 깨고 민주당과 정의당, 국민의힘 순으로 대표들을 호명하며 시정연설을 시작했는데요. </p>
<p dmcf-pid="HentacPlLg" dmcf-ptype="general">[윤석열 / 대통령 : 존경하는 국민 여러분. 김진표 국회의장님. 김영주·정우택 부의장님. 또 함께해주신 이재명 더불어민주당 대표님. 이정미 정의당 대표님. 김기현 국민의힘 대표님…] </p>
<p dmcf-pid="XdLFNkQSeo" dmcf-ptype="general">대통령 시정연설에서 여당 의원들은 30번 박수를 보냈고요. </p>
<p dmcf-pid="Zsh6TGEuRL" dmcf-ptype="general">야당 의원들은 침묵을 지켰습니다. </p>
<p dmcf-pid="5DntacPlMn" dmcf-ptype="general">이런 가운데 민주당 김용민 의원은 대통령에게 이제 그만두라고 촉구하고, 진보당 강성희 의원은 '줄일 건 예산이 아니라 대통령 임기'라고 적힌 피켓을 들고 항의하기도 했지만, </p>
<p dmcf-pid="1cdZLN4IJi" dmcf-ptype="general">시정 연설을 아예 보이콧했던 이전과는 다른 모습이죠. </p>
<p dmcf-pid="tyr9ISatLJ" dmcf-ptype="general">대통령 시정연설 도중에 고성과 야유 등을 하지 않기로 한 신사협정에 따른 건데요. </p>
<p dmcf-pid="Fro3jExvRd" dmcf-ptype="general">대신 본회의장 앞에서는 침묵 시위를 벌였습니다. </p>
<p dmcf-pid="3XC8vYkURe" dmcf-ptype="general">국정 기조 전환을 요구하는 피켓을 든 민주당 의원들이 본회의장 앞에 섰습니다. </p>
<p dmcf-pid="0DntacPlRR" dmcf-ptype="general">한동훈 법무부장관이 지나가자 야유를 보냈고요. </p>
<p dmcf-pid="ptvxYZrqMM" dmcf-ptype="general">"어디로 들어오려고! 뒷문으로 들어오라고!" </p>
<p dmcf-pid="UFTMG5mBnx" dmcf-ptype="general">국회에 도착한 윤 대통령이 멈추지 않고 지나치자 고성이 터져 나오기도 했는데요. </p>
<p dmcf-pid="uTwKOlg1JQ" dmcf-ptype="general">"가운데 가리지마세요!" </p>
<p dmcf-pid="73yRH1sbJP" dmcf-ptype="general">"윤석열 대통령님 여기한번 보고가세요!" </p>
<p dmcf-pid="z5lPyHD7d6" dmcf-ptype="general">"보고가!" </p>
<p dmcf-pid="qxbsV63od8" dmcf-ptype="general">대통령의 시정연설에 대해서도 국민의힘은 친서민 예산 기조가 잘 설명됐다고 평가했지만 </p>
<p dmcf-pid="BZh6TGEuR4" dmcf-ptype="general">민주당은 맹탕, 자화자찬이라며 혹평하고 엄격한 예산 심사를 예고하며 공세를 이어갔습니다. </p>
<p dmcf-pid="bjRHigVsJf" dmcf-ptype="general">[김기현 / 국민의힘 대표 : 불필요한 예산의 낭비를 줄이고 그 재원을 잘 활용해서 약자 복지를 더 촘촘하고 더 두텁게 하겠다는 것이 아주 분야별로 잘 드러난 것으로 봅니다.] </p>
<p dmcf-pid="Kn8vxdqkMV" dmcf-ptype="general">[홍익표 / 더불어민주당 원내대표 : 대통령의 시정연설은 전체적으로 저희들한테는 매우 실망스럽고 한계가 있었다, 이렇게 보입니다. 올해 시정연설에서는 미래를 대비한 예산이 없다, R&amp;D 예산이 삭감됐고, 기후위기나 인구구조 변화에 따른 뚜렷한 그런 것을 대비한 예산안이 충분히 담겨 있지 않았다는 점에서 미래를 준비하지 못한 예산이다….] </p>
<p dmcf-pid="9n8vxdqkM2" dmcf-ptype="general">윤 대통령과 민주당 이재명 대표가 첫 대화를 나눴지만 정부·여당과 민주당 사이 긴장감은 여전한데요. </p>
<p dmcf-pid="2L6TMJBER9" dmcf-ptype="general">대통령 시정연설로 본격적인 예산안 심사가 시작된 가운데 여야가 강 대 강 대치를 이어갈지 주목됩니다. </p>
<p dmcf-pid="VYsVhTj3dK" dmcf-ptype="general">지금까지 정국브리핑이었습니다. </p>
<p dmcf-pid="flkqrInXRb" dmcf-ptype="general">YTN 김대근 (kimdaegeun@ytn.co.kr)</p>
<p dmcf-pid="4vDbsho5iB" dmcf-ptype="general">※ '당신의 제보가 뉴스가 됩니다' </p>
<p dmcf-pid="8wLFNkQSiq" dmcf-ptype="general">[카카오톡] YTN 검색해 채널 추가 </p>
<p dmcf-pid="6MKOfP0gLz" dmcf-ptype="general">[전화] 02-398-8585 </p>
<p dmcf-pid="Pq5o3uv8J7" dmcf-ptype="general">[메일] social@ytn.co.kr</p>
<p dmcf-pid="Qi4SQezcdu" dmcf-ptype="general">[저작권자(c) YTN 무단전재, 재배포 및 AI 데이터 활용 금지]</p>
</section>
</div></p></section></div><h6>[Source : YTN]</h6></div>
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