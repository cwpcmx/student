<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生列表</title>
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
                    <small>学生列表 —— 显示所有学生</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/student/toAddStudent">新增</a>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>id</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>身份证号</th>
                    <th>手机号</th>
                    <th>省</th>
                    <th>市</th>
                    <th>区</th>
                    <th>备注</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="student" items="${requestScope.get('list')}">
                    <tr>
                        <td>${student.getId()}</td>
                        <td>${student.getName()}</td>
                        <td>${student.getGender()}</td>
                        <td>${student.getIdCard()}</td>
                        <td>${student.getPhone()}</td>
                        <td>${student.getProvince()}</td>
                        <td>${student.getCity()}</td>
                        <td>${student.getCounty()}</td>
                        <td>${student.getNotes()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/student/toUpdateStudent?id=${student.getId()}">更改</a> |
                            <a href="${pageContext.request.contextPath}/student/del/${student.getId()}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>




        </div>
        </div>
    </div>
</div>

<script type="text/javascript">


</script>
</body>
</html>