package service;

import java.util.List;

import dao.MultiChoiceDao;
import entity.MultiChoice;

public class MultiChoiceService {
	MultiChoiceDao multiChoiceDao = new MultiChoiceDao();
	List<MultiChoice> multiChoices = null;
	MultiChoice multiChoice = null;
	
	/**
	 * @param type
	 *            选出的试卷类别
	 * @param num
	 *            选出的记录条数
	 * @return List<MultiChoice>
	 * 
	 *         从数据库中随机选出num道多选题
	 */
	public List<MultiChoice> getMultiChoicesInRandom(String type, int num){
		multiChoices=multiChoiceDao.getMultiChoicesInRandom(type, num);
		if(multiChoices!=null){
			System.out.println(multiChoices);
		}else{
			System.out.println("未找到");
		}
		return multiChoices;
	}
}
