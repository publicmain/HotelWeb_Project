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
                                <form  method="post"  class="form-inline navbar-form navbar-left" action="${pageContext.request.contextPath}/book/list">
                                    <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="uname" value="${book.uname }" class="form-control" placeholder="请输入搜索姓名...">
                                    </div>

 								<!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="tel" value="${book.tel }" class="form-control" placeholder="请输入搜索电话...">
                                    </div>
                                     <!-- 搜索框 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <input type="text" name="idcard" value="${book.idcard }" class="form-control" placeholder="请输入搜索idcard...">
                                    </div>
                              
                                    
                                    <!-- 下拉列表 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
                                        <select id="status" class="form-control" name="status">
                                            <option value="-1" selected="selectd">==请选择==</option>
                                            <option value="0">已预约</option>
                                            <option value="2" >已入住</option>

                                        </select>
                                    </div>
                                    <!-- 按钮和超链接 -->
                                    <div class="input-group" style="margin-right: 0.3125rem;">
									   	<span class="input-group-btn">
											<button type="submit" class="btn  btn-success">查询</button>
										</span>
                                        <span class="input-group-btn">
											<a href="/hotel/admin/book/append.jsp"  class="btn btn-primary" style="margin-left: 5px;">添加</a>
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
                                    <th scope="col">预约信息</th>
                                    <th scope="col">会员信息</th>
                                    <th scope="col">状态按钮</th>
                                    <th scope="col">操作</th>
                                </tr>
                                </thead>
                                <tbody class="customtable">
								<c:forEach items="${pages.list }" var="book" varStatus="vs">
                                    <tr>
                                        <th>
                                            <label class="customcheckbox">
                                                <input type="checkbox" name="c" class="listCheckbox" />
                                                <span class="checkmark"></span>
                                            </label>
                                        </th>
                                        <td>${vs.count+(pages.currPage-1)*pages.pageSize }</td>
                                        <td>${book.addtime }</td>
                                        <td>
                                            <div>入住时间-${book.begintime }</div>
                                            <div>退房时间-${book.endtime }</div>
                                            <div>预约人数-${book.personcount }</div>
                                            <div>预约房数--${book.roomcount }</div>
                                            <div>预约天数--${book.daycount }</div>
                                            <div>预约金额--${book.money }</div>
                                            <!-- 												状态 0表示预约 1表示取消预约 2表示预约转成入住 -->
                                            <div>预约状态--<span style="color:red;font-weight:bold;font-size:16px">
                                            	${book.status==0?"已预约":"已入住" }
                                            </span></div>
                                            <div>房间类型--${book.roomtypename }</div>
                                            <div>分配房间状态
                                            <span style="font-weight:bold;font-size:25px">${book.roomid}-${book.roomid==0?'未分配房间':'已分配房间' }</span>
                                            </div>
                                        </td>
                                        <td>
                                            <div>会员名称-${book.uname }</div>
                                            <div>会员电话-${book.tel }</div>
                                            <div>身份证号-${book.idcard }</div>
                                        </td>
                                        <td>
  										<c:if test="${book.roomid==0 }">
                                        <p><a style="width:90px" href="${pageContext.request.contextPath}/book/showroom?bookid=${book.id}" class="btn btn-primary">分配房间</a></p>
                                        </c:if>
                                        <c:if test="${book.roomid!=0 }">
                                       <p><a style="width:90px" href="" class="btn btn-danger">已分配房间</a></p>
                                        </c:if>
                                       <!--状态 0表示预约 1表示取消预约 2表示预约转成入住 -->
                                        <c:if test="${book.roomid!=0 and book.status==0 }"> 
                                        <p><a style="width:90px" href="${pageContext.request.contextPath}/book/getbyid?id=${book.id}" class="btn btn-success">办理入住</a></p>
                                        </c:if>
                                        
                                        <c:if test="${book.roomid!=0 and book.status==2 }">
                                        <p><a style="width:90px" href="javascript:;" class="btn btn-danger">已入住</a></p>
                                        </c:if>
                                        </td>
                                        <td>

                                            <a href="javascript:;" bookid="${book.id}" name="del" class="btn btn-danger">删除</a>

                                            <a href="" class="btn btn-success">修改</a>
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
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/book/list?currPage=${pages.first }&uname=${book.uname}&tel=${book.tel}&status=${book.status}&idcard=${book.idcard}">首页</a></li>
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/book/list?currPage=${pages.first }&uname=${book.uname}&tel=${book.tel}&status=${book.status}&idcard=${book.idcard}">上一页</a></li>
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/book/list?currPage=${pages.next }&uname=${book.uname}&tel=${book.tel}&status=${book.status}&idcard=${book.idcard}">下一页</a></li>
													<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/book/list?currPage=${pages.last }&uname=${book.uname}&tel=${book.tel}&status=${book.status}&idcard=${book.idcard}">末页</a></li>
																						   					
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
	$("#status").val('${book.status}')
	//匹配所有a元素name=del的注册事件
	$("a[name=del]").click(function(){
		//console.log(this)
		let id=$(this).attr('bookid')
		
		if(confirm("真的删除?"))
			{
				location.href=$("#common").attr("root")+"/book/removebyid?id="+id
			}
	})
</script>
</body>

</html>