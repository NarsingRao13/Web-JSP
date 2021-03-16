<%@page import="User.UserDatabase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%
		String name = request.getParameter("userName");
		String pass = request.getParameter("userPass");
		if(UserDatabase.login(name, pass)) {
			out.print("You are successfully registered");
			
			///using HttpSession
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("UserName", name);
			httpSession.setAttribute("loginState","true");
			///Uisng Cookies
			/*System.out.println(name);
			Cookie ck = new Cookie("UserName",name.toString());
			response.addCookie(ck);*/
			
			request.getRequestDispatcher("/index.jsp").forward(request, response);
;		}
		else {
			out.print("Sorry username or password error");
		}
	%>
</body>
</html>