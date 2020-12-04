<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-sanpham"/>
<c:url var ="NewURL" value="/admin-new"/>
<html>
<head>
    <title>Chỉnh sửa sản phẩm</title>
</head>
<style>
	.main-content {
    
}
</style>
<body>
<div class="main-content" style="margin-left: 17%;">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
            </script>
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Chỉnh sửa SP</li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                        <c:if test="${not empty messageResponse}">
									<div class="alert alert-${alert}">
  										${messageResponse}
									</div>
						</c:if>
                        <form id="formSubmit">
                            <br/>
                            
                            <div class="form-group">
                                  <div class="form-group">
                                <label class="col-sm-6 control-label no-padding-right">mã sp</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="code" name="code" value=""/>
                                </div> 
                 	    <br/>
                         
                            <br/>
                               <br/>
                            <div class="form-group">
                                <label class="col-sm-6 control-label no-padding-right">ten sp</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="name" name="name" value=""/>
                                </div>
                            </div>
                            <br/>
                              <br/>
                            <div class="form-group">
                                <label class="col-sm-6 control-label no-padding-right">size</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="size" name="size" value=""/>
                                </div>
                            </div>
                            <br/>
                                <br/>
                            <div class="form-group">
                                <label class="col-sm-6 control-label no-padding-right">image</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="image" name="image" value=""/>
                                </div>
                            </div>
                                <br/>
                            <br/>
                               <div class="form-group">
                                <label class="col-sm-6 control-label no-padding-right">gia nhap ve</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="mainPrice" name="mainPrice" value=""/>
                                </div>
                            </div>
                            <br/>
                         	    <br/>
                               <div class="form-group">
                                <label class="col-sm-6 control-label no-padding-right">gia ban ra</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="currentPrice" name="currentPrice" value=""/>
                                </div>
                            </div>
                             <br/>
                             <br/>
                               <div class="form-group">
                                <label class="col-sm-6 control-label no-padding-right">soluong</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="amount" name="amount" value=""/>
                                </div>
                            </div>
                             <br/>
                            <br/>
                               <div class="form-group">
                                <label class="col-sm-6 control-label no-padding-right">loại sp id</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control" id="LoaiSanPham_id" name="LoaiSanPham_id" value=""/>
                                </div>
                            </div>
                             </div>
                              </div>
                            <div class="form-group">
                                <div class="col-sm-6">
                                   
                                        <input type="button" class="btn btn-white btn-warning btn-bold" value="Cập nhật SP" id="btnAddOrUpdateNew"/>
                             
                                        <input type="button" class="btn btn-white btn-warning btn-bold" value="Thêm SP" id="btnAddOrUpdateNew"/>
                                   
                                </div>
                            </div>
                            <input type="hidden" value="${model.id}" id="id" name="id"/>
                        </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
	var editor = '';
	$(document).ready(function(){
		editor = CKEDITOR.replace( 'content');
	});
	
    $('#btnAddOrUpdateNew').click(function (e) {
        e.preventDefault();
        var data = {};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
        data["content"] = editor.getData();
        var id = $('#id').val();
        if (id == "") {
            addNew(data);
        } else {
            updateNew(data);
        }
    });
    function addNew(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${NewURL}?type=edit&id="+result.id+"&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
            }
        });
    }
    function updateNew(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${NewURL}?type=edit&id="+result.id+"&message=update_success";
            },
            error: function (error) {
            	window.location.href = "${NewURL}?type=list&maxPageItem=2&page=1&message=error_system";
            }
        });
    }
</script>
</body>
</html>
