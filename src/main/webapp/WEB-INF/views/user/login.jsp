<%@ page contentType="text/html; charset=utf-8" 
isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<h2>Login</h2>
<form id="loginfrm" name="loginfrm"
		action="<c:url value='${ctx}/login'/>"
		method="POST">
	<!-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> -->
	id : <input type="text" name="id"/><br><br>
	password : <input type="text" name="pw"/><br><br>
	<input type="submit" value="login"/>
	
	<c:if test="${not empty param.fail}">
		<font color="red">
			<p>Your login attempt was not successful, try again</p>
			<p>Reason:${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
		</font>
		<c:remove scope="session" var="SPRING_SECURITY_LAST_EXCEPTION"/>
	</c:if>
</form>
</body>
</html>








