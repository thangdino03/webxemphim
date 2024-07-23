<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
.tittlene {
	color: white; /* Màu chữ mặc định */
}

.tittlene:hover {
	color: yellow; /* Màu chữ khi hover */
}

</style>
<div class="container-fluid mb-3 mt-3 ">
	<h2>Video đã thích</h2>
	<div class="row">
		<c:forEach var="item" items="${Videos }">
		<div class="col-12 col-md-3 mb-3 ">
			
			<div class="card bg-dark" style="width: 100%;">
				<div class="card-video text-center   ">
					<!-- Thêm lớp CSS text-center 
					<iframe width="100%" height="215"
						src="https://www.youtube.com/embed/2YvjxIc5VOU?si=rojuqbMw_MPKKwTk"
						allowfullscreen></iframe>-->
						
						<img alt="" src="${empty item.poster ? 'images/desktop.jpg': item.poster}" width="100%" height="215">
				</div>
				<h5 class="card-title  text-truncate ms-1 " ><a class="text-decoration-none tittlene" href="Detail?videoId=${item.videoId }">${item.title}</a></h5>
				<div class="card-body  d-flex justify-content-end align-items-end">
                               <a href="LikeVideo?videoId=${item.videoId }" class="btn btn-success me-2 "><i class="bi bi-hand-thumbs-up-fill"></i> Like</a>
                               <a href="ShareVideo?videoId=${item.videoId }" class="btn btn-warning  me-2"><i class="bi bi-share-fill"></i> Share</a>
                 </div>
			</div>
		</div>
		</c:forEach>
		<!-- Các thẻ card khác có thể được thêm vào ở đây -->
	</div>
		
	
</div>