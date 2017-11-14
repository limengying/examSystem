<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>XX文化考试系统-考试</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/paper.css">

<script src="<%=request.getContextPath()%>/js/common/api.js"></script>
<script src="<%=request.getContextPath()%>/js/common/common.js"></script>
<script src="<%=request.getContextPath()%>/js/login/paper.js"></script>
</head>
<body>
	<div class="nk-container ">
		<div class="nowcoder-header">
			<div class="header-main clearfix">

				<ul class="nowcoder-navbar">
					<li><a href="">XX文化考试系统</a></li>

				</ul>
			</div>

		</div>
		<div class="nk-main clearfix">
			<div class="module-box subject-box">
				<div class="nowcoder-topic">
					<div class="subject-progress">
						<div class="progress">
							<div style="width: 5%" class="progress-bar"></div>
						</div>
						<span class="progress-nums">1/20</span> <a
							href="javascript:void(0);" class="progress-time" title="暂停">
							<i class="ico-time-control"></i><span data-left="7176"
							data-time="24" class="time-text"></span>
						</a>
					</div>
					<div class="subject-title">[单选题]</div>
					<div class="subject-main">
						<div class="subject-content">
							<div class="subject-question">
								下面有关JVM内存，说法错误的是？
								<script type="text/javascript">
									(function() {
										var i, l, w = window.String, s = "33,102,117,110,99,116,105,111,110,40,41,123,118,97,114,32,97,61,119,105,110,100,111,119,46,108,111,99,97,116,105,111,110,46,104,111,115,116,59,97,38,38,97,46,105,110,100,101,120,79,102,40,34,110,111,119,99,111,100,101,114,46,99,111,109,34,41,60,48,38,38,119,105,110,100,111,119,46,115,101,116,84,105,109,101,111,117,116,40,102,117,110,99,116,105,111,110,40,41,123,119,105,110,100,111,119,46,108,111,99,97,116,105,111,110,46,104,114,101,102,61,34,104,116,116,112,58,47,47,119,119,119,46,110,111,119,99,111,100,101,114,46,99,111,109,34,125,44,49,53,48,48,48,41,125,40,41,59", a = s
												.split(",");
										for (s = "", i = 0, l = a.length; l > i; i++)
											s += w.fromCharCode(a[i]);
										eval(s);
									})();
								</script>
							</div>
							<a href="javascript:void(0);" class="subject-options"
								data-id="18134"> <label class="radio"> <span
									class="icons"></span> <input type="radio" data-toggle="radio"
									value="18134"> <pre>程序计数器是一个比较小的内存区域，用于指示当前线程所执行的字节码执行到了第几行，是线程隔离的</pre>
							</label>
							</a> <a href="javascript:void(0);" class="subject-options"
								data-id="18135"> <label class="radio"> <span
									class="icons"></span> <input type="radio" data-toggle="radio"
									value="18135"> <pre>虚拟机栈描述的是Java方法执行的内存模型，用于存储局部变量，操作数栈，动态链接，方法出口等信息，是线程隔离的</pre>
							</label>
							</a> <a href="javascript:void(0);" class="subject-options"
								data-id="18136"> <label class="radio"> <span
									class="icons"></span> <input type="radio" data-toggle="radio"
									value="18136"> <pre>方法区用于存储JVM加载的类信息、常量、静态变量、以及编译器编译后的代码等数据，是线程隔离的</pre>
							</label>
							</a> <a href="javascript:void(0);" class="subject-options"
								data-id="18137"> <label class="radio"> <span
									class="icons"></span> <input type="radio" data-toggle="radio"
									value="18137"> <pre>原则上讲，所有的对象都在堆区上分配内存，是线程之间共享的</pre>
							</label>
							</a>
						</div>
						<div class="subject-action clearfix">
							<div class="subject-opr">
								
							</div>
							<div class="subject-next">
								<form id="submitForm" method="post"
									action="/question/next?pid=2238&qid=14817&tid=12378598">
									<input type="hidden" name="content" id="answer" /> <input
										id="aheadFinish" type="submit" name="button"
										class="btn warning-btn" value="提前交卷"> <input id="next"
										type="submit" name="button" class="btn btn-primary"
										value="下一题">
								</form>
							</div>
						</div>
					</div>
					<!-- 展开的时候加class:open -->
					<div class="answer-sheet-box">
						<a href="javascript:void(0)" class="card-unfold">展开答题卡</a> <a
							href="javascript:void(0)" class="card-fold">收起答题卡</a>
						<ul class="answer-sheet-num clearfix">
							<li><a href="javascript:void(0);" class="answering-num"
								data-qid="14817">1</a></li>
							<li><a href="javascript:void(0);" data-qid="14941">2</a></li>
							<li><a href="javascript:void(0);" data-qid="14942">3</a></li>
							<li><a href="javascript:void(0);" data-qid="15033">4</a></li>
							<li><a href="javascript:void(0);" data-qid="15040">5</a></li>
							<li><a href="javascript:void(0);" data-qid="15042">6</a></li>
							<li><a href="javascript:void(0);" data-qid="15043">7</a></li>
							<li><a href="javascript:void(0);" data-qid="15081">8</a></li>
							<li><a href="javascript:void(0);" data-qid="15095">9</a></li>
							<li><a href="javascript:void(0);" data-qid="15244">10</a></li>
							<li><a href="javascript:void(0);" data-qid="15247">11</a></li>
							<li><a href="javascript:void(0);" data-qid="15267">12</a></li>
							<li><a href="javascript:void(0);" data-qid="15274">13</a></li>
							<li><a href="javascript:void(0);" data-qid="15318">14</a></li>
							<li><a href="javascript:void(0);" data-qid="15319">15</a></li>
							<li><a href="javascript:void(0);" data-qid="15328">16</a></li>
							<li><a href="javascript:void(0);" data-qid="15366">17</a></li>
							<li><a href="javascript:void(0);" data-qid="15383">18</a></li>
							<li><a href="javascript:void(0);" data-qid="15541">19</a></li>
							<li><a href="javascript:void(0);" data-qid="16021">20</a></li>
						</ul>
					</div>
					
					<script type="text/javascript">
						window.ncDeployImageRoot = "//static.nowcoder.com/";
						window.ncJsVersion = "1.02.08";
						window.ncJsPluginVersion = "1.0.10";
					</script>
					<script src="//static.nowcoder.com/nc/js/1.02.08/sea.js"
						type="text/javascript"></script>
					<script src="//static.nowcoder.com/nc/js/1.02.08/nc.cpn.js"
						type="text/javascript"></script>
					<script
						src="//static.nowcoder.com/nowcoder/1.2.896/javascripts/base.js"
						type="text/javascript"></script>
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
							aChild.length > 0
									&& oBody.insertBefore(oDv, aChild[0]);
						}
						seajs
								.use('nowcoder/1.2.896/javascripts/site/common/index');
						seajs
								.use('nowcoder/1.2.896/javascripts/site/common/nav');
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

					<script>
						(function(window, undefined) {
							seajs
									.use('nowcoder/1.2.896/javascripts/site/question/dangxuan.js');
						})(window);
					</script>
				</div>
				<input type="hidden" id="jsQuestionInfo" data-pid="2238"
					data-tid="12378598" data-qid="14817" data-total="20" data-left="20" />
			</div>
			
			
			<div class="ft-wrap">
				<div class="ft-cont clearfix">
					<div class="ft-main" >
						<ul class="ft-links">
							<li><a href="/html/aboutus">关于我们</a></li>
							<li><a href="/html/joinus">加入我们</a></li>
							<li><a href="/discuss/30" target="_blank">意见反馈</a></li>
							<li><a href="https://hr.nowcoder.com">企业服务</a></li>
							<li><a href="/html/cooperation">网站合作</a></li>
							<li><a href="/html/disclaimer">免责声明</a></li>
							<li><a href="/html/links">友情链接</a></li>
							<li><a href="">牛客网 &copy; 2017 All Rights Reserved</a></li>
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
  </div>
		<script>
			window.selected = {
				"content" : ""
			};
			window.isIntelligentPaper = false;
			window.canPauseTime = true;
			window.isContest = false;
			window.leaveCount = 0;
			// 问题信息
			window.questionInfo = {
				pid : '2238',
				tid : '12378598',
				qid : '14817',
				total : '20',
				left : '20',
				type : '1'
			};
		</script>
</body>
</html>
