<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div
	class="container align-items-center justify-content-center  d-flex ">
	<div
		class="row w-100 d-flex justify-content-center align-items-center vh-100">
		<div class=" border w-50  rounded border-black p-3">
			<!-- Giảm padding xuống 3px -->
			<form action="" method="post">
				<h3 class="text-center">Quên Mật Khẩu</h3>
				<jsp:include page="/common/inform.jsp"></jsp:include>
				
				<div class="mb-3">
					<label for="username" class="form-label">Tên đăng nhập:</label> <input
						id="username" name="username" type="text" class="form-control">
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email: </label> <input
						id="email" name="email" type="email" class="form-control">
				</div>

				<hr>
				<button type="submit" class="btn btn-success ">Nhận Mật
					Khẩu</button>
				<button type="submit" class="btn btn-danger " formaction="Homepage">Cancel</button>

			</form>
		</div>
	</div>
</div>