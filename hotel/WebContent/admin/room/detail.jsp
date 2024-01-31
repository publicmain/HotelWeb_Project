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
                    <h4 class="page-title">${room.roomnum }-房间状态-
                     <c:choose>
                            	<c:when test="${room.status==0 }">空</c:when>
                            	<c:when test="${room.status==1 }">有人</c:when>
                            	<c:when test="${room.status==3 }">预约</c:when>
                            </c:choose>
                    </h4>
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
            <!-- begin -->
            <div class="row">
                <!-- column -->
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-body">
                            <img src="${pageContext.request.contextPath}/images/${room.picture}" class="img-fluid" />
                        </div>

                    </div>
                </div>


                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-body">
                            <p>房间类型-${roomType.roomtypename }</p>
                            <p>每天价格-${roomType.dayprice }</p>
                            <p>小时价格-${roomType.hourprice }</p>
                            <p>房间人数-${roomType.total }</p>
                            <p>房间床数-${roomType.bedsnumber }</p>

                            <p>房间电话-${room.tel }</p>
                            <p>房间区域-${room.region }</p>
                            <p>房间状态-
                            <c:choose>
                            	<c:when test="${room.status==0 }">空</c:when>
                            	<c:when test="${room.status==1 }">有人</c:when>
                            	<c:when test="${room.status==3 }">预约</c:when>
                            </c:choose>
                            </p>
                            <p><button type="button" style="width: 100px; height: 40px;" onclick="javascript:history.go(-1)"   class="btn btn-success">返回</button></p>
                        </div>

                    </div>
                </div>

            </div>
            <!-- end -->
            <!-- ============================================================== -->
            <!-- Recent comment and chats -->
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