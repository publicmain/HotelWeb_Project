/**
 * 
 */
//添加时表单验证
	function formValidate()
	{
		let uname=$("#uname").val()
		let upwd=$("#upwd").val()
		let upwd2=$("#upwd2").val()
		let prompt=$("#prompt").val()
		let answer=$("#answer").val()
		//判断
		if (uname=='')
			{
				alert('用户姓名不能为空')
				$("#uname").focus()//获取焦点
				return  false
			}
		if (upwd=='')
		{
			alert('用户密码不能为空')
			$("#upwd").focus()//获取焦点
			return  false
		}
		
		if(upwd!=upwd2)
			{
			alert('2次佃入密码不相同')
			return  false
			}
		if (prompt=='')
		{
			$("#prompt").focus()//获取焦点
			alert('用户密保不能为空')
			return  false
		}
		
		if (answer=='')
		{
			alert('用户密保问题不能为空')
			$("#answer").focus()//获取焦点
			return  false
		}
	}

	//------------关于查询
	//状态的下拉列表:实现默认选中
	$("#state").val($("#list").attr("state"))
	//删除数据
	function deleteRow(id)
	{
		if(confirm("真的删除?"))
			{
				location.href=$("#common").attr("root")+'/users/removebyid?id='+id
			}
	}