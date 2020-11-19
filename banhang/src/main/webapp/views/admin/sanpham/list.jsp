<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sach sanpham</title>
</head>
<body>
	<div class="main-content content-wrapper">
		<form action="<c:url value='/admin-sanpham'/>" id="formSubmit"
			method="get">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">Trang
								chủ</a></li>
					</ul>
					<!-- /.breadcrumb -->
				</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="table-reponsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>id</th>
											<th>code</th>
											<th>name</th>
											<th>size</th>
											<th>image</th>
											<th>mainprice</th>
											<th>curentprice</th>
											<th>amount</th>
											<th>Loaisanpham_id</th>
											<th>modifiedby</th>
											<th>modifieddate</th>
											<th>createdby</th>
											<th>createddate</th>




										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${model.listResult}">
											<tr>
												<td>${item.id}</td>
												<td>${item.code}</td>
												<td>${item.name}</td>
												<td>${item.size}</td>
												<td>${item.image}</td>
												<td>${item.mainPrice}</td>
												<td>${item.currentPrice}</td>
												<td>${item.amount}</td>
												<td>${item.loaiSanPham_id}</td>
												<td>${item.modifiedBy}</td>
												<td>${item.modifiedDate}</td>
												<td>${item.createdBy}</td>
												<td>${item.createdDate}</td>
												
												
												

											</tr>
										</c:forEach>


									</tbody>
								</table>
								<ul class="pagination" id="pagination"></ul>
								<input type="hidden" value="" id="page" name="page" /> <input
									type="hidden" value="" id="pageItem" name="pageItem" /> <input
									type="hidden" value="" id="sortName" name="sortName" /> <input
									type="hidden" value="" id="sortBy" name="sortBy" />
							</div>
						</div>
					</div>
				</div>
			</div>

		</form>
	</div>
	<!-- /.main-content -->
	<script >
	
		var currentPage=${model.page};
		var totalPages=${model.totalPage};
		var limit = 5;
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages : 5,
				startPage : currentPage,
				onPageClick : function(event, page) {
					if (currentPage != page) {
				
						$('#pageItem').val(limit);
						$('#page').val(page);
						$('#sortName').val('id');
						$('#sortBy').val('asc');
						$('#formSubmit').submit();
					}
				}
			})//.on('page', function(event, page) {
			//console.info(page + ' (from event listening)');
			//});
		});
	</script>
</body>
</html>