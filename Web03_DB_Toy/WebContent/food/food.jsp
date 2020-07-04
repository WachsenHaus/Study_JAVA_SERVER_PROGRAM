<%@page import="test.food.dto.FoodDto"%> <%@page import="java.util.List"%> <%@page import="java.util.ArrayList"%> <%@page import="test.food.dao.FoodDao"%>
<%@page import="test.users.dao.UsersDao"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
UsersDao dao =UsersDao.getInstance(); 
String currentId = dao.getId(); 
FoodDao fDao = FoodDao.getInstance(); //현재 푸드dao를로그인된놈으로 셋팅해준다.
fDao.setId(currentId);

boolean isSucc = false; 
List<FoodDto> list = fDao.getList(); 
if(list != null) { isSucc = true; }

String getClickCard = request.getParameter("Num");
System.out.println("선택된카드는"+ getClickCard);

String name ="";
String addr ="";
String menu ="";
double price = 0;
double grade = 0;
String content ="";

int pickNum = 0;
boolean isModdal = false;
if(getClickCard != null){
	pickNum =Integer.parseInt(getClickCard);
	FoodDto dto = fDao.select(pickNum);
	if(dto != null){
		name = dto.getName();
		addr = dto.getAddr();
		menu = dto.getMenu();
		price = dto.getPrice();
		grade = dto.getGrade();
		content = dto.getContent();
		isModdal = true;
	}
}
%>

  <!DOCTYPE html>
  <html>
    <head>
      <meta charset="UTF-8" />
      <title>미슐랭 가이드</title>
      <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gamja+Flower&display=swap" rel="stylesheet" />
      <link rel="stylesheet" href="../css/food.css" />
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
      <script src="https://kit.fontawesome.com/c0a9fdc19a.js" crossorigin="anonymous"></script>
    </head>
    <body>
      <div class="header">
        <h1>'<%=currentId%>'</h1>
        <div class="header__column">
          <h1>미슐랭 가이드</h1>
          <button id="myBtn">🍔 추가하기</button>
          <a href="../index.jsp">
            <i class="fas fa-home"></i>
          </a>
        </div>
      </div>
      <%if(isModdal){ %>
        <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close">x</span>
          <div class="container">
            <div class="container__inner">
              <form action="addInfo.jsp" method="post">
                <div class="container__inner__row">
                  <label for="name">식당이름</label>
                  <input required type="text" name="name" id="name" value="<%=name%>"/>
                </div>
                <div class="container__inner__row">
                  <label for="addr">주소</label>
                  <input required  type="text" name="addr" id="addr" value="<%=addr%>" />
                </div>
                <div class="container__inner__row">
                  <label for="menu">음식이름</label>
                  <input required type="text" name="menu" id="menu" value="<%=menu%>"/>
                </div>
                <div class="container__inner__row">
                  <label for="price">가격</label>
                  <input required type="number" name="price" id="price" value="<%=price%>" />
                </div>
                <div class="container__inner__row">
                  <label for="grade">평점</label>
                  <input required type="text" name="grade" id="grade" value="<%=grade%>" />
                </div>
                <div class="container__inner__row">
                  <label for="content">내용</label>
                  <textarea required name="content" id="content" cols="30" rows="10" value="<%=content %>"></textarea>
                </div>
                <div class="container__inner__row btn">
                  <button class="sendBtn" type="submit">
                    기록 추가하기
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <%} %>

      <div id="myModal" class="modal">
        <div class="modal-content">
          <span class="close">x</span>
          <div class="container">
            <div class="container__inner">
              <form action="addInfo.jsp" method="post">
                <div class="container__inner__row">
                  <label for="name">식당이름</label>
                  <input required type="text" name="name" id="name" />
                </div>
                <div class="container__inner__row">
                  <label for="addr">주소</label>
                  <input required  type="text" name="addr" id="addr" />
                </div>
                <div class="container__inner__row">
                  <label for="menu">음식이름</label>
                  <input required type="text" name="menu" id="menu" />
                </div>
                <div class="container__inner__row">
                  <label for="price">가격</label>
                  <input required type="number" name="price" id="price" />
                </div>
                <div class="container__inner__row">
                  <label for="grade">평점</label>
                  <input required type="text" name="grade" id="grade" />
                </div>
                <div class="container__inner__row">
                  <label for="content">내용</label>
                  <textarea required name="content" id="content" cols="30" rows="10"></textarea>
                </div>
                <div class="container__inner__row btn">
                  <button class="sendBtn" type="submit">
                    기록 추가하기
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <h1><%=pickNum %></h1>
      <form id="cardSend" action="food.jsp" method="post">
     	<input id="selectedCard" type="hidden" name="Num" value=""/>
     </form>
      <div class="food_container">
        <%if(isSucc) {%> 
	          <%for(FoodDto tmp : list){ %>
	      		<article class="foodBox">
              <h1 id="num"><%=tmp.getNum() %></h1>
	      			<h1 class="menu" ><%=tmp.getMenu() %></h1>
	      			<h1 class="price"><%=tmp.getPrice() %></h1>
	      			<h1 class="grade"><%=tmp.getGrade() %></h1>
	      			<h2 class="name"><%=tmp.getName() %></h1>
	      			<h3 class="addr"><%=tmp.getAddr() %></h2>
	      			<p class="content"><%=tmp.getContent() %></p>
	      		</article>
	          <%} %>
		<%} %>
      </div>
      <script>
      
        function foodModal(){
          let modal = document.querySelectorAll(".foodBox");
          modal.forEach( (item,index)=>{
            item.addEventListener("click",foodModalClick)
          })
        }
        function foodModalClick(event){
          const btn = event.target;
          let getNum;
          if(btn.parentNode.className === "foodBox")
          {
            getNum = btn.parentNode.childNodes[1].innerHTML;
          }
          else if (btn.className === "foodBox"){
            getNum = btn.childNodes[1].innerHTML;
          }
          document.getElementById("selectedCard").value = getNum;
          document.querySelector("#cardSend").submit();
        }
        foodModal();
        // Get the modal
        var modal = document.getElementById("myModal");

        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks on the button, open the modal
        btn.onclick = function () {
          modal.style.display = "block";
        };

        // When the user clicks on <span> (x), close the modal
        span.onclick = function () {
          modal.style.display = "none";
        };

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
          if (event.target == modal) {
            modal.style.display = "none";
          }
        };
      </script>
    </body>
  </html>
</FoodDto>
