<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link"
                                    href="${pageContext.request.contextPath}/exhibition/">Exhibitions</a>
            </li>
            <li class="nav-item"><a class="nav-link"
                                    href="${pageContext.request.contextPath}/">My exhibitions</a>
            </li>
            <li class="nav-item"><a class="nav-link"
                                    href="${pageContext.request.contextPath}/">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/">User list </a>
            </li>

        </ul>

        <div class="navbar-text mr-3"> ${sessionScope.username}</div>

        <c:if test="${sessionScope.username ne null}">
        <div class="mr-3">
            <form action="${pageContext.request.contextPath}/exhibition/logout" method="post">
                <button type="submit" class="btn btn-primary">Log out  <i class="fas fa-sign-out-alt"></i>
                </button>
            </form>
        </div>
        </c:if>
    </div>
</nav>
