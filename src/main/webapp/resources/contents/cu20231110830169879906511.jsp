
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
    <h3>거적 쓰고 밀려났던…광화문 ‘해치’의 팔자[이기환의 Hi-story](106)</h3><h6> 2023. 11. 1. 08:30</h6>
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
<section dmcf-sid="HSUh6MujvT">
<figure class="figure_frm origin_fig" dmcf-pid="XUx0ADMTCv" dmcf-ptype="figure">
<p class="link_figure"><img alt="1870년 무렵 설치된 광화문 앞 해치(해태)상은 ‘철거 후 방치(1923)-조선총독부 앞 이전(1929)-광화문 옆 이전(1968)을 거쳐 이번에 월대 끝 양옆에 설치됐다. 그러나 이것도 제자리는 아니다. / 국립중앙박물관·동아일보·중외일보·경향신문 자료" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083023845uqav.jpg" data-org-width="600" dmcf-mid="QinjuBYxSX" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083023845uqav.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            1870년 무렵 설치된 광화문 앞 해치(해태)상은 ‘철거 후 방치(1923)-조선총독부 앞 이전(1929)-광화문 옆 이전(1968)을 거쳐 이번에 월대 끝 양옆에 설치됐다. 그러나 이것도 제자리는 아니다. / 국립중앙박물관·동아일보·중외일보·경향신문 자료
           </figcaption>
</figure>
<p dmcf-pid="ZuMpcwRyWS" dmcf-ptype="general"><br/><br/>왕범이, 해치… 아무리 봐도 동물인 것 같은데, 감이 확 와닿지는 않습니다. 동물은 맞습니다. 하지만 분명 차이는 있습니다. 왕범이는 ‘실존’이고, 해치는 ‘상상’의 동물이라는 겁니다. 같은 점도 있습니다. 이 두 ‘실존’ 및 ‘상상’의 동물이 서울의 공식 캐릭터였거나(왕범이), 현재 ‘ing’ 중(해치)이라는 사실입니다.<br/><br/>‘왕범이’는 1998년 2월에서 2008년 5월 사이 서울의 마스코트였답니다. ‘왕’ 하면 떠오르는 한국의 으뜸 도시라는 이미지를, ‘호랑이’의 순우리말인 ‘범’에 붙인 겁니다. 그런데 2008년 5월 ‘왕범이’가 상상의 동물인 ‘해치’로 전격 교체되는데요.<br/><br/>당시 오세훈 시장은 싱가포르의 머라이언, 베를린의 곰처럼 해치를 서울 하면 떠오르는 상징으로 만들겠다고 밝혔는데요.<br/><br/>‘해치’는 그러나 2011년 보궐선거에서 당선된 고(故) 박원순 시장부터 천덕꾸러기로 전락했습니다.<br/><br/>그러다 2022년 7월 복귀한 오세훈 시장이 유명무실해진 ‘해치’의 인지도를 되살리기 위해 캐릭터 재디자인 및 콘텐츠 개발용역에 착수했다는 이야기가 들렸습니다. 15년 된 ‘해치’ 캐릭터를 요즘 시대에 걸맞은 디자인으로 바꾼다는 거죠.<br/><br/></p>
<figure class="figure_frm origin_fig" dmcf-pid="5MDQWXwzhl" dmcf-ptype="figure">
<p class="link_figure"><img alt="1870년 조성된 해치상의 원위치는 최근 복원된 월대의 끝 선에서 더 남쪽으로 39.2m 전진 배치돼야 한다. 그럴 경우 지금 터놓은 도로의 한복판에 놓이게 된다. 때문에 불가피하게 월대 양끝 주변으로 이전했다. / 문화재청 제공" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083025367ccng.jpg" data-org-width="600" dmcf-mid="x7xi10hVCH" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083025367ccng.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            1870년 조성된 해치상의 원위치는 최근 복원된 월대의 끝 선에서 더 남쪽으로 39.2m 전진 배치돼야 한다. 그럴 경우 지금 터놓은 도로의 한복판에 놓이게 된다. 때문에 불가피하게 월대 양끝 주변으로 이전했다. / 문화재청 제공
           </figcaption>
</figure>
<p dmcf-pid="1RwxYZrqlh" dmcf-ptype="general"><br/><br/><strong>불완전한 복원</strong><br/><br/>며칠 전 광화문 월대와 현판의 복원이 끝나 마침내 일반에 공개됐다는 소식이 들렸습니다.<br/><br/>이로써 월대-광화문-흥례문-근정전-침전(강녕전·교태전)-후원(건청궁) 등으로 이어지는 경복궁의 중심축이 완전히 복원된 셈인데요. 그러나 광화문광장을 바라보면 한가지 ‘불완전한’ 복원의 장면과 마주칩니다.<br/><br/>광화문 앞 양쪽에 바투 서 있던 해치상이 월대 남쪽 끝 부근으로 옮겨갔는데요. 그런데 이것이 원위치가 아닙니다. 국립서울문화재연구소가 1906~1907년 독일인 헤르만 산더(1868~1945)가 찍은 광화문 사진과 그간의 월대 발굴결과 등을 토대로 디지털 이미지 분석이라는 첨단기법으로 측정했는데요. 복원된 월대 남쪽 끝에서 약 39.2m 정도 남쪽에 있었던 것으로 추정된답니다.<br/><br/>그럼 뭐가 문제입니까. 그쪽으로 이동시키면 간단하겠네요. 그게 그러나 간단치가 않습니다. 그럴 경우 해치상이 광화문 앞을 반월형으로 돌아가는 도로 한가운데에 설 수밖에 없는 겁니다. 그래서 어쩔 수 없이 해치를 월대 양쪽 끝으로 옮겨놓은 겁니다. 따지고 보면 광화문 제모습찾기 사업 중 유일하게 ‘제자리를 잃은 복원’이라는 평을 받을 만합니다.<br/><br/><strong>해치·해채·해태…<br/></strong><br/>이렇게 ‘해치’가 새롭게 단장한 광화문광장에서 하나의 아이콘으로 떠올랐는데요. 그러나 여전히 ‘해치’가 어떤 동물이고, 왜 서울의 상징이 됐는지 모르는 분이 많을 것 같네요. 그럴 수밖에 없습니다. 우선 이름부터가 해치인지, 해채인지, 해태인지 모호합니다.<br/><br/>역대의 운서(韻書·사전의 일종)에서도 다양하게 발음됐거든요. 다만 현재 중국 발음이 ‘치(zhi)’인 데다 자칫 서울의 상징이미지로 프로야구팀 이름(‘해태’)을 떠올리면 곤란하잖습니까.<br/><br/>그래서 ‘해치’라 했을 것 같아요. 하지만 옛날 신문을 찾아보면 ‘해태’는 보이지만 ‘해치’는 좀체 찾을 수가 없습니다.<br/><br/></p>
<figure class="figure_frm origin_fig" dmcf-pid="terMG5mBSC" dmcf-ptype="figure">
<p class="link_figure"><img alt="10월 15일 서울 광화문 월대 앞을 시민들이 지나가고 있다. / 연합뉴스" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083026699wffj.jpg" data-org-width="600" dmcf-mid="yfb6TGEuTG" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083026699wffj.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            10월 15일 서울 광화문 월대 앞을 시민들이 지나가고 있다. / 연합뉴스
           </figcaption>
</figure>
<p dmcf-pid="FuMpcwRySI" dmcf-ptype="general"><br/><br/><strong>사냥감에서 정의의 사도로</strong><br/><br/>그뿐이 아닙니다. 해치(혹은 해태)는 정체가 모호한 상상의 동물입니다.<br/><br/>해치가 문헌상 처음 등장하는 것은 기원전 2세기 무렵이라는데요. 중국 한나라 시대 문인인 사마상여(기원전 179~117)의 ‘상림부’에 “천자가 비렴(상나라 말 장군)을 물리치고 해치를 사로잡아 희롱한다”(&lt;사기&gt; ‘사마상여 열전’)는 내용이 나옵니다. 해치가 천자(황제)의 사냥감인 ‘실존 동물’이지, ‘상상의 동물’이 아니었다는 거죠.<br/><br/>그런데 세월이 흘러 후한(25~220)을 거치면서 ‘해치’의 성격이 완전히 바뀝니다. 즉 후한의 사상가인 왕충(27~97)의 &lt;논형&gt;(‘시응편’)은 아주 그럴듯한 고사를 소개합니다.<br/><br/>“요 임금 때 법을 관장한 고요가 옥사를 다스릴 때 해치(외뿔 양)를 앞세웠다. 해치는 죄 있는 자만 골라서 들이받았다.”<br/><br/><strong>‘해치관’을 쓴 사정기관 관리<br/></strong><br/>이때부터 해치는 옳고 그름, 즉 시비와 사정(邪正)을 판결해주는 상서로운 동물이라는 인식이 퍼졌습니다. ‘해치’ 모양의 ‘관’, 즉 ‘해치관’은 탄핵과 감찰의 임무를 전담한 사헌부 관리의 전유물이 됐습니다.<br/><br/>이 제도는 고려 말부터 조선 초에 걸쳐 도입됐답니다. 명나라 황제(태조 주원장·재위 1368~1398)가 보낸 외교문서에 따라 대사헌(종2품)과 집의(종3품) 등 사헌부 관리들은 모두 해치관을 썼답니다(&lt;세종실록&gt; 1426년 2월 26일자).<br/><br/></p>
<figure class="figure_frm origin_fig" dmcf-pid="37RUkreWlO" dmcf-ptype="figure">
<p class="link_figure"><img alt="일제는 헐어버린 해치상을 조선총독부 서편 궁장 밑에 처박아두었다. 동아일보는 거적을 뒤집어쓴 채 방치된 해치를 두고 “해태는 사람의 시비곡직을 판단하는 재주가 있어… 만조백관이 (광화문을) 출입할 때 수시로 경계하는 마음을 일으키기 위해 세웠다고 한다”고 전했다. / 동아일보" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083028337drbn.jpg" data-org-width="568" dmcf-mid="WBOyRibDTY" dmcf-mtype="image" height="auto" src="https://img4.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083028337drbn.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            일제는 헐어버린 해치상을 조선총독부 서편 궁장 밑에 처박아두었다. 동아일보는 거적을 뒤집어쓴 채 방치된 해치를 두고 “해태는 사람의 시비곡직을 판단하는 재주가 있어… 만조백관이 (광화문을) 출입할 때 수시로 경계하는 마음을 일으키기 위해 세웠다고 한다”고 전했다. / 동아일보
           </figcaption>
</figure>
<p dmcf-pid="0zeuEmdYTs" dmcf-ptype="general"><br/><br/>해치관뿐이 아니었답니다. “사헌부의 수장인 대사헌의 흉배(가슴·등에 장식한 표장)에도 ‘해치’ 무늬를 새겼다”(&lt;단종실록&gt; 1454년 12월 12일자)는 기록이 있습니다. 또 &lt;정조실록&gt;은 더욱 흥미로운 기사를 전합니다.<br/><br/>“사헌부 지평(종5품)인 이시원(1753~ 1809)이 해치관을 쓰지 않고 임금과 정사를 논하고 경전을 공부하는 경연장에 참석했다는 비난을 받아 사의를 표명했고, 결국 면직됐다”(1796년 2월 9일)<br/><br/><strong>‘해치상=하마상’인가</strong><br/><br/>그 때문일까요. 광화문 해치상에도 그럴듯한 해석이 가미됐습니다. 출퇴근하는 관리들이 ‘잘잘못을 분별하는’ 해치의 꼬리를 쓰다듬으며 선정을 다짐했다는 겁니다. 좀 이상합니다. 광화문 앞 해치상의 건립 사실을 알린 &lt;고종실록&gt; 1870년 10월 9일자를 볼까요.<br/><br/>“대궐 문에 해치를 세워 궁궐의 한계를 정했다. 조정 신하들은 그 안에서는 말을 탈 수가 없는데….”<br/><br/>광화문 앞에 해치상은 단순한 하마비였다는 거네요. 하기야 100여 년 전의 사진에는 해치상 옆에 하마비가 있습니다. 여기서부터는 궁궐이니 아무리 고관대작이라도 말에서 내려 걸어 들어오라는 뜻이죠.<br/><br/>그렇다면 광화문 앞 해치가 ‘시비곡직을 가리는 서수’의 의미는 아니었던 걸까요.<br/><br/><strong>관악산의 화기를 달래는 해치상?</strong><br/><br/>해치와 관련해 오래된 믿음이 있죠. 해치가 물을 상징하는 상상의 동물이라는 이야기죠. 따라서 경복궁에서 발생했던 잦은 화재를 잠재우려고 해치상을 세웠다는 이야기가 정설처럼 전해졌습니다.<br/><br/></p>
<figure class="figure_frm origin_fig" dmcf-pid="pfa2CvNFvm" dmcf-ptype="figure">
<p class="link_figure"><img alt="1923년 조선총독부는 조선부업품공진회를 불과 3일 앞두고 해치상을 철거했다. / (이순우·하늘재·2004)" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083029606qgwf.jpg" data-org-width="600" dmcf-mid="YcG3jExvhW" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083029606qgwf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            1923년 조선총독부는 조선부업품공진회를 불과 3일 앞두고 해치상을 철거했다. / (이순우·하늘재·2004)
           </figcaption>
</figure>
<p dmcf-pid="U4NVhTj3hr" dmcf-ptype="general"><br/><br/>그런데 &lt;고종실록&gt;이 그러한 정설을 부인하고 있네요. ‘해치상’은 그저 ‘하마비’였다고요. 아닌 게 아니라 ‘해태=물’을 상징하는 동물이라는 기록은 경복궁 중건 이전에는 어떤 문헌에도 보이지 않습니다.<br/><br/>오히려 실학자 이규경(1788~미상)의 &lt;오주연문장전산고&gt;는 “(사라진 책인) &lt;승아&gt;에 이르기를 ‘해치는 불짐승(火獸)이고 멀구슬나무 잎사귀를 먹고 청결한 것을 좋아한다’고 했다”고 전합니다. 해치가 물이 아니라 불의 짐승이라고 한 겁니다.<br/><br/>그래서 ‘해치’와 ‘관악산’ 이야기가 왜 나왔나 싶어 궁금증이 더 커졌는데요.<br/><br/>궁궐의 서수상을 연구한 김민규 문화재청 전문위원이 팁을 줘서 찾아봤더니 조선 후기 학자 박제형(생몰년 미상)이 1886년에 쓴 역사·야사집인 &lt;근세조선정감&gt;에 나오더라고요. “대원군이 경복궁에 화재가 자주 발생하는 것은 불처럼 생긴 관악산 때문이라고 여겨 돌로 물짐승 형상을 새겨 궁문 앞 양쪽에 세웠다”는 겁니다. 아마도 이 &lt;근세조선정감&gt;이 소개된 이후 ‘관악산 화기 잠재우기=해치 설치’의 이야기가 정설처럼 돌았던 것 같습니다.<br/><br/>예컨대 1923년 조선총독부가 조선부업품공진회 개막에 발맞춰 개통한 전차와 관람객의 동선에 방해가 된다면서 광화문 앞 해치상을 철거해 궁궐 안쪽에 처박아두었는데요.<br/><br/>10월 4일자 동아일보는 ‘거적에 싸여 방치된 해치상’을 고발하면서 해치상의 조성 이유를 설명합니다.<br/><br/>“경복궁 남쪽의 관악산이 화산(火山)이어서… 화재 예방을 위해 해태상 만들어 관악산을 흘겨보게 했다는….”<br/><br/>1924년 5월 20일자 조선일보는 “경성 시내에 방화 사건이 잇따르자 ‘경복궁 앞에 있던 해태를 없애버린 까닭’이라며 당국(총독부)을 격렬하게 공격하는 사람도 있었다”고 전합니다. 우여곡절 끝에 해치상은 1929년 11월 29일 조선총독부 건물(중앙청) 뜰 앞으로 옮겨졌는데요.<br/><br/>최근까지 광화문 담장 밑에 바투 붙은 채로 서 있는 옹색한 해치상은 1968년 12월 광화문 복원 때 재이전한 겁니다.<br/><br/><strong>광화문 해치상, 귀가 붙은 이유</strong><br/><br/>이처럼 광화문 해치상의 정체를 파악하기가 힘들죠. 이름도 해치, 해채, 해태 등으로 모호하고, 그 의미도 ‘사냥감-시비곡직을 가리는 서수-하마비-화기를 억누르는 물짐승’ 등으로 계속 바뀝니다. 물론 의미를 찾는 연구자들도 있습니다. 아까 인용했지만 해치는 ‘해치=외뿔짐승(一角獸)’으로 표현돼 있답니다. 그중에서도 신양(神羊·신령스러운 양)이 주목된다는데요. 황성신문 1899년 2월 25일자를 볼까요. “해치(해치)라는 짐승은… 신양(神羊)이라… ‘바른 사람(正人)’을 보면 귀를 붙이고 허리를 공손히 굽히고 ‘사악한 자(邪人)’를 만나면 뿔을 세우고 치받으니… 이리하여 우리 서울 황궁의 좌우성에 조성한지라.”<br/><br/>가만 보니 지금 광화문에 우뚝 서 있는 해치상은 두 귀가 밀착돼 붙어 있습니다. 그것이 황성신문이 언급한, 바른 사람을 보면 ‘귀를 붙이고 허리를 공손히 굽힌다(貼耳馴服)’는 뜻 아니겠습니까.<br/><br/></p>
<figure class="figure_frm origin_fig" dmcf-pid="uQk6TGEuSw" dmcf-ptype="figure">
<p class="link_figure"><img alt="조선 중기 이중로 초상화의 해치는 머리 중앙의 뿔과 돌출된 주둥이, 뭉툭한 코, 온몸을 덮고 있는 금색 비늘 등 전통적인 해치 형상을 충실하게 모방해 제작됐다. / 이성준의 논문" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083030822ecfo.jpg" data-org-width="600" dmcf-mid="GhjflyA0yy" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/weeklykh/20231101083030822ecfo.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            조선 중기 이중로 초상화의 해치는 머리 중앙의 뿔과 돌출된 주둥이, 뭉툭한 코, 온몸을 덮고 있는 금색 비늘 등 전통적인 해치 형상을 충실하게 모방해 제작됐다. / 이성준의 논문
           </figcaption>
</figure>
<p dmcf-pid="7xEPyHD7hD" dmcf-ptype="general"><br/><br/>이 해치상을 설계한 이는 이세욱으로 알려져 있는데요. 조선일보(1934년 1월 1일자)와 &lt;경성기략&gt;(권4 ‘경복궁 중건’), ‘별건곤’(1929년 9월호) 등 당대의 자료는 “광화문 밖 쌍해치는 대원군의 지시를 받은 석공(혹은 근세미술사가) 이세욱의 작품”이라고 지목했습니다. 이세욱(옥)은 화가 출신의 조각가이며, 궁궐의 석물 제작에 여러 차례 감독한 인물로 문헌자료에 등장합니다.<br/><br/><strong>해치는 신령스러운 양?</strong><br/><br/>연구자들은 &lt;고종실록&gt;에 기록된 것처럼 ‘해치상=하마비’로 단순하게 보지는 않는 것 같아요.<br/><br/>광화문 해치상에 주목하라는 건데요. 뿔이 퇴화된 감을 주죠. 원래 해치상은 17세기 이전까지는 중국처럼 뿔 달린 짐승으로 나오지만 이후 해치와 사자를 결합하는 과도기를 거쳐 뿔이 점차 사라진다는군요. 그러다가 1867~1870년 완성된 광화문 해치상을 기점으로 중국과는 다른 독창적인 모습이 정립됐다는 겁니다. 이를테면 사자의 몸을 갖고 있는 신양(神羊)의 형태로요. 그런 모습은 중국에는 없답니다. 그래서 연구자 중에는 조선 후기의 소중화 사상을 따라 조선만의 고유한 색채를 발현한 것일 수 있다고 평가하기도 하고요.<br/><br/>또한 왕권을 강화하겠다는 흥선대원군의 의지가 표출된 상징물이었다는 해석도 있답니다. 시비와 선악을 판단하는 해치의 속성을 통해 다시는 세도정치를 용납하지 않겠다는 의지를 해치상을 통해 발현하려 했다는 겁니다. 물론 이 또한 그럴듯한 추정일 뿐이죠.<br/><br/><strong>포토존이 된 해치상</strong><br/><br/>해치상과 관련해 이야기를 풀어봤는데요. 저는 해치가 서울을 대표하는 공식 마스코트로 적당한지 여전히 납득이 되지 않습니다. 누차 말씀드리지만, 명칭조차 통일되지 않았고요. 그 동물의 정체성 또한 분명하지 않잖습니까. 선악과 시비를 가리는 동물이라고요?<br/><br/>그렇다 해도 검·경찰청, 법원, 감사원 같은 사정당국이라면 몰라도, 서울의 상징 동물로는 어울리지 않습니다. 그런데 제 생각과 달리 요즘 재미있는 기현상이 벌어지고 있더군요. 해치상이 앞쪽으로 전진 배치되자(물론 원위치는 아니지만) 일약 ‘인기 포토존’으로 부각됐다고 하더군요. 해치상을 배경으로 사진 한 장 찍으려면 ‘줄을 서시오’를 외쳐야 한다네요. 그러니 저처럼 딴죽을 걸고 문제를 제기해봐야 소용없습니다. 시민들이 좋아하면 그뿐인 거죠.<br/><br/>따지고 보면 역사성·상징성·진정성 뭐 이런 것도 시민들이 만들어가는 것 아니겠습니까. 그러니 성격이 ‘사냥감-시비곡직을 가리는 서수-하마비-물짐승’에서 다시 바뀌겠네요. ‘사진모델’로요.<br/><br/>다만 그런 생각은 듭디다. 서울시가 ‘해치’를 진정으로 서울 시민의 마스코트로 정착시키려면 단편적인 홍보로 그쳐서는 안 됩니다. 최소한 ‘왕범이’가 왜 ‘해치’로 바뀌었는지는 설명이 필요하고요. 또 지금 광화문 해치상을 찾는 이들에게 사진을 찍어야 할 이유는 말해줘야 하지 않겠습니까.<br/><br/>이기환 역사 스토리텔러 Ikh0745@naver.com </p>
</section>
</div></p></section></div><h6>[Source : 주간경향]</h6></div>
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