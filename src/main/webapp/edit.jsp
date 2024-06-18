<%@page import="com.entities.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
		<h1>Edit your Notes</h1>
		<br>
		<%
			int noteId = Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryProvider.getFactory().openSession();
			Note note = (Note) s.get(Note.class, noteId);
		%>
		<form action ="UpdateServlet" method="post">
		<input value="<%= note.getId() %>" name="noteId" type="hidden"/>
			<div class="form-group">
				<label for="title">Note Title</label>
				<input required name="title"
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Title" value="<%=note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label> 
				<br>
				<textarea class="form-control" required name="content"
					style="height: 250px" id="content" placeholder="Enter Content Here"><%=note.getContent()%></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save</button>
			</div>
		</form>
	</div>
</body>
</html>