package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.Judge;
import util.DBUtil;

public class JudgeDao {
	DBUtil util = new DBUtil();
	private ResultSet rs = null;
	private Connection conn = null;
	private Judge judge = null;
	private List<Judge> judges = null;
	private PreparedStatement preparedStatement = null;

	/**
	 * @param type
	 *            选出的记录类别
	 * @param num
	 *            选出的记录条数
	 * @return List<Judge>
	 * 
	 *         从数据库中随机选出num道判断题
	 */
	public List<Judge> getJudgesInRandom(String type, int num) {
		judges = new ArrayList<Judge>();
		String sql = "SELECT * FROM judgequestion WHERE type = ? ORDER BY rand() LIMIT ?";
		try {
			conn = util.openConnection();
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, type);
			preparedStatement.setInt(2, num);
			rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int judgeId = rs.getInt("judgeId");// '判断题编号',
				int score = rs.getInt("score");// '分值',
				String content = rs.getString("content");// '题目内容描述',
				String answer = rs.getString("answer");// '答案',
				Timestamp timestamp = rs.getTimestamp("importTime");// '导入时间',
				Date importTime = null;
				if (timestamp != null) {
					importTime = new Date(timestamp.getTime());
				}
				int userId = rs.getInt("userId");// '操作人编号',
				judge = new Judge(judgeId, score, type, content, answer, importTime, userId);
				judges.add(judge);
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
		return judges;
	}
}
