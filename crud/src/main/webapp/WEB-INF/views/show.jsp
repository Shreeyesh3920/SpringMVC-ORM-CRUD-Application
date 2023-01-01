<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page isELIgnored="false" %>

<html>
<head>
 <style>
table {
	margin-top:20px;

  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: rgb(175, 225, 175);
}
.button1 {background-color: #4CAF50;} 
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  margin-top:10px;
}

</style>
</head>
<body>

<center><h1>Product CRUD Application</h1></center>
 
   <table>
  <tr>
    <th>ID</th>
    <th>PRODUCT-NAME</th>
    <th>DESCRIPTION</th>
    <th>PRICE</th>
    <th>ACTION</th>
  </tr>
  <c:forEach items="${products}" var= "pro">
  <tr>
    <td>${pro.pid }</td>
    <td>${pro.name }</td>
    <td>${pro.description }</td>
    <td>&#x20B9;${pro.price }</td>
    <td><a href="delete/${pro.pid} "><svg style="color: red" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-archive-fill" viewBox="0 0 16 16"> <path d="M12.643 15C13.979 15 15 13.845 15 12.5V5H1v7.5C1 13.845 2.021 15 3.357 15h9.286zM5.5 7h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1zM.8 1a.8.8 0 0 0-.8.8V3a.8.8 0 0 0 .8.8h14.4A.8.8 0 0 0 16 3V1.8a.8.8 0 0 0-.8-.8H.8z" fill="red"></path> </svg></a>&nbsp;&nbsp;&nbsp;<a href="update/${pro.pid}"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M13.5 2c-5.621 0-10.211 4.443-10.475 10h-3.025l5 6.625 5-6.625h-2.975c.257-3.351 3.06-6 6.475-6 3.584 0 6.5 2.916 6.5 6.5s-2.916 6.5-6.5 6.5c-1.863 0-3.542-.793-4.728-2.053l-2.427 3.216c1.877 1.754 4.389 2.837 7.155 2.837 5.79 0 10.5-4.71 10.5-10.5s-4.71-10.5-10.5-10.5z" fill="green"/></svg>
 </a></td>

  </tr>
  </c:forEach>
 
</table>
  <center><a href="add"><button class="button button1">Add Products</button></a></center>
 
 
</body>
</html>