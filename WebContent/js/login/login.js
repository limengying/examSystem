function login() {
	var loginId = document.getElementById('idIpt').value;
	var password = document.getElementById('passwordIpt').value;

	var radioCheck = document.getElementsByName("loginChk");
	var optType = "";
	for (var i = 0; i < radioCheck.length; i++) {
		if (radioCheck[i].checked == true) {
			optType = radioCheck[i].value;
			break;
		}
	}
	if (loginId == "") {
		alert("请输入工号");
		return false;
	}

	if (password == "") {
		alert("密码不能为空");
		return false;
	}
	if (optType == "") {
		alert("请选择用户登录或者考生登录");
		return false;
	}
	// 请求后台服务
	var data = {
		loginId : loginId,
		optType : optType,
		password : password
	};
	alert(JSON.stringify(data));
	jump(LOGIN_API, data);// 提交给后台，此时前端需要因为common文件夹下的common.js和api.js
}