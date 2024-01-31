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
                    <h4 class="page-title">房间信息管理</h4>
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
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <!-- <h5 class="card-title m-b-0">Static Table With Checkboxes</h5> -->
                            <!-- ==============================================================-->
                            <!-- Start Search Content -->
                            <!-- ==============================================================-->
                            <div    class="form-row"  style="margin: 0.3125rem 0;">
                                <form  method="post"  class="form-inline navbar-form navbar-left" action="${pageContext.request.contextPath}/room/list">
                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="tel" value="${room.tel }" class="form-control" placeholder="请输入搜索电话...">
                                    </div>

                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="roomnum" value="${room.roomnum }" class="form-control" placeholder="请输入房间编号...">
                                    </div>
                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="region" value="${room.region }" class="form-control" placeholder="请输入区域...">
                                    </div>
                                    
                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="roomtypename" value="${room.roomtypename }" class="form-control" placeholder="请输入房间类型名称...">
                                    </div>

                                    <!-- 下拉列表 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <select id="status" class="form-control" name="status">
                                            <option value="-1" selected="selectd">==请选择==</option>
                                            <option value="0">空房</option>
                                            <option value="1" >有人</option>
                                            <option value="3" >预约</option>

                                        </select>
                                    </div>

                                    <!-- 按钮和超链接 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
									   	<span class="input-group-btn">
											<button type="submit" class="btn  btn-success">查询</button>
										</span>
                                        <span class="input-group-btn">
											<a href=""  class="btn btn-primary" style="margin-left: 5px;">添加</a>
										</span>
                                        <span class="input-group-btn">
											<a href="javascript:;" id="deleteAll" class="btn btn-danger" deleteall_url='/room/deletebatchids' style="margin-left: 5px;">批量删除</a>
										</span>
                                    </div>
                                </form>
                            </div>
                            <!-- ==============================================================-->
                            <!-- end Search Content -->
                            <!-- ==============================================================-->

                        </div>

                        <div class="table-responsive">
                            <!-- ============================================================== -->
                            <!-- end Tables Content -->
                            <!-- ============================================================== -->
                            <table id="zero_config" class="table  table-bordered table-hover">
                                <thead class="thead-light">
                                <tr>
                                    <th>
                                        <label class="customcheckbox m-b-20">
                                            <input type="checkbox" id="ck" />
                                            <span class="checkmark"></span>
                                        </label>
                                    </th>

                                    <th scope="col">编号</th>
                                    <th scope="col">注册时间</th>
                                    <th scope="col">房间编号</th>
                                    <th scope="col">房间类型名称</th>
                                    <th scope="col">状态</th>
                                    <th scope="col">电话</th>
                                    <th scope="col">价格</th>
                                    <th scope="col">区域</th>
                                    <th scope="col">门码锁</th>
                                    <th scope="col">操作</th>
                                </tr>
                                </thead>
                                <tbody class="customtable">
								<c:forEach items="${pages.list }" var="room" varStatus="vs">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" name="c" value="${room.id }" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>${vs.count+(pages.currPage-1)*pages.pageSize }</td>
                                        <td>${room.addtime }</td>
                                        <td>${room.roomnum }</td>
                                        <td>${room.roomtypename }</td>
                                        <td>
                                        <c:choose>
                                        	<c:when test="${room.status==0 }">空房</c:when>
                                        	<c:when test="${room.status==1 }">有人</c:when>
                                        	<c:when test="${room.status==3 }">预定</c:when>
                                        </c:choose>
<!--                                            房间状态 0没有人入住 1有人入住 3预定中-->
                                        </td>
                                        <td>${room.tel }</td>
                                         <td>${room.dayprice }</td>
                                        <td>${room.region }</td>
                                        <td>${room.locknumber }</td>
                                        <td>

                                            <a href="javascript:;" onclick="deleteRow(${room.id})">删除</a>
                                            <a href="${pageContext.request.contextPath}/room/getbyid?id=${room.id}">修改</a>
                                        </td>
                                    </tr>
								</c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="11">
                                        <div style="float: right;" >
                                            <ul class="pagination">
                                               <li class="page-item active"><a class="page-link" href="#">当前页/总页数${pages.currPage }/${pages.total }</a></li>


                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/room/list?currPage=${pages.first }&roomtypename=${room.roomtypename}&region=${room.region}&tel=${room.tel}&roomnum=${room.roomnum}&status=${room.status}">首页</a></li>
                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/room/list?currPage=${pages.pre }&roomtypename=${room.roomtypename}&region=${room.region}&tel=${room.tel}&roomnum=${room.roomnum}&status=${room.status}">上一页</a></li>
                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/room/list?currPage=${pages.next }&roomtypename=${room.roomtypename}&region=${room.region}&tel=${room.tel}&roomnum=${room.roomnum}&status=${room.status}">下一页</a></li>
                                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/room/list?currPage=${pages.last }&roomtypename=${room.roomtypename}&region=${room.region}&tel=${room.tel}&roomnum=${room.roomnum}&status=${room.status}">末页</a></li>
                                        
                                            </ul>
                                        </div>
                                    </td>
                                </tr>

                                </tfoot>
                            </table>

                            <!-- ============================================================== -->
                            <!-- end Tables Content -->
                            <!-- ============================================================== -->
                        </div>
                    </div>
                </div>
            </div>
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
    <input type="hidden" id="roomstatus" value="${room.status}">
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<jsp:include page="../share/resources_js.jsp"></jsp:include>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/room.js"></script>
</body>

</html>