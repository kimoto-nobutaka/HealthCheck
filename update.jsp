<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新・削除画面</title>
<style>
  body {
  text-align:center;
   background-image:url("washi-pattern-03.jpg");
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
<h1>BMI管理</h1>
<h2>ユーザー情報更新</h2>
 <div class="btn">
  <form action="InsertServlet"method="post">
  <table border="1">
    <tr><th>ID:<input type="text"name="ID"></th></tr>
    <tr><th>名前:<input type="text"name="name"></th></tr>
    <tr><th>身長:<input type="text"name="height">ｃｍ</th></tr>
    <tr><th>体重:<input type="text"name="weight">ｋｇ</th></tr>
  </table>
  <br>
  	<input type="submit"name="btn"value="更新">
  </form>
  <br>
  <form action="InsertServlet" method="get">
  	<input type="submit" value="トップ画面">
  </form>
 </div>
</body>
</html>