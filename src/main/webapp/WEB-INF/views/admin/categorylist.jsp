<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="/forAdmin/assets/images/favicon.png">
<title>Account Controller</title>
<%@ include file="/layoutForAdmin/head.jsp"%>

</head>

<body>
	<!-- Main wrapper - style you can find in pages.scss -->
	<div id="main-wrapper">
		<%@ include file="/layoutForAdmin/headeradmin.jsp"%>

	</div>
	<!-- End Wrapper -->
	<div class="row mt-3">
		<div class="col-2"></div>
		<div class="col-9 m-auto" style="height: 100%">
		
		
		
		
		<!-- Sales Cards  -->
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<h3 class="alert alert-info">
					Category List <a href="categorycontrol" class="btn btn-success float-right">Add
						New Category</a>
				</h3>
				<table class="table text-center">
					<thead>
						<tr>
							<th style="font-weight: bolder; font-size: 18px">Category Id</th>
							<th style="font-weight: bolder; font-size: 18px">Category
								Name</th>
							<th style="font-weight: bolder; font-size: 18px">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${page.content}">
							<tr>
								<td>${item.id}</td>
								<td>${item.name}</td>
								<td>
									<a class='btn btn-warning btn-xs'
									style="font-size: 14px"
									href="category/edit/${item.id}"> <span
										class="glyphicon glyphicon-edit"></span> Edit
									</a> 
									<a href="category/delete/${item.id}"
									style="font-size: 14px" class="btn btn-danger btn-xs"> <span
										class="glyphicon glyphicon-remove"></span> Delete
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr />
				<div class="text-center">
					<a href="/admin/category?p=0" class="btn btn-primary">First</a> <a
						href="/admin/category?p=${page.number-1}" class="btn btn-primary">Previous</a>
					<a href="/admin/category?p=${page.number+1}"
						class="btn btn-primary">Next</a> <a
						href="/admin/category?p=${page.totalPages-1}"
						class="btn btn-primary">Last</a>
				</div>
				<hr />
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		</div>
	</div>

	<%@ include file="/layoutForAdmin/footeradmin.jsp"%>
</body>

</html>