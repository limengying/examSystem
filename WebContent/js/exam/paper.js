function examine() {
	
	var radioCheck = document.getElementsByName("typeChk");
	var optType = "";
	for (var i = 0; i < radioCheck.length; i++) {
		if (radioCheck[i].checked == true) {
			optType = radioCheck[i].value;
			break;
		}
	}
	if (optType == "") {
		alert("请选择一种类型进行考试！");
		return false;
	}

	
	// 请求后台服务
	var data = {
		
		optType : optType
		
	};
	alert(JSON.stringify(data));
	jump(Paper_API, data);// 提交给后台，此时前端需要因为common文件夹下的common.js和api.js
}