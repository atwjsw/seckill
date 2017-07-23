<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@include file="common/tag.jsp" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>秒杀登录页</title>
    <%@include file="common/head.jsp"%>
</head>
<body>
<div>
    <h2>秒杀登录</h2>

    <s:url var="authUrl"
          value="/static/j_spring_security_check" /><!--<co id="co_securityCheckPath"/>-->
    <form method="post" class="signin" action="${authUrl}">

        <fieldset>
            <table cellspacing="0">
                <tr>
                    <th><label for="username_or_email">Username or Email</label></th>
                    <td><input id="username_or_email"
                               <%--name="j_username"--%>
                               name="username"
                               type="text" />  <!--<co id="co_usernameField"/>-->
                    </td>
                </tr>
                <tr>
                    <th><label for="password">Password</label></th>
                    <td><input id="password"
                               <%--name="j_password"--%>
                               name="password"
                               type="password" /> <!--<co id="co_passwordField"/>-->
                        <small><a href="/account/resend_password">Forgot?</a></small>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <td><input id="remember_me"
                               <%--name="_spring_security_remember_me"--%>
                               name="remember-me"
                               type="checkbox"/> <!--<co id="co_rememberMe"/>-->
                        <label for="remember_me"
                               class="inline">Remember me</label></td>
                </tr>
                <tr>
                    <th></th>
                    <td><input name="commit" type="submit" value="Sign In" /></td>
                </tr>
            </table>
        </fieldset>
        <%--<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}"/>--%>
    </form>

    <script type="text/javascript">
        document.getElementById('username_or_email').focus();
    </script>
</div>
</body>
</html>
