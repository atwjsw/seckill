<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
<h1>欢迎使用秒杀</h1>
<a href="/seckill/list">秒杀商品列表</a>
<br>
<s:url var="logoutUrl"
       value="/static/j_spring_security_logout" />
<a href="${logoutUrl}">登出</a>
</body>
</html>