<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
 <sql:setDataSource
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/ltwtoeic"
	user="root"
	password="buithanhhieu"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<sql:query var="items" sql="SELECT link FROM tailieu where id=23"/>
	
		<c:forEach items="${items.rowsByIndex}" var="row">			
	
			<c:forEach items="${row}" var="col">			
				<td>${col}</td>		
			</c:forEach>				
		</c:forEach>

	
	
</body>
</html>