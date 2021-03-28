<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="resources/css/style.css"/>"/>
</head>
<body>
<header class="header--main-page">
    <nav class="container container--70">
        <ul class="nav--actions">
            <li><a href="<c:url value="/application/login"/>" class="btn btn--small btn--without-border">Zaloguj</a>
            </li>
            <li><a href="<c:url value="/application/register"/>" class="btn btn--small btn--highlighted">Załóż konto</a>
            </li>
        </ul>

        <ul>
            <li><a href="<c:url value="/"/>" class="btn btn--without-border active">Start</a></li>
            <li><a href="<c:url value="/explanation"/>" class="btn btn--without-border">O co chodzi?</a></li>
            <li><a href="<c:url value="/about"/>" class="btn btn--without-border">O nas</a></li>
            <li><a href="<c:url value="/institutions"/>" class="btn btn--without-border">Fundacje i organizacje</a></li>
            <li>
                <sec:authorize access="isAuthenticated()">
                    <a href="<c:url value="/donation/donationForm"/>" class="btn btn--without-border">Przekaż dary</a>
                </sec:authorize>
            </li>
            <li><a href="<c:url value="/contact"/>" class="btn btn--without-border">Kontakt</a></li>
        </ul>
    </nav>


    <c:if test="${not empty param.registrationSuccess}">
        <div class="alert-box">
            <div class="alert-info">Successfully registered</div>
        </div>
    </c:if>

    <div class="slogan container container--90">
        <div class="slogan--item">
            <h1>
                Zacznij pomagać!<br/>
                Oddaj niechciane rzeczy w zaufane ręce
            </h1>
        </div>
    </div>
</header>