<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title><dec:title default="Trang chủ" /></title>

    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="<c:url value='/template/admin/bower_components/bootstrap/dist/css/bootstrap.min.css' />" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<c:url value='/template/admin/bower_components/font-awesome/css/font-awesome.min.css' />"/>
    <!-- Ionicons -->
    <link rel="stylesheet" href="<c:url value='/template/admin/bower_components/Ionicons/css/ionicons.min.css' />"/>
    <!-- Theme style -->
    <link rel="stylesheet" href="<c:url value='/template/admin/dist/css/AdminLTE.min.css' />"/>
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="<c:url value='/template/admin/dist/css/skins/_all-skins.min.css' />"/>
    <!-- Morris chart -->
    <link rel="stylesheet" href="<c:url value='/template/admin/bower_components/morris.js/morris.css' />"/>
    <!-- jvectormap -->
    <link rel="stylesheet" href="<c:url value='/template/admin/bower_components/jvectormap/jquery-jvectormap.css' />"/>
    <!-- Date Picker -->
    <link rel="stylesheet" href="<c:url value='/template/admin/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css' />"/>
    <!-- Daterange picker -->
    <link rel="stylesheet" href="<c:url value='/template/admin/bower_components/bootstrap-daterangepicker/daterangepicker.css' />"/>
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="<c:url value='/template/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css' />"/>


    <link rel="icon" href="<c:url value='/template/admin/dist/img/favico.png' />" type="image/gif" sizes="16x16">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
	src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>

</head>
<body class="hold-transition skin-blue sidebar-mini no-skin">
	<!-- header -->
	<%@ include file="/common/admin/header.jsp"%>
	<!-- header -->

	<div class="main-container" id="main-container">
		<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
		</script>
		<!-- header -->

		<%@ include file="/common/admin/menu.jsp"%>
		<!-- header -->

		<dec:body />

		<!-- footer -->
		<%@ include file="/common/admin/footer.jsp"%>
		<!-- footer -->

		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse display"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>
	</div>


	  <script src="<c:url value='/template/admin/bower_components/jquery/dist/jquery.min.js' />"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="<c:url value='/template/admin/bower_components/bootstrap/dist/js/bootstrap.min.js' /> "></script>
        <!-- Select2 -->
        <script src="<c:url value='/template/admin/bower_components/select2/dist/js/select2.full.min.js' /> "></script>
        <!-- InputMask -->
        <script src="<c:url value='/template/admin/plugins/input-mask/jquery.inputmask.js' /> "></script>
        <script src="<c:url value='/template/admin/plugins/input-mask/jquery.inputmask.date.extensions.js' /> "></script>
        <script src="<c:url value='/template/admin/plugins/input-mask/jquery.inputmask.extensions.js' /> "></script>
        <!-- date-range-picker -->
        <script src="<c:url value='/template/admin/bower_components/moment/min/moment.min.js' /> "></script>
        <script src="<c:url value='/template/admin/bower_components/bootstrap-daterangepicker/daterangepicker.js' /> "></script>
        <!-- bootstrap datepicker -->
        <script src="<c:url value='/template/admin/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js' /> "></script>
        <!-- bootstrap color picker -->
        <script src="<c:url value='/template/admin/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js' /> "></script>
        <!-- bootstrap time picker -->
        <script src="<c:url value='/template/admin/plugins/timepicker/bootstrap-timepicker.min.js' /> "></script>
        <!-- SlimScroll -->
        <script src="<c:url value='/template/admin/bower_components/jquery-slimscroll/jquery.slimscroll.min.js' /> "></script>
        <!-- iCheck 1.0.1 -->
        <script src="<c:url value='/template/admin/plugins/iCheck/icheck.min.js' /> "></script>
        <!-- FastClick -->
        <script src="<c:url value='/template/admin/bower_components/fastclick/lib/fastclick.js' /> "></script>
        <!-- AdminLTE App -->
        <script src="<c:url value='/template/admin/dist/js/adminlte.min.js' /> "></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<c:url value='/template/admin/dist/js/demo.js' /> "></script>
        <!-- Bootstrap slider -->
        <script src="<c:url value='/template/admin/plugins/seiyria-bootstrap-slider/bootstrap-slider.min.js' />"></script>
         <script src="<c:url value='/template/paging/jquery.twbsPagination.js' />"></script>
        <script>
            $(function() {
                /* BOOTSTRAP SLIDER */
                $('.slider').slider()
            })
        </script>

        <!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
        <script>
            $(function() {
                //Initialize Select2 Elements
                $('.select2').select2()

                //Datemask dd/mm/yyyy
                $('#datemask').inputmask('dd/mm/yyyy', {
                        'placeholder': 'dd/mm/yyyy'
                    })
                    //Datemask2 mm/dd/yyyy
                $('#datemask2').inputmask('mm/dd/yyyy', {
                        'placeholder': 'mm/dd/yyyy'
                    })
                    //Money Euro
                $('[data-mask]').inputmask()

                //Date range picker
                $('#reservation').daterangepicker()
                    //Date range picker with time picker
                $('#reservationtime').daterangepicker({
                        timePicker: true,
                        timePickerIncrement: 30,
                        locale: {
                            format: 'MM/DD/YYYY hh:mm A'
                        }
                    })
                    //Date range as a button
                $('#daterange-btn').daterangepicker({
                        ranges: {
                            'Today': [moment(), moment()],
                            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                            'This Month': [moment().startOf('month'), moment().endOf('month')],
                            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                        },
                        startDate: moment().subtract(29, 'days'),
                        endDate: moment()
                    },
                    function(start, end) {
                        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
                    }
                )

                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                })

                //iCheck for checkbox and radio inputs
                $('input[type="checkbox "].minimal, input[type="radio "].minimal').iCheck({
                        checkboxClass: 'icheckbox_minimal-blue',
                        radioClass: 'iradio_minimal-blue'
                    })
                    //Red color scheme for iCheck
                $('input[type="checkbox "].minimal-red, input[type="radio "].minimal-red').iCheck({
                        checkboxClass: 'icheckbox_minimal-red',
                        radioClass: 'iradio_minimal-red'
                    })
                    //Flat red color scheme for iCheck
                $('input[type="checkbox "].flat-red, input[type="radio "].flat-red').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                })

                //Colorpicker
                $('.my-colorpicker1').colorpicker()
                    //color picker with addon
                $('.my-colorpicker2').colorpicker()

                //Timepicker
                $('.timepicker').timepicker({
                    showInputs: false
                })
            })
        </script></body>
</html>