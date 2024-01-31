<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>顺顺顺顺系统</title>
	<jsp:include page="../share/resources_css.jsp"></jsp:include>
</head>

<body>

<div id="main-wrapper">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
  	<jsp:include page="../share/top.jsp"></jsp:include>
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
  	<jsp:include page="../share/menu.jsp"></jsp:include>
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-12 d-flex no-block align-items-center">
                    <h4 class="page-title">会员信息添加</h4>
                    <div class="ml-auto text-right">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Library</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Start Page Content -->
            <!-- ============================================================== -->
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/member/append" method="post">
                            <div class="card-body">
                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">用户名称</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="uname" name="uname" class="form-control" placeholder="请输入用 户名称">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="lname" class="col-sm-3 text-right control-label col-form-label">用户密码</label>
                                    <div class="col-sm-4">
                                        <input type="password" name="upwd" class="form-control"  placeholder="请输入用 户名称">
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">真实名称</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="truename" name="truename" class="form-control"  placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="email1" class="col-sm-3 text-right control-label col-form-label">年龄</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="age" name="age" value="1" class="form-control" placeholder="请输入酒店id">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="email1" class="col-sm-3 text-right control-label col-form-label">email</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="email" name="email" value="1" class="form-control"  placeholder="请输入酒店id">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="email1" class="col-sm-3 text-right control-label col-form-label">电话</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="tel" name="tel" value="1" class="form-control"  placeholder="请输入酒店id">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">身份证号</label>
                                    <div class="col-sm-5">
                                        <input type="text" id="idcard" name="idcard" class="form-control" id="cono1" placeholder="请输入密保提示">
                                    </div>
                                </div>

                                <div class="form-group row">


                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">用户性别</label>
                                    <div class="col-md-9">
                                        <div class="custom-control custom-radio float-left">
                                            <input type="radio" name="sex" value="男" checked="checked" class="custom-control-input" id="customControlValidation1" name="sex" required>
                                            <label class="custom-control-label" for="customControlValidation1">男</label>
                                        </div>
                                        <div class="custom-control custom-radio float-left">
                                            <input type="radio" name="sex" value="女" class="custom-control-input" id="customControlValidation2" name="sex" required>
                                            <label class="custom-control-label" for="customControlValidation2">女</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">状态</label>

                                    <div class="col-sm-5">
                                        <select name="state" class="select2 form-control custom-select" style="width: 100%; height:36px;">
                                            <option value="-1" selected>请选择</option>
                                            <option value="1">正常</option>
                                            <option value="2">加锁</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="submit" class="btn btn-primary">注册</button>
                                        <button type="reset" class="btn btn-info">重置</button>
                                    </div>
                                </div>

                            </div>

                        </form>
                    </div>



                </div>

            </div>


            <!-- ============================================================== -->
            <!-- End PAge Content -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Right sidebar -->
            <!-- ============================================================== -->
            <!-- .right-sidebar -->
            <!-- ============================================================== -->
            <!-- End Right sidebar -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <jsp:include page="../share/footer.jsp"></jsp:include>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<jsp:include page="../share/resources_js.jsp"></jsp:include>
</body>

</html>