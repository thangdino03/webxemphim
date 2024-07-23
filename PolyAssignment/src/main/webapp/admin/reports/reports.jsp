<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h3 class="text-white">Báo cáo - Thống kê</h3>
<nav>
	<div class="nav nav-tabs" id="nav-tab" role="tablist">
		<button class="nav-link active" id="favorite-tab" data-bs-toggle="tab"
			data-bs-target="#favorite" type="button" role="tab"
			aria-controls="favorite" aria-selected="true">Favorite</button>
		<button class="nav-link" id="favoriteUser-tab" data-bs-toggle="tab"
			data-bs-target="#favoriteUser" type="button" role="tab"
			aria-controls="favoriteUser" aria-selected="false">Favorite
			User</button>
		<button class="nav-link" id="shareFriend-tab" data-bs-toggle="tab"
			data-bs-target="#shareFriend" type="button" role="tab"
			aria-controls="shareFriend" aria-selected="false">Share
			Friends</button>

	</div>
</nav>
<div class="tab-content" id="nav-tabContent">
	<div class="tab-pane fade show active" id="favorite" role="tabpanel"
		aria-labelledby="favorite-tab" tabindex="0">
		<!-- tab favorite -->
		<div class="border ms-1 m-2   ">
			<table class="table table-stripe">
				<tr>
					<td><b>Video Title</b></td>
					<td><b>Favorite count</b></td>
					<td><b>Last Date</b></td>
					<td><b>Oldest Date</b></td>

				</tr>
				<c:forEach var="item" items="${favList }">
				<tr>
					<td>${item.videoTitle }</td>
					<td>${item.favoriteCount}</td>
					<td>${item.newestDate }</td>
					<td>${item.oldestDate }</td>

				</tr>
				</c:forEach>

			</table>
		</div>



	</div>
	<div class="tab-pane fade" id="favoriteUser" role="tabpanel"
		aria-labelledby="favoriteUser-tab" tabindex="0">
		<!-- <div class="d-flex align-items-center justify-content-center w-100 mt-2 ">
                        <label for="videoTitle" class="col-form-label me-3">Video Title</label>
                        <select class="form-select form-select-sm" id="videoTitle" aria-label="Default select example"
                            style="width: 75%;">
                            <option value="1" >Open this select Video</option>
                            <option selected>Lâu Ghê Mới Gặp</option>
                            <option value="2">Đấu Phá Thương Khung</option>
                            <option value="3">Tiên Nghịch</option>
                        </select>
                        <button class="btn btn-success ms-2  ">Post</button>
                    </div> -->
		<form action="" method="">
			<div class="row mt-3">
				<div class="col">
					<div class="form-group">
						<div class="input-group justify-content-center ">
							<label for="videoTitle" class="input-group-text border-0 ">Video
								Title:</label> 
								<select name="videoUserId" id="videoUserId"
								class="custom-select w-50">
								<c:forEach var="item" items="${vidList }">
								<option value="${item.videoId }" 
								${item.videoId == videoUserId? 'selected':'' } >${item.title }</option>
								</c:forEach>
							</select>
							<div class="input-group-append ms-1 ">
								<button type="submit" class="btn btn-info">Report</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>


		<div class="border ms-1 m-2 mt-3  ">



			<table class="table table-stripe">
				<tr>
					<td><b>User Name</b></td>
					<td><b>Fullname</b></td>
					<td><b>Email</b></td>
					<td><b>Favorite Date</b></td>

				</tr>
				<c:forEach var="item" items="${favUsers }">
				<tr>
					<td>${item.username }</td>
					<td>${item.fullname }</td>
					<td>${item.email }</td>
					<td>${item.likeDate }</td>

				</tr>
				</c:forEach>

			</table>
		</div>
	</div>
	<div class="tab-pane fade" id="shareFriend" role="tabpanel"
		aria-labelledby="shareFriend-tab" tabindex="0">
		<form action=""  >
			<div class="row mt-3">
				<div class="col">
					<div class="form-group">
						<div class="input-group justify-content-center ">
							<label for="videoTitle" class="input-group-text border-0 ">Video
								Title:</label> 
								<select name="videoUserId" id="videoUserId"
								class="custom-select w-50">
								<c:forEach var="item" items="${vidList}">
								<option value="${item.videoId }" ${item.videoId == videoShareId ? 'selected' : '' }>${item.title}</option>
								</c:forEach>
							</select>
							<div class="input-group-append ms-1 ">
								<button type="submit" class="btn btn-info">Report</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

		<div class="border ms-1 m-2  mt-3   ">



			<table class="table table-stripe">
				<tr>
					<td><b>Sender Name</b></td>
					<td><b>Sender Email</b></td>
					<td><b>Receiver Email</b></td>
					<td><b>Send Date</b></td>

				</tr>
				<c:forEach var="item" items="${shareUsers}">
				<tr>
					<td>${item.senderName }</td>
					<td>${item.senderEmail }</td>
					<td>${item.receiverEmail }</td>
					<td>${item.sendDate}</td>

				</tr>
				</c:forEach>

			</table>
		</div>
	</div>

</div>

