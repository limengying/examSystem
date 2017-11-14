<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
</head>
<body>
	<div class="nk-container    ">
		<div class="nowcoder-header">
			<div class="header-main clearfix">
				<a class="nowcoder-logo" href="/" title="牛客网"></a>
				<ul class="nowcoder-navbar">
					<li><a href="/">首页</a></li>
					<li><a href="/contestRoom">题库</a>
						<ul class="sub-nav">
							<li><a href="/contestRoom">公司真题</a></li>
							<li><a href="/intelligentTest">专项练习</a></li>
							<li><a href="/activity/oj">在线编程</a></li>
							<li><a href="/kaoyan">考研真题</a></li>
							<li><a href="/finalexam">期末考题</a></li>
							<li><a href="/activity/topics">精华专题</a></li>
							<li><a href="/questionCenter">试题广场</a></li>
						</ul></li>
					<li><a href="/courses">课程</a></li>
					<li><span class="ico-nav-new"></span> <a href="/recommend">求职</a>
					</li>
					<li><a href="/discuss">讨论区</a></li>
					<li><a href="/acm/contest/vip-contest-index">发现</a>
						<ul class="sub-nav">
							<li><a href="/acm/contest/vip-contest-index">竞赛</a></li>
							<li><a href="/ranking">排行榜</a></li>
						</ul></li>
				</ul>
				<div class="nav-account">
					<a href="/login" class="nav-account-login" id="nav-login">登录</a>/ <a
						href="/register" class="nav-account-reg" data-permalink="">注册</a>
				</div>
				<ul class="nowcoder-navbar nowcoder-other-nav">
					<li class="nav-search"><a href="javascript:void(0);"
						class="icon-search js-search-btn">搜索</a>
						<div class="newnav-search-wrap">
							<div class="newnav-search-cont">
								<form method="get" action="/search">
									<input class="nav-search-txt" name="query" type="text">
									<input type="hidden" name="type" value="all" /> <input
										type="submit" class="nk-invisible" /> <a
										href="javascript:void(0);"
										class="icon-search-colse  js-close-search-btn"></a>
								</form>
							</div>
						</div></li>
					<li><a href="/app" class="icon-mobile-phone">APP</a></li>
					<li><a href="http://hr.nowcoder.com" class="icon-briefcase"
						target="_blank">企业版</a></li>
				</ul>
			</div>
		</div>
		<div class="nk-main clearfix">
			<div class="wrapper">
				<div class="tabbed">
					<ul class="clearfix">
						<li class="tab-selected"><a href="javascript:void(0);"><span
								class="tab-login"></span>登录</a></li>
						<li><a
							href="/register?callBack=https%3A%2F%2Fwww.nowcoder.com%2Fprofile%2F1118903"><span
								class="tab-reg"></span>注册</a></li>
					</ul>
				</div>
				<div class="wrapper-content clearfix">
					<div class="input-section">
						<form>
							<div class="form-group">
								<label for="emailIpt" class="control-label">邮箱/手机</label>
								<div class="control-group">
									<input type="text" id="emailIpt" placeholder="请输入邮箱/手机号">
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
									<label> <input type="checkbox" id="remLoginChk" checked>
										记住登录
									</label>
								</div>
								<a href="/forgot-pwd" class="forget-pwd"> 忘记密码？</a>
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
					<div class="other-login-way">
						<span class="separate-line">或</span>
						<div class="login-way">
							<a href="javascript:void(0);"
								data-href="https://graph.qq.com/oauth2.0/authorize?client_id=101003590&response_type=code&redirect_uri=http://www.nowcoder.com/oauth2/qqconfig?callBack=https%3A%2F%2Fwww.nowcoder.com%2Fprofile%2F1118903&state=web&scope=get_user_info"
								class="nc-js-action-oauth login-qq">QQ账号登录</a> <a
								href="javascript:void(0);"
								data-href="https://api.weibo.com/oauth2/authorize?client_id=3023520088&response_type=code&redirect_uri=http://www.nowcoder.com/oauth2/sinaconfig?callBack=https%3A%2F%2Fwww.nowcoder.com%2Fprofile%2F1118903&state=web&scope=follow_app_official_microblog"
								class="nc-js-action-oauth login-wb">微博账号登录</a> <a
								href="javascript:void(0);"
								data-href="https://open.weixin.qq.com/connect/qrconnect?appid=wxfee0340998de6ab1&redirect_uri=http%3A%2F%2Fwww.nowcoder.com%2Foauth2%2Flogin%2Fweixin?&response_type=code&scope=snsapi_login&state=11"
								class="nc-js-action-oauth login-wx">微信账号登录</a>
							<div class="login-fold">
								<a href="javascript:void(0);" class="login-more">更多三方账号</a>
								<div class="login-unfold-icons">
									<a href="javascript:void(0);"
										data-href="https://github.com/login/oauth/authorize?client_id=1c539827b9400016d0c9&response_type=code&redirect_uri=http://www.nowcoder.com/oauth2/gitconfig?callBack=https%3A%2F%2Fwww.nowcoder.com%2Fprofile%2F1118903&state=web&scope=user:email"
										class="nc-js-action-oauth login-git"></a> <a
										href="javascript:void(0);"
										data-href="https://www.douban.com/service/auth2/auth?client_id=075c6b46242f18c8161541d26c8d4a58&response_type=code&redirect_uri=http://www.nowcoder.com/oauth2/dbconfig&state=web"
										class="nc-js-action-oauth login-db"></a> <a
										href="javascript:void(0);"
										data-href="https://graph.renren.com/oauth/authorize?client_id=33356a41ddac4028a9ad64925e68c0e0&response_type=code&redirect_uri=http://www.nowcoder.com/oauth2/rrconfig&state=web"
										class="nc-js-action-oauth login-rr"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="fixed-menu">
			<ul>
				<li><a href="javascript:void(0);" class="gotop js-nav-go-top"
					title="回到顶部"></a></li>
				<li><a class="fixed-wb" target="_blank"
					href="http://www.weibo.com/nowcoder"></a></li>
				<li><a
					href="tencent://groupwpa/?subcmd=all&param=7B2267726F757055696E223A3135373539343730352C2274696D655374616D70223A313431333130373737387D0A"
					class="qq" title="QQ"></a></li>
				<li><a href="javascript:void(0);" class="wx"></a>
					<div class="wx-qrcode">
						<img src="//static.nowcoder.com/images/wx-rcode.jpg" alt="二维码" />
						<p>扫描二维码，关注牛客网</p>
					</div></li>
				<li><a href="/discuss/30" class="feedback" title="意见反馈"></a> <a
					href="/discuss/30" class="feedback-letter">意见反馈</a></li>
				<li><a href="javascript:void(0);" class="qrcode"></a>
					<div class="wx-qrcode">
						<img src="//uploadfiles.nowcoder.com/app/android/app.png"
							alt="二维码" />
						<p>下载牛客APP，随时随地刷题</p>
					</div></li>
			</ul>
			<div class="phone-qrcode" style="display: none;">
				<a href="javascript:void(0);" class="qrcode-close">x</a> <img
					src="//uploadfiles.nowcoder.com/app/android/app.png" alt="二维码"
					style="width: 70px; height: 70px;" />
				<p>扫一扫下载牛客APP</p>
			</div>
		</div>
		<div class="fixed-foot clearfix js-fixed-foot" style="display: none;">
			<div class="fixed-foot-main">
				<div class="fixed-foot-tip">刷真题、补算法、看面经、得内推</div>
				<div class="fixed-foot-login">
					<span>使用第三方账号直接登录使用吧：</span> <a href="javascript:void(0);"
						data-href="https://api.weibo.com/oauth2/authorize?client_id=3023520088&redirect_uri=http%3A%2F%2Fwww.nowcoder.com%2Foauth2%2Fsinaconfig&response_type=code&state=web&scope=follow_app_official_microblog"
						class="ft-login-item ft-login-wb nc-js-action-oauth" title="登录微博"></a>
					<a href="javascript:void(0);"
						data-href="https://graph.qq.com/oauth2.0/authorize?client_id=101003590&redirect_uri=http%3A%2F%2Fwww.nowcoder.com%2Foauth2%2Fqqconfig&response_type=code&state=web"
						class="ft-login-item ft-login-qz nc-js-action-oauth"
						title="登录Qzone"></a> <a href="javascript:void(0);"
						data-href="https://open.weixin.qq.com/connect/qrconnect?appid=wxfee0340998de6ab1&redirect_uri=http%3A%2F%2Fwww.nowcoder.com%2Foauth2%2Flogin%2Fweixin&response_type=code&scope=snsapi_login&state=11"
						class="ft-login-item ft-login-wx nc-js-action-oauth" title="登录微信"></a>
					<a href="javascript:void(0);"
						data-href="https://github.com/login/oauth/authorize?client_id=1c539827b9400016d0c9&scope=user:email&redirect_uri=http%3A%2F%2Fwww.nowcoder.com%2Foauth2%2Fgitconfig&response_type=code&state=web"
						class="ft-login-item ft-login-git nc-js-action-oauth"
						title="登录git"></a> <a href="javascript:void(0);"
						class="more-login nc-req-auth">更多</a>
				</div>
			</div>
		</div>
		<div class="ft-wrap">
			<div class="ft-cont clearfix">
				<div class="ft-main">
					<ul class="ft-links">
						<li><a href="/html/aboutus">关于我们</a></li>
						<li><a href="/html/joinus">加入我们</a></li>
						<li><a href="/discuss/30" target="_blank">意见反馈</a></li>
						<li><a href="https://hr.nowcoder.com">企业服务</a></li>
						<li><a href="/html/cooperation">网站合作</a></li>
						<li><a href="/html/disclaimer">免责声明</a></li>
						<li><a href="/html/links">友情链接</a></li>
					</ul>
					<ul class="webrights">
						<li><span style="color: #a9b8ca;">浙ICP备14000860号-2</span></li>
						<li><span style="color: #a9b8ca;"> <img
								src="//static.nowcoder.com/company/images/res/ghs.png"
								style="width: 18px; height: 18px;"> <a
								style="font-size: 12px;" class="ft-info-item" target="_blank"
								href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11011402010078">京公网安备
									11011402010078号</a>
						</span></li>
						<li><a href="javascript:void(0);">牛客网&copy;2017 All
								Rights Reserved</a></li>
					</ul>
				</div>
				
				<div class="ft-app">
					<div class="ft-qrcode-box">
						<img width="128"
							src="//uploadfiles.nowcoder.com/app/app_download.png" />
					</div>
					<p>扫一扫，把题目装进口袋</p>
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
