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
       <%-- 省：<input type="text" name="province"><br><br><br>--%>
        省：<select id="shen" name="province">
        <option value="浙江">浙江</option>
        <option value="湖南">湖南</option>
        <option value="江苏">江苏</option>
        <option value="上海">上海</option>
        </select>
        <br><br><br>
        市：<select id="city" name="city">

    </select>
     <%--   市：<input type="text" name="city"><br><br><br>--%>
        区：<input type="text" name="county"><br><br><br>

        <br><br><br><br><br><br>
        备注:<input type="text" name="notes"><br><br><br>
        <input type="submit" value="添加">

    </form>

    <script>
      $("#shen").change(function (){
          $("#city").empty()
          var value = $(this).val();
          if(value=="湖南"){
              $("#city").append(" <option value='长沙'>长沙</option>")
              $("#city").append(" <option value='怀化'>怀化</option>")
          }else if(value=="浙江"){
              $("#city").append(" <option value='杭州'>杭州</option>")
              $("#city").append(" <option value='温州'>温州</option>")
              $("#city").append(" <option value='台州'>台州</option>")
              $("#city").append(" <option value='宁波'>宁波</option>")
          }else if(value=="江苏"){
              $("#city").append(" <option value='南京'>南京</option>")
              $("#city").append(" <option value='无锡'>无锡</option>")
              $("#city").append(" <option value='苏州'>苏州</option>")
              $("#city").append(" <option value='泰州'>泰州</option>")
          }else if(value=="上海"){
              $("#city").append(" <option value='上海'>上海</option>")
          }


      })

    </script>

</div>
