<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sach bai viet</title>
</head>
<body>
	<div class="main-content">
		<form action="<c:url value='/admin-new'/>" id="formSubmit"
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
											<th>categoryid</th>
											<th>titlet</th>
											<th>thumbnail</th>
											<th>shortdescription</th>
											<th>content</th>
											<th>createdate</th>
											<th>modifieddate</th>
											<th>createby</th>
											<th>modifiedby</th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${model.listResult}">
											<tr>
												<td>${item.id}</td>
												<td>${item.categoryId}</td>
												<td>${item.title}</td>
												<td>${item.thumbnail}</td>
												<td>${item.content}</td>
												<td>${item.shortdescription}</td>
												<td>${item.createDate}</td>
												<td>${item.modifiedDate}</td>
												<td>${item.createBy}</td>
												<td>${item.modifiedBy}</td>

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
	</div>
	</form>
	<!-- /.main-content -->
	<script type="text/javascript">
	var currentPage =${model.page};
	var totalPages =${model.totalPage};
	var limit=5;
		$(function() {
			window.pagObj = $('#pagination').twbsPagination({
				totalPages : totalPages,
				visiblePages :5,
				startPage:currentPage,
				onPageClick : function(event, page) {
					if(currentPage!=page){
						//console.info(page + ' (from options)');
						$('#pageItem').val(limit);
						$('#page').val(page);
						$('#sortName').val('categoryid');
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