<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ include file="../jspf/header.jspf"%>
<%@ include file="../jspf/main_menu.jspf"%>

<!-- Page Content -->
<div class="container">

	<!-- Portfolio Item Heading -->
	<h3>
		<a href="http://localhost:8080/Aware_shopping/producer/add">Dodaj
			producenta</a>
	</h3>
	<h1 class="my-4">${producer.name}</h1>

	<!-- Portfolio Item Row -->
	<div class="row">

		<div class="col-md-8">
			<img class="img-fluid"
				src="${pageContext.request.contextPath}/resources/uploads/producers/${producer.fileUrl}"
				alt="image-of-${producer.name}" />
		</div>

		<div class="col-md-4">
			<h3 class="my-3">Szczegóły</h3>
			<p>${producer.description}</p>
			<ul>
				<li>Polski producent</li>
				<li>Produkuje w Polsce</li>
			</ul>
			<c:choose>
				<c:when
					test="${sessionScope.user.admin==true}">
					<a
						href="http://localhost:8080/Aware_shopping/producer/edit/${producer.id}">Edytuj
						producenta</a>
					<a
						href="http://localhost:8080/Aware_shopping/producer/delete/${producer.id}">Usuń
						producenta</a>
				</c:when>
			</c:choose>
		</div>

	</div>
	<!-- /.row -->

	<!-- Related Projects Row -->
	<h3 class="my-4">Produkty ${producer.name}</h3>

	<div class="row">

		<c:forEach items="${products}" var="product">
			<div class="col-md-3 col-sm-6 mb-4">
				<a href="http://localhost:8080/Aware_shopping/product/${product.id}">${product.name}</a>
				<a href="#"> <img class="img-fluid"
					src="${pageContext.request.contextPath}/resources/uploads/products/${product.fileUrl}"
					alt="image-of-${product.name}" /></a>
			</div>
		</c:forEach>

	</div>
	<!-- /.row -->

</div>
<!-- /.container -->

<%@ include file="../jspf/footer.jspf"%>
