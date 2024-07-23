<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h3 class="text-white">Quản lí Video</h3>
<nav>
	<jsp:include page="/common/inform.jsp"></jsp:include>
	
	<div class="nav nav-tabs" id="nav-tab" role="tablist">
		<button class="nav-link active" id="videoEdition-tab"
			data-bs-toggle="tab" data-bs-target="#videoEdition" type="button"
			role="tab" aria-controls="videoEdition" aria-selected="true">Video
			Edition</button>
		<button class="nav-link" id="videoList-tab" data-bs-toggle="tab"
			data-bs-target="#videoList" type="button" role="tab"
			aria-controls="videoList" aria-selected="false">Video List</button>
		
	</div>
</nav>
<div class="tab-content " id="nav-tabContent">
	<div class="tab-pane fade show active " id="videoEdition"
		role="tabpanel" aria-labelledby="videoEdition-tab" tabindex="0">
		<form action="" method="post" enctype="multipart/form-data">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-4">
							<div class="border p-3">
								<div class="card-video text-center   ">
									<!-- Thêm lớp CSS text-center 
									<iframe width="100%" height="300"
										src="https://www.youtube.com/embed/2YvjxIc5VOU?si=rojuqbMw_MPKKwTk"
										allowfullscreen></iframe>-->
										
<img src="${video.poster ? video.poster : 'https://wiki.tino.org/wp-content/uploads/2021/08/word-image-253.png'}" alt="" class="img-fluid" >
										
  
										
									<div class="input-group mb-3 mt-3">
										<div class="input-group-prepend">
											<span class="input-group-text">Upload</span>
										</div>
										<div class="custom-file">
											<input type="file" class="custom-file-input" id="cover" name="cover" value="${video.poster }">
											<label for="cover">Choose File</label>
											
										</div>
										<div>
											<label>Link hình ảnh poster</label>
											<input type="text" name="coverLink" id="cover" value="${video.poster }">
											<small>Nếu chọn hình thì xóa link ở đây trước</small>
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="col-8">
							<div class="form-group">
								<label for="youtubeID">Youtube ID</label> 
								<input type="text"
									class="form-control" name="videoId" value="${video.videoId }" required="required"
									aria-describedby="youtubeIdHid" placeholder=""> <small
									id="youtubeIdHid" class="form-text text-muted ">Youtube
									id is rquired</small>
							</div>
							<div class="form-group">
								<label for="videotitle">Video title</label> <input type="text"
									class="form-control" name="title"  value="${video.title }" aria-describedby="videotitle" required="required"
									placeholder=""> <small id="videotitle"
									class="form-text text-muted ">Youtube title is rquired</small>
							</div>
							<div class="form-group">
								<label for="viewCount">View Count</label> <input type="text"
									class="form-control" name="views" id="viewcount" value="${video.views}" required="required"
									aria-describedby="viewcountHid" placeholder=""> <small
									id="viewcountHid" class="form-text text-muted ">view
									count is required</small>
							</div>
							<div class="form-group">
								<label for="viewCount">Link Video</label> <input type="text"
									class="form-control" name="link" id="link" value="${video.link}" required="required"
									aria-describedby="viewcountHid" placeholder=""> <small
									id="viewcountHid" class="form-text text-muted ">Link video is required</small>
							</div>
							<div class="form-check form-check-inline">
								<label> <input type="radio" class="form-check-input"
									name="active" value="true" id="status" ${video.active? 'checked':''}>Active 
								</label> <label class="ms-5 "> <input type="radio"   
									class="form-check-input" name="active" value="false" ${! video.active? 'checked':'' }
									id="status">Inactive
								</label>
							</div>
						</div>
					</div>
				</div>
			
		</form>
		<div class="row">
			<div class="col m-2 ">
				<label for="description">Description</label>
				<textarea name="description" id="description" cols="30" rows="4"
					class="form-control"> ${video.description }</textarea>
			</div>
		</div>
		<div class="card-footer  text-end  ">
			<button class="btn btn-primary" formaction="Admin/VideoManagement/create" >Create</button>
			<button class="btn btn-warning " formaction="Admin/VideoManagement/update">Update</button>
			<button class="btn btn-danger " formaction="Admin/VideoManagement/delete">Delete</button>
			<button class="btn btn-info " formaction="Admin/VideoManagement/reset">Reset</button>
		</div>
	</div>
	

</div>
 <div class="tab-pane fade" id="videoList" role="tabpanel" aria-labelledby="videoList-tab" tabindex="0">
                <div class="border ms-3 m-2   ">
                    <table class="table table-stripe">
                        <tr>
                            <td>Youtube ID</td>
                            <td>Video title</td>
                            <td>View count</td>
                            <td>Status</td>
                            <td>Link Video</td>
                            <td>&nbsp;</td>
                        </tr>
                        <c:forEach var="item" items="${videoo }">
                        <tr>
                            <td>${item.videoId }</td>
                            <td>${item.title }</td>
                            <td>${item.views }</td>
                            <td>${item.active }</td>
                            <td>${item.link }</td>
                            <td>
                                <a href="Admin/VideoManagement/edit?videoId=${item.videoId }"><i class="fa fa-edit" aria-hidden="true">Edit</i></a>
                                <a href="Admin/VideoManagement/delete?videoId=${item.videoId }"><i class="fa fa-trash" aria-hidden="true">Delete</i></a>

                            </td>
                        </tr>
						</c:forEach>

                    </table>
             
                </div>
            </div>
