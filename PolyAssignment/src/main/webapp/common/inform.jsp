<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:if test="${not empty message }">
	<div class="row">
		<div class="col">
			<div class="alert alter-sucess bg-success text-white">${message}</div>
		</div>
	</div>
</c:if>
<c:if test="${not empty error }">
	<div class="row">
		<div class="col">
			<div class="alert alter-danger bg-warning text-dark">${error}</div>
		</div>
	</div>
</c:if>