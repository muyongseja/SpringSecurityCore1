<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<hr/>
<jsp:include page="user/login.jsp"></jsp:include>
<hr/>
<h2>Menu</h2>
<ul>
	<li><a href="admin/admin">관리자</a></li>
	<li><a href="content">컨텐츠</a></li>
</ul>
</body>
</html>









