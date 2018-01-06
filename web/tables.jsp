<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>展示页面</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="../vendor/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="../vendor/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="../vendor/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->

		<link rel="stylesheet" href="../vendor/css/ace.min.css" />
		<link rel="stylesheet" href="../vendor/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="../vendor/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="../vendor/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="../vendor/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="../vendor/js/html5shiv.js"></script>
		<script src="../vendor/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							全景图管理后台
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="../vendor/avatars/avatar3.png" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome,</small>
									admin
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="icon-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="#">
										<i class="icon-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="icon-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->
	<ul class="nav nav-list">
						<li class="active">
							<a href="index.action">
                        <i class="icon-dashboard"></i>
                        <span class="menu-text"> 首页 </span>
                    </a>
						</li>

						<li class="active open">
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 全景图操作 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

							<ul class="submenu">
								<li class="active">
									<a href="select.action">
										<i class="icon-double-angle-right"></i>
										全景图列表
									</a>
								</li>
								<li>
									<a href="/photoSphereCreate.action">
										<i class="icon-double-angle-right"></i>
										全景图添加
									</a>
								</li>
							</ul>
						</li>

		<%--<li class="active open">--%>
		<li>
			<a href="#" class="dropdown-toggle">
				<i class="icon-list"></i>
				<span class="menu-text"> 分类操作 </span>

				<b class="arrow icon-angle-down"></b>
			</a>

			<ul class="submenu">
				<li>
					<a href="categorySelect.action">
						<i class="icon-double-angle-right"></i>
						分类列表
					</a>
				</li>
				<li>
					<a href="../category/categoryAdd.jsp">
						<i class="icon-double-angle-right"></i>
						分类添加
					</a>
				</li>
			</ul>
		</li>


					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">首页</a>
							</li>

							<li>
								<a href="">全景图操作</a>
							</li>
							<li class="active">全景图列表</li>
						</ul><!-- .breadcrumb -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								全景图列表
								<small>
									<i class="icon-double-angle-right"></i>
									Static &amp; Dynamic Tables
								</small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-12">

										<div class="table-responsive">
											<table id="sample-table-2" class="table table-striped table-bordered table-hover" data-page-length='5'>
												<thead>
													<tr>
														<th>分类</th>
														<th>缩略图</th>
														<th>标题</th>
														<th class="hidden-480">简介</th>
														<th>操作</th>
													</tr>
												</thead>
												<tbody>

												<%--<s:iterator value="cp" var="c">--%>
													<%--<tr>--%>
													<%--<td><s:property value="#c.name"></s:property></td>--%>
													<%--<s:iterator value="#c.info"  var="i">--%>
														<%--<td><img src="/<s:property value="savePath"></s:property><s:property value="#i.path"></s:property>" style="width: 100px;height: 100px"/></td>--%>
														<%--<td><s:property value="#i.title"></s:property></td>--%>
														<%--<td><s:property value="#i.description"></s:property></td>--%>
												<s:iterator value="photoSphereCategories" var="i">
													<tr>
														<td><s:property value="#i.category.name"></s:property></td>
														<td><img src="/<s:property value="savePath"></s:property><s:property value="#i.photoSphere.path"></s:property>" style="width: 100px;height: 100px"/></td>
														<td><s:property value="#i.photoSphere.title"></s:property></td>
														<td><s:property value="#i.photoSphere.description"></s:property></td>
														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
																<a href="edit.action?p.pid=<s:property value="#i.photoSphere.pid"></s:property>">

																	<button class="btn btn-xs btn-info">
																		<i class="icon-edit bigger-120"></i>
																	</button>
																</a>
																<a href="delete.action?p.pid=<s:property value="#i.photoSphere.pid"></s:property>">

																	<button class="btn btn-xs btn-danger">
																		<i class="icon-trash bigger-120"></i>
																	</button>
																</a>
															</div>
															<div class="visible-xs visible-sm hidden-md hidden-lg">
																<div class="inline position-relative">

																	<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
																		<li>
																			<a href="" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
																			</a>
																		</li>

																		<li>
																			<a href="" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
																			</a>
																		</li>
																	</ul>
																</div>
															</div>
														</td>
													</tr>
														<%--</s:iterator>--%>
													</s:iterator>
												</tbody>
											</table>
										</div><!-- /.table-responsive -->
							</div><!-- /.col -->
						</div><!-- /.row -->

						<div id="modal-table" class="modal fade" tabindex="-1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-footer no-margin-top">
										<%--<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">--%>
											<i class="icon-remove"></i>
											Close
										</button>
						<ul class="pagination pull-right no-margin">
							<li class="prev disabled">
								<a href="#">
									<i class="icon-double-angle-left"></i>
								</a>
							</li>

							<li class="active">
								<a href="#">1</a>
							</li>

							<li>
								<a href="#">2</a>
							</li>

							<li>
								<a href="#">3</a>
							</li>

							<li class="next">
								<a href="#">
									<i class="icon-double-angle-right"></i>
								</a>
							</li>
						</ul>
									</div>
								</div><!-- /.modal-content -->
							</div><!-- /.modal-dialog -->
						</div>

							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->


		<!--[if IE]>
		<script src="https://cdn.staticfile.org/jquery/2.1.2/jquery.min.js"></script>
		<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='../vendor/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='../vendor/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		<script src="https://cdn.staticfile.org/jquery/2.1.2/jquery.min.js"></script>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='../vendor/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="../vendor/js/bootstrap.min.js"></script>
		<script src="../vendor/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="../vendor/js/jquery.dataTables.min.js"></script>
		<script src="../vendor/js/jquery.dataTables.bootstrap.js"></script>

		<!-- ace scripts -->

		<script src="../vendor/js/ace-elements.min.js"></script>
		<script src="../vendor/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
				var oTable1 = $('#sample-table-2').dataTable( {
                    "aoColumns": [
                        null,
                        { "bSortable": false },
                        null, null,
                        { "bSortable": false }
                    ],
                    "lengthMenu": [ 5, 10, 15],
                    "language": {
                        "lengthMenu": "_MENU_ 条记录/页",
                        "search"    : "查找 : ",
                        "info": "当前显示第 _START_ - _END_ 条/共 _TOTAL_ 条",
                        infoEmpty:      "没有记录",
                        zeroRecords:    "没有查找到记录",
                        infoFiltered: "(查找了 _MAX_ 条记录)",
                        "paginate"  : {
                            "next": "下一页",
                            "previous":"上一页"
                        },
                        aaSorting:[[0,"desc"]],
                        select: {
                            rows: "选中 %d 行"
                        }
                    }
                } );


			})
		</script>
</body>
</html>
