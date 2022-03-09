<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo list</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style type="text/css">
.formcontainer {
	display: flex;
	justify-content: center;
	padding: 2rem;
/* 	position: absolute;
	background-color: #ddd;
	z-index: 10000;
	width: 100%;
	height: 100vh; */
}

.form-group {
	margin: 1rem;
}

.card {
	height: 60%
}

.todo-container {
width:100%
height: 600px;
background-color: red;
}
</style>
</head>
<body>

	<div class="container">
		<div class="container-fluid">

			<div class="formcontainer">
				<div class="card">
					<div class="card-header">
						<h3>Add your todo</h3>
					</div>
					<div class="card-body">
						<form action="addtodo" method="post">
							<div class="form-group">
								<label>Title</label> <input type="text" name="title"
									class="form-control" />
							</div>
							<div class="form-group">
								<label>Due date</label> <input type="date" name="time"
									class="form-control" />
							</div>

							<div class="form-group">
								<input type="submit" value="Add todo" class="btn btn-primary">
							</div>

						</form>
					</div>
				</div>
			</div>

          <div class="d-flex justify-content-center align-items-center todo-container">
          			<div class="card card-body">
				<div class="d-flex justify-content-between"><h3>All todos</h3><button class="btn btn-primary">New todo</button></div>
				<div>
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Title</th>
								<th scope="col">Date</th>
								<th scope="col">Status</th>
								<th scope="col">action</th>
							</tr>
						</thead>
						<tbody>

							<c:if test="${not empty todos}">



								<c:forEach var="todo" items="${todos}">
									<tr>
										<th scope="row">${todo.id}</th>
										<td>${todo.title}</td>
										<td>${todo.time}</td>
										<td>${todo.status}</td>
										<td><a href="/edit" class="btn btn-primary">Edit todo</a><a
											href="/edit" class="btn btn-danger">Delete todo</a></td>
									</tr>
								</c:forEach>

							</c:if>
						</tbody>
					</table>

				</div>

			</div>
          </div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
</body>
</html>