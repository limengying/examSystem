package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import entity.Paper;
import util.DBUtil;

public class PaperDao {
	
	DBUtil util = new DBUtil();
	private ResultSet rs = null;
	private Connection conn = null;
	private PreparedStatement preparedStatement = null;
	Paper paper  = null;
	/**
	 * @param paper 试卷
	 * @return paperId 试卷编号
	 * 
	 *    将产生的试卷插入数据库产生一条试卷记录，返回该记录的试卷编号
	 * 
	 */
	public int addPaper(String type, int examineeId, String singleChoice, String multiChoice, String judge, String singleAnswer, String multiAnswer,String judgeAnswer) {
		paper = new Paper();
		int paperId = -1;
		String sql = "INSERT INTO paperinfo (type, examineeId, singleChoice,multiChoice, judge, singleAnswer, multiAnswer,judgeAnswer,buildTime) VALUES (?,?,?,?,?,?,?,?,?)";
		try {

			conn = util.openConnection();
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setString(1, type);
			preparedStatement.setInt(2, examineeId);
			preparedStatement.setString(3, singleChoice);
			preparedStatement.setString(4, multiChoice);
			preparedStatement.setString(5, judge);
			preparedStatement.setString(6, singleAnswer);
			preparedStatement.setString(7, multiAnswer);
			preparedStatement.setString(8, judgeAnswer);			
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date currentDateTime = new Date();
			String buildTime = df.format(currentDateTime);
			preparedStatement.setString(9,buildTime);		
			//System.out.println(sql);
			
			int i = preparedStatement.executeUpdate();
			if (i == 1) {
				//System.out.println(sql);
				System.out.println("插入试卷成功！");
				paperId = getPaperByTime(examineeId,type,buildTime);
				return paperId;
				
			} else{
				System.out.println("插入失败！");
			    
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				
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

		return paperId;
	}
	private int getPaperByTime(int examineeId, String type, String buildTime) {
		
		int paperId = -1;
		String sql = "SELECT * FROM paperinfo WHERE examineeId = ? AND type = ? AND buildTime = ?";
		try {
			conn = util.openConnection();
			preparedStatement = conn.prepareStatement(sql);
			preparedStatement.setInt(1, examineeId);
			preparedStatement.setString(2, type);
			preparedStatement.setString(3, buildTime);
			rs = preparedStatement.executeQuery();
			while (rs.next()) {
				paperId = rs.getInt("paperId");
				
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
		return paperId;
		
	}

}
