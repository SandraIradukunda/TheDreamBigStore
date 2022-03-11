<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="../include/header.jsp" />

	<div class="container">
	<h1> All Products </h1>

		<form action="/productDisp" method="get">

			Search <input type="text" name="search" class="form-control" >
			<br>
			<input type="submit"
															value="Submit" class="btn btn-primary" />
		</form>
		<br>

		<c:choose>
			<c:when test="${empty products }">
				<h1>No results found.</h1>
			</c:when>
			<c:otherwise>
				<table border="1" cellpadding="3">
					<tr>
						<td><b>ID</b></td>
						<td><b>Product name</b></td>
						<td><b>Quantity</b></td>
						<td><b>Price</b></td>
						<td><b>Category</b></td>
						<td><b>Action</b></td>
					</tr>

					<c:forEach items="${products}" var="products">
						<tr>
							<td>${products.id }</td>
							<td>${products.productName }</td>
							<td>${products.quantity }</td>
							<td>${products.price }</td>
							<c:forEach items="${products.categories}" var="Category">
							<td>${Category.category_name }</td>
							</c:forEach>
							<td><a href="/deleteProduct?id=${products.id }">Delete</a> <a href="/addToCart?id=${products.id}&productName=${products.productName }&price=${products.price }">Add To Cart</a></td>
						</tr>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>

	</div>
</div>
</body>

</html>