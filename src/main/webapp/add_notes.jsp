<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
	</div>
	<br>

	<!-- this is add form -->
	<div class="container">
		<h1>Please fill your note detail</h1>
		<br>
		<form action ="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label>
				<input required name="title"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Title">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<br>
				<textarea class="form-control" required name="content"
					style="height: 250px" id="content" placeholder="Enter Content Here"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-outline-light brown text-center">Add</button>
			</div>
		</form>
	</div>
</body>
</html>