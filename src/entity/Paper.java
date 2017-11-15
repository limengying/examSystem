package entity;

import java.util.Date;

public class Paper {
	
	private int paperId;// int(11) NOT NULL AUTO_INCREMENT COMMENT '试卷编号',
	private String type;// varchar(255) DEFAULT NULL COMMENT '所属类别',
	private int totalScore;//  int(11) DEFAULT NULL COMMENT '试卷总分值',
	private Date buildTime;// datetime DEFAULT NULL COMMENT '试卷生成时间',
	private int examineeId;// int(11) DEFAULT NULL COMMENT '考生编号',
	private String singleChoice;//varchar(255) DEFAULT NULL COMMENT '单选题',
	private String multiChoice;// varchar(255) DEFAULT NULL COMMENT '多选题',
	private String judge;// varchar(255) DEFAULT NULL COMMENT '判断题',
	private Date submissionTime;// datetime DEFAULT NULL COMMENT '提交时间',
	private String singleAnswer;// varchar(255) DEFAULT NULL COMMENT '单选题的答案',
	private String multiAnswer;// varchar(255) DEFAULT NULL COMMENT '多选题的答案',
	private String judgeAnswer;//varchar(255) DEFAULT NULL COMMENT '判断题的答案',
	private String examineeAnswer;// varchar(255) DEFAULT NULL COMMENT '考生答案',
	private int score;//  int(11) DEFAULT NULL COMMENT '考生得分',
	
	public Paper() {
		super();
		
	}
	public Paper(int paperId, String type, int totalScore, Date buildTime, int examineeId, String singleChoice,
			String multiChoice, String judge, Date submissionTime, String singleAnswer, String multiAnswer,
			String judgeAnswer, String examineeAnswer, int score) {
		super();
		this.paperId = paperId;
		this.type = type;
		this.totalScore = totalScore;
		this.buildTime = buildTime;
		this.examineeId = examineeId;
		this.singleChoice = singleChoice;
		this.multiChoice = multiChoice;
		this.judge = judge;
		this.submissionTime = submissionTime;
		this.singleAnswer = singleAnswer;
		this.multiAnswer = multiAnswer;
		this.judgeAnswer = judgeAnswer;
		this.examineeAnswer = examineeAnswer;
		this.score = score;
	}
	public Paper(String type,int examineeId, String singleChoice,
			String multiChoice, String judge,String singleAnswer, String multiAnswer,
			String judgeAnswer) {
		super();	
		this.type = type;		
		this.examineeId = examineeId;
		this.singleChoice = singleChoice;
		this.multiChoice = multiChoice;
		this.judge = judge;		
		this.singleAnswer = singleAnswer;
		this.multiAnswer = multiAnswer;
		this.judgeAnswer = judgeAnswer;
		
	}
	public int getPaperId() {
		return paperId;
	}
	public void setPaperId(int paperId) {
		this.paperId = paperId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getTotalScore() {
		return totalScore;
	}
	public void setTotalScore(int totalScore) {
		this.totalScore = totalScore;
	}
	public Date getBuildTime() {
		return buildTime;
	}
	public void setBuildTime(Date buildTime) {
		this.buildTime = buildTime;
	}
	public int getExamineeId() {
		return examineeId;
	}
	public void setExamineeId(int examineeId) {
		this.examineeId = examineeId;
	}
	public String getSingleChoice() {
		return singleChoice;
	}
	public void setSingleChoice(String singleChoice) {
		this.singleChoice = singleChoice;
	}
	public String getMultiChoice() {
		return multiChoice;
	}
	public void setMultiChoice(String multiChoice) {
		this.multiChoice = multiChoice;
	}
	public String getJudge() {
		return judge;
	}
	public void setJudge(String judge) {
		this.judge = judge;
	}
	public Date getSubmissionTime() {
		return submissionTime;
	}
	public void setSubmissionTime(Date submissionTime) {
		this.submissionTime = submissionTime;
	}
	public String getSingleAnswer() {
		return singleAnswer;
	}
	public void setSingleAnswer(String singleAnswer) {
		this.singleAnswer = singleAnswer;
	}
	public String getMultiAnswer() {
		return multiAnswer;
	}
	public void setMultiAnswer(String multiAnswer) {
		this.multiAnswer = multiAnswer;
	}
	public String getJudgeAnswer() {
		return judgeAnswer;
	}
	public void setJudgeAnswer(String judgeAnswer) {
		this.judgeAnswer = judgeAnswer;
	}
	
	public String getExamineeAnswer() {
		return examineeAnswer;
	}
	public void setExamineeAnswer(String examineeAnswer) {
		this.examineeAnswer = examineeAnswer;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
    @Override
	public String toString() {
		return "Paper [paperId=" + paperId + ", type=" + type + ", totalScore=" + totalScore + ", buildTime="
				+ buildTime + ", examineeId=" + examineeId + ", singleChoice=" + singleChoice + ", multiChoice="
				+ multiChoice + ", judge=" + judge + ", submissionTime=" + submissionTime + ", singleAnswer="
				+ singleAnswer + ", multiAnswer=" + multiAnswer + ", judgeAnswer=" + judgeAnswer + ", examineeAnswer="
				+ examineeAnswer + ", score=" + score + "]";
	}

}
