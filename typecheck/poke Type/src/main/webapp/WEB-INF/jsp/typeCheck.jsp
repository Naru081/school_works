<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
// セッションスコープに保存されたユーザ情報を取得
User loginUser = (User)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポケモンタイプチェック</title>
</head>
<body>
<p>
<%= loginUser.getName() %>さん、ログイン中
</p>
<form action="./TypeCheck" method="post">
	<h2>ポケモンのタイプ相性チェック</h2>
	自分のタイプを選択：<select name="you">
		<option value="">ー</option>
		<option value="1">ノーマル</option>
		<option value="2">ほのお</option>
		<option value="3">みず</option>
		<option value="4">でんき</option>
		<option value="5">くさ</option>
		<option value="6">こおり</option>
		<option value="7">かくとう</option>
		<option value="8">どく</option>
		<option value="9">じめん</option>
		<option value="10">ひこう</option>
		<option value="11">エスパー</option>
		<option value="12">むし</option>
		<option value="13">いわ</option>
		<option value="14">ゴースト</option>
		<option value="15">ドラゴン</option>
		<option value="16">あく</option>
		<option value="17">はがね</option>
		<option value="18">フェアリー</option>
	</select>
	<br>
	相手のタイプを選択：<select name="opponent">
		<option value="">ー</option>
		<option value="1">ノーマル</option>
		<option value="2">ほのお</option>
		<option value="3">みず</option>
		<option value="4">でんき</option>
		<option value="5">くさ</option>
		<option value="6">こおり</option>
		<option value="7">かくとう</option>
		<option value="8">どく</option>
		<option value="9">じめん</option>
		<option value="10">ひこう</option>
		<option value="11">エスパー</option>
		<option value="12">むし</option>
		<option value="13">いわ</option>
		<option value="14">ゴースト</option>
		<option value="15">ドラゴン</option>
		<option value="16">あく</option>
		<option value="17">はがね</option>
		<option value="18">フェアリー</option>
	</select><br>
	<input type="submit" value="CHECK!">
	<p>
	<a href="Logout">ログアウト</a>
	</p>
</form>
</body>
</html>