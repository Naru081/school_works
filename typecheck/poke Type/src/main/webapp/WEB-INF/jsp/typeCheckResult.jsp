<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="model.Type" %>

<%
    Type type = (Type) request.getAttribute("type");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ポケモンタイプチェック</title>
</head>
<body>
    <h2>相性の結果</h2>

    <% if (type == null) { %>
        <p style="color: red;">エラー: 相性のデータが取得できませんでした。</p>
    <% } else { %>
        <p>
			自分の「<%= type.getYouTypeName() %>」ポケモンは、相手の「<%= type.getOpponentTypeName() %>」ポケモンに<br>
			効果は「<%= type.getCheckResult() %>」です。
		</p>

    <% } %>

    <a href="TypeCheck">戻る</a>
</body>
</html>
