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
								<nav aria-label="Page navigation">
									<ul class="pagination" id="pagination"></ul>
									<input type="hidden" value="" id="page" name="page" /> <input
										type="hidden" value="" id="pageItem" name="pageItem" /> <input
										type="hidden" value="" id="sortName" name="sortName" /> <input
										type="hidden" value="" id="sortBy" name="sortBy" />
								</nav>

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
		$('#listData tr td button').click(function(){
			currentId = $(this).val();
			var id = '{"id":'+currentId+'}';
			var url = "http://localhost:8080/banhang/admin-api-khuyenmai";
			console.log(id);
			sync function postData(url = '', data = {}) {
  // Default options are marked with *
  const response = await fetch(url, {
    method: 'GET', // *GET, POST, PUT, DELETE, etc.
    headers: {
      'Content-Type': 'application/json'
      // 'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: JSON.stringify(data) // body data type must match "Content-Type" header
  });
  return response.json(); // parses JSON response into native JavaScript objects
}
	postData('http://localhost:8080/banhang/admin-api-khuyenmai', { id: 1 })
  .then(data => {
    console.log(data); // JSON data parsed by `data.json()` call
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
							class="form-control" id="SDTKH" value="10/11/2020">
					</div>
					<div class="form-group">
						<label for="EmailKH">Ngày kết thúc</label> <input type="email"
							class="form-control" id="EmailKH" value="20/11/2020">
					</div>


				</div>
				<div class="modal-footer ">
					<button type="button " class="btn btn-default pull-left "
						data-dismiss="modal">Đóng</button>
					<button type="button " class="btn btn-warning ">Sửa thông
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
	<!-- /.modal -->

	<!-- /.content-wrapper -->
	<script>
		var currentPage = $
		{
			model.page
		};
		var totalPages = $
		{
			model.totalPage
		};
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