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

	<div class="row">

		<div class="col-lg-3">
			<p>.</p>
			<p>^</p>
			<h1 class="my-4">Kupuj świadomie:</h1>
			<%@ include file="../jspf/categories.jspf"%>
		</div>

		<!-- /.col-lg-3 -->

		<div class="col-lg-9">
			<p>.</p>
			<p>^</p>

			<div class="card mt-4">

				<div class="card-header">Dodaj producenta</div>
				<div class="card-body">

					<form:form method="post" modelAttribute="producer">
						<p>
							Nazwa:
							<form:input type="text" path="name" />
							<form:errors path="name" />
						</p>
						<p>
							Opis:
							<form:input type="textarea" path="description" />
							<form:errors path="description" />
						</p>
						<p>
							Produkuje w Polsce:
							<form:checkbox path="producingInPL" />
							<form:errors path="producingInPL" />
						</p>
						<p>
							Pochodzi z Polski:
							<form:checkbox path="comingFromPL" />
							<form:errors path="comingFromPL" />
						</p>
						<p>
							<input type="submit" value="Dodaj" />
						</p>


					</form:form>

				</div>

			</div>
			<!-- /.card -->

		</div>
		<!-- /.col-lg-9 -->

	</div>

</div>
<!-- /.container -->
<%@ include file="../jspf/footer.jspf"%>
