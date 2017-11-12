package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import entity.User;
import util.DBUtil;

public class UserDao {
	DBUtil util = new DBUtil();
	private ResultSet rs = null;
	private Connection conn = null;
	private User user = null;
	private PreparedStatement preparedStatement = null;

	/**
	 * @param userId
	 *            用户编号
	 * @return User
	 * 
	 *         通过工号查找到user对象并返回
	 */
	public User getUsersByUserId(int userId) {
		String sql = "";
		try {
			conn = util.openConnection();
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, userId);
			rs = preparedStatement.executeQuery();
			if (rs.next()) {
				userId = rs.getInt("userId");// '登录编号',
				String password = rs.getString("userId");// '用户登录密码',
				String name = rs.getString("userId");// '用户姓名',
				boolean sex = rs.getBoolean("userId");// '用户性别',1代表男生0表示女生
				String department = rs.getString("userId");// '用户部门',
				Timestamp timestamp = rs.getTimestamp("userId");// '用户出生日期',
				Date birthdate = null;
				if (timestamp != null) {
					birthdate = new Date(timestamp.getTime());
				}
				String telephone = rs.getString("userId");// '用户电话',
				String email = rs.getString("userId");// '用户邮箱',
				String address = rs.getString("userId");// '用户地址',
				boolean permission = rs.getBoolean("userId");// '用户是否有权限更新题库',

				user = new User(userId, password, name, sex, department, birthdate, telephone, email, address,
						permission);

				return user;
			} else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (conn != null) {
					conn.close();
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return user;
	}

}
