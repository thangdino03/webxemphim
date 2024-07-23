<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>${page.title }</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Index</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/22a960a4f6.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<base href="/PolyAssignment/">

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./paging/jquery.twbsPagination.js"></script>
<style>
a.textgg {
	color: green;
}

a.textgg:hover {
	color: red;
}

a.linkk {
	color: red;
}

a.linkk:hover {
	color: yellow;
}
  @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap');
        /* Import font chữ Dancing Script với trọng số 700 */

        .dino-title {
            font-family: 'Dancing Script', cursive;
            /* Sử dụng font chữ Dancing Script */
            font-size: 3em;
            /* Kích thước chữ lớn */
            font-weight: bold;
            /* Chữ đậm */
            display: inline-block;
            /* Hiển thị chữ trên cùng một dòng */
            position: relative;
            /* Định vị tương đối cho hiệu ứng uốn lượn */
            color: #28a745;
            /* Màu chữ */
        }

        .dino-title::before {
            content: attr(data-text);
            /* Hiển thị chữ */
            position: absolute;
            /* Định vị tuyệt đối */
            left: 0;
            /* Đặt vị trí bắt đầu từ trái */
            top: 0;
            /* Đặt vị trí bắt đầu từ trên */
            font-family: 'Dancing Script', cursive;
            /* Sử dụng font chữ Dancing Script */
            font-size: 3em;
            /* Kích thước chữ lớn */
            font-weight: bold;
            /* Chữ đậm */
            color: #28a745;
            /* Màu chữ */
            -webkit-animation: wave 2s infinite;
            /* Áp dụng hiệu ứng uốn lượn trên trình duyệt Chrome và Safari */
            animation: wave 2s infinite;
            /* Áp dụng hiệu ứng uốn lượn */
        }

        .slogan {
            font-family: 'Dancing Script', cursive;
            /* Sử dụng font chữ Dancing Script */
            font-size: 1.5em;
            /* Kích thước chữ */
            color: #28a745;
            /* Màu chữ */
        }

        @-webkit-keyframes wave {
            0% {
                transform: rotate(-10deg);
                /* Góc xoay ban đầu */
            }

            50% {
                transform: rotate(10deg);
                /* Góc xoay khi đến giữa */
            }

            100% {
                transform: rotate(-10deg);
                /* Góc xoay cuối cùng */
            }
        }
        
        @keyframes wave {
            0% {
                transform: rotate(-10deg);
                /* Góc xoay ban đầu */
            }

            50% {
                transform: rotate(10deg);
                /* Góc xoay khi đến giữa */
            }

            100% {
                transform: rotate(-10deg);
                /* Góc xoay cuối cùng */
            }
        }

       /* Thêm hiệu ứng tia sáng */
@keyframes shine {
    0% {
        background-position-x: -200%;
    }
    100% {
        background-position-x: 200%;
    }
}


.dino-title::before {
    content: attr(data-text);
    position: absolute;
    left: 0;
    top: 0;
    font-family: 'Dancing Script', cursive;
    font-size: 3em;
    font-weight: bold;
    color: transparent;
   
    background-image: linear-gradient(90deg, #28a745, #33ff33, #28a745);
    -webkit-animation: shine 2s infinite;
    animation: shine 2s infinite;
}
@keyframes slideColor {
  0% {
    background-position: 0 0;
  }
  100% {
    background-position: 100% 0;
  }
}

.dino-title {
    font-family: 'Dancing Script', cursive;
    font-size: 3em;
    font-weight: bold;
    display: inline-block;
    position: relative;
    background-image: linear-gradient(to right, #28a745, #007bff, #FED9B7, #F07167,  #E3BFC3, #DD7A83, #BF9DCD, #E1B79F,  #dc3545); /* Gradient màu từ trái sang phải */
    -webkit-background-clip: text; /* Áp dụng gradient cho văn bản */
    background-clip: text; /* Áp dụng gradient cho văn bản */
    color: transparent; /* Ẩn màu chữ ban đầu */
    -webkit-animation: slideColor alternate infinite; /* Áp dụng hiệu ứng chuyển động */
    animation: slideColor 2s  alternate infinite; /* Áp dụng hiệu ứng chuyển động */
    background-size: 200% auto; /* Xác định kích thước của hình nền */

}
.slogan{
    
    background-image: linear-gradient(to right, #28a745, #007bff, #FED9B7, #F07167,  #E3BFC3, #DD7A83, #BF9DCD, #E1B79F,  #dc3545); /* Gradient màu từ trái sang phải */
    background-clip: text; /* Áp dụng gradient cho văn bản */
    color: transparent; /* Ẩn màu chữ ban đầu */
    animation: slideColor 2s  alternate infinite; /* Áp dụng hiệu ứng chuyển động */
    background-size: 200% auto; /* Xác định kích thước của hình nền */
}

</style>
</head>

<body class="bg-black text-white">
	<div
		class="container-fluid   justify-content-center align-items-center py-2">
		<header class="header" style="width: 100%; margin: 0 auto;">
		<a class="navbar-brand text-danger" href="Homepage" data-text="DINO ENTERTAINMENT">
                <h1 class="dino-title ">DINO ENTERTAINMENT</h1>
                <p class="slogan ">Trải nghiệm không giới hạn!</p>
            </a>
			<nav class="navbar navbar-expand-lg ">
				
				<div class="container-fluid">
					<!-- <img src="https://img.freepik.com/premium-vector/dinosaur-logo_10250-1705.png" alt=""
                            width="60px" height="50px" class="m-0 d-inline-block align-top "> -->
<!-- 					<a class="navbar-brand text-danger" href="Homepage"> <strong>DINO -->
<!-- 							ENTERTAINMENT</strong></a> -->
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
						aria-controls="navbarNavAltMarkup" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse align-item-center d-flex "
						id="navbarNavAltMarkup">
						<div class="navbar-nav">

							<strong> <a class="nav-link textgg  "
								aria-current="page" href="Homepage"><i
									class="bi bi-house-door"></i> Home</a></strong> <strong> <a
								class="nav-link  textgg " aria-current="page" href="AboutSite"><i
									class="bi bi-info-circle"></i> About Us</a>
							</strong> <strong> <a class="nav-link textgg  "
								aria-current="page" href="ContactSite"><i
									class="bi bi-person-vcard"></i> Contact Us</a></strong> <strong> <a
								class="nav-link  textgg" aria-current="page"
								href="FavoriteServlet"><i class="bi bi-heart-half"> </i> My
									Favorite</a></strong>
							<!--  	<a class="nav-link text-danger " aria-current="page" href="ReportsManagement"><i class="bi bi-terminal"></i> Trang Quản trị</a>-->



							<%-- Kiểm tra xem người dùng đã đăng nhập hay chưa --%>
							<c:if test="${isLogin && role}">
								<%-- Nếu người dùng là admin, hiển thị liên kết "Trang Quản trị" --%>
								<strong> <a class="nav-link linkk " aria-current="page"
									href="ReportsManagement"> <i class="bi bi-terminal"></i>
										Trang Quản trị
								</a></strong>
							</c:if>




						</div>

					</div>

					<div class="dropdown me-4 ">
						<a class="nav-link linkk  " href="#" role="button"
							id="dropdownMenuLink" data-bs-toggle="dropdown"
							aria-expanded="false"> <i class="bi bi-person-circle me-1"></i>
							<strong><c:if test="${!isLogin }">Welcome You !</c:if> <c:if
									test="${isLogin }">
									<strong>${username }</strong>
								</c:if></strong>
						</a>

						<ul class="dropdown-menu bg-dark mt-3 me-5"
							aria-labelledby="dropdownMenuLink">

							<c:if test="${ !isLogin }">

								<li><a class="dropdown-item border-bottom text-danger "
									href="Login"><i class="bi bi-box-arrow-in-left"></i> Login</a></li>
								<li><a class="dropdown-item border-bottom text-danger"
									href="ForgotPassword"><i class="bi bi-key"></i> Forgot
										Password</a></li>
								<li><a class="dropdown-item border-bottom text-danger"
									href="Registration"><i class="bi bi-person-plus-fill"></i>
										Registration</a></li>
							</c:if>
							<c:if test="${isLogin }">
								<li><a class="dropdown-item border-bottom text-danger"
									href="Logoff"><i class="bi bi-box-arrow-right"></i> Logoff</a></li>
								<li><a class="dropdown-item border-bottom text-danger"
									href="Changepassword"><i class="bi bi-key"></i> Change
										Password</a></li>
								<li><a class="dropdown-item text-danger "
									href="EditProfile"><i class="bi bi-person-lines-fill"></i>
										Edit Profile</a></li>
							</c:if>

						</ul>

					</div>

					<a class="me-3"
						title="See File history below for details., Public domain, via Wikimedia Commons"
						href="https://vi.wikipedia.org/wiki/Nh%C3%A0_n%C6%B0%E1%BB%9Bc_Vi%E1%BB%87t_Nam"><img
						width="65" alt="Flag of Vietnam"
						src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/512px-Flag_of_Vietnam.svg.png"></a>





				</div>
			</nav>
		</header>
		<section>
			<jsp:include page="${page.contentUrl }"></jsp:include>
		</section>
	</div>



	<c:if test="${not empty page.scriptUrl }">
		<jsp:include page="${page.scriptUrl }"></jsp:include>
	</c:if>

</body>
<footer id="footer" class="mt-2 test-centẻ">
	<hr>
	<div class="footer-newsletter mb-3 ">
		<div class="container text-center ">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<h4 class="dino-title">Dino Entertainment</h4>
					<p class="slogan">Giải trí độc đáo, trải nghiệm không giới hạn!</p>


				</div>
			</div>
		</div>
	</div>

	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer-contact">
						<h3>
							Dino Entertainment<span>.</span>
						</h3>
						<p>
							K256 Âu Cơ <br> Hòa Khánh Bắc - Đà Nẵng<br> Việt Nam<br>
							<br> <strong>Phone:</strong> +84 336 *** ***<br> <strong>Email:</strong>
							ngquang**********@gmail.com<br>
						</p>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="footer-links">
						<h4>Useful Links</h4>
						<ul class="list-unstyled list-inline  " id="footerText">
							<li><a href="Homepage" class="text-decoration-none">Home</a></li>
							<li><a href="AboutSite" class="text-decoration-none">About
									us</a></li>
							<li><a href="ContactSite" class="text-decoration-none">Contact
									Us</a></li>
							<li><a href="FavoriteServlet" class="text-decoration-none">My
									Favorite</a></li>
							<li><a href="#" class="text-decoration-none">Terms of
									service</a></li>
							<li><a href="#" class="text-decoration-none">Privacy
									policy</a></li>
						</ul>



					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-links">
						<h4>Liên Kết Mạng Xã Hội</h4>
						<p>Liên hệ với chúng tôi thông qua mạng xã hội chỉ với một
							click</p>
						<div class="social-links mt-3">
							<a href="#" class="twitter ms-1 "><i
								class="fa-brands fa-x-twitter fa-2xl"></i></a> 
								<a href="https://www.facebook.com/thangdino03/"
								class="facebook ms-1"><i
								class="fa-brands fa-facebook fa-2xl" style="color: #74C0FC;"></i></a>
							<a href="https://www.instagram.com/thangdino03/" class="instagram ms-1"><i
								class="fa-brands fa-instagram fa-2xl" style="color: #ff00a2;"></i></a>
							<a href="https://www.youtube.com/channel/UCf23xVfdbiBYyy7geLyGErg" class="youtube ms-1"><i
								class="fa-brands fa-youtube fa-2xl" style="color: #ff0000;"></i></a>
							<a href="https://github.com/thangdino03" class="github ms-1"><i
								class="fa-brands fa-github fa-2xl" style="color: #FFD43B;"></i></a>
							<a href="https://www.tiktok.com/@thangdino03" class="tiktok ms-1"><i
								class="fa-brands fa-tiktok fa-2xl" style="color: #FFD43B;"></i></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-links">

						<a 
							title="See File history below for details., Public domain, via Wikimedia Commons"
							href="https://vi.wikipedia.org/wiki/Nh%C3%A0_n%C6%B0%E1%BB%9Bc_Vi%E1%BB%87t_Nam"><img
							width="280px" alt="Flag of Vietnam"
							src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/512px-Flag_of_Vietnam.svg.png"></a>

					</div>
				</div>
			</div>
		</div>
	</div>
	<hr>
	<div class="container mt-2 mb-3 ">
		<div
			class="footer-top d-flex justify-content-between align-items-center">
			<div class="text-center">
				<span>&copy;Copyright <strong><span>Dino
							Entertainment</span></strong>. All Rights Reserved
				</span>
			</div>
			<div class="text-center">
				<span>Designed by <a href="https://github.com/thangdino03"
					class="text-decoration-none ">ThangDino</a></span>
			</div>
		</div>
	</div>
</footer>




</html>