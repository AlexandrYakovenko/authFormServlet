<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>--%>

<!-- Page -->
<%@ include file="parts/head.jsp" %>

<c:if test="${requestScope.error eq true}">
    <div class="alert alert-danger" align="center">
        <strong>${requestScope.message}</strong>
    </div>
</c:if>

<h5>
    Welcome
    <c:if test="${sessionScope.username ne null}">${sessionScope.username}</c:if>
    <c:if test="${sessionScope.username eq null}">Guest</c:if>
</h5>

<c:if test="${sessionScope.username eq null}">
    <p>Login or Registration please</p>
    <div class="mt-1">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/exhibition/login" role="button">Login</a>
        <br>
        <a class="btn btn-primary mt-1" href="${pageContext.request.contextPath}/exhibition/registration" role="button">Registration</a>
        <br>
        <a class="btn btn-primary mt-1" href="${pageContext.request.contextPath}/welcome.jsp" role="button">Welcome
            page</a>
    </div>
</c:if>

<br>
<a href="${pageContext.request.contextPath}/exhibition/exception">Exception</a>

<%@ include file="parts/tail.jsp" %>
<!-- Page -->
