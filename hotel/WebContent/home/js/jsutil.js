	//2个日期类型作差得到相关的天数
//2021-01-02
//2021-01-04
	function  getDaysBetween(dateString1,dateString2){
		   var  startDate = Date.parse(dateString1);
		   var  endDate = Date.parse(dateString2);
		   var days=(endDate - startDate)/(1*24*60*60*1000);
		   // alert(days);
		   return  days;
		}
	//查询字符串?key=value&key=value
	//取地址栏中指定参的值
	//name是参数名
	//param地址栏中?后面的参数 如:?begintime=1&endtime=2
	function getUrlParam(name,param) {
	    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); 
	    var r = param.substr(1).match(reg);
	    if (r != null) return unescape(r[2]);
	    return null;
	}
	
	function getCurrentDate()
	{
		var now = new Date();
        var year = now.getFullYear(); //得到年份
        var month = now.getMonth();//得到月份
        var date = now.getDate();//得到日期
        month = month + 1;
        if (month < 10) month = "0" + month;
        if (date < 10) date = "0" + date;

	    return year+"-"+month+"-"+date;
	}
	