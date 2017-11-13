<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XX文化考试系统</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
</head>
<body>
	<div class="nk-container    ">
		<div class="nowcoder-header">
			<div class="header-main clearfix">
				
				<ul class="nowcoder-navbar">
					<li><a href="/">XX文化考试系统</a></li>
					
				</ul>		
			</div>
		</div>
		<div class="nk-main clearfix">
			<div class="wrapper">
				<div class="tabbed">
					<ul class="clearfix">
						<li class="tab-selected"><a href="javascript:void(0);"><span
								class="tab-login"></span>登录</a></li>	
					</ul>
				</div>
				<div class="wrapper-content clearfix">
					<div class="input-section">
						<form>
							<div class="form-group">
								<label for="emailIpt" class="control-label">工号</label>
								<div class="control-group">
									<input type="text" id="emailIpt" placeholder="请输入用户/考生工号">
								</div>
							</div>
							<div class="form-group">
								<label for="passwordIpt" class="control-label">密码</label>
								<div class="control-group">
									<input type="password" id="passwordIpt" placeholder="请输入密码">
								</div>
							</div>
							<div class="form-group about-pwd">
								<div class="keep-pwd">
									<label> <input type="radio" id="userLoginChk" >
										用户
									</label>
								</div>
								<div class="keep-pwd">
									<label> <input type="radio" id="examineeLoginChk" >
										考生
									</label>
								</div>
								
							</div>
							<div class="form-group">
								<div class="col-input-login">
									<a class="btn btn-primary btn-block" href="javascript:void(0);"
										id="loginBtn">立即登录</a> <input type="submit"
										class="nk-invisible" />
								</div>
							</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>	
		<div class="ft-wrap">
			<div class="ft-cont clearfix">
				<div class="ft-main">
					<ul class="ft-links">
						<li><a href="">关于我们</a></li>
						<li><a href="">加入我们</a></li>
						<li><a href="" target="_blank">意见反馈</a></li>
						<li><a href="">企业服务</a></li>
						<li><a href="">网站合作</a></li>
						<li><a href="">免责声明</a></li>
						<li><a href="">友情链接</a></li>
						<li><a href="javascript:void(0);">XX文化考试系统 &copy;2017 All
								Rights Reserved</a></li>
					</ul>
				</div>
			
			</div>
		</div>
		<div class="ad-window-sm js-global-tips" style="display: none;">
			<a href="javascript:void(0);" class="ad-close">X</a>
			<div class="ad-live-active"></div>
			<a class="link-green js-global-tips-href" target="_blank" href="">点击查看>></a>
		</div>

	</div>
	<script>
		window.isLogin = false;
		window.globalInfo = {
			canLoadInIframe : 'false'
		};
		window.useNeteaseCaptcha = true;
	</script>
	<script type="text/javascript">
		window.ncDeployImageRoot = "//static.nowcoder.com/";
		window.ncJsVersion = "1.02.08";
		window.ncJsPluginVersion = "1.0.10";
	</script>
	<script src="//static.nowcoder.com/nc/js/1.02.08/sea.js"
		type="text/javascript"></script>
	<script src="//static.nowcoder.com/nc/js/1.02.08/nc.cpn.js"
		type="text/javascript"></script>
	<%-- 
	<script
		src="<%=request.getContextPath()%>/js/login/error.js"
		type="text/javascript"></script>   --%>	
		
	<script type="text/javascript">
		if (!window.seajs) {
			var oBody = document.body;
			var aChild = oBody.childNodes;
			var oDv = document.createElement('div');
			oDv.innerHTML = [
					'<div style="text-align:center;">',
					'<div style="font-size:18px;margin:20px 0;font-weight: bold;">',
					'静态文件加载出错，请检查当前网络情况是否正常，或者按照下面步骤修改电脑的DNS',
					'<br />推荐使用以下DNS: 223.5.5.5(首选) 和 223.6.6.6(备用)',
					'</div>',
					'<img style="border:1px solid #ccc;" src="//ww2.sinaimg.cn/mw690/44b25cb0jw1f5vt92tsz1j20o03d97dt.jpg" />',
					'</div>' ].join('');
			aChild.length === 0 && oBody.appendChild(oDv);
			aChild.length > 0 && oBody.insertBefore(oDv, aChild[0]);
		}
		seajs.use('nowcoder/1.2.896/javascripts/site/common/index');
		seajs.use('nowcoder/1.2.896/javascripts/site/common/nav');
	</script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?a808a1326b6c06c437de769d1b85b870";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
	<script type="text/javascript">
		seajs.use('nowcoder/1.2.896/javascripts/site/login/login');
	</script>
</body>
</html>
