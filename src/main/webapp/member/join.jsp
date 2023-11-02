<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
-->
<script type="text/javascript" src="script/member.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입</title>
    <style>
       * {
	        box-sizing: border-box;
	        padding: 0;
	        margin: 0;
	      }
       body {
	     /* margin-top: auto; */
	     background-color:white;
	     color: black;
	     line-height: 1.8;
	   }	
        
         #container {
	      width: 600px;
	      margin: 30px auto;
	      padding: 20px;
	      background-color: white;
	      height: 1030px;
	      border: 1px solid #8d9fad;
	      border-radius: 8px;
	    }
        #logo{
	      /* margin-left: 350px; */
	      text-align: center;          
	    }
	    
	    img {
	      width: 126px;
	      height: 126px;
	    }
	
	    #in {
	      margin: 30px auto;
	      text-align: center;
	    }

       #in h1, h4{
	      /* text-align: center; */
	      margin: 10px auto;
	    }
       .label-input-container{
            display: flex; /* 플렉스박스 컨테이너 사용 */
            align-items: center; /* 세로 정렬을 가운데로 조정 */
        }
        .label-sub-container{
            width: 100%;
            display: flex;
            margin-top: 20px;
        }
         input {
	        width: 100%;
	        padding: 13px;
	        margin: 0 10px;
	        margin-bottom: 10px;
	        border: 1px solid black;
	        border-radius: 5px;
	        text-align: left;
	    }
        .last{
	      width: 22%;
	      border-radius: 5px;
	      padding: 10px;
	      margin: 0 40px;
	      margin-top: 10px;
	      margin-left: 80px;
	      background-color: #545555;
	      border: none;
	      color: #ffffff;
	      cursor: pointer;
	    }
	    
	    .last:hover {
		  background-color: black; /* 커서를 대었을 때의 색상 변경 */
		}
		    
        #container {
           width: 600px;
           margin: 30px auto;
           padding: 20px;
         }
        .label_box {
          float: left;
          display: block;
          text-align: left;
          line-height: 3;
          width: 150px;
          height: 50px;
          border-radius: 5px;
        }
        .input_box {
          float: left;
          display: block;
          width: 500px;
          height: 50px;
          border-radius: 5px;
          border: none;
          background-color: #dfe8ef;
        }
        .mailing_label {
	      padding-top: 10px;
	      text-align: left;
	      float: left;
	      display: block;
	      border-radius: 5px;     
	      width: 100px;
	      height: 50px;
	      
	    }
        .mailing_label_1 {    
	      margin-top: 10px;   
	      padding-top: 10px;
	      text-align: left;
	      float: left;
	      display: block;
	      border-radius: 5px;         
	      width: 100px;
	      height: 50px;
	      
	    }
	    .mailing_label_2{
	      margin-top: 10px;   
	      padding-top: 10px;
	      text-align: left;
	      float: left;
	      display: block;
	      border-radius: 5px;        
	      width: 100px;
	      height: 50px;
	      
	    }
        .mailing_label_3{
	      margin-top: 10px;
	      padding-top: 10px;
	      text-align: left;
	      float: left;
	      display: block;
	      border-radius: 5px;       
	      width: 100px;
	      height: 50px;
	    }
	    .mailing_label_4{          
	      padding-top: 10px;
	      text-align: center;
	      float: left;
	      display: block;
	      border-radius: 5px;
	      border: 1px solid black;
	      width: 100px;
	      height: 50px;
	    }
        .mailing_box {
	      margin-top: 10px;
	      text-align: left;
	      float: left;
	      display: block;
	      margin-left: 10px;
	      width: 400px;
	      height:100px;
	      border: 1px solid #e9eaeb;
	      border-radius: 5px;
	      background-color: #f6faff;
	    
	    }
         .mailing_box_1 {
	      margin-top: 10px;
	      margin-left: 10px;
	      text-align: left;
	      float: left;
	      display: block;
	      width: 400px;
	      height:60px;
	      border: 1px solid #e9eaeb;         
	      border-radius: 5px;
	      background-color: #f6faff;
	    }
	    .mailing_box_2 {
	      margin-top: 10px;
	      margin-left: 10px;
	      text-align: center;
	      float: left;
	      display: block;
	      width:400px;
	      height: 50px;         
	    }
	    .mailing_box_3 {
	      margin-top: 10px;
	      margin-left: 10px;
	      text-align: left;
	      float: left;
	      display: block;
	      width: 400px;
	      height: 50px;
	      border: 1px solid #e9eaeb;         
	      border-radius: 5px; 
	      background-color: #f6faff;
	    }
	    .mailing_box_4 {
	      margin-top: 30px;
	      float: left;
	      display: block;
	      width: 600px;
	      height: 100px;
	      padding-right: 15px;     
	    }
        .mailing_box_ul { 
	      margin: 5px auto;         
	      width: 400px;     
	      height:200px;   
	      display: block;
	      
	    }
	    .mailing_box_ul_1 {    
	      margin: 5px auto;         
	      width: 400px;     
	      height:200px;   
	      display: block;      
	    }
	
	    .mailing_box_ul_2 {    
	      margin-top: 10px;      
	      width: 100px;     
	      height: 120px;   
	      display: block;
	      
	    }
	    .mailing_box_ul_3 {   
	      margin-top: 10px;       
	      width: 400px;             
	      display: block;
	        
	    }
	    .mailing_box_ul_4 { 
	      margin-top: 10px;         
	      width: 400px;     
	      display: block;    
	      
	    }
        .mailing_box_li {
	      float:left;
	      display: block;
	      width:95px;
	      height:20px;
	    }
	    .mailing_box_li_1 {
	      float:left;
	      display: block;
	      width:48px;
	      height: 20px;
	    }
	    .mailing_box_li_2 {
	      float:left;
	      display: block;
	      width:95px;
	      height: 20px;
	      border-bottom: 50px;
	    }
        /* .mailing_box_li_4 {
          float:left;
          display: block;
          width:50px;
          height: 20px;
        } */
        
        .input-group {
	      display: flex;
	      align-items: center;
	    }
	
	    .check-button {
	      width: 80px;
	      text-align: center;
	      margin-top: 13px;
	      margin-left: 10px;
	      margin-bottom: 10px;
	      padding: 10px;
	      background-color: #545555;
	      border: none;
	      color: #ffffff;
	      border-radius: 5px;
	      cursor: pointer;
	    }
	
	    .check-button:hover {
	      background-color: #333333;
	    }
        
        
        
        
    </style>
</head>
<body>
    <hr>
    <div id="logo">
      <a href="index.html" ><img src="image/logo_move.gif" alt="로고"></a>
    </div>
    <div id="in">
    <h1>회원가입</h1>
    <h4>회원정보를 입력해주세요</h4>
    </div>
    <div id="container">
      <form action="join.do" method="post" name="frm">
      <div>
        <label class="label_box" for="uid">아이디</label>
        <input class="input_box" type="text" name="uid" id="uid" size = "20" placeholder="아이디"/>
        <input	type="hidden" name="reid" size="20">
        <!-- <button class="check-button" value="중복 체크" onclick="idCheck()">중복확인</button> -->
        <input class = "check-button" type="button" value="중복 체크" onclick="idCheck()">
        <br>
      </div>
      <div>
        <label class="label_box" for="pw">비밀번호</label>
        <input class="input_box" type="password" name="pw" id="pw" placeholder="비밀번호" /><br>
      </div>
      <div>
        <label class="label_box" for="pw">비밀번호확인</label>
        <input class="input_box" type="password" name="pw_check" id="pw_check" placeholder="비밀번호 확인"/><br>    
      </div>
      <div>
        <label class="label_box" for="nickname">닉네임</label>
        <input class="input_box" type="text" name="nickname" id="nickname" placeholder="닉네임"/><br>
      </div>
      <div>
        <label class="label_box" for="email">이메일</label>
        <input class="input_box" type="text" name="email" id="email" /><br>    
      </div>
      <div>
        <label class="mailing_label">선호매체</label>
         <div class="mailing_box">
          <ul class="mailing_box_ul">
            <li class="mailing_box_li"><input type="checkbox" name="press0" value="128"></li>
            <li class="mailing_box_li">세계일보</li>
        
            <li class="mailing_box_li"><input type="checkbox" name="press1" value="64"></li>
            <li class="mailing_box_li">조선일보</li>
          
            <li class="mailing_box_li"><input type="checkbox" name="press2" value="32"></li>
            <li class="mailing_box_li">중앙일보</li>
          
            <li class="mailing_box_li"><input type="checkbox" name="press3" value="16"></li>
            <li class="mailing_box_li">동아일보</li>
         
            <li class="mailing_box_li"><input type="checkbox" name="press4" value="8"></li>
            <li class="mailing_box_li">경향신문</li>
          
            <li class="mailing_box_li"><input type="checkbox" name="press5" value="4"></li>
            <li class="mailing_box_li">국민일보</li>
         
            <li class="mailing_box_li"><input type="checkbox" name="press6" value="2"></li>
            <li class="mailing_box_li">매일경제</li>
          
            <li class="mailing_box_li"><input type="checkbox" name="press7" value="1"></li>
            <li class="mailing_box_li">한겨례</li> 
          </ul>
       </div>
      </div>   
          <label class="mailing_label_1">선호주제</label>

          <div class="mailing_box_1">
            <ul class="mailing_box_ul_1">
              <li class="mailing_box_li_1"><input type="checkbox" name="subj0" value="128"></li>
              <li class="mailing_box_li_1">스포츠</li>

              <li class="mailing_box_li_1"><input type="checkbox" name="subj1" value="64"></li>
              <li class="mailing_box_li_1">정치</li>

              <li class="mailing_box_li_1"><input type="checkbox" name="subj2" value="32"></li>
              <li class="mailing_box_li_1">경제</li>

              <li class="mailing_box_li_1"><input type="checkbox" name="subj3" value="16"></li>
              <li class="mailing_box_li_1">사회</li>

              <li class="mailing_box_li_1"><input type="checkbox" name="subj4" value="8"></li>
              <li class="mailing_box_li_1">문화</li>

              <li class="mailing_box_li_1"><input type="checkbox" name="subj5" value="4"></li>
              <li class="mailing_box_li_1">연예</li>

              <li class="mailing_box_li_1"><input type="checkbox" name="subj6" value="2"></li>
              <li class="mailing_box_li_1">과학</li>

              <li class="mailing_box_li_1"><input type="checkbox" name="subj7" value="1"></li>
              <li class="mailing_box_li_1">국제</li>
            </ul>
            </div>

            <label class="mailing_label_2" for="subs">구독신청</label>

           
            <div class="mailing_box_3">
              <ul class="mailing_box_ul_3">
               <li class="mailing_box_li_2"><input type="radio" name="subs" value="1" checked="checked"> </li>
               <li class="mailing_box_li_2">예</li>
               <li class="mailing_box_li_2"><input type="radio" name="subs" value="0"></li>
               <li class="mailing_box_li_2">아니요</li>
               </ul>
            </div>

            <label class="mailing_label_3" for="gender">성  별</label>

            <div class="mailing_box_3">
             <ul class="mailing_box_ul_3">
              <li class="mailing_box_li_2"><input type="radio" name="gender" value="1" checked="checked"></li>
              <li class="mailing_box_li_2">여성</li>

              <li class="mailing_box_li_2"><input type="radio" name="gender" value="0"></li>
              <li class="mailing_box_li_2">남성</li>
              </ul>
            </div>
            
          
            <div class="mailing_box_4">
            <button type="submit" class="last" onclick = "return joinCheck()">확인</button>
            <button type="reset" class="last" >취소</button>
            </div>
            </form>
          </div>
</body>
</html>