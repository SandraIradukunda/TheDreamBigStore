<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/header.jsp" />

	<div class="container">
	<h1> Checkout </h1>


		<div class="row">
			<div class="col-6">
				<div class="container">
				<form method="post" action=""
					  enctype="multipart/form-data">
					<!-- Create Recipe Form -->
					<h4>Shipping</h4>
					<c:forEach var="error" items="${errors}">
					<span style='color: red'>${error}</span>
					<br>
					</c:forEach>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							First Name </label> <input type="text" class="form-control"
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
							Last Name </label> <input type="number" class="form-control"
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
							Postal Address </label> <input type="number" class="form-control"
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
							Streat Address </label> <input type="text" class="form-control"
													 id="fexampleFormControlInput1" name="category"
													 value="${form.category }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("category") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Country </label> <input type="text" class="form-control"
														   id="fexampleFormControlInput1" name="category"
														   value="${form.category }" />
						<c:forEach items="${errorFields}" var="errorField">
							<c:if test='${errorField.getField().equals("category") }'>
								<br>
								<span style='color: red'>${errorField.defaultMessage}</span>

							</c:if>
						</c:forEach>
					</div>

					<div class="mb-3">
						<label for="formGroupExampleInput1" class="form-label">
							Email </label> <input type="text" class="form-control"
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
						<button type="submit" value="submit" class="btn btn-primary">Place Order</button>
					</div>


			</form>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="container ">
				<h4> Cart </h4>
<br>
		<c:choose>
			<c:when test="${empty carts }">
				<h1>Please Add Products To Cart.</h1>
			</c:when>
			<c:otherwise>
				<table border="1" cellpadding="3">
					<tr>
						<td><b>ID</b></td>
						<td><b>Product name</b></td>
						<td><b>Price</b></td>
						<td><b>Quantity</b></td>
						<td><b>Amount</b></td>
						<td><b>Action</b></td>
					</tr>

					<c:set var="total" value="0"></c:set>
					<c:set var="totalitems" value="0"></c:set>
					<c:forEach items="${carts}" var="carts">
						<c:set var="total" value="${total + carts.price * carts.quantity }"></c:set>
						<c:set var="totalitems" value="${totalitems+1 }"></c:set>
						<tr>

							<td>${carts.id }</td>
							<td>${carts.productName }</td>
							<td>${carts.price }</td>
							<td><form method="get" action="/editCart"><input type="hidden" name="id" value="${carts.id }">  <input type="number" name="quentity" value="${carts.quantity }" style="width: 50px" > <input type="hidden" name="productName" value="${carts.productName }" > <input type="hidden" name="price" value="${carts.price }" > <input type="submit" value="Edit" > </form></td>
							<td>${carts.price * carts.quantity }</td>

							<td><a href="/deleteCart?id=${carts.id }">Delete</a> </td>
						</tr>
					</c:forEach>
					<tr style="border: 1px solid black">
						<td colspan="4"  align="right">Total Items:</td>
						<td>${totalitems }</td>
					</tr>
					<tr style="border: 1px solid black">
						<td colspan="4"  align="right">Shipping:</td>
						<td>Free</td>
					</tr>
					<tr style="border: 1px solid black">
						<td colspan="4"  align="right">Taxes:</td>
						<td>0</td>
					</tr>
					<tr style="border: 1px solid black">
						<td colspan="4"  align="right">Total Amount:</td>
						<td>${total }</td>
					</tr>
				</table>

			</c:otherwise>
		</c:choose>

					<br>
					<br>

					<h4> Shipping & Delivery </h4>
					<p>Orders are delivered on business days (Monday-Friday) excluding public holidays.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<br/>
</body>

</html>