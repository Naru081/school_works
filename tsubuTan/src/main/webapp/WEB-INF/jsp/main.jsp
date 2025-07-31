<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<% User loginUser = (User)session.getAttribute("loginUser"); %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>つぶたん</title>
</head>
<body>
	<h1>つぶたんメイン</h1>
	<p>
	<%= loginUser.getName() %>さん，ログイン中
	<a href="Logout">ログアウト</a>
	</p>
</body>
</html>