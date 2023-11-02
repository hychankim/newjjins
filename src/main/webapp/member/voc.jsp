<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>뉴찐쓰</title>
  <link rel="stylesheet" href="style/js.css">
</head>
<body>
  <div id="container">
  <div class="logo">
 	 <a href="#" onclick="location.href='login.do?userid=html'">
  		<img src="image/logo_move.gif" alt="">
  	 </a>
  </div>
  <h1>${loginUser.nickname}(${loginUser.userid})님 어서오세요</h1>
  <form action="voc.do" method="post">
  <div class="user">
    <div>
      <textarea id="voc" name="voc" rows="15" cols="80" placeholder="의견을 작성해 주세요" required></textarea>
      <input type = "hidden" id = 'userid' name = 'userid' value = "${loginUser.userid}">
    </div>
    <div class="ip">
      <input type="submit" value="제출">
      <input type="reset" value="취소">
    </div>
  </div>
  </form>
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
</html>
