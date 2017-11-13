$(function() {
	$('body').css({
		'min-height' : $(window).height()
	});

	// 点击登录
	$(".submitBtn").click(function() {
		var loginId = $("#phoneNumber").val();
		var optType = $("#optType").val();
		var password = $("#passwordIpt").val();

		if (loginId == "") {
			alert("请输入工号");
			return false;
		}

		if (optType == "") {
			alert("登录方式不能为空");
			return false;
		}

		if (password == "") {
			alert("密码不能为空");
			return false;
		}
		// 请求后台服务
		var data = {
				loginId : loginId,
				optType : optType,
				password : password
		};
		alert(JSON.stringify(data));
		jump(LOGIN_API, data);//提交给后台，此时前端需要因为common文件夹下的common.js和api.js
	});
});