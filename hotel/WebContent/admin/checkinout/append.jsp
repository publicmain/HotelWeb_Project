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
    <!-- Custom CSS -->
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
                    <h4 class="page-title">办理入住信息添加</h4>
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
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/checkinout/append" method="post"">
                            <input type="text" name="memberid" value="${book.memberid }">
<!--                             房间的主键的值 -->
                            <input type="text" name="roomid" value="${book.roomid }">
<!--                             预约的主键 -->
                            <input type="text" name="bookid" value="${book.id }"> 
                            
                            <div class="card-body">
                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">用户名称</label>
                                    <div class="col-sm-4">
<!--                                     hotelid,memberid,personcount,roomcount,daycount,begintime,endtime,roomtypeid,money -->
<!-- insert into checkinout(intime,outtime,memberid,,,,,roomid,,pay) values(?,?,?,?,?,?,?,?,?,?)"; -->
                                        <input type="text" id="name" name="name" value="${book.uname }"  class="form-control"  placeholder="请输入用 户名称">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="lname" class="col-sm-3 text-right control-label col-form-label">性别</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="sex" name="sex"  class="form-control"  placeholder="请输入用 户名称">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="lname" class="col-sm-3 text-right control-label col-form-label">电话</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="tel" name="tel" value="${book.tel }"   class="form-control"  placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="lname" class="col-sm-3 text-right control-label col-form-label">身份证号</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="idcard" name="idcard" value="${book.idcard }"  class="form-control"  placeholder="请输入用 户名称">
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label for="lname" class="col-sm-3 text-right control-label col-form-label">入住日期</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="intime" name="intime" value="${book.begintime }"   class="form-control" placeholder="请输入用 户名称">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="lname" class="col-sm-3 text-right control-label col-form-label">退房日期</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="outtime" name="outtime"  value="${book.endtime }" class="form-control" placeholder="请输入用 户名称">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">金额</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="pay"  value="${book.money }" name="pay" class="form-control" placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="submit" class="btn btn-primary">入住</button>
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
	<jsp:include page="../share/resources_js.jsp"></jsp:include>

</body>

</html>