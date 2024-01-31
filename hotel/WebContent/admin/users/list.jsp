<!-- 页面指令 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--     引标签库 -->
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
<!-- 	今天高考20230608 -->
<%--今天高考20230607 --%> 
		    <!-- ============================================================== -->
		    <!-- Main wrapper - style you can find in pages.scss -->
		    <!-- ============================================================== -->
		    <div id="main-wrapper">
		        <!-- ============================================================== -->
		        <!-- Topbar header - style you can find in pages.scss -->
		        <!-- ============================================================== -->
		       		<jsp:include page="../share/top.jsp"></jsp:include>
		        <!-- ============================================================== -->
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
							<h4 class="page-title">用户信息管理</h4>
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
															<form   class="form-inline navbar-form navbar-left" action="${pageContext.request.contextPath}/users/list" method="get">						   							   		
												<!-- 搜索框 -->
												<div class="input-group" style="margin-right: 0.3125rem;">
													<input type="text" name="uname" value="${users.uname }" class="form-control" placeholder="请输入姓名..">
												</div>
												<div class="input-group" style="margin-right: 0.3125rem;">
													<input type="text" name="prompt" value="${users.prompt }"  class="form-control" placeholder="请输入密保问题..">
												</div>
												<!-- 下拉列表 -->
									   			<div class="input-group" style="margin-right: 0.3125rem;">
													<select id="state" class="form-control" name="state">								   							   		
														<option value="-1">==用户状态==</option>									   							   		
														<option value="1">正常</option>						   							   		
														<option value="2">加锁 </option>
													</select>
												</div>
									   <!-- 按钮和超链接 -->
									   <div class="input-group" style="margin-right: 0.3125rem;">
									   	<span class="input-group-btn">
											<button type="submit" class="btn  btn-success">查询</button>
										</span>									   							   
									   	<span class="input-group-btn">
											<a href="添加修改页面.html"  class="btn btn-primary" style="margin-left: 5px;">添加</a>
										</span>
									   	<span class="input-group-btn">
											<a href="javascript:;" id="deleteAll" deleteall_url="/users/deletebatchids" class="btn btn-danger" style="margin-left: 5px;">批量删除</a>
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
													   <input type="checkbox" id="ck"  />
													   <span class="checkmark"></span>
												   </label>	
												 </th>								   
											  <th scope="col">编号</th>
											  <th scope="col">添加时间</th>
											  <th scope="col">用户名称</th>
											  <th scope="col">用户密码</th>
											  <th scope="col">用户状态</th>
											  <th scope="col">密保问题</th>
											  <th scope="col">密保答案</th>
											  <th scope="col">操作</th>
										   </tr>
									   <tbody class="customtable">
									   <c:forEach items="${pages.list }" var="user" varStatus="vs">
											  <tr>
												<th>
													<label class="customcheckbox">
														<input type="checkbox" value="${user.id }" class="listCheckbox" name="c" />
														<span class="checkmark"></span>
													</label>
												</th>										
												<td>${vs.count+(pages.currPage-1)*pages.pageSize}</td>
												<td>${user.addtime }</td>
												<td>${user.uname }</td>
												<td>${user.upwd }</td>
												<td>${user.state==1?"正常":"加锁" }</td>
												<td>${user.prompt }</td>
												<td>${user.answer }</td>
												<td>
												
<a href="${pageContext.request.contextPath}/users/updatestate?id=${user.id}">${user.state==1?'加锁':'正常' }</a>
													<a href="javascript:;" onclick="deleteRow(${user.id})">删除</a>
													<a href="${pageContext.request.contextPath}/users/getbyid?id=${user.id}">修改</a>
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
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/users/list?currPage=${pages.first }&uname=${users.uname}&prompt=${users.prompt}&state=${users.state}">首页</a></li>
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/users/list?currPage=${pages.pre }&uname=${users.uname}&prompt=${users.prompt}&state=${users.state}">上一页</a></li>
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/users/list?currPage=${pages.next }&uname=${users.uname}&prompt=${users.prompt}&state=${users.state}">下一页</a></li>
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/users/list?currPage=${pages.last }&uname=${users.uname}&prompt=${users.prompt}&state=${users.state}">末页</a></li>
																						   					
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
<!-- 		自定义属性:为方便jq取值 attr("属性名") -->
		<input type="hidden" id="list" state="${users.state}"> 
		<!-- ============================================================== -->
		<!-- End Wrapper -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- All Jquery -->
<!-- 		包含指令 -->
		<jsp:include page="../share/resources_js.jsp"></jsp:include>
		
<!-- 		引用外部js -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/users.js"></script>

	</body>

</html>
    