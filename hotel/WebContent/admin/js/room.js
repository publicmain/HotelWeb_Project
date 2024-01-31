/**
 * 
 */
//下拉列表默认选中
	$("#status").val($("#roomstatus").val())
	
	
	
	function deleteRow(id)
	{
		if(confirm("真的删除?"))
			{
				location.href=$("#common").attr("root")+"/room/removebyid?id="+id
			}
	}
	
	//给id=ck注册事件 onchange (change)
	$("#ck").change(function(){
		
		//this表示当前匹配的元素
		let ck=$(this).prop("checked");//true,false
		//匹配所有的input元素name=c,设置checked属性的值为ck
		$("input[name=c]").prop("checked",ck)
	})
	//id=deleteAll注册click事件
	$("#deleteAll").click(function(){
		if(confirm("真的执行批量删除?"))
			{
				//数组
				let ids=[]
				//匹配所有的input元素name=c,并且被 选中的,遍历所有元素
				$("input[name=c]:checked").each(function(index,obj){
					//
					//console.log(this)
					//console.log(obj,index)
					ids.push($(this).val())
					
				})
				//取当前元素的自定义属性deleteall_url的值
				let deleteallurl=$(this).attr("deleteall_url")
				console.log(deleteallurl)
				location.href=$("#common").attr("root")+deleteallurl+'?ids='+ids
			
			}

		
	})
	