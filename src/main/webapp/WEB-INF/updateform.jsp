<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/update" method="post">
ID:<input type="text" name="id" id="id" value="${pb.id}" readonly><br>
NAME:<input type="text" name="name" id="name" value="${pb.name}"><br>
hp:<input type="text" name="hp" id="hp" value="${pb.hp}"><br>
MEMO:<input type="text" name="memo" id="memo" value="${pb.memo}"><br>
<input type="submit" value="전화번호부 수정">
</form>
</body>
</html>