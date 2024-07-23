<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div
	class="row w-100 d-flex justify-content-center align-items-center vh-100">
	<div class="w-50 border rounded border-black p-3 ">
		<form action="Changepassword" method="post">
			<h3 class="text-center">Đổi Mật Khẩu</h3>
			<div class="mb-3 row">
				<jsp:include page="/common/inform.jsp"></jsp:include>
				<div class="col">
					<label for="username" class="form-label">Tên đăng nhập:</label> <input
						id="username" value="${username }" name="username" type="text" class="form-control">
				</div>
				<div class="col">
					<label for="currentPassword" class="form-label">Current Password:</label>
					<input id="currentPassword" name="currentPassword" type="password"
						class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<div class="col">
					<label for="password" class="form-label">New Password:</label> <input
						id="password" name="password" type="password" class="form-control">
				</div>
				<div class="col">
					<label for="confirmPassword" class="form-label">Confirm New
						Password:</label> <input id="confirmPassword" name="confirmPassword" type="password"
						class="form-control">
				</div>
			</div>
			<hr>
			<div class="text-center">
				<button type="submit" class="btn btn-success">Change</button>
				<button type="submit" class="btn btn-danger" formaction="Homepage">Cancel</button>
			</div>
		</form>
	</div>
</div>