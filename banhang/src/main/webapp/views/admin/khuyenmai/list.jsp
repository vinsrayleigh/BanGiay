<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DS KM</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
<script src="../jquery.twbsPagination.js" type="text/javascript"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper ">
		<!-- Content Header (Page header) -->
		<section class="content-header ">
			<h1>
				<i class="fa fa-male"></i> Quản lý khách hàng
			</h1>
			<ol class="breadcrumb ">
				<li><a href="# "><i class="fa fa-male"></i> Quản lý khách
						hàng</a></li>
				<li class="active">Danh sách khách hàng</li>
			</ol>
		</section>

		<p style="margin-top: 1%;"></p>
		<!-- Main content -->
		<section class="content container-fluid ">

			<div class="box ">
				<div class="box-header ">
					<h3 class="box-title ">
						<i class="fa fa-list-alt "></i> Danh sách khách hàng
					</h3>
					<p style="margin-top: 1%;"></p>
				</div>
				<div class="box-body ">
					<form action="<c:url value ='/admin-search-khuyenmai'/>"
						method="POST">
						<div class="input-group margin ">
							<input name="txtSearch" type="text " class="form-control "
								placeholder="Tìm kiếm... "> <span
								class="input-group-btn ">
								<button type="button " class="btn btn-info btn-flat ">
									<i class="fa fa-search "></i>
								</button>
							</span> <select name="typeSearch" class="form-control "
								style="width: fit-content; margin-left: inherit;">
								<option>-----</option>
								<option value="all">Tất cả</option>
								<option value="content">Nội dung</option>
								<option>Số điện thoại</option>
								<option>Email</option>

							</select>
						</div>
					</form>

				</div>

				<p style="margin-top: 1%;"></p>
				<div class="row ">
					<div class="col-xs-12 ">
						<div class="box ">

							<!-- /.box-header -->
							<div class="box-body table-responsive no-padding ">
								<table id="listData" class="table table-hover ">
									<tr>
										<th>STT</th>
										<th>Mã khuyến mãi</th>
										<th>Nội dung khuyến mãi</th>
										<th>Ngày bắt đầu</th>
										<th>Ngày kết thúc</th>
										<th>Tùy chọn</th>
									</tr>
									<c:forEach var="item" items="${model.listResult}">
										<tr>
											<td>${item.id}</td>
											<td>${item.id}</td>
											<td>${item.content}</td>
											<td>${item.ngayBatDau}</td>
											<td>${item.ngayKetThuc}</td>
											<td>
												<button value="${item.id}" type="button"
													class="btn btn-warning" data-toggle="modal"
													data-target="#modal-sua">
													<i class="fa fa-edit"></i> Sửa thông tin
												</button>
												<button value="${item.id}" type="button"
													class="btn btn-danger" data-toggle="modal"
													data-target="#modal-xoa">
													<i class="fa fa-remove"></i> Xóa
												</button>
											</td>
										</tr>
									</c:forEach>
								</table>

								<ul class="pagination" id="pagination"></ul>
								<input type="hidden" value="" id="page" name="page" /> <input
									type="hidden" value="" id="pageItem" name="pageItem" /> <input
									type="hidden" value="" id="sortName" name="sortName" /> <input
									type="hidden" value="" id="sortBy" name="sortBy" />

							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
				</div>

			</div>
		</section>
		<!-- /.content -->
	</div>
	<script>
		var currentId;
		var KhuyenMai;
		var url= "http://localhost:8080/banhang/admin-search-khuyenmai";
		$('#listData tr td button').click(function(){
			currentId = $(this).val();
			console.log(currentId);
			var id = {id:parseInt(currentId)};
			$.ajax({
				url : url,
				type : 'GET',
				data : id,
				dataType :'JSON'
			}).done(function(data){
				console.log(data);
				khuyenmai=data;
				document.getElementById("idKM").value = data.id;
				document.getElementById("TenKM").value = data.content;
				var d = new Date(data.ngayBatDau);
				document.getElementById("BD").value =  d.toLocaleDateString();
				d = new Date(data.ngayKetThuc);
				document.getElementById("KT").value = d.toLocaleDateString();
			}).fail(function(error){
				console.log(error);
			}).always(function(){
				console.log("Hii");
			});
		});
		$('modal-suaconf button').click(function(){
			khuyenmai.content = document.getElementById("TenKM").value;
			$.ajax({
				url : url,
				type : 'PUT',
				data : khuyenmai,
				dataType :'JSON'
			}).done(function(data){
				console.log(data);
			}).fail(function(error){
				console.log(error);
			}).always(function(){
				console.log("Hii");
			});
		});
	</script>
	<div class="modal fade" id="modal-sua">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">
						<i class="fa fa-edit"></i> Sửa thông tin khuyến mãi
					</h4>
				</div>
				<div class="modal-body">

					<div class="form-group">
						<label for="MaKH">Mã khuyến mãi</label> <input type="text"
							class="form-control" id="idKM" value="" disabled>
					</div>
					<div class="form-group">
						<label for="TenKH">Nội dung khuyến mãi</label> <input type="text"
							class="form-control" id="TenKM"
							value="Đây là nội dung khuyến mãi">
					</div>
					<div class="form-group">
						<label for="SDTKH">Ngày bắt đầu</label> <input type="text"
							class="form-control" id="BD" value="10/11/2020">
					</div>
					<div class="form-group">
						<label for="EmailKH">Ngày kết thúc</label> <input type="email"
							class="form-control" id="KT" value="20/11/2020">
					</div>


				</div>
				<div class="modal-footer ">
					<button type="button " class="btn btn-default pull-left "
						data-dismiss="modal">Đóng</button>
					<button type="button " class="btn btn-warning " data-toggle="modal"
													data-target="#modal-suaconf" >Sửa thông
						tin</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<div class="modal fade" id="modal-xoa">
		<div class="modal-dialog">
			<div class="modal-content" style="margin: 25%;">
				<div class="modal-header">
					<button type="button" class="close " data-dismiss="modal "
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title ">
						<i class="fa fa-remove"></i> Xóa mã khuyến mãi
					</h4>
				</div>
				<div class="modal-body ">
					<h4>Bạn có chắc muốn xóa không?</h4>
				</div>
				<div class="modal-footer ">
					<button type="button " class="btn btn-default pull-left "
						data-dismiss="modal">Đóng</button>
					<button type="button " class="btn btn-danger">Xóa</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<div class="modal fade" id="modal-suaconf">
		<div class="modal-dialog">
			<div class="modal-content" style="margin: 25%;">
				<div class="modal-header">
					<button type="button" class="close " data-dismiss="modal "
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title ">
						<i class="fa fa-remove"></i> Sửa mã khuyến mãi
					</h4>
				</div>
				<div class="modal-body ">
					<h4>Bạn có chắc muốn Sửa không?</h4>
				</div>
				<div class="modal-footer ">
					<button type="button " class="btn btn-default pull-left "
						data-dismiss="modal">Đóng</button>
					<button type="button " class="btn btn-danger">Sửa</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- /.content-wrapper -->
	<script>
		var limit = 5;
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : 5,
				visiblePages : 5,
				onPageClick : function(event, page) {
					console.info(page + ' (from options)');
				}
			}).on('page', function(event, page) {
				console.info(page + ' (from event listening)');
			});
		});
	</script>

</body>
</html>