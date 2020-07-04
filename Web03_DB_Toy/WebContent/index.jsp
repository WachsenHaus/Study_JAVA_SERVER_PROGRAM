<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>미슐랭 가이드</title>
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">

    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gamja+Flower&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
  </head>
  <body>
    <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>-->
    <!--  <script src="js/bootstrap.min.js"></script>-->

    <div class="container">
      <div class="container__inner animate__animated animate__zoomIn">
        <form action="login/login.jsp" method="post">
          <div class="container__inner__row head">
            <h1>미슐랭 가이드</h1>
          </div>
          <div class="container__inner__row">
            <input placeholder="Id" required autofocus type="text" id="id" name="id" />
          </div>
          <div class="container__inner__row">
            <input placeholder="Password" required type="password" id="pwd" name="pwd" />
          </div>
          <div class="container__inner__row">
            <button type="submit">로그인</button>
          </div>
          <div class="container__inner__row">
            <a href="login/signup.jsp">회원가입하러가기</a>
            <a href="admin/adminPage.jsp">관리자모드(회원탈퇴)</a>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
