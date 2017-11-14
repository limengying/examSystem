package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.MultiChoice;
import util.DBUtil;

public class MultiChoiceDao {
	DBUtil util = new DBUtil();
	private ResultSet rs = null;
	private Connection conn = null;
	private MultiChoice multiChoice = null;
	private List<MultiChoice> multiChoices = null;
	private PreparedStatement preparedStatement = null;

	/**
	 * @param type
	 *            选出的记录类别
	 * @param num
	 *            选出的记录条数
	 * @return List<MultiChoice>
	 * 
	 *         从数据库中随机选出num道多选题
	 */
	public List<MultiChoice> getMultiChoicesInRandom(String type, int num) {
		multiChoices = new ArrayList<MultiChoice>();
		String sql = "SELECT * FROM multichoicequestion WHERE type = ? ORDER BY rand() LIMIT ?";
		try {
			conn = util.openConnection();
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, type);
			preparedStatement.setInt(2, num);
			rs = preparedStatement.executeQuery();
			while (rs.next()) {
				int multiChoiceId = rs.getInt("multiChoiceId");// '多选题编号',
				int score = rs.getInt("score");// '分值',
				String content = rs.getString("content");// '题目内容描述',
				String option1 = rs.getString("option1");// '选项1',
				String option2 = rs.getString("option2");// '选项2',
				String option3 = rs.getString("option3");// '选项3',
				String option4 = rs.getString("option4");// '选项4',
				String answer = rs.getString("answer");// '答案',
				Timestamp timestamp = rs.getTimestamp("importTime");// '导入时间',
				Date importTime = null;
				if (timestamp != null) {
					importTime = new Date(timestamp.getTime());
				}
				int userId = rs.getInt("userId");// '操作人编号',
				multiChoice = new MultiChoice(multiChoiceId, score, type, content, option1, option2, option3,
						option4, answer, importTime, userId);
				multiChoices.add(multiChoice);
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
		return multiChoices;
	}
}
