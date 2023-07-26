<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>
 <body>
       <ul  >
        <li><a href="<%=request.getContextPath()%>/list"  >Users</a ></li>
        </ul>
    <br>
  <c:if test="${user != null}">
  		<form action="update" method="post">
  </c:if>
  <c:if test="${user == null}">
    	<form action="insert" method="post">
  </c:if>
<h2>
   <c:if test="${user != null}">
    Edit User
  </c:if>
  <c:if test="${user == null}">
    Add New User
  </c:if>
</h2>
<c:if test="${user != null}">
   <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
</c:if>
 <label>User Name</label> <input type="text" value="<c:out value='${user.name}' />" name="name"><br><br>
                        
<label>User Email</label> <input type="text" value="<c:out value='${user.email}' />" name="email"><br><br>
 <label>User Country</label> <input type="text" value="<c:out value='${user.country}' />" name="country">
                        
 <button type="submit">Save</button>

        </body>

        