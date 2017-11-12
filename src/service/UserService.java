package service;

import dao.UserDao;
import entity.User;

public class UserService {
	UserDao userDao = new UserDao();
	User user = null;

	/**
	 * @param userId
	 *            用户编号
	 * @param password
	 *            用户密码
	 * @return User
	 * 
	 *         判断登录是否成功，1.登录成功，返回User对象；2.密码错误，将当前用户编号设为-1；3.用户不存在
	 * 
	 * 
	 */
	public User login(int userId, String password) {
		user = userDao.getUsersByUserId(userId);
		if (user != null) {
			if (password.equals(user.getPassword())) {
				System.out.println("登录成功");
				return user;
			} else {
				System.out.println("密码错误");
				user.setUserId(-1);
				return user;
			}
		}
		System.out.println(userId + "用户不存在");
		return user;
	}

}
