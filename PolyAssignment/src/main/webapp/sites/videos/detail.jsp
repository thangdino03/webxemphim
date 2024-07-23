<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
/* CSS cho hiệu ứng hover */
.tittlene {
	color: white; /* Màu chữ mặc định */
}

.tittlene:hover {
	color: yellow; /* Màu chữ khi hover */
}
</style>
<div class="row  mb-3  ">
	<div class="item  col-12 col-lg-9 mt-3   ">
		<div class="card col-12 col-md-3 w-100 bg-dark text-white ">
			<div class="card-video text-center ">
				<!-- Thêm lớp CSS text-center-->
				<iframe class="w-100 " height="526" src="${video.link }"
					allowfullscreen></iframe>
				<!--<img alt="" src="${video.poster }" class="w-100 " height="526">-->
			</div>
			<h5 class="card-title mt-2 ms-3  ">${video.title }</h5>

			<div class=" d-flex justify-content-between ms-3  align-items-end">
				<div>
					<p>${video.views }Lượt xem</p>

				</div>

				<div class=" text-end">
					<a href="LikeVideo?videoId=${video.videoId }&page=Detail"
						class="btn btn-success me-2 "><i
						class="bi bi-hand-thumbs-up-fill"></i> Like</a> <a
						href="ShareVideo?videoId=${video.videoId }"
						class="btn btn-warning  me-2"><i class="bi bi-share-fill"></i>
						Share</a>
				</div>

			</div>
			<h5 class="ms-3">Mô tả</h5>
			<p class="ms-3">${video.description}</p>
		</div>
		<div>
			
		</div>
	</div>

	<div class="menu col-12 col-lg-3 mt-2"
		style="max-height: 660px; overflow-y: auto;">
		<c:forEach var="item" items="${videos }">
			<div class="row g-0 align-items-center ">
				<div class="col-md-4 p-1 rounded-2  ">
					<div class="card-video text-center mt-2">
						<!-- Thêm lớp CSS text-center 
					<iframe
						src="https://www.youtube.com/embed/2YvjxIc5VOU?si=rojuqbMw_MPKKwTk"
						allowfullscreen style="max-width: 100%; height: 100px;"></iframe>-->
						<img alt=""
							src="${empty item.poster ? 'images/desktop.jpg': item.poster}"
							style="max-width: 100%; height: 100px;">
					</div>
				</div>
				<div class="col-md-8">
					<div class="card-body d-flex flex-row align-items-center">
						<h5 class="card-title mb-0">
							<a  class="text-decoration-none tittlene" href="Detail?videoId=${item.videoId }">${item.title}</a>
						</h5>
					</div>
				</div>

			</div>
		</c:forEach>
	</div>

</div>