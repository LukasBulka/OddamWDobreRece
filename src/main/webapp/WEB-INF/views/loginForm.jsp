<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/credencialsHeader.jsp" %>

<section class="login-page">
    <h2>Zaloguj się</h2>
    <form method="post" action="/application/login">
        <div class="form-group">
            <input type="email" id="email" name="email" placeholder="Email" />
        </div>
        <div class="form-group">
            <input type="password" id="password" name="password" placeholder="Hasło" />
            <a href="#" class="btn btn--small btn--without-border reset-password">Przypomnij hasło</a>
        </div>

        <div class="form-group form-group--buttons">
            <a href="#" class="btn btn--without-border">Załóż konto</a>
            <button class="btn" type="submit">Zaloguj się</button>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</section>

<%@ include file="/WEB-INF/views/footer.jsp" %>