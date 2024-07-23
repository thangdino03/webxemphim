<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="offset-md-3 col-md-6">
	<form action="ShareVideo" method="post">
	<input type="hidden" name="videoId" value="${videoId }">
		<div class="card">
			<div class="card-header">Send Video to your friend</div>
			<div class="card-body">
				<jsp:include page="/common/inform.jsp"></jsp:include>
				<div class="form-group">
					<label for="email">Your Friend's Email</label> 
					<input type="email"
						class="form-control" name="email" id="email"
						aria-describedby="emailHelperId" placeholder="Email"> <small
						id="emailHelperId" class="form-text text-muted">Email is
						required</small>
				</div>
			</div>
			<div class="card-footer text-right">
				<!-- Sử dụng lớp CSS của Bootstrap -->
				<button type="submit" class="btn btn-success">Send</button>
			</div>
		</div>
	</form>
</div>