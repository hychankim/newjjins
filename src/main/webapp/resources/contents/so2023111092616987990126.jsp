
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
    <h3>[최강시사] 조희연 “서울 ‘도시형 캠퍼스’ 추진…주교 복합도 가능”</h3><h6>KBS  2023. 11. 1. 09:26</h6>
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
<section dmcf-sid="XRgqyHD7C9">
<figure class="figure_frm origin_fig" dmcf-pid="ZVMtsho5lK" dmcf-ptype="figure">
<p class="link_figure"><img class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/kbs/20231101092621669jxrb.jpg" data-org-width="640" dmcf-mid="YBlzTGEuCf" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/kbs/20231101092621669jxrb.jpg" width="658"/></p>
</figure>
<p dmcf-pid="5fRFOlg1yb" dmcf-ptype="general"><strong>- 서울도 학생 수 감소로 폐교 위기 학교 많아...전체 12%<br/>- 인구 밀집 지역은 ‘과밀 학교’ 문제...불균형 해소해야<br/>- ‘도시형 캠퍼스’ 추진..통폐합 학교를 소규모 캠퍼스로 유지<br/>- 교장·행정실장 없는 분교 형태, 교육과정 불이익 없게 운영<br/>- 도시형 캠퍼스 운영하면 ‘주거-교육 복합 학교’도 가능<br/>- 학생인권조례 폐지? 과거로 가지 말고 공동체형 학교 만들어야<br/><br/>■ 인터뷰 자료의 저작권은 KBS 라디오에 있습니다. <br/> 인용보도 시 &lt;최강시사&gt; 출처를 밝혀주시기 바랍니다.<br/>■ 프로그램명 : 최강시사<br/>■ 방송시간 : 11월 1일(수) 07:20-08:57 KBS1R FM 97.3 MHz<br/>■ 진행 : 김기화 KBS 기자 <br/>■ 출연 : 조희연 서울시교육감</strong></p>
<div class="video_frm" dmcf-pid="15uOJo2myB" dmcf-ptype="embed">
<div class="layer_vod">
<div class="vod_player">
<iframe allowfullscreen="" class="player_iframe" dmcf-mid="GtviB2ZdyV" dmcf-mtype="video/youtube" frameborder="0" height="370" id="video@GtviB2ZdyV" scrolling="no" src="https://www.youtube.com/embed/yqwugJa3HUE?origin=https://v.daum.net&amp;enablejsapi=1&amp;playsinline=1" width="100%"></iframe>
</div>
</div>
</div>
<p dmcf-pid="t17IigVsSq" dmcf-ptype="general"><br/>▷ 김기화 : 저출생으로 학생 숫자가 크게 줄었죠. 그러다 보니까 폐교 위기에 놓인 학교도 늘고 있다고 하는데 폐교 위기가 낙후된 지방에 있는 학교에게 해당하는 줄만 알았는데 서울도 폐교 문제가 심각하다고 합니다. 해결 방안이 나왔다는데요. 조희연 서울시교육감 연결해서 자세한 얘기 들어보도록 하겠습니다. 교육감님 안녕하세요? </p>
<p dmcf-pid="FtzCnafOyz" dmcf-ptype="general">▶ 조희연 : 안녕하세요? </p>
<p dmcf-pid="3gD410hVC7" dmcf-ptype="general">▷ 김기화 : 교육감님 제가 폐교 얘기는 진짜로 지방 얘기로만 알고 있었는데 지방 소멸 이슈와 관련해서. 서울에도 이런 폐교하는 학교가 있나요? </p>
<p dmcf-pid="0aw8tplfSu" dmcf-ptype="general">▶ 조희연 : 네. 그러니까 이제 사실 지방에는 꽤 광범위하게 폐교가 나왔고요. 서울은 몇 개 정도 한두 개. 두세 개 정도 수준에 있었습니다. 그런데 이제 최근에는 조금 더 학생 수가 인구 수 감소, 학생 수 감소. 그래서 이제 폐교 위기에 처하는 학교들이 많습니다. 그러니까 저희가 이제 기준으로 보면 올해 기준으로 보면 한 300명 정도 이하가 되면 소규모 학교가 됩니다. </p>
<p dmcf-pid="pNr6FUS4lU" dmcf-ptype="general">▷ 김기화 : 전교생이요? </p>
<p dmcf-pid="UT5c6MujCp" dmcf-ptype="general">▶ 조희연 : 네. 그러니까 저희가 1,300여 개 학교가 있는데 거기에 약 한 12% 정도가 300명 이하 학교입니다. 물론 300명 이하가 된다고 해서 바로 폐교하지는 않습니다. 저희 같은 경우에 초등학교는 소규모 학교는 저희가 9개 정도를 정해서 말하자면 학교를 유지시키기 위한 지원 정책도 펴는데요. 문제는 한쪽에서는 폐교 위기에 처할 정도로 학생 수가 감소하는 학교가 있는 반면에 저쪽 강동이라든가 이렇게 대규모 개발이 이루어지는 데에서는 또 이제 학교를 만들어야죠. </p>
<p dmcf-pid="uy1kPR7AT0" dmcf-ptype="general">▷ 김기화 : 기존 학교에서는 감당 안 될 만큼 인구 수가 늘어난 지역이 있다는 말씀이신 거죠? </p>
<p dmcf-pid="7WtEQezch3" dmcf-ptype="general">▶ 조희연 : 그러니까 대규모 재개발을 하게 되면 인구가 유입이 되지 않습니까? 그래서 이제 학급당 학생 수가 보통 28명 이상이면 과밀 학급이라고 합니다. </p>
<p dmcf-pid="zSozTGEuvF" dmcf-ptype="general">▷ 김기화 : 28명.</p>
<p dmcf-pid="qvgqyHD7Tt" dmcf-ptype="general">▶ 조희연 : 28명 정도가 되면 교육부 기준으로 28명 정도가 되는데 한 19% 정도가. 그러니까 한쪽에서는 한 12% 정도가 300명 이하가 있는 반면에 또 한쪽에서는 과밀 학급으로 어려움이 있는 학교가 또 19% 정도가 있는 거고 또 이제 여기에 개념이 조금 많아서 그렇습니다만 과대 학교가 있습니다. 학생 수가 많은 데. 그래서 중, 고등학교는 한 1,200명 정도 되고 초등학교는 한 1,500명 정도가 되면 과대 학교라고 하는데 그것도 한 36교가 있습니다. </p>
<p dmcf-pid="BTaBWXwzv1" dmcf-ptype="general">▷ 김기화 : 과밀학교랑 과대학교랑 어떻게 다른지 설명해주시겠습니까? </p>
<p dmcf-pid="blL7vYkUT5" dmcf-ptype="general">▶ 조희연 : 그러니까 이제 과밀은 과밀이니까 학급에 학생 수가 너무 많은 거죠. 서울에는 한 15명에서 그러니까 35명까지 있습니다. 강남의 일부 학교 같은 경우 35명 정도까지 가니까 학부모님들이 원성이 자자하시죠 어떻게 보면. 그래서 이렇게 불균형이 발생하는 겁니다. 그러나 어쨌든 한쪽에서는 통폐합의 위기에 직면하는 학교를 없애야 하는 상황에 내몰리고 있는 상황입니다. </p>
<p dmcf-pid="KSozTGEuCZ" dmcf-ptype="general">▷ 김기화 : 이런 균형이 안 맞는 상황을 어떻게 타개를 하려고 해결 방안을 이번에 새로 내놓으셨다는데 설명 좀 부탁드리겠습니다. </p>
<p dmcf-pid="9vgqyHD7SX" dmcf-ptype="general">▶ 조희연 : 그게 이제 어떻게 보면 이런 현상은 위기이기도 하잖아요. 그렇지만 저희 입장에서는 적극적인 응전이 필요한 지점이 있어서 굳이 얘기를 하면 농촌에 가면 농촌 분교가 있습니다. </p>
<p dmcf-pid="2TaBWXwzCH" dmcf-ptype="general">▷ 김기화 : 분교요? </p>
<p dmcf-pid="VuldzKHRTG" dmcf-ptype="general">▶ 조희연 : 네. 학생수 10명도 안 되는 데도 있고 이렇게 작은 학교들이 있는데 도시형 분교라고 생각하면 됩니다. </p>
<p dmcf-pid="f7SJq9XelY" dmcf-ptype="general">▷ 김기화 : 도시형 분교. 이게 어떤 메인 학교의 서브 학교 같은 이런 분교 그런 개념이죠? </p>
<p dmcf-pid="4zviB2ZdhW" dmcf-ptype="general">▶ 조희연 : 그렇습니다. 그래서 저희는 도시형 캠퍼스다. 대학에는 이게 제2캠퍼스 이렇게 있지 않습니까? 그런 의미의 도시형 캠퍼스 학교다. 이렇게 이제 명칭을 해서 저희가 이제 예를 들면 학생 수가 적어져서 통폐합으로 가는 학교. 일종의 개편을 해서 소규모 캠퍼스로 유지하는 개편형이 있고요. 다른 한편에서 대규모 개발을 하는데 대개 이제 학교를 일종의 온 학교(정규학교)를 만들어달라고 요청이 많아요 학부모는. 초품아라는 말도 있지 않습니까? 초등학교를 품은 아파트가 아파트 값도 비싸고 어떻게 보면. 학부모들이 안전하니까 가까이 갈 수 있잖아요. 그래서 이제 그 요구가 많은데 학생을 학교를 만들 정도는 안 됩니다. </p>
<p dmcf-pid="8ZD410hVCy" dmcf-ptype="general">▷ 김기화 : 그 옆에 새로 하나 짓기에는 애매하고.</p>
<p dmcf-pid="65w8tplfhT" dmcf-ptype="general">▶ 조희연 : 그렇습니다. 중간 단계로 신설형 도시형 캠퍼스 학교를 이렇게 만드는. 그러니까 통폐합 되어 가는 학교에서 말하자면 축소가 되는 과정의 개편형. 그래도 학교를 유지하려는 도시형 캠퍼스 학교가 있고 또 학교를 만들 정도는 아니지만.</p>
<p dmcf-pid="P1r6FUS4Tv" dmcf-ptype="general">▷ 김기화 : 교육감님 그러면 이렇게 이해하면 될까요? 과밀학교나 과대학교 근처에 있는 300명 이하의 폐교 위기에 놓인 학교를 분교로 삼아서 두 학교를 분교 시스템으로 과밀학교나 과대학교에 있는 학생들을 그쪽으로 좀 다니게 만든다는 그런 개념인가요? </p>
<p dmcf-pid="QVXj4QpavS" dmcf-ptype="general">▶ 조희연 : 뭐 이제 과밀을 바로 분산해서 만드는 경우는 많지 않겠지만 그래도 지금 말씀하신 게 큰 틀에서 맞습니다. 그러니까 통폐합이 되는데 말하자면 학생 수가 없는데 저희 입장에서 어떻게든지 학교를 유지하려는 입장에서 만들어지는 거고요. 큰 학교를 만들지는 못하죠. 온 학교는 못 만들지만 그래도 가까이에서 그러니까 이렇게 생각하시면 될 것 같습니다. 초등학교 1, 2, 3학년만 있는 데가 있을 수도 있고요. 100명도 안 되는 소규모 캠퍼스도 있을 수 있고. </p>
<p dmcf-pid="xfZA8xUNyl" dmcf-ptype="general">▷ 김기화 : 딱 들었을 때 기존에 다니던 학교가 과밀이거나 과대인 경우에 그러면 근처에 있는 분교로 가야 하는데 일단 통학버스라도 어떻게 대주는 건가요? 대책 같은 게 많이 필요할 것 같은데요? </p>
<p dmcf-pid="yCiUlyA0yh" dmcf-ptype="general">▶ 조희연 : 그런 부분들은. 그러니까 이제 이렇게 생각하시면 될 것 같습니다. 그러니까 과밀이 되면 바로 분리해서 소규모 제2캠퍼스를 만든다 이런 개념. 이런 경우는 물론 생각해볼 수 있는데 상대적으로 적고요. 그래서 이제 학교를 만들지는 못하지만 너무 이제 원거리에 갑니다. </p>
<p dmcf-pid="WnBloj8CWC" dmcf-ptype="general">▷ 김기화 : 그럴 것 같아요 .</p>
<p dmcf-pid="YLbSgA6hSI" dmcf-ptype="general">▶ 조희연 : 예를 들면 초등학교 1km 된다고 그러면 20분 걸리거든요. 그런 경우에는 예를 들면 초등학교 저학년은 특히 위험하잖아요. 그러면 초등학교 1, 2, 3학년만 있는 소규모 캠퍼스를 만들어서 이렇게 하는데 이제 그게 이렇게 생각하시면 될 것 같아요. 농촌의 분교를 보면 교장선생님하고 행정실장만 없고. 통합관리를 하고 나머지는 시설은 다 있다고 생각하시면 돼요. </p>
<p dmcf-pid="GoKvacPlSO" dmcf-ptype="general">▷ 김기화 : 그러니까 본부 같은 데는 이제 본교에 두고 이제 교사나 관리하는 직원 분들만 추가로 둬서 분교를 운영한단 말씀이시죠? </p>
<p dmcf-pid="HyNbYZrqSs" dmcf-ptype="general">▶ 조희연 : 100명 이하의 학교. 예를 들면 농촌 분교도 100명 이하의 학생 20명 있는 학생도 다 있어야 하잖아요. 급식실도 있어야 하고 체육 시설도 있어야 하고 해서 어떻게 보면 교감선생님이 있다고 생각하시면 될 것 같아요. </p>
<p dmcf-pid="XWjKG5mBCm" dmcf-ptype="general">▷ 김기화 : 그런데 이거 딱 들었을 때 확실히 이거 무슨 말씀인지 알겠는데 예산은 어떻게 이제 확보를 하실 건지 그것도 걱정이 되는데요. </p>
<p dmcf-pid="ZYA9H1sbhr" dmcf-ptype="general">▶ 조희연 : 그렇습니다. 이제 아무래도 예산이 드는 거죠. 단지 이제 한 단일 전체 온 학교를 운영할 정도보다는 예산이 적게 들지만 들 건 다 드는 거죠. 교장선생님과 행정실장만 없고 학생들이 받아야 할 교육과정의 불이익은 없어야 하니까요. 그런데 저희는 약간 더 특화된 교육 과정 같은 거, 예체능이라든지 이렇게 좀 특화된 교육 과정도 운영해서. 물론 아까 스쿨버스 말씀도 하셨습니다만 뭐 전체 운동회를 한다. 그러면 스쿨버스로 이렇게 이동을 해서 할 수도 있는데 많은 경우는 일단 거기에서 그 자체로 충분한 불편함이 없는 교육을 받을 수 있도록 해야 한다, 하려고 한다. 저희가 그런 입장입니다. </p>
<p dmcf-pid="5se3ISatlw" dmcf-ptype="general">▷ 김기화 : 혹시 학부모님들 여론 같은 건 좀 수렴을 해 보셨나요? 아니면 지금 처음으로 말씀하시는 거예요? </p>
<p dmcf-pid="1Od0CvNFTD" dmcf-ptype="general">▶ 조희연 : 그러니까 이 도시형 캠퍼스 자체에 대해서 뭐 말씀은 오히려 뭐 이런 도시형 캠퍼스 모형이 만들어지니까 학교를 신설하고자 했지만 학생 수가 적어서 못 했던 많은 지역에서 우리도 이 도시형 캠퍼스라도 만들자, 만들어 달라. 이런 요구도 많이 있죠. </p>
<p dmcf-pid="tIJphTj3yE" dmcf-ptype="general">▷ 김기화 : 그랬군요. </p>
<p dmcf-pid="FCiUlyA0Wk" dmcf-ptype="general">▶ 조희연 : 학부모님들은 당연히 뭐 그래도 이게 교장 선생님과 행정실장이 없는 도시형 캠퍼스 학교도 있으면 좋잖아요. 왜냐하면 30분 걸어가거나 20분 걸어가거나 그런 학교보다는 좋으니까요. </p>
<p dmcf-pid="3ZD410hVCc" dmcf-ptype="general">▷ 김기화 : 알겠습니다. 다른 이야기 하나 해 볼게요. 지난 국감 때. </p>
<p dmcf-pid="05w8tplfWA" dmcf-ptype="general">▶ 조희연 : 여기에서 참 한 가지만 말씀드리고 넘어가면. </p>
<p dmcf-pid="p1r6FUS4hj" dmcf-ptype="general">▷ 김기화 : 네, 말씀하세요. </p>
<p dmcf-pid="UHkVZFI9hN" dmcf-ptype="general">▶ 조희연 : 유형을 저희가 한 두 가지 정도로 생각을 하고 있습니다. 그러니까 지금 말씀드린 부분은 주로 작은 학교, 소규모 학교를 유지하는 방향이 있고 일단 도시형 캠퍼스라는 것을 염두에 놓고 보니까 이 다른 시설하고의 결합이 가능하더라고요. 그래서 저희가 일종의 주교 아파트. 주교 복합 학교. 주교. 학교하고 주거지가 결합하는 복합 학교를 생각하고 있습니다. 그래서 저희가 그러니까 외국 같은 경우는 주교 복합 학교가 있었고 우리나라에서도 대선 과정에서 어느 후보가 그때 정세균 후보님이신가 누가 주교 아파트 이야기를 꺼냈던 적이 있었어요. </p>
<p dmcf-pid="uXEf53C2va" dmcf-ptype="general">▷ 김기화 : 초품아랑은 다른 거죠? 초등학교를 품은 아파트 같은 느낌이랑은 다른 거죠, 이거는? 어떤 느낌입니까? </p>
<p dmcf-pid="7ZD410hVTg" dmcf-ptype="general">▶ 조희연 : 초등학교는 온 학교가 있는 경우이고요. 이것도 어떻게 보면 캠퍼스형 학교를 품고 있는 거죠. 그러니까 학부모 입장에서는 차선책으로서 상당히 좋아서 저희가 예를 들면 복합 건물을 학교의 수영장이라든가 도서실이라든가 이렇게 복합 건물이 있는 경우가 지금 많이 들어서고 있습니다. 그러면 일종의 주교 그런 복합 시설하고 연관돼서 학교의 다양한 시설들이 결합해서 존재할 수 있는. 지금은 큰 학교만을 염두에 놓고 보니까 다른 시설과의 결합이 어려웠는데 아파트하고도 결합이 가능해서 저희가 사실은 주교 아파트 내지 주교 복합 학교를 한번 만들면 예를 들면 젊은 층이라든지 그다음에 학령기의 자녀를 갖고 있는 학생이 있으면 학교 소멸 위험이 역으로 적어지죠. </p>
<p dmcf-pid="zQ3wMJBEyo" dmcf-ptype="general">▷ 김기화 : 우리가 주상 복합 아파트는 굉장히 익숙한데 그런 느낌이라고 보면 되는 거죠? </p>
<p dmcf-pid="qx0rRibDhL" dmcf-ptype="general">▶ 조희연 : 주상 복합의 한 두세 층이 학교가 들어갈 수 있다. 이렇게 생각하시면 됩니다. </p>
<p dmcf-pid="BMpmenKwhn" dmcf-ptype="general">▷ 김기화 : 새로운 개념인데 한번 잘 연구해 보면 좋을 것 같습니다. 저희 국감 때 서울 학생인권조례 개정 폐지에 대해서 논란이 있었는데요. 오세훈 서울시장이랑도 약간 다른 의견이셨던 것 같은데 사실은 최근에 교권 추락에 대해서 많은 국민들이 관심을 많이 가지시면서 학생인권조례의 문제 아니냐. 이런 이야기도 나왔어요. 어떤 입장이십니까? </p>
<p dmcf-pid="b5w8tplfTi" dmcf-ptype="general">▶ 조희연 : 저희는 학생 인권도 존중. 학생 인권이라고 할 때는 학생도 어리지만 피 학습자이지만 권리의 주체로 존중하자. 이런 취지거든요. 그래서 학생의 인권도 존중하고 선생님의 인권도 존중하는 그런 함께 병행해서 존중되는 그런 학교를 만들어 가는 것이 우리의 이상이다. 그러니까 아시겠습니다만 옛날에는 사랑의 매라느니 뭐 체벌도 있지 않았습니까? </p>
<p dmcf-pid="K1r6FUS4CJ" dmcf-ptype="general">▷ 김기화 : 그렇죠. 이제는 안 됩니다. </p>
<p dmcf-pid="9tmP3uv8Wd" dmcf-ptype="general">▶ 조희연 : 두발 규제도 있었고 그렇지 않습니까? 어떻게 보면 그런 상태에서 학생 인권을 존중하는 조례를 통해서 그런 학교로 왔는데 저는 과거로 돌아가지 말고 새롭게 문제 현상에 직면하고 있습니다. 그러니까 예를 들면 말씀하신대로 교권이 추락된다든가. </p>
<p dmcf-pid="2k6XDsJGTe" dmcf-ptype="general">▷ 김기화 : 새로운 문제죠, 이거는. </p>
<p dmcf-pid="VEPZwOiHTR" dmcf-ptype="general">▶ 조희연 : 그러니까 선생님의 교육권, 이른바 교권도 철저히 존중하고 새롭게 그 부분을 중시하고 그러나 과거로 돌아가지 않고 학생 인권도 존중하는 그런 공동체형 학교를 만들어야 된다. 미래 지향적으로 나가야 된다. 그게 저희들의 주장입니다. </p>
<p dmcf-pid="fDQ5rInXSM" dmcf-ptype="general">▷ 김기화 : 알겠습니다. 조희연 서울시교육감과 말씀 나눴습니다. 고맙습니다. </p>
<div dmcf-pid="4wx1mCLZvx" dmcf-ptype="general">
           ▶ 조희연 : 고맙습니다.
           <br/>
<div>
<br/>■ 제보하기
            <br/>▷ 전화 : 02-781-1234, 4444
            <br/>▷ 이메일 : kbs1234@kbs.co.kr
            <br/>▷ 카카오톡 : 'KBS제보' 검색, 채널 추가
            <br/>▷ 카카오 '마이뷰', 유튜브에서 KBS뉴스를 구독해주세요!
           </div>
</div>
<p dmcf-pid="8jfYcwRyTQ" dmcf-ptype="general">KBS</p>
</section>
</div></p></section></div><h6>[Source : KBS]</h6></div>
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