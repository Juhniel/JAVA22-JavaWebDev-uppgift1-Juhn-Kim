<%@ page import="java.time.LocalTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
    response.setHeader("Pragma","no-cache"); //HTTP 1.0
    response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="style.css"/>
<head>
    <title>Uppgift 1 - JSP -</title>
</head>
<body>
<% if(request.getParameter("page") != null){ %>
<jsp:forward page='<%= request.getParameter("page")%>'></jsp:forward>
<%}%>
<jsp:include page ="./header.jsp"/>

<% String currentTime = LocalTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss")); %>
<p class="time"><%=currentTime%></p>
<form action="index.jsp" method="POST">
    <p>What is your name?</p>
    <input type="text" name="name"/>
    <input type="submit" value="Send"/>
    <p>Select page: </p>
    <select name="page">
        <option value="contact.jsp">Contact</option>
        <option value="aboutMe.jsp">About Me</option>
    </select>
</form>
<jsp:include page="./footer.jsp"/>
</body>

</html>