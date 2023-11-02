
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
    <h3>SSG, 우승 감독 이어 코치도 집단 퇴출...리빌딩에도 절차는 필요한데 [MK이슈]</h3><h6>김원익 MK스포츠 기자(one.2@maekyung.com)  2023. 11. 1. 05:00</h6>
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
<section dmcf-sid="BqVNoWcpZa">
<p dmcf-pid="bwCpFR7A1g" dmcf-ptype="general">SSG 랜더스가 불과 1년 전 통합우승을 이끈 김원형 전 감독에 이어 주역이었던 코칭스태프들도 집단 퇴출 시켰다.</p>
<p dmcf-pid="KZ0x6reWXo" dmcf-ptype="general">리빌딩에도 절차와 과정은 필요한 법인데 감독 경질과 코칭스태프 집단 해고까지 SSG가 행한 일련의 행보들이 여러모로 상식적이지 않은 운영이란 지적이 나오고 있다.</p>
<p dmcf-pid="95pMPmdYHL" dmcf-ptype="general">SSG는 10월 31일 “팀 운영 전반에 걸쳐 변화와 혁신이 필요하다고 판단해 김원형 감독과 계약 해지를 결정했다”고 밝혔다. 또한 SSG는 “어렵고 힘든 결정이었다. 단언컨대 성적으로 인한 계약해지는 절대 아니다”라며 “포스트시즌 종료 후 내부적으로 냉정한 리뷰를 치열하게 진행했다. 지속적으로 발전하는 팀을 위해서는 변화와 혁신이 필요하다고 봤다”며 김원형 감독의 경질 배경을 전했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="21URQsJG5n" dmcf-ptype="figure">
<p class="link_figure"><img alt="불과 1년 전 통합우승의 주역이었던 이들이 대거 팀을 떠나게 됐다. 사진=김영구 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101050003433fkwk.jpg" data-org-width="540" dmcf-mid="VX91X63o1L" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101050003433fkwk.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            불과 1년 전 통합우승의 주역이었던 이들이 대거 팀을 떠나게 됐다. 사진=김영구 기자
           </figcaption>
</figure>
<div dmcf-pid="VH0x6reWGi" dmcf-ptype="general">
           상호합의하의 계약 해지 등이 아닌 경질로 내용도 못을 박았다. 실제 계약 종료 역시 통보 형식으로 이뤄졌다. SSG 구단 관계자는 “31일 오전 계약해지가 최종 결정됐고 오후 12시 30분 경 김성용 SSG 단장이 김원형 감독님을 직접 만나 이야기를 전했다”고 밝혔다.
          </div>
<p dmcf-pid="fXpMPmdY1J" dmcf-ptype="general">김성용 SSG 단장 또한 “모기업에서 내려온 지시가 아니라 구단 내부에서 올 시즌을 리뷰하고 앞으로의 방향성을 고민하는 과정에서 고심 끝에 결정을 내렸다”면서 “현재 팀이 노령화됐다고 판단했고, ‘세대교체의 변화 혁신을 어떻게 할 수 있을까’라는 고민 속에서 이를 이끌 수장이 누구인지를 판단했을 때 현재의 김원형 감독은 조금 힘들다는 판단을 했다”며 경질 배경을 설명했다.</p>
<p dmcf-pid="4ZURQsJGGd" dmcf-ptype="general">그러면서 김성용 단장은 “31일 오전 11시 30분을 넘긴 시점에 내부적으로 최종 결정이 됐다”고 덧붙였다. 김원형 감독 역시 경질 사실을 당일 통보를 받기 전까지 알지 못했다. 준PO 시리즈 종료 이후 가고시마 마무리 캠프 지휘에 대해 구단에서 언질을 해줘야 하는 상황에서 거취와 관련한 특별한 언급이 없다가 당일 통보를 받게 됐다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="8G3Q8wRyZe" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=김영구 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101050004639wgan.jpg" data-org-width="640" dmcf-mid="fD91X63o5n" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101050004639wgan.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=김영구 기자
           </figcaption>
</figure>
<div dmcf-pid="6H0x6reWHR" dmcf-ptype="general">
           시간을 재구성하면 31일 오전 11시 30분경 최종 결정이 났고, 불과 1시간 후에 김원형 감독이 해당 사실을 통보받았다. 그로부터 약 45분 후인 오후 1시 15분 언론을 통해 경질 내용이 알려졌다. 최종 결정 이후 감독이 사실을 전해받고 언론을 통해 경질 사실이 공개되기까지 불과 2시간도 걸리지 않은 셈이다.
          </div>
<p dmcf-pid="PXpMPmdYYM" dmcf-ptype="general">경질 직후 김 감독은 “성적이 부진했기 때문에 이렇게 된 것 같다”면서 말을 아꼈지만 예상하지 못했던 경질에 충격을 감추지 못한 모습이었다.</p>
<p dmcf-pid="QKPEAZrq5x" dmcf-ptype="general">구단 안팎이나 야구계에서도 지난 주중까지만 하더라도 김 감독이 최소 1년은 더 지휘봉을 잡을 것으로 보는 전망들이 많았다. 그런 기류가 바뀐 것은 지난 주말을 기점으로부터였다.</p>
<p dmcf-pid="x9QDc5mBGQ" dmcf-ptype="general">바로 SSG 프런트가 갑작스럽게 지난해 통합우승을 이끌었던 코칭스태프들에게 대거 재계약 불가 의사를 통보하면서부터였다</p>
<p dmcf-pid="ygDZG4tnHP" dmcf-ptype="general">SSG 내부 사정에 정통한 한 관계자는 “SK 시절부터 팀에서 선수와 코칭스태프로 오랜 기간 머물렀거나, 지난해 통합우승을 이끈 코칭스태프들이 대거 재계약 불가 방출 통보를 받았다”면서 “갑작스러운 통보에 많은 코칭스태프가 망연자실해 했고 큰 충격을 받은 것으로 알고 있다”고 귀띔했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="Waw5H8FL16" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=김영구 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101050005946hwra.jpg" data-org-width="640" dmcf-mid="63MqunKwtd" dmcf-mtype="image" height="auto" src="https://img2.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101050005946hwra.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=김영구 기자
           </figcaption>
</figure>
<div dmcf-pid="YNr1X63oX8" dmcf-ptype="general">
           실제 SSG는 지난 주말(10월 29일~30일) 사이 1,2군 주요 핵심 보직을 맡고 있는 코칭스태프에게 갑작스럽게 재계약 불가 의사를 통보했다. 그 대상은 채병용 투수코치, 박정권 타격코치, 손지환 내야수비 코치 등이다. 2군에서도 박주언 투수코치, 이진영 타격코치 등이 팀을 떠나달라는 통보를 받았다.
          </div>
<p dmcf-pid="GSXVKj8CX4" dmcf-ptype="general">앞서 이미 김민재 코치와 정경배 코치는 각각 한화 이글스와 롯데 자이언츠의 수석코치로 팀을 옮겼다. 또한 구단에서 오랫동안 있었던 조웅천, 조상호 코치도 팀을 떠났다. 추가적으로 컨디셔닝 및 트레이닝 코치와 2군 및 잔류군에서도 복수의 코칭스태프가 재계약 불가 의사를 전달 받은 상황이다.</p>
<p dmcf-pid="HvZf9A6hZf" dmcf-ptype="general">2군 퓨처스는 이미 새 판짜기를 거의 마쳤다. 2군 감독 수장은 손시헌 전 NC 다이노스 수비코치가 맡게 됐다. 앞서 MK스포츠는 취재를 종합해 10월 31일 밤 ‘[단독] 손시헌 코치, SSG 랜더스 2군 신임 감독 선임’ 기사를 보도한 바 있다. 1군뿐만이 아니라 2군 또한 손시헌 감독 체제하에 대거 변화의 바람이 불 전망이다.</p>
<p dmcf-pid="XT542cPlXV" dmcf-ptype="general">SSG 구단 역시 이런 변화를 부인하지 않았다. 김성용 단장은 “퓨처스 코칭스태프 인선은 거의 마무리가 됐다”면서 “새로운 감독이 선임 됐을 때 주요 보직 코칭스태프에 대해선 협의를 하는 과정도 필요하다. 내부적으로는 빠르게 움직이고 있는데 신임 감독이 결정된다면 그 부분은 큰 문제가 없을 것 같다”며 코칭스태프 인선을 상당 부분 진행하고 있다고 전했다.</p>
<p dmcf-pid="ZNr1X63oY2" dmcf-ptype="general">일각에선 김 단장과 관련이 있는 외부 인사가 새롭게 코칭스태프로 합류할 것이라는 이야기도 전해지고 있다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="5jmtZP0g19" dmcf-ptype="figure">
<p class="link_figure"><img alt="사진=김영구 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101050007196syzf.jpg" data-org-width="540" dmcf-mid="xLFP4DMT5M" dmcf-mtype="image" height="auto" src="https://img3.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101050007196syzf.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            사진=김영구 기자
           </figcaption>
</figure>
<div dmcf-pid="1AsF5Qpa5K" dmcf-ptype="general">
           다만, 이런 대대적인 변화에 대해 구단 내부에선 혼란스러움을 감추지 못하는 모습이다. 갑작스러운 감독 경질에 더해 지난 주말 이뤄진 코칭스태프 집단 퇴출로 사실상 기존의 선수와 코칭스태프간의 교류 및 유대 관계가 단절됐다는 반응도 나왔다.
          </div>
<p dmcf-pid="tXpMPmdYYb" dmcf-ptype="general">SSG 내부 관계자는 “통상적으로 구단의 대규모 코칭스태프 재계약 불가 결정은 가을야구에 진출하지 못한 하위권 팀들에게서나 보통 이뤄지는 일이지 가을야구에 진출한 팀에는 극히 이례적인 일”이라며 일반적이지 않은 상황이라고 짚었다.</p>
<p dmcf-pid="FZURQsJG5B" dmcf-ptype="general">또한 이 관계자는 “코칭스태프 방출이 이뤄진 시점도 안타깝다. 재계약 불가 의사 역시 구단에서 결정을 내렸다면 타 구단으로 이직할 수 있는 시점에 알려주는 게 보통이다. 그런데 현재 대부분 팀의 마무리캠프 명단과 코칭스태프가 확정된 상황에서 기습적으로 통보를 받으면 사실상 실업자가 될 수밖에 없는 구조”라며 갑작스럽게 실직자가 된 코칭스태프들의 향후 거취에 대해서도 안타까운 감정을 전했다.</p>
<figure class="figure_frm origin_fig" dmcf-pid="3hG9BafO1q" dmcf-ptype="figure">
<p class="link_figure"><img alt="2022년 통합우승을 이끈 공으로 프런트상을 수상하고도 그해 물러났던 류선규 전 SSG 단장. 사진=천정환 기자" class="thumb_g_article" data-org-src="https://t1.daumcdn.net/news/202311/01/mksports/20231101050008778jtzh.jpg" data-org-width="640" dmcf-mid="qugvhqWQHN" dmcf-mtype="image" height="auto" src="https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202311/01/mksports/20231101050008778jtzh.jpg" width="658"/></p>
<figcaption class="txt_caption default_figure">
            2022년 통합우승을 이끈 공으로 프런트상을 수상하고도 그해 물러났던 류선규 전 SSG 단장. 사진=천정환 기자
           </figcaption>
</figure>
<div dmcf-pid="0lH2bN4I1z" dmcf-ptype="general">
           이같은 행보에 대해 일각에서는 ‘무리한 SK 색깔 지우기’라는 지적도 나온다.
          </div>
<p dmcf-pid="pSXVKj8Ct7" dmcf-ptype="general">SK 와이번스 구단과 관련이 깊은 모 인사는 “불과 1년 전에 통합우승을 이끈 코칭스태프들이다. 그 영광을 함께 했던 선수들은 그대로 구단에 남아 있는데 우승 단장이 지난해 경질 된 이후 이듬해인 올해 감독과 코칭스태프들이 성적 부진에 대한 책임을 지고 쫓겨나듯이 팀을 떠나게 되는 상황이 안타깝다”며 아쉬움을 감추지 못했다.</p>
<p dmcf-pid="UtzJRCLZ5u" dmcf-ptype="general">야구계 다른 관계자 역시 “SSG가 SK를 인수해 재창단 과정을 겪었지만 구단 역사의 계승이라는 인식보단, 새로운 창단으로서의 정체성을 강조하는 모습을 자주 보여왔다”면서 “김원형 감독 경질과 코칭스태프 집단 해고 역시 구단주와 프런트를 중심으로 하는 ‘SSG 야구의 색깔 내기’의 과정이 아니겠나. 상식적이고 정상적인 교체 과정이 아닌 것은 사실”이라고 꼬집었다.</p>
<p dmcf-pid="uFqieho5tU" dmcf-ptype="general">김 감독 경질과 함께 SSG가 내세운 ‘세대교체’의 방향성을 통해 앞으로 추구할 기조는 뚜렷해 보인다. 바로 ‘리빌딩’이다. 그 필요성에 대해선 구단 내부는 물론 외부에서도 공감할 정도로 타당한 결정이다.</p>
<p dmcf-pid="73Bndlg1Yp" dmcf-ptype="general">하지만 그 리빌딩도 절차와 과정, 그리고 그 속에 존중과 구성원에 대한 예의는 필요하다. 그리고 그들이 불과 1년 전 SSG의 창단 첫 통합우승을 일궈낸 주역들이라면 더욱 더 잊지 말아야 할 점들이 있었다.</p>
<p dmcf-pid="z5uexOiHG0" dmcf-ptype="general">무작정 ‘옛 얼굴 지우기’만으로 혁신과 쇄신이 이뤄질 것이라고 확신한다면 그건 지나치게 낙관적인 가정일 수 있다.</p>
<p dmcf-pid="q17dMInX53" dmcf-ptype="general">동시에 올해의 실패에는 구단 프런트에도 역시 책임이 없지 않다. 많은 이가 SSG의 세대교체 필요성을 지적했음에도 그것이 제대로 이뤄지지 않았다. 그 선수단의 문제들이 빚은 결과를 결론적으로 김 감독과 코칭스태프가 모두 뒤집어 쓴 모양새가 됐다.</p>
<p dmcf-pid="BtzJRCLZXF" dmcf-ptype="general">SSG의 칼바람 부는 겨울이 내년 따뜻한 봄을 불러올 인고의 시간이 될 수 있을까. 많은 이가 신임 감독 선임부터 본격적으로 시작될 SSG 프런트의 행보를 주목하고 있다.</p>
<p dmcf-pid="bRgvhqWQ1t" dmcf-ptype="general">[김원익 MK스포츠 기자]</p>
<p dmcf-pid="KeaTlBYxt1" dmcf-ptype="general">[ⓒ MK스포츠, 무단전재 및 재배포 금지]</p>
</section>
</div></p></section></div><h6>[Source : MK스포츠]</h6></div>
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