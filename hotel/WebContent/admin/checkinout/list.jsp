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
                    <h4 class="page-title">办理入住/退房管理</h4>
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
                                <form  method="post"  class="form-inline navbar-form navbar-left" action="${pageContext.request.contextPath}/checkinout/list">
                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="name"  value="${checkInOut.name }" class="form-control" placeholder="请输入搜索姓名...">
                                    </div>

                                

                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="tel" value="${checkInOut.tel }" class="form-control" placeholder="请输入电话...">
                                    </div>
                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="idcard"  value="${checkInOut.idcard }"  class="form-control" placeholder="请输入email...">
                                    </div>

                                    <!-- 下拉列表 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <select id="status" class="form-control" name="status">
                                            <option value="-1" selected="selectd">==请选择==</option>
                                            <option value="0">入住</option>
                                            <option value="1" >退房</option>
                                        </select>
                                    </div>
                                    <!-- 按钮和超链接 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
									   	<span class="input-group-btn">
											<button type="submit" class="btn  btn-success">查询</button>
										</span>
                                        <span class="input-group-btn">
											<a href="/hotel/admin/users/append.jsp"  class="btn btn-primary" style="margin-left: 5px;">添加</a>
										</span>
                                        <span class="input-group-btn">
											<a href="#" class="btn btn-danger" style="margin-left: 5px;">批量删除</a>
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
                                            <input type="checkbox" id="ck" onchange="ckAll()" />
                                            <span class="checkmark"></span>
                                        </label>
                                    </th>
                                    <th scope="col">编号</th>
                                    <th scope="col">注册时间</th>
                                    <th scope="col">入信信息</th>
                                    <th scope="col">操作</th>
                                </tr>
                                </thead>
                                <tbody class="customtable">
									<c:forEach items="${pages.list }" var="checkinout" varStatus="vs">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" name="c" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>

                                        <td>${vs.count+(pages.currPage-1)*pages.pageSize }</td>
                                        <td>${checkinout.addtime }</td>

                                        <td>
                                            <div>姓名-${checkinout.name}</div>
                                            <div>真名-${checkinout.truename}</div>
                                            <div>电话-${checkinout.tel}</div>
                                            <div>性别-${checkinout.sex}</div>
                                            <div>身份证-${checkinout.idcard}</div>
                                            <div>入住日期-${checkinout.intime}</div>
                                            <div>退房日期-${checkinout.outtime}</div>
                                            <div>操作员名称-${checkinout.opname}</div>
                                            <div>会员名称-${checkinout.uname}</div>
                                            <div>房间号-${checkinout.roomnum}</div>
                                            <div>金额-${checkinout.pay}</div>
                                            <div>状态-<span style="color:red;font-size:16px;font-weight:bold">
                                            ${checkinout.status==0?'入住':'退房' }
                                            </span></div>
                                        </td>

                                        <td>

                                            <a  class="btn btn-primary" href="javascript:;" >删除</a>
                                            <a class="btn btn-success" href="javascript:;"  onclick="updateStatus(${checkinout.id})">办理退房1</a>
                                            <a name="updateStatus"  checkinoutid="${checkinout.id}"  class="btn btn-success" href="javascript:;">办理退房2</a>
                                        </td>
                                    </tr>
									</c:forEach>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <td colspan="5">
                                        <div style="float: right;" >
                                       <ul class="pagination">
<li class="page-item active"><a class="page-link" href="#">当前页/总页数${pages.currPage }/${pages.total }</a></li>


<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/checkinout/list?currPage=${pages.first }&name=${checkInOut.name}&idcard=${checkInOut.idcard}&tel=${checkInOut.tel}&status=${checkInOut.status}">首页</a></li>
<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/checkinout/list?currPage=${pages.pre }&name=${checkInOut.name}&idcard=${checkInOut.idcard}&tel=${checkInOut.tel}&status=${checkInOut.status}">上一页</a></li>
<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/checkinout/list?currPage=${pages.next }&name=${checkInOut.name}&idcard=${checkInOut.idcard}&tel=${checkInOut.tel}&status=${checkInOut.status}">下一页</a></li>
<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/checkinout/list?currPage=${pages.last }&name=${checkInOut.name}&idcard=${checkInOut.idcard}&tel=${checkInOut.tel}&status=${checkInOut.status}">末页</a></li>

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
	<jsp:include page="../share/resources_js.jsp"></jsp:include>
	<script type="text/javascript">
	$("#status").val('${checkInOut.status}')
	
	//
	function updateStatus(id)
	{
		if(confirm("真的办理退房?"))
			{
				location.href=$("#common").attr("root")+"/checkinout/updatestatus?id="+id
			}
	}
	
	//给a元素name=updateStatus注册事件
	$("a[name=updateStatus]").click(function(){
		
		let id=$(this).attr("checkinoutid")
		if(confirm("真的办理退房?"))
		{
			location.href=$("#common").attr("root")+"/checkinout/updatestatus?id="+id
		}
	})
	
	</script>
</body>

</html>