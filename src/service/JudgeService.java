package service;

import java.util.List;

import dao.JudgeDao;
import entity.Judge;

public class JudgeService {
	JudgeDao judgeDao = new JudgeDao();
	List<Judge> judges = null;
	Judge judge = null;
	
	/**
	 * @param type
	 *            选出的试卷类别
	 * @param num
	 *            选出的记录条数
	 * @return List<Judge>
	 * 
	 *         从数据库中随机选出num道判断题
	 */
	public List<Judge> getjudgesInRandom(String type, int num){
		judges=judgeDao.getJudgesInRandom(type, num);
		if(judges!=null){
			System.out.println(judges);
		}else{
			System.out.println("未找到");
		}
		return judges;
	}
}
