<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/19/019
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>测试结果</title>
</head>
<body>
  <h1>使用 Ant 风格的Url SUCCESS</h1>
  <h1>使用 PathVariable 映射获得 url 中的占位符为 ${id}</h1>

  <!--此处测试修改用户信息表单-->
  <h1>修改用户信息</h1>
  <form action="/test/edituser" method="post">
    <table border="0" cellpadding="10" cellspacing="0">
      <tr>
        <th>用户ID</th>
        <td><input type="text" name="id" value="${user.id}"></td>
      </tr>
      <tr>
        <th>登录名</th>
        <td><input type="text" name="loginId" value="${user.loginId}"></td>
      </tr>
      <tr>
        <th>用户密码</th>
        <td><input type="password" name="loginPwd" value="${user.loginPwd}"></td>
      </tr>
      <tr>
        <th>用户姓名</th>
        <td><input type="text" name="name" value="${user.name}"></td>
      </tr>
      <tr>
        <th>家庭地址</th>
        <td><input type="text" name="address" value="${user.address}"></td>
      </tr>
      <tr>
        <th>出生日期</th>
        <td><input type="text" name="birthday" value="${user.birthday}"></td>
      </tr>
      <tr>
        <th>头像Id</th>
        <td><input type="text" name="headImg" value="${user.headImg}"></td>
      </tr>
      <tr>
        <th>电子邮箱</th>
        <td><input type="text" name="mail" value="${user.mail}"></td>
      </tr>
      <tr>
        <th>手机号码</th>
        <td><input type="text" name="phone" value="${user.phone}"></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="提交"></td></td>
      </tr>
    </table>
  </form>
</body>
</html>
