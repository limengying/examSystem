<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XX文化考试系统</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/login.css">
<script src="<%=request.getContextPath()%>/js/common/api.js"></script>
<script src="<%=request.getContextPath()%>/js/common/common.js"></script>
<script src="<%=request.getContextPath()%>/js/login/login.js"></script>
</head>
<body>
	<div class="nk-container    ">
		<div class="nowcoder-header">
			<div class="header-main clearfix">

				<ul class="nowcoder-navbar">
					<li><a href="">XX文化考试系统</a></li>

				</ul>
			</div>
		</div>
		<div class="nk-main clearfix">
			<div class="wrapper">
				<div class="tabbed">
					<ul class="clearfix">
						<li class="tab-selected"><a href="javascript:void(0);"><span
								class="tab-login"></span>请选择一种类别</a></li>
					</ul>
				</div>
				<div class="module-box home-items" style="margin-top: 100px">
					<a class="subject-exercise" href="/contestRoom"> <i></i></a> 
					<label> <input type="radio" id="userLoginChk"
								name="loginChk" value="userLogin"> 装配
					</label>
				    <a class="real-exercise" href="/intelligentTest"> <i></i></a> 
					<label>
						<input type="radio" id="examineeLoginChk" name="loginChk"
						value="examineeLogin"> 测试
					</label> 
					
				    <label>
						<input type="radio" id="userLoginChk" name="loginChk"
						value="userLogin"> 管理
					</label> <a class="wrong-exercise" href="/profile/1118903/wrongset"> <i></i>
					</a> 
					<label> <input type="radio" id="examineeLoginChk"
								name="loginChk" value="examineeLogin"> 后勤
							</label><a class="devote-exercise" href="/activity/oj"> <i></i></a>
				
						
				</div>

				<div class="wrapper-content clearfix">
					<div class="input-section">
						<form>

							<div class="form-group">
								<div class="col-input-login">
									<a class="btn btn-primary btn-block"
										onclick="javascript:login();" id="loginBtn">开始考试</a> <input
										type="submit" class="nk-invisible" />
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

</body>
</html>
