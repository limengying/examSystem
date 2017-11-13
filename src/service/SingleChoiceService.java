package service;

import java.util.List;

import dao.SingleChoiceDao;
import entity.SingleChoice;


public class SingleChoiceService {
	SingleChoiceDao singleChoiceDao = new SingleChoiceDao();
	List<SingleChoice> singleChoices = null;
	SingleChoice singleChoice=null;
	
	/**
	 * @param type
	 *            选出的记录类别
	 * @param num
	 *            选出的记录条数
	 * @return List<SingleChoice>
	 * 
	 *         从数据库中随机选出num道单选题
	 */
	public List<SingleChoice> getSingleChoicesInRandom(String type, int num){
		singleChoices=singleChoiceDao.getSingleChoicesInRandom(type, num);
		if(singleChoices!=null){
			System.out.println(singleChoices);
		}else{
			System.out.println("未找到");
		}
		return singleChoices;
	}

}
