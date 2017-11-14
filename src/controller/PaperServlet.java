package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Examinee;
import entity.Judge;
import entity.MultiChoice;
import entity.Paper;
import entity.SingleChoice;
import entity.User;
import service.ExamineeService;
import service.PaperService;
import service.UserService;

/**
 * Servlet implementation class PaperServlet
 */
@WebServlet("/PaperServlet")
public class PaperServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PaperServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setContentType("application/json");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		PrintWriter writer = response.getWriter();
		Map<String, Object> map = new HashMap<String, Object>();

		System.out.println("-----------------TypeO.jsp----------");
		PaperService paperService = new PaperService();
		List<SingleChoice> singleChoices = null;
		List<MultiChoice> multiChoices = null;
		List<Judge> judges = null;
		Examinee examinee = null;
		
		if (request.getParameter("opyType") != null) {
			String type = request.getParameter("opyType");
			System.out.print(type);
			if (paperService.generateQuestions(type) == true) {
				
				singleChoices = paperService.getSingleChoices();
				multiChoices = paperService.getMultiChoices();
				judges = paperService.getJudges();
				if (session.getAttribute("examinee") == null) {
					map.put("reslut", "-1");
				} 
				else{
				    examinee = (Examinee) session.getAttribute("examinee");
				}
				int paperId = paperService.addPaper(examinee.getExamineeId(), type);
				if (paperId != -1) {
					
					session.setAttribute("paperId", paperId);
					session.setAttribute("singleChoices", singleChoices);
					session.setAttribute("multiChoices", multiChoices);
					session.setAttribute("judges",judges);
					map.put("reslut", "0");
				}
				
			}
	
			System.out.println("map..." + map);
		} else {
			map.put("reslut", "-2");
		}

	 

		// 根据result值，判断页面如何跳转
		if ("0".equals(map.get("result"))) {// 试卷生成成功，跳转考试页面
			System.out.println("页面操作正确");
			writer.println("<script language='javascript'>window.location.href='./paper.jsp'</script>");

		} else if ("-1".equals(map.get("result"))) {// session不存在考生
			writer.println(
					"<script language='javascript'>alert('当前没有登录用户');window.location.href='./paper.jsp'</script>");

		} else if ("-2".equals(map.get("result"))) {// 未选择类别
			writer.println(
					"<script language='javascript'>alert('未选择类别');window.location.href='./type.jsp'</script>");

		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
