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
                    <h4 class="page-title">酒店信息添加</h4>
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
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/hotel/append" method="post" enctype="multipart/form-data">
                            <div class="card-body">


                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">酒店名称</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="name" name="name" class="form-control" id="fname" placeholder="请输入用 户名称">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="lname" class="col-sm-3 text-right control-label col-form-label">酒店电话</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="tel" name="tel" class="form-control" id="lname" placeholder="请输入用 户名称">
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <label for="fname" class="col-sm-3 text-right control-label col-form-label">酒店地址</label>
                                    <div class="col-sm-4">
                                        <input type="text" id="address" name="address" class="form-control" id="fname" placeholder="请输入用 户名称">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">图片上传</label>
                                    <div class="col-md-5">
                                        <div class="custom-file">
                                            <input onchange="showFilename(this.files[0])" type="file" name="file" class="form-control-file" id="validatedCustomFile">
                                            <label id="filename_label" class="custom-file-label" for="validatedCustomFile">选择文件..</label>

                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">省</label>

                                    <div class="col-sm-5">
                                        <select id="province"  onchange="getCity()" name="state" class="select2 form-control custom-select" style="width: 100%; height:36px;">
                                            <option value="-1">请选择</option>
 											
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">城市</label>

                                    <div class="col-sm-5">
                                        <select id="city" name="cityid" onchange="getArea()" class="select2 form-control custom-select" style="width: 100%; height:36px;">
                                            <option value="-1">请选择</option>

                                        </select>
                                    </div>
                                </div>
                                  <div class="form-group row">
                                    <label for="cono1" class="col-sm-3 text-right control-label col-form-label">区</label>

                                    <div class="col-sm-5">
                                        <select id="area" name="area" class="select2 form-control custom-select" style="width: 100%; height:36px;">
                                            <option value="-1">请选择</option>

                                        </select>
                                    </div>
                                </div>
                                
                                <div class="border-top">
                                    <div class="card-body">
                                        <button type="submit" class="btn btn-primary">注册</button>
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
  
  //得到省信息
  function getProvince()
  {
	  let url=$("#common").attr("root")+'/city/selectbyparentid?parentid=0'
	  $.get(url,function(data){
		   console.log(data)
		   let op=""
		   for(let i=0;i<data.length;i++)
			   {
			   		op+='<option value="'+data[i].id+'">'+data[i].cityname+'</option>'
			   }
		   $("#province").append(op)
	  },"json")
  }
 
  //得到省下的城市
  function getCity()
  {
	
	  //清除所有内容
	  $("#city").empty()
	  //id=city添加一个列表项
	  $("#city").append('<option value="-1">请选择</option>')
	  //取id=province的value属性的值
	  let parentid=$("#province").val()
	  console.log(parentid)
	  //ajax请求的远程地址
	  let url=$("#common").attr("root")+'/city/selectbyparentid?parentid='+parentid
	//get请求
	  $.get(url,function(data){
		   console.log(data)
		   let op=""
		   for(let i=0;i<data.length;i++)
			   {
			   		op+='<option value="'+data[i].id+'">'+data[i].cityname+'</option>'
			   }
		   $("#city").append(op)
		   //json表示回调函数接到的是json数据格式
	  },"json")
  }
//得到城市下的区
  function getArea()
  {
	
	  //清除所有内容
	  $("#area").empty()
	  $("#area").append('<option value="-1">请选择</option>')
	  
	  let parentid=$("#city").val()
	 
	  let url=$("#common").attr("root")+'/city/selectbyparentid?parentid='+parentid
	  $.get(url,function(data){
		   console.log(data)
		   let op=""
		   for(let i=0;i<data.length;i++)
			   {
			   		op+='<option value="'+data[i].id+'">'+data[i].cityname+'</option>'
			   }
		   $("#area").append(op)
	  },"json")
  }
  
  //调用
  getProvince()
  </script>

</body>

</html>