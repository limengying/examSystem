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
<script src="<%=request.getContextPath()%>/js/exam/paper.js"></script>
<script
	src="<%=request.getContextPath()%>/js/jQuery/jquery-2.2.3.min.js"></script>
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
							<span data-left="7176" data-time="24" class="time-text"></span>
						</a>
					</div>
					<div class="subject-title">[单选题]</div>
					<div class="subject-main">
						
						
						<div class="subject-content">
							<div class="subject-question" id="optionContent">${singleChoices[0].content}</div>

							<a href="javascript:void(0);" class="subject-options"
								data-id="18134"> <label class="radio" id="label0"> <span
									class="icons"></span><input type="radio" id="radio0"
									name="optionChk" value="A" onclick="radioCheck();"> <pre>${singleChoices[0].option1}</pre>
							</label>
							</a> <a href="javascript:void(0);" class="subject-options"
								data-id="18135"> <label class="radio" id="label1"> <span
									class="icons"></span> <input type="radio" id="radio1"
									name="optionChk" value="B" onclick="radioCheck();"> <pre>${singleChoices[0].option2}</pre>
							</label>
							</a> <a href="javascript:void(0);" class="subject-options"
								data-id="18136"> <label class="radio" id="label2"> <span
									class="icons"></span> <input type="radio" id="radio2"
									name="optionChk" value="C" onclick="radioCheck();"> <pre>${singleChoices[0].option3}</pre>
							</label>
							</a> <a href="javascript:void(0);" class="subject-options"
								data-id="18137"> <label class="radio" id="label3"> <span
									class="icons"></span> <input type="radio" id="radio3"
									name="optionChk" value="D" onclick="radioCheck();"> <pre>${singleChoices[0].option4}</pre>
							</label>
							</a>
						</div>

						<div class="subject-action clearfix">
							<div class="subject-opr"></div>
							<div class="subject-next">

								<input id="aheadFinish" type="button" name="button"
									class="btn warning-btn" value="提前交卷" onclick="submit();">
								<input id="next" type="button" name="button"
									class="btn btn-primary" value="下一题" onclick="next()">
							</div>
						</div>
					</div>
					<!-- 展开的时候加class:open -->
					<div class="answer-sheet-box">
						<a href="javascript:void(0)" class="card-unfold">答题卡</a>
						<ul class="answer-sheet-num clearfix">
							<li><a href="javascript:void(0);" class="answering-num"
								data-qid="1" name="questionNum" onclick="skip();">1</a></li>
							<li><a href="javascript:void(0);" data-qid="2"
								name="questionNum" onclick="skip();">2</a></li>
							<li><a href="javascript:void(0);" data-qid="3"
								name="questionNum" onclick="skip();">3</a></li>
							<li><a href="javascript:void(0);" data-qid="4"
								name="questionNum" onclick="skip();">4</a></li>
							<li><a href="javascript:void(0);" data-qid="5"
								name="questionNum" onclick="skip();">5</a></li>
							<li><a href="javascript:void(0);" data-qid="6"
								name="questionNum" onclick="skip();">6</a></li>
							<li><a href="javascript:void(0);" data-qid="7"
								name="questionNum" onclick="skip();">7</a></li>
							<li><a href="javascript:void(0);" data-qid="8"
								name="questionNum" onclick="skip();">8</a></li>
							<li><a href="javascript:void(0);" data-qid="15095"
								name="questionNum" onclick="skip();">9</a></li>
							<li><a href="javascript:void(0);" data-qid="15244"
								name="questionNum" onclick="skip();">10</a></li>
							<li><a href="javascript:void(0);" data-qid="15247"
								name="questionNum" onclick="skip();">11</a></li>
							<li><a href="javascript:void(0);" data-qid="15267"
								name="questionNum" onclick="skip();">12</a></li>
							<li><a href="javascript:void(0);" data-qid="15274"
								name="questionNum" onclick="skip();">13</a></li>
							<li><a href="javascript:void(0);" data-qid="15318"
								name="questionNum" onclick="skip();">14</a></li>
							<li><a href="javascript:void(0);" data-qid="15319"
								name="questionNum" onclick="skip();">15</a></li>
							<li><a href="javascript:void(0);" data-qid="15328"
								name="questionNum" onclick="skip();">16</a></li>
							<li><a href="javascript:void(0);" data-qid="15366"
								name="questionNum" onclick="skip();">17</a></li>
							<li><a href="javascript:void(0);" data-qid="15383"
								name="questionNum" onclick="skip();">18</a></li>
							<li><a href="javascript:void(0);" data-qid="15541"
								name="questionNum" onclick="skip();">19</a></li>
							<li><a href="javascript:void(0);" data-qid="16021"
								name="questionNum" onclick="skip();">20</a></li>
							<li><a href="javascript:void(0);" data-qid="14942"
								name="questionNum" onclick="skip();">21</a></li>
							<li><a href="javascript:void(0);" data-qid="15033"
								name="questionNum" onclick="skip();">22</a></li>
							<li><a href="javascript:void(0);" data-qid="15040"
								name="questionNum" onclick="skip();">23</a></li>
							<li><a href="javascript:void(0);" data-qid="15042"
								name="questionNum" onclick="skip();">24</a></li>
							<li><a href="javascript:void(0);" data-qid="15043"
								name="questionNum" onclick="skip();">25</a></li>
							<li><a href="javascript:void(0);" data-qid="15081"
								name="questionNum" onclick="skip();">26</a></li>
							<li><a href="javascript:void(0);" data-qid="15095"
								name="questionNum" onclick="skip();">27</a></li>
							<li><a href="javascript:void(0);" data-qid="15244"
								name="questionNum" onclick="skip();">28</a></li>
							<li><a href="javascript:void(0);" data-qid="15247"
								name="questionNum" onclick="skip();">29</a></li>
							<li><a href="javascript:void(0);" data-qid="15267"
								name="questionNum" onclick="skip();">30</a></li>
							<li><a href="javascript:void(0);" data-qid="15274"
								name="questionNum" onclick="skip();">31</a></li>
							<li><a href="javascript:void(0);" data-qid="15318"
								name="questionNum" onclick="skip();">32</a></li>
							<li><a href="javascript:void(0);" data-qid="15319"
								name="questionNum" onclick="skip();">33</a></li>
							<li><a href="javascript:void(0);" data-qid="15328"
								name="questionNum" onclick="skip();">34</a></li>
							<li><a href="javascript:void(0);" data-qid="15366"
								name="questionNum" onclick="skip();">35</a></li>
							<li><a href="javascript:void(0);" data-qid="15383"
								name="questionNum" onclick="skip();">36</a></li>
							<li><a href="javascript:void(0);" data-qid="15541"
								name="questionNum" onclick="skip();">37</a></li>
							<li><a href="javascript:void(0);" data-qid="16021"
								name="questionNum" onclick="skip();">38</a></li>
							<li><a href="javascript:void(0);" data-qid="15541"
								name="questionNum" onclick="skip();">39</a></li>
							<li><a href="javascript:void(0);" data-qid="16021"
								name="questionNum" onclick="skip();">40</a></li>
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
