package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import entity.Examinee;
import util.DBUtil;

public class ExamineeDao {
	DBUtil util = new DBUtil();
	private ResultSet rs = null;
	private Connection conn = null;
	private Examinee examinee = null;
	private PreparedStatement preparedStatement = null;

	/**
	 * @param ExamineeId
	 *            用户编号
	 * @return Examinee
	 * 
	 *         通过工号查找到Examinee对象并返回
	 */
	public Examinee getExamineeByExamineeId(int examineeId) {
		String sql = "select * from examineeinfo where examineeId=?";
		try {
			conn = util.openConnection();
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, examineeId);
			rs = preparedStatement.executeQuery();
			if (rs.next()) {
				examineeId = rs.getInt("ExamineeId");// '登录编号',
				String password = rs.getString("password");// '用户登录密码',
				String name = rs.getString("name");// '用户姓名',
				boolean sex = rs.getBoolean("sex");// '用户性别',1代表男生0表示女生
				String department = rs.getString("department");// '用户部门',
				Timestamp timestamp = rs.getTimestamp("birthdate");// '用户出生日期',
				Date birthdate = null;
				if (timestamp != null) {
					birthdate = new Date(timestamp.getTime());
				}
				String telephone = rs.getString("telephone");// '用户电话',
				String email = rs.getString("email");// '用户邮箱',
				String address = rs.getString("address");// '用户地址',

				examinee = new Examinee(examineeId, password, name, sex, department, birthdate, telephone, email,
						address);

				return examinee;
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
		return examinee;
	}

}
