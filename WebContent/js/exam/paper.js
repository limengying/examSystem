
var answer = new Array(41);
answer[0] = -1;
var currentNum = 1;

function radioCheck() {

	var radioCheck = document.getElementsByName("optionChk");
	for (var i = 0; i < radioCheck.length; i++) {
		if (radioCheck[i].checked == true) {
			answer[currentNum] = radioCheck[i].value;
			document.getElementById("label" + i).className = "radio checked";

		} else {
			document.getElementById("label" + i).className = "radio";

		}
	}

}

function next(){
	
	// document.getElementById("index").setAttribute("value", "${singleChoices[2].content}");
	alert("aa");
	//currentNum = currentNum + 1;
	//var optionContent = document.getElementById("optionContent");
	//optionContent.innerHTML = document.getElementById("index").value;
	
}

function skip() {

	var answerSheet = document.getElementsByName("questionNum");
	for (var i = 0; i < answerSheet.length; i++) {
		if (answerSheet[i].content) {
			currentNum = answerSheet[i].value;
			break;
		}
	}
}



	// 请求后台服务
function submit(){
	var data = {

		answer : answer

	};
	alert(JSON.stringify(data));
	jump(Paper_API, data);// 提交给后台，此时前端需要因为common文件夹下的common.js和api.js
}
