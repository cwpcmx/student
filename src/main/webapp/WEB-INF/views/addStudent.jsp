<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>新增学生</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%
        pageContext.setAttribute("PATH",request.getContextPath());
    %>

    <%--    引入Jquer--%>
    <script type="text/javascript" src="${PATH}/static/js/jquery-3.1.1.js"></script>
    <%--    映入BootStrap样式--%>
    <link href="${PATH}/static/bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet">
    <script src="${PATH}/static/bootstrap-5.1.3-dist/js/bootstrap.js"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增学生</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/student/addStudent" method="post">
        名称：<input type="text" name="name"><br><br><br>
        性别：<input type="text" name="gender"><br><br><br>
        身份证：<input type="text" name="idCard"><br><br><br>
        手机号：<input type="text" name="phone"><br><br><br>
        省：<input type="text" name="province"><br><br><br>
        市：<input type="text" name="city"><br><br><br>
        区：<input type="text" name="county"><br><br><br>

        <br><br><br><br><br><br>
        备注:<input type="text" name="notes"><br><br><br>
        <input type="submit" value="添加">
    </form>

    <script>


    </script>

</div>