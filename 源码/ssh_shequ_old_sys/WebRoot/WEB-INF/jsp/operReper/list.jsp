<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <c:set var="domain" value="${pageContext.request.contextPath}"></c:set>
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>Bootstrap Admin html Template</title>
    <link rel="stylesheet" type="text/css" href="${domain}/css/bootstrap.css">
    <link href="${domain}/css/font-awesome.css" rel="stylesheet" />
   
   <link href="${domain}/css/custom-styles.css" rel="stylesheet" />
   <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   <link href="${domain}/css/dataTables.bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${domain}/admin/getUserList.action"><strong>社区敬老院后台管理</strong></a>
				<div id="sideNav" href="">
		<a href="${domain}/user/index.action"><i class="fa fa-bars icon">Back</i> </a>
		</div>
            </div>
            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i><font color="#000000"> 欢迎登录</font><i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li class="divider"></li>
                        <li><a href="${domain}/admin/exit.action"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    
                    <li>
                        <a href="${domain}/admin/main.action" ><i class="fa fa-qrcode"></i> 首页</a>
                    </li>
                   <li>
                        <a href="#"><i class="fa fa-sitemap"></i> 接待管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${domain}/consult/get.action">咨询登记</a>
                            </li>
                            <li>
                                <a href="${domain}/appointment/get.action" >预约登记</a>
                            </li>
						</ul>
                    </li>
                    <li>
                        <a href="${domain}/info/get.action" ><i class="fa fa-qrcode"></i> 费用管理</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-qrcode"></i> 老人管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${domain}/user/get.action">老人信息管理</a>
                            </li>
                            <li>
                                <a href="${domain}/out/get.action">外出登记</a>
                            </li>
                            <li>
                                <a href="${domain}/visit/get.action">探视来访</a>
                            </li>
						</ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-qrcode"></i> 人事管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${domain}/staff/get.action">员工管理</a>
                            </li>
						</ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-qrcode"></i> 床位管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${domain}/bed/get.action">床位管理</a>
                            </li>
                            <li>
                                <a href="${domain}/bedType/get.action">床位类型管理</a>
                            </li>
						</ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-qrcode"class="active-menu"></i> 库存管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${domain}/repertory/get.action">仓库管理</a>
                            </li>
                            <li>
                                <a href="${domain}/operReper/get.action"class="active-menu">入库/出库管理</a>
                            </li>
						</ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-qrcode"></i> 服务管理<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${domain}/device/get.action">设备管理</a>
                            </li>
                            <li>
                                <a href="${domain}/nurse/get.action">护工管理</a>
                            </li>
                            <li>
                                <a href="${domain}/diet/get.action">饮食管理</a>
                            </li>
						</ul>
                    </li>
                    
                    
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                            	仓库管理	 <small>出/入库管理</small>
                        </h1> 
						<ol class="breadcrumb">
					  <li><a style="text-decoration:none" onClick="add()" href="javascript:;" class='btn btn-danger' title="添加用户">添加记录</a></li>
					</ol> 
									
		</div>
		
            <div id="page-inner"> 
               
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             所有出/入库信息
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive"> 
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example" data-toggle="table" >
                                    <thead>
                                        <tr>
                                            <th>编号</th>
                                            <th>仓库id</th>
                                            <th>仓库名称</th>
                                            <th>管理员id</th>
                                            <th>管理员名称</th>
                                            <th>出/入库</th>
                                            <th>时间</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="list" items="${data}">
                                        <tr class="odd gradeX">
                                            <td>${list.id }</td>
                                            <td>${list.rid }</td>
                                            <td>${list.rname }</td>
                                            <td>${list.sid }</td>
                                            <td>${list.sname }</td>
                                            <td>
                                            	<c:if test="${list.type==0 }">入库</c:if>
                                            	<c:if test="${list.type==1 }">出库</c:if>
                                            </td>
                                            <td>${list.create_time }</td>
                                            <td align="center">
        <a style="text-decoration:none" onclick="edit(${list.id})" class='btn btn-default' title="编辑">编辑</a>
		<a style="text-decoration:none" onClick="del(${list.id})" href="javascript:;" class='btn btn-danger' title="删除">删除</a>
											</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
        </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
    <script src="${domain}/js/jquery.min.js"></script>
    <script src="${domain}/js/bootstrap.js"></script>
    <script src="${domain}/js/jquery.metisMenu.js"></script>
    <script src="${domain}/js/jquery.dataTables.js"></script>
    <script src="${domain}/js/dataTables.bootstrap.js"></script>
    <script src="${domain}/js/bootstrap-table.js"></script>
    <script src="${domain}/js/layer.js"></script>
    <script src="${domain}/js/custom.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
	<script type="text/javascript">
	function del(id){
			layer.confirm('确认要删除该记录吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '${domain}/operReper/del.action',
			data: {id : id},
			success: function(data){
				layer.msg('该记录已删除!',{icon: 1,time:2000});
				setTimeout(function(){
					window.location.reload();
				},2000)
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
	}
	function edit(id,uname,pwd){
		parent.layer.open({
		    type: 2,
		    shadeClose: true,
		    shade: 0.8,
		    area: ['600px', '60%'],
		    content: '${domain}/operReper/toUpdate.action?&id='+id,
		    end: function () {
		       location.reload();
		    }
		});
	}
	function add(){
		parent.layer.open({
		    type: 2,
		    shadeClose: true,
		    shade: 0.8,
		    area: ['600px', '60%'],
		    content: '${domain}/operReper/toAdd.action',
		    end: function () {
		       location.reload();
		    }
		});
	}
	</script>    
   
</body>
</html>