package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Examinee;
import entity.User;
import service.ExamineeService;
import service.UserService;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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

		System.out.println("-----------------LoginO.jsp----------");
		UserService userService = new UserService();
		User user = null;
		ExamineeService examineeService = new ExamineeService();
		Examinee examinee = null;

		/**
		 * 使用request.getParameter获取前端传来的参数
		 * 
		 */
		int loginId = -1;
		String password = "";
		String optType = "";

		if (request.getParameter("optType") != null) {
			optType = request.getParameter("optType");
			if ("userLogin".equals(optType)) {// 登录
				if (request.getParameter("loginId") != null && request.getParameter("password") != null) {
					loginId = Integer.parseInt(request.getParameter("loginId"));
					password = request.getParameter("password");
					// 登录函数
					user = userService.login(loginId, password);
					if (user != null) {// 登录成功
						if (user.getUserId() != -1) {
							System.out.println("找到session当前用户" + user);
							// session
							session.setAttribute("user", user);
							System.out.println("user: " + user);
							map.put("result", "0");
							map.put("telephone", loginId);
							map.put("password", password);
							System.out.println("map..." + map);
						} else {
							System.out.println("用户输入 密码错误，session存储失败");
							map.put("result", "-3");// 密码错误
						}
					} else {
						System.out.println("该用户不存在，map未找到...");
						map.put("result", "-2");
					}
				} else {// 没有登录账号或者密码的参数
					System.out.println("没有登录账号或者密码的参数...");
					map.put("result", "-1");
				}

			} else if ("examineeLogin".equals(optType)) {// 注册
				optType = request.getParameter("optType");
				if ("examineeLogin".equals(optType)) {// 登录
					if (request.getParameter("loginId") != null && request.getParameter("password") != null) {
						loginId = Integer.parseInt(request.getParameter("loginId"));
						password = request.getParameter("password");
						// 登录函数
						examinee = examineeService.login(loginId, password);
						if (examinee != null) {// 登录成功
							if (examinee.getExamineeId() != -1) {
								System.out.println("找到session当前用户" + examinee);
								// session
								session.setAttribute("user", examinee);
								System.out.println("user: " + examinee);
								map.put("result", "0");
								map.put("telephone", loginId);
								map.put("password", password);
								System.out.println("map..." + map);
							} else {
								System.out.println("用户输入 密码错误，session存储失败");
								map.put("result", "-3");// 密码错误
							}
						} else {// 登录失败
							System.out.println("该用户不存在，map未找到...");
							map.put("result", "-2");
						}
					} else {// 没有登录账号或者密码的参数
						System.out.println("没有登录账号或者密码的参数...");
						map.put("result", "-1");
					}
				} else {// 其他操作类型
					System.out.println("其他操作类型...");
				}

			}
		} else {// 没有操作类型
			System.out.println("没有操作类型...");
		}

		if ("0".equals(map.get("result"))) {// 登录成功
			writer.println("<script language='javascript'>alert('缺少参数');</script>");
			// writer.println("<script>window.location.href='./views/part1/zhukongyemian.jsp'</script>");
		} else if ("-1".equals(map.get("result"))) {// 缺少参数
			writer.println("<script language='javascript'>alert('缺少参数');window.location.href=''/script>");
		} else if ("-3".equals(map.get("result"))) {// 登录失败，密码错误
			writer.println("<script language='javascript'>alert('密码错误!');window.location.href=''</script>");
		} else {// 登录失败，用户名不存在
			writer.println("<script language='javascript'>alert('用户名不存在!');window.location.href=''</script>");
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
