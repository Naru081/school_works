<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%
//セッションスコープからユーザ情報を取得
User loginUser = (User)session.getAttribute("loginUser");
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>つぶたん</title>
</head>
<body>
	<h1>つぶたんログイン</h1>
	<% if (loginUser != null) { %>
	<p>ログインに成功しました</p>
	<p>ようこそ<%= loginUser.getName() %>さん</p>
	<a href="Main">つぶやき投稿・閲覧へ</a>
	<% } else { %>
	<p>ログインに失敗しました</p>
	<a href="index.jsp">トップへ</a>
	<% } %>
</body>
</html>