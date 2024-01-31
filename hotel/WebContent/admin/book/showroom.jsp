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

    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
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
        <input type="hidden" value="${bookid }" id="bookid"> 
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
             <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">${hotelname }-请选择分配的房间</h4>
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
                <!-- Sales Cards  -->
                <!-- ============================================================== -->
                <div class="row">
                <c:forEach items="${list }" var="room">
           
           			<c:choose>
           				<c:when test="${room.status==0 }">
           				
		           			<div class="col-md-6 col-lg-2 col-xlg-3">
		           			<a href="javascript:;" onclick="updateRoomId(${room.id})">
		                        <div class="card card-hover">
		                            <div class="box bg-cyan text-center">
		                                <h1 class="font-light text-white"><i class="bi bi-house-door"></i></h1>
		                                <h6 class="text-white">${room.roomnum }空</h6>
		                            </div>
		                        </div>
		                      </a>
		                    </div>
		                 
           				</c:when>
           				<c:when test="${room.status==1 }">
           				<div class="col-md-6 col-lg-2 col-xlg-3">
           				<a href="${pageContext.request.contextPath}/room/selectbyid?id=${room.id}">
						    <div class="card card-hover">
						        <div class="box bg-cyan text-center">
						            <h1 class="font-light text-white"><i class="bi bi-house-door-fill"></i></h1>
						            <h6 class="text-white">${room.roomnum } 有</h6>
						        </div>		   
						    </div>
					    </a>
					</div>
           				</c:when>
           				<c:when test="${room.status==3 }">
	           				<div class="col-md-6 col-lg-2 col-xlg-3">
	           				<a href="${pageContext.request.contextPath}/room/selectbyid?id=${room.id}">
							    <div class="card card-hover">
							        <div class="box bg-cyan text-center">
							            <h1 class="font-light text-white"><i class="bi bi-clock-fill"></i></i></h1>
							            <h6 class="text-white">${room.roomnum }预约</h6>
							        </div>
							    </div>
							  </a>
							</div>
           				</c:when>
           			</c:choose>
                  


					
					
					
					
					
					</c:forEach>
                   
                </div>

                
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
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
<!-- 	包含指令 -->
	<jsp:include page="../share/resources_js.jsp"></jsp:include>
	<script type="text/javascript">
	function updateRoomId(roomid)
	{
		let bookid=$("#bookid").val()
		//http://localhost:8080/hotel/book/updateroomid?roomid=14&bookid=23
		location.href=$("#common").attr("root")+"/book/updateroomid?roomid="+roomid+"&bookid="+bookid
	}
	</script>

</body>

</html>