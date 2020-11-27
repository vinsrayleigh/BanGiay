<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Quản lí khách hàng</title>
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
					<form action="admin-khuyenmai-search" method="POST">
						<div class="input-group margin ">

							<input name="textSearch" type="text " class="form-control "
								placeholder="Tìm kiếm... "> <span
								class="input-group-btn ">
								<button type="submit " class="btn btn-info btn-flat ">
									<i class="fa fa-search "></i>
								</button>
							</span> <select name="optionSearch" class="form-control "
								style="width: fit-content; margin-left: inherit;">
								<option>-----</option>
								<option>Nội dung</option>
								<option>Tên khách hàng</option>
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
								<table class="table table-hover ">
									<tr>
										<th>STT</th>
										<th>Tên khách hàng</th>
										<th>Số điện thoại</th>
										<th>EMAIl</th>
										<th>Điểm</th>
										<th>Trạng thái</th>
										<th>Tùy chọn</th>
									</tr>
									<c:forEach var="item" items="${model.listResult}">
										<tr>
											<td>${item.id}</td>
											<td>${item.name}</td>
											<td>${item.phone}</td>
											<td>${item.email}</td>
											<td>${item.point}</td>
											<td>${item.status}</td>
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
							</div>
							<!-- /.box-body -->
								<ul class="pagination "></ul>
						</div>
						<!-- /.box -->
					</div>
				</div>

			</div>
		</section>
		<!-- /.content -->
	</div>

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
							class="form-control" id="MaKH" value="1" disabled>
					</div>
					<div class="form-group">
						<label for="TenKH">Nội dung khuyến mãi</label> <input type="text"
							class="form-control" id="TenKH"
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

</body>
</html>