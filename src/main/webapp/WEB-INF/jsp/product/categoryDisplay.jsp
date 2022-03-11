<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/header.jsp" />

	<div class="container">
	<h1> All Categories </h1>
		<br>
		<c:choose>
			<c:when test="${empty categories }">
				<h1>No results found.</h1>
			</c:when>
			<c:otherwise>
				<table border="1" cellpadding="3">
					<tr>
						<td><b>ID</b></td>
						<td><b>Category name</b></td>
					</tr>

					<c:forEach items="${categories}" var="categories">
						<tr>
							<td>${categories.id }</td>
							<td>${categories.category_name }</td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>

	</div>
</div>
</body>

</html>