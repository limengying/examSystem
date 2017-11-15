
package service;

import java.util.List;
import dao.JudgeDao;
import dao.MultiChoiceDao;
import dao.PaperDao;
import dao.SingleChoiceDao;
import entity.Judge;
import entity.MultiChoice;
import entity.Paper;
import entity.SingleChoice;

public class PaperService {
	SingleChoiceDao singleDao = new SingleChoiceDao();
	MultiChoiceDao multiDao = new MultiChoiceDao();
	JudgeDao judgeDao = new JudgeDao();
	PaperDao paperDao = new PaperDao();
	Paper paper = null;
	List<SingleChoice> singleChoices = null;
	List<MultiChoice> multiChoices = null;
	List<Judge> judges = null;

	String singleChoice = "";
	String multiChoice = "";
	String judge = "";
	String singleAnswer = "";
	String multiAnswer = "";
	String judgeAnswer = "";

	public List<SingleChoice> getSingleChoices() {
		return singleChoices;
	}

	public void setSingleChoices(List<SingleChoice> singleChoices) {
		this.singleChoices = singleChoices;
	}

	public List<MultiChoice> getMultiChoices() {
		return multiChoices;
	}

	public void setMultiChoices(List<MultiChoice> multiChoices) {
		this.multiChoices = multiChoices;
	}

	public List<Judge> getJudges() {
		return judges;
	}

	public void setJudges(List<Judge> judges) {
		this.judges = judges;
	}
	/**
	 * @param type
	 *            试卷类型
	 * 
	 *            根据考生选择的试卷类型产生相应类型的试卷题目
	 * 
	 */
	public boolean generateQuestions(String type) {

		singleChoices = singleDao.getSingleChoicesInRandom(type, 1);
		multiChoices = multiDao.getMultiChoicesInRandom(type, 1);
		judges = judgeDao.getJudgesInRandom(type, 1);
		if (singleChoices != null && multiChoices != null && judges != null) {
		
			System.out.println("试卷产生成功！");
			return true;
		} else {
			System.out.println("试卷产生失败！");
			return false;
		}

	}

	/**
	 * @param examineeId
	 *            考生工号
	 * @param type
	 *            试卷类型
	 * 
	 * 
	 *            根据产生的试卷题目，将相应的试卷类型、题目编号及考生编号插入数据库中
	 * 
	 */
	public int addPaper(int examineeId, String type) {
		int paperId = -1;
		for (int i = 0; i < singleChoices.size(); i++) {
			if (i != singleChoices.size() - 1) {
				singleChoice += singleChoices.get(i).getSingleChoiceId() + ",";
			} else
				singleChoice += singleChoices.get(i).getSingleChoiceId() + ",";
			singleAnswer += singleChoices.get(i).getAnswer();
		}

		for (int i = 0; i < multiChoices.size(); i++) {
			if (i != multiChoices.size() - 1) {
				multiChoice += multiChoices.get(i).getMultiChoiceId() + ",";
				multiAnswer += multiChoices.get(i).getAnswer() + ",";
			} else {
				multiChoice += multiChoices.get(i).getMultiChoiceId() + ",";
				multiAnswer += multiChoices.get(i).getAnswer() + ",";
			}

		}
		for (int i = 0; i < judges.size(); i++) {
			if (i != judges.size() - 1) {
				judge += judges.get(i).getJudgeId() + ",";
				judgeAnswer += judges.get(i).getAnswer();
			} else {
				judge += judges.get(i).getJudgeId() + ",";
				judgeAnswer += judges.get(i).getAnswer();
			}

		}

	
	     paperId = paperDao.addPaper(type, examineeId, singleChoice, multiChoice, judge, singleAnswer, multiAnswer,
				judgeAnswer);
		if (paperId != -1) {
			System.out.println(paperId);
			paper = new Paper(type, examineeId, singleChoice, multiChoice, judge, singleAnswer, multiAnswer,
					judgeAnswer);
			return paperId;
		} else {
			System.out.println("添加试卷失败！");
			return paperId;
		}
	}

}
