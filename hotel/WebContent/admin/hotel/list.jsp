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
                    <h4 class="page-title">酒店信息管理</h4>
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
                                <form  method="post"  class="form-inline navbar-form navbar-left" action="${pageContext.request.contextPath}/hotel/list">
                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="name" value="${hotel.name }" class="form-control" placeholder="请输入名称...">
                                    </div>

                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" value="${hotel.tel }" name="tel" class="form-control" placeholder="请输入电话...">
                                    </div>

                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="address" value="${hotel.address }"  class="form-control" placeholder="请输入地址...">
                                    </div>

  									<!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="cityname"  value="${hotel.cityname }" class="form-control" placeholder="请输入城市名称...">
                                    </div>

                                    <!-- 按钮和超链接 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
									   	<span class="input-group-btn">
											<button type="submit" class="btn  btn-success">查询</button>
										</span>
                                        <span class="input-group-btn">
											<a href="/hotel/hotel/showappend"  class="btn btn-primary" style="margin-left: 5px;">添加</a>
										</span>
                                        <span class="input-group-btn">
											<a href="javascript:;" id="deleteAll" deleteall_url="/hotel/deletebatchids" class="btn btn-danger" style="margin-left: 5px;">批量删除</a>
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
                                    <th scope="col">酒店信息</th>
                                    <th scope="col">酒店图片</th>
                                    <th scope="col">操作</th>
                                </tr>
                                </thead>
                                <tbody class="customtable">
								<c:forEach items="${pages.list }" var="hotel"  varStatus="vs">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" name="c" value="${hotel.id }" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>

                                        <td>${vs.count+(pages.currPage-1)*pages.pageSize }</td>
                                        <td>${hotel.addtime }</td>
                                        <td>
                                            <div>名称-${hotel.name }</div>
                                            <div>电话-${hotel.tel }</div>
                                            <div>地址-${hotel.address }</div>
                                            <div>省-${hotel.province }</div>
                                            <div>城市-${hotel.cityname }</div>

                                        </td>
                                        <td>
                                            <img src="${pageContext.request.contextPath}/images/${hotel.picture}" style="width:80px; height:80px">
                                        </td>


                                        <td>

                                            <a href="javascript:;">删除</a>
                                            <a href="${pageContext.request.contextPath}/hotel/getbyid?id=${hotel.id}">修改</a>
                                        </td>
                                    </tr>
								</c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="10">
                                       <div style="float: right;" >
							   				<ul class="pagination">
												
											<li class="page-item active"><a class="page-link" href="#">当前页/总页数/${pages.currPage }/${pages.total }</a></li>								   				
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/hotel/list?currPage=${pages.first }&name=${hotel.name}&tel=${hotel.tel}&address=${hotel.address}&cityname=${hotel.cityname}">首页</a></li>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/hotel/list?currPage=${pages.pre }&name=${hotel.name}&tel=${hotel.tel}&address=${hotel.address}&cityname=${hotel.cityname}">上一页</a></li>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/hotel/list?currPage=${pages.next }&name=${hotel.name}&tel=${hotel.tel}&address=${hotel.address}&cityname=${hotel.cityname}">下一页</a></li>
											<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/hotel/list?currPage=${pages.last }&name=${hotel.name}&tel=${hotel.tel}&address=${hotel.address}&cityname=${hotel.cityname}">末页</a></li>
																				   					
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