package JavaPackage;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoadInfoToDataBase
 */
@WebServlet("/LoadInfoToDataBase")
public class LoadInfoToDataBase extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoadInfoToDataBase() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		if(request.getParameter("username")!=null)
		{
			
		try{

        request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		 Date date = new Date();
	      String s_date= date.toString();
	      String url = "jdbc:mysql://localhost/databaseweb";
			String username = "root";
			String password = "1234";

		Connection	conn = DriverManager.getConnection(url, username, password);
		
		CallableStatement cst = (CallableStatement) conn.prepareCall("{call sp_Insert_ThongTin (?,?,?)}");
		cst.setString(1, request.getParameter("TenTaiLieu"));
		cst.setString(2, s_date);
		cst.setString(3, request.getParameter("username"));
	     cst.execute();
	     request.getRequestDispatcher("DoiMatKhau.jsp").forward(request, response);
	     
		}
		catch(SQLException sql)
		{
			sql.printStackTrace();
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
