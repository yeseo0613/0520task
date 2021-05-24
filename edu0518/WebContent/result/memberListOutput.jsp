<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.dev.vo.MemberVO" %>
    <%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
		if(!list.isEmpty()) {%>
		<table border="1">
			<tr><th>ID</th><th>PWD</th><th>NAME</th></tr>
				
				<% for(int i=0; i<list.size(); i++) {
					MemberVO member = list.get(i);  %>
					
					<tr><td><%=member.getId() %></td>
						<td><%=member.getPwd() %></td>
						<td><%=member.getName() %></td>
					</tr>
			<%		}
		} else {
			out.print("<h3>No member!!!</h3>");
		}
		%>
		</table>
		
	<%@ include file="home.jsp" %>
</body>
</html>