<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- All Jquery -->
		<!-- ============================================================== -->
		 <script src="${pageContext.request.contextPath}/admin/assets/libs/jquery/dist/jquery.min.js"></script>
		 <!-- Bootstrap tether Core JavaScript -->
		 <script src="${pageContext.request.contextPath}/admin/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
		 <!--Wave Effects -->
		 <script src="${pageContext.request.contextPath}/admin/dist/js/waves.js"></script>
		 <!--Menu sidebar -->
		 <script src="${pageContext.request.contextPath}/admin/dist/js/sidebarmenu.js"></script>
		 <!--Custom JavaScript -->
		 <script src="${pageContext.request.contextPath}/admin/dist/js/custom.min.js"></script>
		<!-- editor javascript -->
		<script src="${pageContext.request.contextPath}/admin/assets/libs/quill/dist/quill.min.js"></script>
		<script>
			$(".pagination li").click(function(){
				$(this).addClass("active").siblings().removeClass("active");
			});
			
		</script>
		<script src="${pageContext.request.contextPath}/admin/js/room.js"></script>
		