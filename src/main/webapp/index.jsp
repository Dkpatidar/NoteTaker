<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@include file="all_js_css.jsp" %>
<title>Note Taker</title>
</head>
<body>

	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp" %> 
		<br>
		<div class="card py-5">
			<img alt="" class="img-fluid mx-auto " style="max-width: 200px" src="img/notes.png">
			<br>
			<h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Notes</h1>
			<div class="container text-center">
				<a class="btn btn-outline-dark text-center mt-3" href="add_notes.jsp">Start</a>
			</div>
		</div>
	</div>
</body>
</html>