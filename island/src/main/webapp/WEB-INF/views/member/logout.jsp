<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="root" value="${pageContext.request.contextPath}" scope="page" />
<!DOCTYPE html>
<html>
<head>
    <title>Logout</title>
</head>
<body>
    <script>
        <c:if test="${not empty alertMsg}">
            alert('${alertMsg}');
        </c:if>
        window.location.href = '${root}/main';
    </script>
    <c:remove var="alertMsg" scope="session"/>
</body>
