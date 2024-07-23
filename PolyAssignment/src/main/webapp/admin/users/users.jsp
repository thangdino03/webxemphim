<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<h3 class="text-white">Quản lý người sử dụng</h3>
<nav>
	<div class="nav nav-tabs" id="nav-tab" role="tablist">
		<button class="nav-link active" id="userEdition-tab"
			data-bs-toggle="tab" data-bs-target="#userEdition" type="button"
			role="tab" aria-controls="userEdition" aria-selected="true">User
			Edition</button>
		<button class="nav-link" id="userList-tab" data-bs-toggle="tab"
			data-bs-target="#userList" type="button" role="tab"
			aria-controls="userList" aria-selected="false">User List</button>


	</div>
</nav>
<div class="tab-content text-light " id="nav-tabContent">
	<div class="tab-pane fade show active " id="userEdition"
		role="tabpanel" aria-labelledby="userEdition-tab" tabindex="0">
		<div class="border">
			<form action="" method="post" class="m-2 ">

				<div class="mb-3 row">
				<jsp:include page="/common/inform.jsp"></jsp:include>
					
					<div class="col">
					
						<label for="username" class="form-label">Tên đăng nhập:</label> <input
							id="username" name="username" type="text"
							value="${user.username }" class="form-control"
							aria-describedby="usernamehelpId" placeholder="username">
						<small id="usernamehelpId" class="form-text text-muted">Username
							is required</small>
					</div>
					<div class="col">
						<label for="password" class="form-label">Mật Khẩu:</label> <input
							id="password" name="password" type="password"
							value="${user.password }" aria-describedby="passwordhelpId"
							placeholder="password" class="form-control"> 
							<small
							id="passwordhelpId" class="form-text text-muted">Password
							is required</small>
					</div>
				</div>
				<div class="mb-3 row">
					<div class="col">
						<label for="fullname" class="form-label">Họ Và Tên:</label> <input
							id="fullname" name="fullname" value="${user.fullname }"
							type="text" class="form-control"
							aria-describedby="fullnamehelpId" placeholder="fullname">
						<small id="fullnamehelpId" class="form-text text-muted">Fullname
							is required</small>
					</div>
					<div class="col">
						<label for="email" class="form-label">Email: </label> <input
							id="email" name="email" type="email" class="form-control"
							value="${user.email }" aria-describedby="emailhelpId"
							placeholder="email"> <small id="emailhelpId"
							class="form-text text-muted">Email is required</small>
					</div>
				</div>
				<hr>
				<div>
					<button type="submit" class="btn btn-primary " formaction="Admin/UsersManagement/create">Create</button>
					<button type="submit" class="btn btn-success" formaction="Admin/UsersManagement/update">Update</button>
					<button type="submit" class="btn btn-danger" formaction="Admin/UsersManagement/delete">Delete</button>
					<button type="submit" class="btn btn-warning  " formaction="Admin/UsersManagement/reset">Reset</button>

				</div>
			</form>
		</div>

	</div>

</div>
<div class="tab-pane fade" id="userList" role="tabpanel"
	aria-labelledby="userList-tab" tabindex="0">
	<div class="border ms-3 m-2   ">
		<table class="table table-stripe">
			<tr>
				<td>Username</td>
				<td>Password</td>
				<td>Fullname</td>
				<td>Email</td>
				<!--  <td>Role</td>-->
				<td>&nbsp;</td>
			</tr>
			<c:forEach var="item" items="${users }">
			<tr>
				<td>${item.username }</td>
				<td>${item.password}</td>
				<td>${item.fullname }</td>
				<td>${item.email }</td>
				<!--<td>Admin</td>-->
				<td><a href="Admin/UsersManagement/edit?username=${item.username }"><i class="fa fa-edit me-2" aria-hidden="true">Edit</i></a>
					<a href="Admin/UsersManagement/delete?username=${item.username }"><i class="fa fa-trash" aria-hidden="true">Delete</i></a>
				</td>
			</tr>
	</c:forEach>

		</table>
		
	</div>
</div>