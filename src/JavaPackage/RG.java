package JavaPackage;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.concurrent.Callable;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DangKy
 */
@WebServlet("/RG")
public class RG extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ResultSet rs_username;
	CallableStatement cst;
	private Connection conn;
	PreparedStatement stmt;
	private ResultSet rs_email;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}

	public RG() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String Susername = request.getParameter("username").toString();
		String hoten = request.getParameter("hoten").toString();
		String Spassword = request.getParameter("password").toString();
		String email = request.getParameter("email").toString();
		String Cpassword = request.getParameter("confirmPassword").toString();

		if (Susername == "" || hoten == "" || Spassword == "" || email == "") {

			request.setAttribute("isRefresh", 1);

			request.setAttribute("returnUsername", request.getParameter("username"));
			request.setAttribute("returnPass", request.getParameter("password"));
			request.setAttribute("returnEmail", request.getParameter("email"));
			request.setAttribute("returnHoten", request.getParameter("hoten"));

			request.getRequestDispatcher("Register.jsp").forward(request, response);
			request.setAttribute("isRefresh", 0);

		} else {
			if (!(Cpassword.equals(Spassword))) {
				request.setAttribute("Cpass",1);

				request.setAttribute("returnUsername", request.getParameter("username"));
				request.setAttribute("returnPass", request.getParameter("password"));
				request.setAttribute("returnEmail", request.getParameter("email"));
				request.setAttribute("returnHoten", request.getParameter("hoten"));

				request.getRequestDispatcher("Register.jsp").forward(request, response);
				
			} else

			{
				request.setAttribute("Cpass", 0);
				request.setAttribute("isRefresh", 0);
				String sql = "Select Password from account where UserName = '" + request.getParameter("username") + "'";
				String sql_2 = "Select Password from account where Email = '" + request.getParameter("email") + "'";
				try {

					request.setAttribute("returnUsername", request.getParameter("username"));
					request.setAttribute("returnPass", request.getParameter("password"));
					request.setAttribute("returnConfirm", request.getParameter("confirmPassword"));
					request.setAttribute("returnEmail", request.getParameter("email"));
					request.setAttribute("returnHoten", request.getParameter("hoten"));

					request.setAttribute("isChecked", 1);

					String url = "jdbc:mysql://localhost/databaseweb";
					String username = "root";
					String password = "1234";

					conn = DriverManager.getConnection(url, username, password);

					stmt = conn.prepareStatement(sql);

					rs_username = stmt.executeQuery();

					stmt = conn.prepareStatement(sql_2);
					rs_email = stmt.executeQuery();

					request.setAttribute("usernameCheck", 1);
					request.setAttribute("emailCheck", 1);
					String pass = "";

					while (rs_username.next()) {
						request.setAttribute("usernameCheck", 0);
						pass = rs_username.getString(1);
					}
					while (rs_email.next()) {
						request.setAttribute("emailCheck", 0);
						pass = rs_email.getString(1);
					}
					if (pass != "") {
						request.getRequestDispatcher("Register.jsp").forward(request, response);
					} else {

						cst = (CallableStatement) conn.prepareCall("{call sp_Insert_account (?,?,?,?)}");
						cst.setString(1, request.getParameter("username"));
						cst.setString(2, request.getParameter("password"));
						cst.setString(3, request.getParameter("hoten"));
						cst.setString(4, request.getParameter("email"));

						cst.execute();
						request.setAttribute("PasswordCheck", 1);
						request.setAttribute("returnUsernameLogin", request.getParameter("username"));
						request.setAttribute("returnPassLogin", request.getParameter("password"));
						request.getRequestDispatcher("Login.jsp").forward(request, response);
					}

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}
