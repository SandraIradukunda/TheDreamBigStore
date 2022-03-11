<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/header.jsp" />

	<div class="container">
	<!-- navbar -->
	<form method="post" action="/buyer"
		enctype="multipart/form-data">
		<!-- Create Recipe Form -->
		<h1>Clothes</h1>
		<c:forEach var="error" items="${errors}">
			<span style='color: red'>${error}</span>
			<br>
		</c:forEach>
			<div class="mb-3">
				<label for="formGroupExampleInput1" class="form-label">
					Clothes ID </label> <input type="text" class="form-control"
					id="fexampleFormControlInput1" name="firstName"
					value="${form.firstName }" />
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.getField().equals("firstName") }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>

					</c:if>
				</c:forEach>
			</div>

			<div class="mb-3">
				<label for="formGroupExampleInput1" class="form-label">
					Clothes Brand </label> <input type="text" class="form-control"
					id="fexampleFormControlInput1" name="lastName"
					value="${form.lastName }"  />
				<c:forEach items="${errorFields}" var="errorField">
					<c:if test='${errorField.getField().equals("lastName") }'>
						<br>
						<span style='color: red'>${errorField.defaultMessage}</span>

					</c:if>
				</c:forEach>
			</div>



		<div class="mb-3">
			<label for="formGroupExampleInput1" class="form-label">
				Size </label> <input type="text" class="form-control"
											  id="fexampleFormControlInput1" name="name"
											  value="${form.business_name }"  />
			<c:forEach items="${errorFields}" var="errorField">
				<c:if test='${errorField.getField().equals("business_name") }'>
					<br>
					<span style='color: red'>${errorField.defaultMessage}</span>
				</c:if>
			</c:forEach>
		</div>

		<div class="mb-3">
			<label for="formGroupExampleInput1" class="form-label">
				Gender </label> <input type="text" class="form-control" id="fexampleFormControlInput1" name="store location"
												 value="${form.address }"  />
			<c:forEach items="${errorFields}" var="errorField">
				<c:if test='${errorField.getField().equals("address") }'>
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