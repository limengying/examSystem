package entity;

import java.util.Date;

public class Judge {

	private int judgeId;// int(11) NOT NULL AUTO_INCREMENT COMMENT '判断题编号',
	private int score;// int(11) DEFAULT NULL COMMENT '分值',
	private String type;// varchar(255) DEFAULT NULL COMMENT '所属类别',
	private String content;// varchar(255) DEFAULT NULL COMMENT '题目内容描述',
	private String answer;// varchar(255) DEFAULT NULL COMMENT '答案',
	private Date importTime;// datetime DEFAULT NULL COMMENT '导入时间',
	private int userId;// int(11) DEFAULT NULL COMMENT '操作人编号',
	
	public Judge() {
		super();
	
	}
	
	public Judge(int judgeId, int score, String type, String content, String answer, Date importTime, int userId) {
		super();
		this.judgeId = judgeId;
		this.score = score;
		this.type = type;
		this.content = content;
		this.answer = answer;
		this.importTime = importTime;
		this.userId = userId;
	}

	public int getJudgeId() {
		return judgeId;
	}

	public void setJudgeId(int judgeId) {
		this.judgeId = judgeId;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getImportTime() {
		return importTime;
	}

	public void setImportTime(Date importTime) {
		this.importTime = importTime;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "Judge [judgeId=" + judgeId + ", score=" + score + ", type=" + type + ", content=" + content
				+ ", answer=" + answer + ", importTime=" + importTime + ", userId=" + userId + "]";
	}
}
