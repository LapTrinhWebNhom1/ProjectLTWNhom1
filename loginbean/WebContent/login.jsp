<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form name="loginform" method="post" action="loginbean.jsp">
<br><br>
<table align="center"><tr><td><h2>Login Authentication</h2></td></tr></table>
<table width="300px" align="center" style="border:1px solid #000000;background-color:#efefef;">
<tr><td colspan=2></td></tr>
<tr><td colspan=2>&nbsp;</td></tr>
  <tr>
  <td><b>Login Name</b></td>
  <td><input type="text" name="userName" value=""></td>
  </tr>
  <tr>
  <td><b>Password</b></td>
  <td><input type="password" name="password" value=""></td>
  </tr>
  <tr>
  <td></td>
  <td><input type="submit" name="Submit" value="Submit"></td>
  </tr>
  <tr><td colspan=2>&nbsp;</td></tr>
</table>
</form>
</body>
</html>