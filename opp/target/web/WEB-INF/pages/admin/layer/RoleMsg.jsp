<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../../commons/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>

    <link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
    <link rel="stylesheet" href="${cssPath}/permission.css">
    <script src="https://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script src="${publicPath}/common.js"></script>
    <script src="${jsPath}/bootstrap.min.js"></script>
    <script src="${layerPath}/layer.js"></script>
    <script src="${jsPath}/permission.js"></script>

</head>


<body>
<table class="table myTable">
<tr>
<td>name</td>
<td><input type="text" id="name" name="name" class="form-control" value="${role.name}" /></td>
</tr>

<tr>
<td>description</td>
<td><input type="text" class="form-control" id="description" name="description" value="${role.description}"/></td>
</tr>

<tr>
<td>是否可用</td>
<td><input type="text" class="form-control" placeholder="1" id="available" name="available" value="${role.available}"/></td>
</tr>

<tr>
<td>备注</td>
<td><input type="text" class="form-control" id="remark" name="remark" value="${role.remark}"/></td>
</tr>
</table>
<div class="btns">
<c:choose>
    <c:when test="${empty type}">
       <button id="editBtn" type="button" class="btn btn-default" onclick="editRole('${role.id}')">修改</button>
    </c:when>
    <c:otherwise>
        <button id="editBtn" type="button" class="btn btn-default" onclick="addRole()">新增</button>
    </c:otherwise>
</c:choose>

</div>
</body>
</html>
