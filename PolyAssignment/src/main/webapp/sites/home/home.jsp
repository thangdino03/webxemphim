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

.container {
	position: relative;

	/* Đảm bảo kích thước của container phù hợp với nội dung bên trong */
}

.content {
	position: absolute;
	top: 50%; /* Đặt top ở giữa của container */
	right: 100; /* Đặt right ở cạnh phải của container */
	left: auto;
	transform: translate(0, -50%); /* Dịch chuyển 50% theo chiều dọc */
	background-image: linear-gradient(to right, rgba(177, 175, 175, 0.8) 0%,
		rgba(255, 255, 255, 0) 100%); /* Tạo gradient mờ từ trái sang phải */
	padding: 20px;
	box-sizing: border-box;
	width: 400px;
	color: #F07167;
}

h1.chutitleee {
	font-family: 'Dancing Script', cursive;
	/* Chọn font chữ Dancing Script */
	font-weight: 700; /* Chọn kiểu in đậm */
}
</style>

<div>
	<div id="carouselExampleFade" class="carousel slide carousel-fade">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<!-- <img src="..." class="d-block w-100" alt="..."> -->
				<img
					src="https://i.pinimg.com/originals/50/fb/9a/50fb9a2d6af0e24788b822a6e909382b.jpg"
					alt="" style="width: 100%; height: 900px;" class="d-block w-100">
				<div class="content">
					<h1 class="chutitleee">Đấu Phá Thương Khung Phần 5</h1>
					<p>2022</p>
					<p>Trung Quốc</p>
					<p>xuất từ tay Thiên Tằm Thổ Đậu, là một bản tiểu thuyếtt huyền
						huyễn đăng nhiều kỳ tại Qidian, đã hoàn tất. Với thành tích
						26535.48 vạn truy cập, quyển sách này giúp Đậu trở thành tác giả
						cấp Bạch Kim của Qidian.</p>
					<a class="btn btn-success me-2 " onclick="scrollToRow()"><i
						class="bi bi-play-circle"></i> Xem video</a> <a
						class="btn btn-warning me-2 " data-tab="tab1" onclick="scrollToCarouselAndOpenTab(this)"><i
						class="bi bi-play-circle"></i> Xem Trailer</a>

				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://scontent.fdad3-6.fna.fbcdn.net/v/t39.30808-6/308549444_1047976449180497_7573967036767852425_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=i41g4rzHrM4Ab6Ng8Wy&_nc_ht=scontent.fdad3-6.fna&oh=00_AfCG86ZQ1UBB-gsSHLGQR4gJiP07vxG6yqfRlkS-mDeScA&oe=662006CE"
					class="d-block w-100" style="width: 100%; height: 900px;" alt="...">
				<div class="content">
					<h1 class="chutitleee">Thế Giới Hoàn Mĩ</h1>
					<p>2021</p>
					<p>Trung Quốc</p>
					<p>Bộ phim hoạt hình Thế Giới Hoàn Mỹ được chuyển thể từ tiểu
						thuyết cùng tên của tác giả Thần Đông. Kể về hành trình của nam
						chính Thạch Hạo, chọn con đường vì tu đạo, vì ứng kiếp. Qua nhiều
						lần tu luyện thời không và đối mặt với thách thức của thời gian,
						Thạch Hạo trở thành huyền thoại, đạt đến đỉnh cao huy hoàng. Thế
						Giới Hoàn Mỹ là sự lựa chọn không thể bỏ lỡ trong năm nay.</p>
					<a class="btn btn-success me-2 " onclick="scrollToRow()"><i
						class="bi bi-play-circle"></i> Xem video</a> <a
						class="btn btn-warning me-2 " data-tab="tab2" onclick="scrollToCarouselAndOpenTab(this)"><i
						class="bi bi-play-circle"></i> Xem Trailer</a>

				</div>

			</div>
			<div class="carousel-item">
				<img
					src="https://cdn.sforum.vn/sforum/wp-content/uploads/2024/01/lich-chieu-phim-tien-nghich-4.jpg"
					class="d-block w-100" style="width: 100%; height: 900px;" alt="...">
				<div class="content">
					<h1 class="chutitleee">Tiên Nghịch</h1>
					<p>2023</p>
					<p>Trung Quốc</p>
					<p>là một bộ phim hoạt hình 3D Trung Quốc đầy mê hoặc, tái hiện
						lại câu chuyện kỳ bí từ thời xa xưa. Phim được dựa trên tiểu
						thuyết cùng tên của tác giả Thanh Vân Thiên Hạ, kể về hành trình
						của Vương Lâm – một thiếu niên bình thường trở thành một trong
						những tu sĩ mạnh mẽ và tài năng nhất thế giới tiên hiệp. Với kỹ
						xảo đẹp mắt cùng những trận đánh vô cùng kịch tính, bộ phim Tiên
						Nghịch hứa hẹn mang đến cho khán giả những phút giây giải trí
						tuyệt vời cùng với đó là một thế giới tiên hiệp đầy màu sắc. Cùng
						theo dõi thông tin bên dưới để tìm hiểu chi tiết về bộ phim này
						nhé!</p>
					<a class="btn btn-success me-2 " onclick="scrollToRow()"><i
						class="bi bi-play-circle"></i> Xem video</a> <a
						class="btn btn-warning me-2 " data-tab="tab3" onclick="scrollToCarouselAndOpenTab(this)"><i class="bi bi-play-circle"></i>
						Xem Trailer</a>

				</div>

			</div>
		</div>

		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleFade" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="text-center mt-3" id="targetRow2">

		<!-- 	<iframe width="1080" height="560" -->
		<!-- 		src="https://www.youtube.com/embed/kvJNQXcrdME?si=_lOOyk7j2IykCksy" -->
		<!-- 		title="YouTube video player" frameborder="0" -->
		<!-- 		allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" -->
		<!-- 		referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe> -->



		<div id="carouselExampleTrailer" class="carousel slide">
			<div class="carousel-inner">
				<!-- Tạo một tab với id tương ứng -->
				<div id="tab1" class="carousel-item trailer active">
					<!-- <img src="..." class="d-block w-100" alt="..."> -->
					<iframe width="1080" height="480"
						src="https://www.youtube.com/embed/kvJNQXcrdME?si=_lOOyk7j2IykCksy"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
				</div>
				<div id="tab2" class="carousel-item trailer">
					<!-- <img src="..." class="d-block w-100" alt="..."> -->
					<iframe width="1080" height="480"
						src="https://www.youtube.com/embed/2QOo58Lusyc?si=oqPM4cQBuFfGaIBD"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
				</div>
				<div id="tab3" class="carousel-item trailer">
					<!-- <img src="..." class="d-block w-100" alt="..."> -->
					<iframe width="1080" height="480"
						src="https://www.youtube.com/embed/57n-8bWO7Sg?si=0ofHzJvLtN6gPK7c"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="container-fluid mb-3 mt-3 ">



	<div class="row " id="targetRow">
		<h5 class="mt-2">Các video hot</h5>
		<c:forEach var="item" items="${videos }">
			<div class="col-12 col-md-3 mb-3 ">

				<div class="card bg-dark" style="width: 100%;">
					<div class="card-video text-center   ">
						<!-- Thêm lớp CSS text-center 
					<iframe width="100%" height="215"
						src="https://www.youtube.com/embed/2YvjxIc5VOU?si=rojuqbMw_MPKKwTk"
						allowfullscreen></iframe>-->

						<img alt=""
							src="${empty item.poster ? 'images/desktop.jpg': item.poster}"
							width="100%" height="215">
					</div>
					<h5 class="card-title  text-truncate ms-1 ">
						<a class="text-decoration-none tittlene"
							href="Detail?videoId=${item.videoId }">${item.title}</a>
					</h5>
					<div class="card-body  d-flex justify-content-end align-items-end">
						<a href="LikeVideo?videoId=${item.videoId }"
							class="btn btn-success me-2 "><i
							class="bi bi-hand-thumbs-up-fill"></i> Like</a> <a
							href="ShareVideo?videoId=${item.videoId }"
							class="btn btn-warning  me-2"><i class="bi bi-share-fill"></i>
							Share</a>
					</div>
				</div>
			</div>
		</c:forEach>
		<!-- Các thẻ card khác có thể được thêm vào ở đây -->
	</div>
	
	<script type="text/javascript">
		//revise again
		

		function scrollToRow() {
			var element = document.getElementById("targetRow");
			element.scrollIntoView({
				behavior : "smooth"
			});
		}
		// 		function scrollToRow2() {
		// 			var element = document.getElementById("targetRow2");
		// 			element.scrollIntoView({
		// 				behavior : "smooth"
		// 			});
		// 		}
	</script>
	<script>
// 		function scrollToCarouselAndOpenTab(tabId) {
// 			// Cuộn trang đến carousel
// 			var carousel = document.getElementById("carouselExampleTrailer");
// 			carousel.scrollIntoView({
// 				behavior : "smooth"
// 			});

// 			// Mở tab tương ứng
// 			var tab = document.getElementById(tabId);
// 			var carouselItems = document.querySelectorAll('.trailer');
// 			carouselItems.forEach(function(item) {
// 				item.classList.remove('active'); // Xóa lớp active khỏi tất cả các tab
// 			});
// 			tab.classList.add('active'); // Thêm lớp active cho tab được chọn
// 		}
function scrollToCarouselAndOpenTab(button) {
    // Lấy giá trị của thuộc tính dữ liệu 'tab' từ nút được nhấn
    var tabId = button.getAttribute('data-tab');

    // Cuộn trang đến carousel
    var carousel = document.getElementById("carouselExampleTrailer");
    carousel.scrollIntoView({ behavior: "smooth" });

    // Mở tab tương ứng
    var tab = document.getElementById(tabId);
    var carouselItems = document.querySelectorAll('.trailer');
    carouselItems.forEach(function(item) {
        item.classList.remove('active'); // Xóa lớp active khỏi tất cả các tab
    });
    tab.classList.add('active'); // Thêm lớp active cho tab được chọn
}

	</script>

	<script>
		$(document).ready(function() {
			var carousel = $("#carouselExampleFade");
			var isAnimating = false; // Biến để kiểm tra xem hiệu ứng chuyển slide đang được thực hiện hay không

			// Sự kiện khi carousel bắt đầu chuyển slide
			carousel.on('slide.bs.carousel', function() {
				isAnimating = true; // Bắt đầu hiệu ứng chuyển slide
			});

			// Sự kiện khi carousel kết thúc chuyển slide
			carousel.on('slid.bs.carousel', function() {
				isAnimating = false; // Kết thúc hiệu ứng chuyển slide
			});

			// Tự động chuyển slide sau 3 giây
			setInterval(function() {
				if (!isAnimating) { // Kiểm tra xem có đang thực hiện hiệu ứng chuyển slide hay không
					carousel.carousel('next'); // Chuyển sang slide kế tiếp
				}
			}, 6500); // 3000 milliseconds = 3 giây
		});
	</script>

</div>
