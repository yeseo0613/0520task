<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.dev.vo.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Delete Search</h3>
	<form action="memberSearch.do" method="post">
		ID : <input type="text" name="id"><br>
		<input type="hidden" name="job" value="delete">
		<input type="submit" value="Search">
	</form>
	<%
		MemberVO member = (MemberVO)request.getAttribute("member");
		if(member != null) {
	%>
	<h3>Delete</h3>
	<form action="memberDelete.do" method="post">
		ID : <input type="text" name="id" readonly value="${member.id }"><br>
		Password : <input type="password" name="pwd" value="${member.pwd }"><br>
		Name : <input type="text" name="name" value="${member.name }"><br>
		<input type="submit" value="Delete">
	</form>
	<%}else {%>
		${result}
	<%} %>
</body>
</html>