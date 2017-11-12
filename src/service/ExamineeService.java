package service;

import dao.ExamineeDao;
import entity.Examinee;

public class ExamineeService {
	ExamineeDao examineeDao = new ExamineeDao();
	Examinee examinee = null;

	/**
	 * @param ExamineeId
	 *            考生编号
	 * @param password
	 *            考生密码
	 * @return Examinee
	 * 
	 *         判断登录是否成功，1.登录成功，返回Examinee对象；2.密码错误，将当前考生编号设为-1；3.用户不存在
	 * 
	 * 
	 */
	public Examinee login(int ExamineeId, String password) {
		examinee = examineeDao.getExamineeByExamineeId(ExamineeId);
		if (examinee != null) {
			if (password.equals(examinee.getPassword())) {
				System.out.println("登录成功");
				return examinee;
			} else {
				System.out.println("密码错误");
				examinee.setExamineeId(-1);
				return examinee;
			}
		}
		System.out.println(ExamineeId + "考生不存在");
		return examinee;
	}
}
