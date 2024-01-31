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
                    <h4 class="page-title">房间类型信息添加</h4>
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
<!--                   	  文件上传:表单中必须要有enctype="multipart/form-data" -->
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/roomtype/append"  enctype="multipart/form-data" method="post">
                            <div class="card-body">


                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">房间类型名称</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="roomtypename" name="roomtypename" class="form-control" placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">床的数量</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="bedsnumber" name="bedsnumber" class="form-control" placeholder="请输入用 户名称">
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">每天价格</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="dayprice" name="dayprice" class="form-control" placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">每小时价格</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="hourprice" name="hourprice" class="form-control"  placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">押金</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="depositmoney" name="depositmoney" class="form-control"  placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="lname" class="col-sm-3 text-right control-label col-form-label">总人数</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="total" name="total" class="form-control"  placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">备注</label>
                                    <div class="col-sm-9">
                                        <textarea class="form-control" name="note" style="height: 100px;">输入内容</textarea>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">文件上传</label>
                                    <div class="col-md-5">
                                        <div class="custom-file">
                                            <input onchange="showFilename(this.files[0])" type="file" name="file" class="form-control-file" id="validatedCustomFile">
                                            <label id="filename_label" class="custom-file-label" for="validatedCustomFile">选择文件..</label>

                                        </div>
                                    </div>
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="submit" class="btn btn-primary">保存</button>
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
	<jsp:include page="../share/resources_js.jsp"></jsp:include>

</body>

</html>