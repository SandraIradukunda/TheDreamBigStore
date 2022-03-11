<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/header.jsp" />

	<table border="1" cellpadding="3">

		<c:forEach items="${online_store}" var="Online Store">

		</c:forEach>
	</table>
</body>

</html>