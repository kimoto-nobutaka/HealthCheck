<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="bean.*" %>
<jsp:useBean id="hdto" scope="request" class="bean.HealthDTO"/>
<jsp:useBean id="msg" scope="request" class="java.lang.String"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>表示画面</title>
<style>
  body {
  text-align:center;
  background-image:url("washi-pattern-02.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  padding-top:100px;
  }
  table {
  margin: 0 auto;
  background-color:white;
  }
  .btn {
    margin:0 auto;
      
   }
  .btn form {
   display: inline-block;
   margin:0;
   padding:8px 20px;
   }
   .btn input[type="submit"] {
   width:150px;
   height:50px;
   font-size:20px;
   background-color:#87ceeb;
   border: none;
   border-radius: 5px;
   cursor: pointer;
   }
  
</style>
</head>
<body>
<h2><%=msg %></h2>
<table border="1">
  <tr>
    <th width="50">ID</th>
    <th width="200">名前</th>
    <th width="50">身長</th>
    <th width="50">体重</th>
    <th width="50">BMI</th>
    <th width="50">目標BMI</th>
    <th width="100">目標体重まで</th>
  </tr>
  <%
    for(int i=0;i<hdto.size();i++){
    	HealthBean hb = hdto.get(i);
  %>
  <tr>
    <td align="center"><%=hb.getId() %></td>
    <td align="center"><%=hb.getName() %></td>
    <td align="center"><%=hb.getHeight() %>cm</td>
    <td align="center"><%=hb.getWeight() %>kg</td>
    <td align="center"><%=hb.getBmi() %></td>
    <td align="center"><%=hb.getTargetBmi() %></td>
    <td align="center"><%=hb.getTargetWeight() %>kg</td>
  </tr>
  <% } %>
</table><br />
<div class="btn">
	<form action="InsertServlet" method="get">
		<input type="submit" value="トップ画面">
	</form>
	</div>
	
</body>
</html>