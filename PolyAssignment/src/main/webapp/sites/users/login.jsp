<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div
	class="container-fluid vh-100 d-flex  justify-content-center  align-items-center ">

	<img
		src="https://i.pinimg.com/originals/8f/f0/26/8ff026a0bf6fb6e8eb2dca531f6a756f.png"
		alt="Logo" class="img-fluid">
	<div class=" border  col-md-6 col-lg-4 rounded border-black p-3">
		<form action="" method="post">
			
			<h3 class="text-center">Đăng Nhập</h3>
			
			<jsp:include page="/common/inform.jsp"></jsp:include>
			
			<div class="mb-3">
				<label for="username" class="form-label">Tên đăng nhập:</label> <input
					id="username" name="username" type="text" class="form-control">
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Mật Khẩu:</label> <input
					id="password" name="password" type="password" class="form-control">
			</div>
			<div class="mb-3 form-check">
				<input id="remember" name="remember" type="checkbox"
					class="form-check-input"> <label for="remember"
					class="form-check-label">Remember me?</label>
			</div>
			<hr>
			<button type="submit" class="btn btn-success " >Đăng nhập</button>
			<button type="submit" class="btn btn-danger " formaction="Registration"> Đăng ký </button>
			<div class="mt-2">
				<a href="ForgotPassword">Bạn quên mật khẩu ?</a>
			</div>
		</form>
	</div>


</div>
