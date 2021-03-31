<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/credencialsHeader.jsp" %>

<c:if test="${not empty param.registrationFailure}">
    <div class="alert-box">
        <div class="alert-info">Passwords not equal!!! </div>
    </div>
</c:if>

<section class="login-page">
    <h2>Załóż konto</h2>
    <form:form method="post" modelAttribute="user">
        <div class="form-group">
            <form:input path="firstName" type="text" name="firstName" placeholder="Imię" />
        </div>
        <div class="form-group">
            <form:input path="lastName" type="text" name="lastName" placeholder="Nazwisko" />
        </div>
        <div class="form-group">
            <form:input path="email" type="email" name="email" placeholder="Email" />
        </div>
        <div class="form-group">
            <form:input path="password" type="password" name="password" placeholder="Hasło" />
        </div>
        <div class="form-group">
            <form:input path="password2" type="password" name="password2" placeholder="Powtórz hasło" />
        </div>

        <div class="form-group form-group--buttons">
            <a href="login.html" class="btn btn--without-border">Zaloguj się</a>
            <button class="btn" type="submit">Załóż konto</button>
        </div>
    </form:form>
</section>

<%@ include file="/WEB-INF/views/footer.jsp" %>
