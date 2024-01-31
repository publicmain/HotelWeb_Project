<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <jsp:include page="../share/menu.jsp"></jsp:include>
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
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
                    <h4 class="page-title">房间信息修改</h4>
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
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/room/update" method="post">
                            <input type="hidden" name="id" value="${room.id }"> 
                            <div class="card-body">
                                <!-- <h4 class="card-title">用户信息</h4> -->

                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">房间编号</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="roomnum" name="roomnum" value="${room.roomnum }"  class="form-control" id="fname" placeholder="请输入用 户名称">
                                    </div>
                                </div>






                                <div class="form-group row">
                                    <label for="lname" class="col-sm-3 text-right control-label col-form-label">房间电话</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="tel" name="tel" value="${room.tel }"   class="form-control" id="lname" placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="email1" class="col-sm-3 text-right control-label col-form-label">房间区域</label>
                                    <div class="col-sm-4">
                                        <input type="text" value="${room.region }"  id="region" name="region"  class="form-control" id="email1" placeholder="请输入酒店id">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">门码锁</label>
                                    <div class="col-sm-5">
                                        <input type="text" value="${room.locknumber }"  id="locknumber" name="locknumber"  class="form-control" id="cono1" placeholder="请输入密保提示">
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">房间状态</label>

                                    <div class="col-sm-5">
                                        <select id="status" name="status" class="select2 form-control custom-select" style="width: 100%; height:36px;">
                                            <option value="-1">请选择</option>
                                            <option value="0">空间</option>
                                            <option value="1">有人</option>
                                            <option value="3">预约</option>
                                        </select>
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">房间类型</label>

                                    <div class="col-sm-5">
                                        <select id="roomtypeid" name="roomtypeid" class="select2 form-control custom-select" style="width: 100%; height:36px;">
                                        	<option value="-1">请选择</option>
                                        	<c:forEach items="${list }" var="roomType">
                                            <option value="${roomType.id}">${roomType.roomtypename}</option>
                                            </c:forEach>
                                        </select>
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
<!-- All Jquery -->
	<jsp:include page="../share/resources_js.jsp"></jsp:include>
	<script type="text/javascript">
	//下拉列表的默认选中
	$("#roomtypeid").val('${room.roomtypeid}')
	$("#status").val('${room.status}')
	</script>

</body>

</html>