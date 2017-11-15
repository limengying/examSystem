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
<script src="<%=request.getContextPath()%>/js/jQuery/jquery-2.2.3.min.js"></script>
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
						<span class="progress-nums">1/40</span> <a
							href="javascript:void(0);" class="progress-time" title="暂停">
							<span data-left="7176"
							data-time="24" class="time-text"></span>
						</a>
					</div>
					<div class="subject-title">[单选题]</div>
					<div class="subject-main">
						<div class="subject-content">
							<div class="subject-question">
								${singleChoices[0].content}
								
								
							</div>
							<a href="javascript:void(0);" class="subject-options"
								data-id="18134"> <label class="radio"> <span
									class="icons"></span> <input type="radio" data-toggle="radio"
									value="18134"> <pre>${singleChoices[0].option1}</pre>
							</label>
							</a> <a href="javascript:void(0);" class="subject-options"
								data-id="18135"> <label class="radio"> <span
									class="icons"></span> <input type="radio" data-toggle="radio"
									value="18135"> <pre>${singleChoices[0].option2}</pre>
							</label>
							</a> <a href="javascript:void(0);" class="subject-options"
								data-id="18136"> <label class="radio"> <span
									class="icons"></span> <input type="radio" data-toggle="radio"
									value="18136"> <pre>${singleChoices[0].option3}</pre>
							</label>
							</a> <a href="javascript:void(0);" class="subject-options"
								data-id="18137"> <label class="radio"> <span
									class="icons"></span> <input type="radio" data-toggle="radio"
									value="18137"> <pre>${singleChoices[0].option4}</pre>
							</label>
							</a>
						</div>
						<div class="subject-action clearfix">
							<div class="subject-opr"></div>
							<div class="subject-next">
								<form id="submitForm" method="post" action="">
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
						<a href="javascript:void(0)" class="card-unfold">答题卡</a> 
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
							<li><a href="javascript:void(0);" data-qid="14942">21</a></li>
							<li><a href="javascript:void(0);" data-qid="15033">22</a></li>
							<li><a href="javascript:void(0);" data-qid="15040">23</a></li>
							<li><a href="javascript:void(0);" data-qid="15042">24</a></li>
							<li><a href="javascript:void(0);" data-qid="15043">25</a></li>
							<li><a href="javascript:void(0);" data-qid="15081">26</a></li>
							<li><a href="javascript:void(0);" data-qid="15095">27</a></li>
							<li><a href="javascript:void(0);" data-qid="15244">28</a></li>
							<li><a href="javascript:void(0);" data-qid="15247">29</a></li>
							<li><a href="javascript:void(0);" data-qid="15267">30</a></li>
							<li><a href="javascript:void(0);" data-qid="15274">31</a></li>
							<li><a href="javascript:void(0);" data-qid="15318">32</a></li>
							<li><a href="javascript:void(0);" data-qid="15319">33</a></li>
							<li><a href="javascript:void(0);" data-qid="15328">34</a></li>
							<li><a href="javascript:void(0);" data-qid="15366">35</a></li>
							<li><a href="javascript:void(0);" data-qid="15383">36</a></li>
							<li><a href="javascript:void(0);" data-qid="15541">37</a></li>
							<li><a href="javascript:void(0);" data-qid="16021">38</a></li>
							<li><a href="javascript:void(0);" data-qid="15541">39</a></li>
							<li><a href="javascript:void(0);" data-qid="16021">40</a></li>
						</ul>
					</div>

				</div>
			</div>


		</div>
		

			<div class="ft-wrap">
				<div class="ft-cont clearfix">
					<div class="ft-main">
						<ul class="ft-links">
							<li><a href="javascript:void(0);">关于我们</a></li>
							<li><a href="javascript:void(0);">加入我们</a></li>
							<li><a href="javascript:void(0);">意见反馈</a></li>
							<li><a href="javascript:void(0);">企业服务</a></li>
							<li><a href="javascript:void(0);">网站合作</a></li>
							<li><a href="javascript:void(0);">免责声明</a></li>
							<li><a href="javascript:void(0);">友情链接</a></li>
							<li><a href="javascript:void(0);">XX文化考试系统 &copy; 2017
									All Rights Reserved</a></li>
						</ul>
					</div>
				</div>
			</div>
	</div>

</body>
</html>
