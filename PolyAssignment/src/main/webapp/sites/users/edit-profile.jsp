<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div
	class="row w-100 d-flex justify-content-center align-items-center vh-100">
	<div class="w-50 border rounded border-black p-3 ">
		<form action="EditProfile" method="post">
			<h3 class="text-center">Chỉnh sửa thông tin</h3>
			<div class="mb-3 row">
			
				<jsp:include page="/common/inform.jsp"></jsp:include>
				
				<div class="col">
					<label for="username" class="form-label">Tên đăng nhập:</label> <input
						id="username" name="username" type="text" value="${user.username }" class="form-control">
				</div>
				<div class="col">
					<label for="password" class="form-label">Mật Khẩu:</label> <input
						id="password" name="password" type="password" value="${user.password }" class="form-control">
				</div>
			</div>
			<div class="mb-3 row">
				<div class="col">
					<label for="fullname" class="form-label">Họ Và Tên:</label> <input
						id="fullname" name="fullname" type="text" value="${user.fullname }" class="form-control">
				</div>
				<div class="col">
					<label for="email" class="form-label">Email: </label> <input
						id="email" name="email" type="email" value="${user.email }" class="form-control">
				</div>
			</div>
			<hr>
			<div class="text-center">
				<button type="submit" class="btn btn-success">Lưu</button>
				<button type="submit" class="btn btn-danger" formaction="Homepage"> Hủy bỏ</button>
			</div>
		</form>
	</div>
</div>
