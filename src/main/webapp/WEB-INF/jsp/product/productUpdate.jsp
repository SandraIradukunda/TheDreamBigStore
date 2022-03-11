<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/header.jsp" />

	<div class="container">
	<form method="post" action="/product"
		enctype="multipart/form-data">
		<!-- Create Recipe Form -->
		<h1>Product</h1>
		<c:forEach var="error" items="${errors}">
			<span style='color: red'>${error}</span>
			<br>
		</c:forEach>

		<div class="mb-3">
				<label for="formGroupExampleInput1" class="form-label">
					Product Name </label> <input type="text" class="form-control"
					id="fexampleFormControlInput1" name="productName"
					value="${form.productName }" />
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.getField().equals("productName") }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>

					</c:if>
				</c:forEach>
			</div>

			<div class="mb-3">
				<label for="formGroupExampleInput1" class="form-label">
					quantity </label> <input type="number" class="form-control"
					id="fexampleFormControlInput1" name="quantity"
					value="${form.quantity }" />
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.getField().equals("quantity") }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>

					</c:if>
				</c:forEach>
			</div>

		<div class="mb-3">
			<label for="formGroupExampleInput1" class="form-label">
				price </label> <input type="number" class="form-control"
										 id="fexampleFormControlInput1" name="price"
										 value="${form.price }" />
			<c:forEach items="${errorFields}" var="errorField">
				<c:if test='${errorField.getField().equals("price") }'>
					<br>
					<span style='color: red'>${errorField.defaultMessage}</span>

				</c:if>
			</c:forEach>
		</div>

		<div class="mb-3">
			<label for="formGroupExampleInput1" class="form-label">
				category </label> <input type="text" class="form-control"
									  id="fexampleFormControlInput1" name="category"
									  value="${form.category }" />
			<c:forEach items="${errorFields}" var="errorField">
				<c:if test='${errorField.getField().equals("category") }'>
					<br>
					<span style='color: red'>${errorField.defaultMessage}</span>

				</c:if>
			</c:forEach>
		</div>

			<div>
				<button type="submit" value="submit" class="btn btn-primary">Add</button>
			</div>

		</div>

		<br> <br>
	</form>

</div>
</body>
</html>