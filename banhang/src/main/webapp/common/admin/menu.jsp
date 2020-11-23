<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<<<<<<< HEAD
<div id="sidebar"
	class="sidebar                  responsive                    ace-save-state">
	<script type="text/javascript">
        try{ace.settings.loadState('sidebar')}catch(e){}
    </script>
	<div class="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large">
			<button class="btn btn-success">
				<i class="ace-icon fa fa-signal"></i>
			</button>

			<button class="btn btn-info">
				<i class="ace-icon fa fa-pencil"></i>
			</button>

			<button class="btn btn-warning">
				<i class="ace-icon fa fa-users"></i>
			</button>

			<button class="btn btn-danger">
				<i class="ace-icon fa fa-cogs"></i>
			</button>
		</div>
		<div class="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span> <span class="btn btn-info"></span>

			<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
		</div>
	</div>
	<ul class="nav nav-list">
		<li><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-list"></i> <span class="menu-text"></span>
				Quản lý Nhân Viên <b class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>
			<ul class="submenu">
				<li><a
					href='<c:url value="/admin-nhanvien?page=1&pageItem=5&sortName=categoryid&sortBy=asc"/>'>
						<i class="menu-icon fa fa-caret-right"></i> DS Nhân Viên
				</a> <b class="arrow"></b></li>
			</ul></li>
	</ul>
		<ul class="nav nav-list">
		<li><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-list"></i> <span class="menu-text"></span>
				Quản lý Sản Phẩm <b class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>
			<ul class="submenu">
				<li><a
					href='<c:url value="/admin-sanpham?page=1&pageItem=5&sortName=id&sortBy=asc"/>'>
						<i class="menu-icon fa fa-caret-right"></i> DS Sản Phẩm
				</a> <b class="arrow"></b></li>
			</ul></li>
	</ul>
	<ul class="nav nav-list">
		<li><a href="#" class="dropdown-toggle"> <i
				class="menu-icon fa fa-list"></i> <span class="menu-text"></span>
				Quản lý KH <b class="arrow fa fa-angle-down"></b>
		</a> <b class="arrow"></b>
			<ul class="submenu">
				<li><a
					href='<c:url value="/admin-nhanvien?page=1&pageItem=5&sortName=categoryid&sortBy=asc"/>'>
						<i class="menu-icon fa fa-caret-right"></i> DS KH
				</a> <b class="arrow"></b></li>
			</ul></li>
	</ul>
	<div class="sidebar-toggle sidebar-collapse">
		<i class="ace-icon fa fa-angle-double-left ace-save-state"
			data-icon1="ace-icon fa fa-angle-double-left"
			data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>
</div>
=======
       <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>Nguyễn Văn A</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- search form -->
                <form action="#" method="get" class="sidebar-form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Tìm kiếm...">
                        <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
                    </div>
                </form>
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu" data-widget="tree">
                    <li class="header">Chức năng của quản lý</li>

                    <li>
                        <a href="HomeManager.html">
                            <i class="fa fa-dashboard"></i><span>Trang tổng quan</span>
                        </a>
                    </li>

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-group"></i> <span>Quản lý nhân viên</span>
                            <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="DanhSachNhanVien.html"><i class="fa fa-list-alt"></i> Danh sách nhân viên</a></li>
                            <li><a href="ThemNhanVien.html"><i class="fa fa-user-plus"></i> Thêm nhân viên</a></li>
                            <!-- <li><a href="#"><i class="fa fa-user-plus"></i></a></li> -->

                            <li class="treeview">
                                <a href="#">
                                    <i class="fa fa-calculator"></i>
                                    <span> Quản lý lương nhân viên</span>
                                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Đăng ký lịch làm việc</a></li>
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Điểm danh</a></li>
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Thống kê lương</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <li class="active treeview">
                        <a href="#">
                            <i class="fa fa-truck"></i> <span>Quản lý nhà cung cấp</span>
                            <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                        </a>
                        <ul class="treeview-menu">
                            <li class="active"><a href="DanhSachNhaCungCap.html"><i class="fa fa-list-alt"></i> Danh sách nhà cung cấp</a></li>
                            <li><a href="ThemNhaCungCap.html"><i class="fa fa-plus-circle"></i> Thêm nhà cung cấp</a></li>
                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-expeditedssl"></i> <span>Quản lý tài khoản</span>
                            <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="DanhSachTaiKhoanNhanVien.html"><i class="fa fa-list-alt"></i> Tài khoản nhân viên</a></li>
                            <li><a href="DanhSachTaiKhoanKhachHang.html"><i class="fa fa-list-alt"></i> Tài khoản khách hàng</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="DanhSachHoaDon.html">
                            <i class="fa fa-file-text "></i> <span>Quản lý hóa đơn</span>
                        </a>
                    </li>
					<li>
                        <a href="<c:url value='/admin-khuyenmai?page=1&pageItem=5&sortName=id&sortBy=asc'/> ">
                            <i class="fa fa-file-text "></i> <span>Quản lý khuyến mãi</span>
                        </a>
                    </li>
                    <li class="header ">Khác</li>
                    <!-- Thành phần giao diện -->
                    <li class="treeview ">
                        <a href="# ">
                            <i class="fa fa-gear "></i>
                            <span>Thành phần giao diện</span>
                            <span class="pull-right-container "><i class="fa fa-angle-left pull-right "></i></span>
                        </a>
                        <ul class="treeview-menu ">
                            <li class="treeview ">
                                <a href="# ">
                                    <i class="fa fa-files-o "></i>
                                    <span>Layout Options</span>
                                    <span class="pull-right-container ">
                              <span class="label label-primary pull-right ">4</span>
                                    </span>
                                </a>
                                <ul class="treeview-menu ">
                                    <li><a href="pages/layout/top-nav.html "><i class="fa fa-circle-o "></i> Top Navigation</a></li>
                                    <li><a href="pages/layout/boxed.html "><i class="fa fa-circle-o "></i> Boxed</a></li>
                                    <li><a href="pages/layout/fixed.html "><i class="fa fa-circle-o "></i> Fixed</a></li>
                                    <li><a href="pages/layout/collapsed-sidebar.html "><i class="fa fa-circle-o "></i> Collapsed Sidebar</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="pages/widgets.html ">
                                    <i class="fa fa-th "></i> <span>Widgets</span>
                                    <span class="pull-right-container ">
                              <small class="label pull-right bg-green ">new</small>
                            </span>
                                </a>
                            </li>

                            <li class="treeview ">
                                <a href="# ">
                                    <i class="fa fa-pie-chart "></i>
                                    <span>Charts</span>
                                    <span class="pull-right-container "><i class="fa fa-angle-left pull-right "></i></span>
                                </a>
                                <ul class="treeview-menu ">
                                    <li><a href="pages/charts/chartjs.html "><i class="fa fa-circle-o "></i> ChartJS</a></li>
                                    <li><a href="pages/charts/morris.html "><i class="fa fa-circle-o "></i> Morris</a></li>
                                    <li><a href="pages/charts/flot.html "><i class="fa fa-circle-o "></i> Flot</a></li>
                                    <li><a href="pages/charts/inline.html "><i class="fa fa-circle-o "></i> Inline charts</a></li>
                                </ul>
                            </li>
                            <li class="treeview ">
                                <a href="# ">
                                    <i class="fa fa-laptop "></i>
                                    <span>UI Elements</span>
                                    <span class="pull-right-container "><i class="fa fa-angle-left pull-right "></i></span>
                                </a>
                                <ul class="treeview-menu ">
                                    <li><a href="pages/UI/general.html "><i class="fa fa-circle-o "></i> General</a></li>
                                    <li><a href="pages/UI/icons.html "><i class="fa fa-circle-o "></i> Icons</a></li>
                                    <li><a href="pages/UI/buttons.html "><i class="fa fa-circle-o "></i> Buttons</a></li>
                                    <li><a href="pages/UI/sliders.html "><i class="fa fa-circle-o "></i> Sliders</a></li>
                                    <li><a href="pages/UI/timeline.html "><i class="fa fa-circle-o "></i> Timeline</a></li>
                                    <li><a href="pages/UI/modals.html "><i class="fa fa-circle-o "></i> Modals</a></li>
                                </ul>
                            </li>

                            <li class="treeview ">
                                <a href="# ">
                                    <i class="fa fa-edit "></i> <span>Forms</span><i class="fa fa-angle-left pull-right "></i></span>
                                </a>
                                <ul class="treeview-menu ">
                                    <li><a href="pages/forms/general.html "><i class="fa fa-circle-o "></i> General Elements</a></li>
                                    <li><a href="pages/forms/advanced.html "><i class="fa fa-circle-o "></i> Advanced Elements</a></li>
                                    <li><a href="pages/forms/editors.html "><i class="fa fa-circle-o "></i> Editors</a></li>
                                </ul>
                            </li>
                            <li class="treeview ">
                                <a href="# ">
                                    <i class="fa fa-table "></i> <span>Tables</span>
                                    <span class="pull-right-container "><i class="fa fa-angle-left pull-right "></i></span>
                                </a>
                                <ul class="treeview-menu ">
                                    <li><a href="pages/tables/simple.html "><i class="fa fa-circle-o "></i> Simple tables</a></li>
                                    <li><a href="pages/tables/data.html "><i class="fa fa-circle-o "></i> Data tables</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="pages/calendar.html ">
                                    <i class="fa fa-calendar "></i> <span>Calendar</span>
                                    <span class="pull-right-container ">
                                    <small class="label pull-right bg-red ">3</small>
                                    <small class="label pull-right bg-blue ">17</small>
                                  </span>
                                </a>
                            </li>
                            <li>
                                <a href="pages/mailbox/mailbox.html ">
                                    <i class="fa fa-envelope "></i> <span>Mailbox</span>
                                    <span class="pull-right-container ">
                                    <small class="label pull-right bg-yellow ">12</small>
                                    <small class="label pull-right bg-green ">16</small>
                                    <small class="label pull-right bg-red ">5</small>
                                  </span>
                                </a>
                            </li>
                            <li class="treeview ">
                                <a href="# ">
                                    <i class="fa fa-folder "></i> <span>Examples</span>
                                    <span class="pull-right-container "><i class="fa fa-angle-left pull-right "></i></span>
                                </a>
                                <ul class="treeview-menu ">
                                    <li><a href="pages/examples/invoice.html "><i class="fa fa-circle-o "></i> Invoice</a></li>
                                    <li><a href="pages/examples/profile.html "><i class="fa fa-circle-o "></i> Profile</a></li>
                                    <li><a href="pages/examples/login.html "><i class="fa fa-circle-o "></i> Login</a></li>
                                    <li><a href="pages/examples/register.html "><i class="fa fa-circle-o "></i> Register</a></li>
                                    <li><a href="pages/examples/lockscreen.html "><i class="fa fa-circle-o "></i> Lockscreen</a></li>
                                    <li><a href="pages/examples/404.html "><i class="fa fa-circle-o "></i> 404 Error</a></li>
                                    <li><a href="pages/examples/500.html "><i class="fa fa-circle-o "></i> 500 Error</a></li>
                                    <li><a href="pages/examples/blank.html "><i class="fa fa-circle-o "></i> Blank Page</a></li>
                                    <li><a href="pages/examples/pace.html "><i class="fa fa-circle-o "></i> Pace Page</a></li>
                                </ul>
                            </li>
                            <li class="treeview ">
                                <a href="# ">
                                    <i class="fa fa-share "></i> <span>Multilevel</span>
                                    <span class="pull-right-container "><i class="fa fa-angle-left pull-right "></i></span>
                                </a>
                                <ul class="treeview-menu ">
                                    <li><a href="# "><i class="fa fa-circle-o "></i> Level One</a></li>
                                    <li class="treeview ">
                                        <a href="# "><i class="fa fa-circle-o "></i> Level One
                                      <span class="pull-right-container "><i class="fa fa-angle-left pull-right "></i></span>
                                      </a>
                                        <ul class="treeview-menu ">
                                            <li><a href="# "><i class="fa fa-circle-o "></i> Level Two</a></li>
                                            <li class="treeview ">
                                                <a href="# "><i class="fa fa-circle-o "></i> Level Two
                                                <span class="pull-right-container ">
                                                <i class="fa fa-angle-left pull-right "></i></span>
                                              </a>
                                                <ul class="treeview-menu ">
                                                    <li><a href="# "><i class="fa fa-circle-o "></i> Level Three</a></li>
                                                    <li><a href="# "><i class="fa fa-circle-o "></i> Level Three</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="# "><i class="fa fa-circle-o "></i> Level One</a></li>
                                </ul>
                            </li>
                            <li><a href="https://adminlte.io/docs "><i class="fa fa-book "></i> <span>Documentation</span></a></li>
                            <li class="header ">LABELS</li>
                            <li><a href="# "><i class="fa fa-circle-o text-red "></i> <span>Important</span></a></li>
                            <li><a href="# "><i class="fa fa-circle-o text-yellow "></i> <span>Warning</span></a></li>
                            <li><a href="# "><i class="fa fa-circle-o text-aqua "></i> <span>Information</span></a></li>
                        </ul>
                    </li>

                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
>>>>>>> fcd07693524422dbc18c9bbeeff8ed255d580ba9
