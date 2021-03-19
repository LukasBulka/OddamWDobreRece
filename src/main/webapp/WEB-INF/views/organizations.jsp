<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<section class="help">
    <h2>Komu pomagamy?</h2>

    <!-- SLIDE 1 -->
    <div class="help--slides active" data-id="1">
        <p>W naszej bazie znajdziesz listę zweryfikowanych Fundacji, z którymi współpracujemy.
            Możesz sprawdzić czym się zajmują.</p>

        <ul class="help--slides-items">
            <c:forEach items="${institutions}" var="institution" varStatus="item">
                <c:if test="${item.index mod 2 == 0}">
                    <li>
                </c:if>
                <div class="col">
                    <div class="title"><c:out value="${institution.name}"/></div>
                    <div class="subtitle"><c:out value="${institution.description}"/></div>
                </div>
                <c:if test="${item.index mod 2 != 0}">
                    </li>
                </c:if>
            </c:forEach>
        </ul>
    </div>

</section>
<%@ include file="/WEB-INF/views/footer.jsp" %>