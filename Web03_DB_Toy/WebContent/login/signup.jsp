<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>회원가입</title>
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gamja+Flower&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="../css/signin.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
  </head>
  <body>
    <div class="container">
      <div class="container__inner animate__animated animate__zoomIn">
        <form action="sign.jsp" method="post">
          <div class="container__inner__row head">
            <h1>회원 가입</h1>
          </div>

          <div class="container__inner__row">
            <input placeholder="Id" required autofocus type="text" id="id" name="id" />
          </div>

          <div class="container__inner__row">
            <input placeholder="Password" required type="password" id="pwd" name="pwd" />
          </div>

          <div class="container__inner__row">
            <button type="submit">회원가입</button>
          </div>

          <div class="container__inner__row">
            <a href="../index.jsp">취소하기</a>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
