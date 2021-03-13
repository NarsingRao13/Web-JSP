<%@page import="User.UserDatabase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("userName");
		String pass = request.getParameter("newUserPass");
		if(UserDatabase.updatePassword(name, pass)>0) {
			out.println("updated record");  
			response.sendRedirect("Login.jsp"); 
		}
		else {
			 out.println("Sorry! unable to update record"); 
		}
	%>
</body>
<script>
    localStorage.setItem("firstname", pass);
</script>  
</html>