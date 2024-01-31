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
                           <h4 class="page-title">用户信息修改</h4>
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
                               <form class="form-horizontal" action="${pageContext.request.contextPath}/users/update" method="post" onsubmit="return editformValidate()">
                                   <div class="card-body">
<!-- 										隐藏控件 -->
										<input type="hidden" name="id" value="${users.id }">
                                       <div class="form-group row">
                                           <label for="fname" class="col-sm-3 text-right control-label col-form-label">用户名称</label>
                                           <div class="col-sm-4">
                                               <input type="text"  id="uname" value="${users.uname }" name="uname" class="form-control" placeholder="请输入用 户名称">
                                           </div>
                                       </div>

                                       <div class="form-group row">
                                           <label for="lname" class="col-sm-3 text-right control-label col-form-label">用户密码</label>
                                           <div class="col-sm-4">
                                               <input type="password" name="upwd"  value="${users.upwd }"  class="form-control"  placeholder="请输入用 户名称">
                                           </div>
                                       </div>
                                      
                                       <div class="form-group row">
                                           <label for="cono1" class="col-sm-3 text-right control-label col-form-label">密保提示</label>
                                           <div class="col-sm-5">
                                               <input type="text" name="prompt"  value="${users.prompt }"  class="form-control" id="cono1" placeholder="请输入密保提示">
                                           </div>
                                       </div>

                                       <div class="form-group row">
                                           <label for="cono1" class="col-sm-3 text-right control-label col-form-label">密保答案</label>
                                           <div class="col-sm-5">
                                               <input type="text" name="answer" value="${users.answer }"  class="form-control" id="cono2" placeholder="请输入密保答案">
                                           </div>
                                       </div>
                                      <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">用户状态</label>

                                    <div class="col-sm-5">
                                        <select id="state" name="state" class="select2 form-control custom-select" style="width: 100%; height:36px;">
                                            <option value="-1">请选择</option>
                                            <option value="1">正常</option>
                                            <option value="2">加锁</option>   
                                        </select>
                                    </div>
                                </div>
                                       <div class="border-top">
                                           <div class="card-body">
                                               <button type="submit" class="btn btn-primary">保存修改</button>
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

	<script type="text/javascript">
	//状态的下拉列表:实现默认选中
	$("#state").val('${users.state}')
	
	//表单验证
	function editformValidate()
	{
		
		if($("#state").val()==-1)
			{
				alert("请选择用户状态")
				return false
			}
	}
	</script>
	
	
</body>

</html>
