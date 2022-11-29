<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalTime" %><%--
  Created by IntelliJ IDEA.
  User: juhns
  Date: 2022-11-28
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="style.css"/>
<html>
<head>
    <title>Contact</title>
</head>
<body>
<jsp:include page="./header.jsp"/>

<h1>Contact</h1>

<% String currentTime = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss")); %>
<p class="time"><%=currentTime%></p>
<p>Your name is: <%=request.getParameter("name") %></p>


<jsp:include page="./footer.jsp"/>
</body>
</html>
