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
		//HttpSession httpSession = request.getSession(false);
		//httpSession.removeAttribute("UserName");
		//httpSession.removeAttribute("loginState");
		//session.removeAttribute("UserName");
		session.invalidate();
		//session.setMaxInactiveInterval(1000);//optional
		//request.getRequestDispatcher("index.jsp").forward(request, response);
		//HttpSession session2 = request.getSession();
		//httpSession.setAttribute("loginState","false");
		//System.out.println(httpSession.getAttribute("UserName")+ " ; "+httpSession.getAttribute("loginState"));
		response.sendRedirect("index.jsp");
	%>
</body>
</html>