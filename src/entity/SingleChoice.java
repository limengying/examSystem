package entity;

import java.util.Date;

public class SingleChoice {

	private int singleChoiceId;// int(11) NOT NULL AUTO_INCREMENT COMMENT '单选题编号',
	private int score;// int(11) DEFAULT NULL COMMENT '分值',
	private String type;// varchar(255) DEFAULT NULL COMMENT '所属类别',
	private String content;// varchar(255) DEFAULT NULL COMMENT '题目内容描述',
	private String option1;// varchar(255) DEFAULT NULL COMMENT '选项1',
	private String option2;// varchar(255) DEFAULT NULL COMMENT '选项2',
	private String option3;// varchar(255) DEFAULT NULL COMMENT '选项3',
	private String option4;// varchar(255) DEFAULT NULL COMMENT '选项4',
	private String answer;// varchar(255) DEFAULT NULL COMMENT '答案',
	private Date importTime;// datetime DEFAULT NULL COMMENT '导入时间',
	private int userId;// int(11) DEFAULT NULL COMMENT '操作人编号',
	
	public SingleChoice() {
		super();
		
	}
	
	public SingleChoice(int singleChoiceId, int score, String type, String content, String option1, String option2,
			String option3, String option4, String answer, Date importTime, int userId) {
		super();
		this.singleChoiceId = singleChoiceId;
		this.score = score;
		this.type = type;
		this.content = content;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.answer = answer;
		this.importTime = importTime;
		this.userId = userId;
	}
	public int getSingleChoiceId() {
		return singleChoiceId;
	}

	public void setSingleChoiceId(int singleChoiceId) {
		this.singleChoiceId = singleChoiceId;
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

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getOption4() {
		return option4;
	}

	public void setOption4(String option4) {
		this.option4 = option4;
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
		return "SingleChoice [singleChoiceId=" + singleChoiceId + ", score=" + score + ", type=" + type + ", content="
				+ content + ", option1=" + option1 + ", option2=" + option2 + ", option3=" + option3 + ", option4="
				+ option4 + ", answer=" + answer + ", importTime=" + importTime + ", userId=" + userId + "]";
	}

	

}
